package gpanico.MASE.demo.jpaauditingJPA.repositories;

import gpanico.MASE.demo.jpaauditingJPA.entities.Foo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FooRepository extends JpaRepository<Foo, String> {
}
