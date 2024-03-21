package gpanico.MASE.demo.jpaspecification.criteria;

import gpanico.MASE.demo.jpaspecification.utils.SearchOperation;

public class SpecSearchCriteria {
    private String key;
    private SearchOperation operation;
    private Object value;
    private boolean orPredicate;

    public boolean isOrPredicate() {
        return this.orPredicate;
    }

    public SpecSearchCriteria() {}

    public SpecSearchCriteria(String orPredicate, String key, SearchOperation operation, Object value) {
        this.key = key;
        this.operation = operation;
        this.value = value;
        if (orPredicate == null)
            this.orPredicate = false;
        else
            this.orPredicate = true;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public SearchOperation getOperation() {
        return operation;
    }

    public void setOperation(SearchOperation operation) {
        this.operation = operation;
    }

    public Object getValue() {
        return value;
    }

    public void setValue(Object value) {
        this.value = value;
    }

    public void setOrPredicate(boolean orPredicate) {
        this.orPredicate = orPredicate;
    }

    @Override
    public String toString() {
        return "SpecSearchCriteria{" +
                "key='" + key + '\'' +
                ", operation=" + operation +
                ", value=" + value +
                ", orPredicate=" + orPredicate +
                '}';
    }
}
