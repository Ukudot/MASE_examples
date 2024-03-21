package gpanico.MASE.demo.jpaspecification.specifications;

import gpanico.MASE.demo.jpaspecification.criteria.SpecSearchCriteria;
import gpanico.MASE.demo.jpaspecification.models.User;
import gpanico.MASE.demo.jpaspecification.utils.SearchOperation;
import org.springframework.data.jpa.domain.Specification;

import java.util.ArrayList;
import java.util.List;

public class UserSpecificationsBuilder {
    private final List<SpecSearchCriteria> params;

    public UserSpecificationsBuilder() {
        params = new ArrayList<>();
    }

    public final UserSpecificationsBuilder with(String key, String operation, Object value) {
        return with(key, operation, value, null, null);
    }

    public final UserSpecificationsBuilder with(String key, String operation, Object value, String prefix,
                                                String suffix) {
        return with(null, key, operation, value, prefix, suffix);
    }

    public final UserSpecificationsBuilder with(String orPredicate, String key, String operation,
                                                Object value, String prefix, String suffix) {
        SearchOperation op = SearchOperation.getSimpleOperation(operation.charAt(0));
        if (op != null) {
            if (op == SearchOperation.EQUALITY) {
                boolean startWithAsterisk = prefix != null &&
                        prefix.contains(SearchOperation.ZERO_OR_MORE_REGEX);
                boolean endWithAsterisk = suffix != null &&
                        prefix.contains(SearchOperation.ZERO_OR_MORE_REGEX);

                if (startWithAsterisk && endWithAsterisk) {
                    op = SearchOperation.CONTAINS;
                } else if (startWithAsterisk) {
                    op = SearchOperation.ENDS_WITH;
                } else if (endWithAsterisk) {
                    op = SearchOperation.STARTS_WITH;
                }
            }
            params.add(new SpecSearchCriteria(orPredicate, key, op, value));
        }
        return this;
    }

    public Specification<User> build () {
        if (params.isEmpty())
            return null;

        Specification<User> result = new UserSpecification(params.getFirst());
        System.out.println("Specification: " + params.getFirst().toString());

        for (int i = 1; i < params.size(); i++) {
            result = params.get(i).isOrPredicate()
                    ? Specification.where(result).or(new UserSpecification(params.get(i)))
                    : Specification.where(result).and(new UserSpecification(params.get(i)));
        }

        return result;
    }
}
