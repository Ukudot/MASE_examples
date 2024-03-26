package gpanico.MASE.demo.jpaauditinghibernate.repositories;

import gpanico.MASE.demo.jpaauditinghibernate.entities.Foo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FooRepository extends JpaRepository<Foo, String> {
}
