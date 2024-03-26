package gpanico.MASE.demo.jpaauditingJPA.services;

import gpanico.MASE.demo.jpaauditingJPA.entities.Foo;
import gpanico.MASE.demo.jpaauditingJPA.repositories.FooRepository;
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
