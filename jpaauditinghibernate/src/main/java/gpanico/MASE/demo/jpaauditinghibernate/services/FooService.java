package gpanico.MASE.demo.jpaauditinghibernate.services;

import gpanico.MASE.demo.jpaauditinghibernate.entities.Foo;
import gpanico.MASE.demo.jpaauditinghibernate.repositories.FooRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FooService {

    private final FooRepository fooRepository;

    public FooService(FooRepository fooRepository) {
        this.fooRepository = fooRepository;
    }

    public Foo findFooById(String id) {
        return this.fooRepository.findById(id).get();
    }

    public List<Foo> findAll() {
        return this.fooRepository.findAll();
    }

    public Foo createFoo(Foo foo) {
        return this.fooRepository.save(foo);
    }

    public Foo updateFoo(Foo foo) {
        return this.fooRepository.save(foo);
    }

    public void deleteFoo(String id) {
        this.fooRepository.deleteById(id);
    }
}
