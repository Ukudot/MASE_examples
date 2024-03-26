package gpanico.MASE.demo.jpaauditing.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Bar {

    @Column(name = "operation")
    private String operation;

    @Column(name = "timestamp")
    private String timestamp;

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(length = 36)
    private String id;

    private String name;

    @OneToOne(mappedBy = "bar")
    private Foo foo;
}