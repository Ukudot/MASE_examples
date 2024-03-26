package gpanico.MASE.demo.jpaauditinghibernate.repositories;

import gpanico.MASE.demo.jpaauditinghibernate.entities.Bar;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BarRepository extends JpaRepository<Bar, String> {
}
