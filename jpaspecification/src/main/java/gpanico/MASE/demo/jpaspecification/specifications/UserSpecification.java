package gpanico.MASE.demo.jpaspecification.specifications;

import gpanico.MASE.demo.jpaspecification.criteria.SearchCriteria;
import gpanico.MASE.demo.jpaspecification.criteria.SpecSearchCriteria;
import gpanico.MASE.demo.jpaspecification.models.User;
import gpanico.MASE.demo.jpaspecification.utils.SearchOperation;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Predicate;
import jakarta.persistence.criteria.Root;
import org.springframework.data.jpa.domain.Specification;

public class UserSpecification implements Specification<User> {
    private SpecSearchCriteria searchCriteria;

    public UserSpecification(SpecSearchCriteria searchCriteria) {
        this.searchCriteria = searchCriteria;
    }

    @Override
    public Predicate toPredicate(Root<User> root, CriteriaQuery<?> query, CriteriaBuilder criteriaBuilder) {
        SearchOperation operation = searchCriteria.getOperation();
        if (operation == SearchOperation.GREATER_THAN) {
            return criteriaBuilder.greaterThanOrEqualTo(
                    root.get(searchCriteria.getKey()), searchCriteria.getValue().toString()
            );
        } else if (operation == SearchOperation.LESS_THAN) {
            return criteriaBuilder.lessThanOrEqualTo(
                    root.get(searchCriteria.getKey()), searchCriteria.getValue().toString()
            );
        } else if (operation == SearchOperation.LIKE) {
            if (root.get(searchCriteria.getKey()).getJavaType() == String.class) {
                return criteriaBuilder.like(
                        root.get(searchCriteria.getKey()), searchCriteria.getValue().toString()
                );
            } else {
                return criteriaBuilder.equal(
                        root.get(searchCriteria.getKey()), searchCriteria.getValue()
                );
            }
        } else if (operation == SearchOperation.EQUALITY) {
        if (root.get(searchCriteria.getKey()).getJavaType() == String.class) {
            return criteriaBuilder.equal(
                    root.get(searchCriteria.getKey()), searchCriteria.getValue().toString()
            );
        } else {
            return criteriaBuilder.equal(
                    root.get(searchCriteria.getKey()), searchCriteria.getValue()
            );
        }
    }
        return null;
    }
}
