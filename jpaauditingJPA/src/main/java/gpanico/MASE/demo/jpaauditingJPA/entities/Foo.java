package gpanico.MASE.demo.jpaauditingJPA.entities;

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

    // Entity fields
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(length = 36)
    private String id;

    private String name;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "bar_id", referencedColumnName = "id")
    private Bar bar;
}
