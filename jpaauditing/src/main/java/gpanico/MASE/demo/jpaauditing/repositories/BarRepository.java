package gpanico.MASE.demo.jpaauditing.repositories;

import gpanico.MASE.demo.jpaauditing.entities.Bar;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BarRepository extends JpaRepository<Bar, String> {
}
