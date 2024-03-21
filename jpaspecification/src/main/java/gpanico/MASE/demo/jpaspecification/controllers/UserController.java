package gpanico.MASE.demo.jpaspecification.controllers;

import gpanico.MASE.demo.jpaspecification.criteria.SearchCriteria;
import gpanico.MASE.demo.jpaspecification.models.User;
import gpanico.MASE.demo.jpaspecification.repositories.IUserDAO;
import gpanico.MASE.demo.jpaspecification.repositories.UserRepository;
import gpanico.MASE.demo.jpaspecification.specifications.UserSpecification;
import gpanico.MASE.demo.jpaspecification.specifications.UserSpecificationsBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Controller
public class UserController {
    @Autowired
    private UserRepository repo;

    @RequestMapping(method = RequestMethod.GET, value = "/users")
    public ResponseEntity<List<User>> findAll(@RequestParam(value = "search", required = false) String search) {
        UserSpecificationsBuilder userSpecificationsBuilder = new UserSpecificationsBuilder();
        Pattern pattern = Pattern.compile("(\\w+?)([:<>~])(\\w+?),");
        Matcher matcher = pattern.matcher(search + ",");
        List<SearchCriteria> params = new ArrayList<SearchCriteria>();
        System.out.println("search: " + search);
        while (matcher.find()) {
            System.out.println("Key: " + matcher.group(1));
            System.out.println("Operation: " + matcher.group(2));
            System.out.println("Value: " + matcher.group(3));
            userSpecificationsBuilder.with(matcher.group(1), matcher.group(2), matcher.group(3));
        }
        List<User> users= repo.findAll(userSpecificationsBuilder.build());
        System.out.println("Users: " + users);
        return ResponseEntity.ok(users);
    }
}
