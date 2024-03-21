package gpanico.MASE.demo.jpaspecification.repositories;

import gpanico.MASE.demo.jpaspecification.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface UserRepository extends JpaRepository<User, Long>, JpaSpecificationExecutor<User> {
}
