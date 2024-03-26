package gpanico.MASE.demo.jpaauditing.repositories;

import gpanico.MASE.demo.jpaauditing.entities.Foo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FooRepository extends JpaRepository<Foo, String> {
}
