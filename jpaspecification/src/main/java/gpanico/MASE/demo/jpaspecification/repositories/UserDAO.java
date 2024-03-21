package gpanico.MASE.demo.jpaspecification.repositories;

import gpanico.MASE.demo.jpaspecification.criteria.SearchCriteria;
import gpanico.MASE.demo.jpaspecification.criteria.UserSearchQueryCriteriaConsumer;
import gpanico.MASE.demo.jpaspecification.models.User;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Predicate;
import jakarta.persistence.criteria.Root;
import org.springframework.stereotype.Repository;

import java.util.List;

//@Repository
public class UserDAO implements IUserDAO {
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public List<User> searchUser(List<SearchCriteria> params) {
        CriteriaBuilder builder = entityManager.getCriteriaBuilder();
        CriteriaQuery<User> query = builder.createQuery(User.class);
        Root<User> r = query.from(User.class);

        // This should be a simple predicate with a simple restriction (boolean expression used to search on database)
        // A simple boolean expression cannot be used cause java generics are not compatible with varargs
        Predicate predicate = builder.conjunction();

        // Instantiate the consumer to build the query
        UserSearchQueryCriteriaConsumer searchConsumer =
                new UserSearchQueryCriteriaConsumer(predicate, builder, r);
        // Apply the consumer to each search criteria, the consumer hold the predicate and for each criteria is updated
        params.stream().forEach(searchConsumer);
        // take the predicate from the consumer
        predicate = searchConsumer.getPredicate();
        // Modify the query to restrict the query result according to the conjunction of the specified predicates
        query.where(predicate);

        // Get the result from the query
        List<User> result = entityManager.createQuery(query).getResultList();
        return result;
    }

    @Override
    public void save(User entity) {
        entityManager.persist(entity);
    }
}