package gpanico.MASE.demo.jpaauditing.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

import static net.sf.jsqlparser.parser.feature.Feature.setOperation;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Foo {

    // properties used to store information about operations
    @Column(name = "operation")
    private String operation;

    @Column(name = "timestamp")
    private long timestamp;

    // Entity fields
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(length = 36)
    private String id;

    private String name;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "bar_id", referencedColumnName = "id")
    private Bar bar;


    private void audit(String operation) {
        setOperation(operation);
        setTimestamp(new Date().getTime());
    }
    @PrePersist
    public void OnPrePersist() {
        audit("INSERT");
    }

    @PreUpdate
    public void OnPreUpdate() {
        audit("UPDATE");
    }

    @PreRemove
    public void OnPreRemove() {
        audit("REMOVE");
    }
}
