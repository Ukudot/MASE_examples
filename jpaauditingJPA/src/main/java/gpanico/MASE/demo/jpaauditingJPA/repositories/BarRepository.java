package gpanico.MASE.demo.jpaauditingJPA.repositories;

import gpanico.MASE.demo.jpaauditingJPA.entities.Bar;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BarRepository extends JpaRepository<Bar, String> {
}
