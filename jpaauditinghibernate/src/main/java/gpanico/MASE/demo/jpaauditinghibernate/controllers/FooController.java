package gpanico.MASE.demo.jpaauditinghibernate.controllers;

import gpanico.MASE.demo.jpaauditinghibernate.entities.Foo;
import gpanico.MASE.demo.jpaauditinghibernate.services.FooService;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class FooController {

    private final FooService fooService;

    public FooController(FooService fooService) {
        this.fooService = fooService;
    }

    @RequestMapping(method = RequestMethod.GET, value = "/foo")
    @ResponseBody
    public List<Foo> getAllFoo() {
        return this.fooService.findAll();
    }

    @RequestMapping(method = RequestMethod.POST, value = "/foo")
    @ResponseBody
    public Foo createFoo(@RequestBody Foo foo) {
        return this.fooService.createFoo(foo);
    }

    @RequestMapping(method = RequestMethod.PUT, value = "/foo")
    @ResponseBody
    public Foo updateFoo(@RequestParam("id") String id, @RequestBody Foo foo) {
        Foo old_foo = this.fooService.findFooById(id);
        old_foo.setName(foo.getName());
        return this.fooService.updateFoo(old_foo);
    }

    @RequestMapping(method = RequestMethod.DELETE, value = "/foo")
    @ResponseBody
    public ResponseEntity<?> deleteFoo(@RequestParam("id") String id) {
        this.fooService.deleteFoo(id);
        return ResponseEntity.noContent().build();
    }
}
