package gpanico.MASE.demo.jpaspecification.repositories;

import gpanico.MASE.demo.jpaspecification.criteria.SearchCriteria;
import gpanico.MASE.demo.jpaspecification.models.User;

import java.util.List;

public interface IUserDAO {
    public List<User> searchUser(List<SearchCriteria> params);
    public void save(User entity);
}
