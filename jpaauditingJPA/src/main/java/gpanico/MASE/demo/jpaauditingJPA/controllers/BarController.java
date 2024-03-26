package gpanico.MASE.demo.jpaauditingJPA.controllers;

import gpanico.MASE.demo.jpaauditingJPA.entities.Bar;
import gpanico.MASE.demo.jpaauditingJPA.services.BarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class BarController {

    private final BarService barService;

    @Autowired
    public BarController(BarService barService) {
        this.barService = barService;
    }

    @RequestMapping(method = RequestMethod.GET, value = "")
    @ResponseBody
    public Bar getAllBar() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentPrincipalName = authentication.getName();
        Bar bar = new Bar();
        bar.setName("prova12");
        return this.barService.updateBar(bar);
    }

    @RequestMapping(method = RequestMethod.POST, value = "/bar")
    @ResponseBody
    public Bar createBar(@RequestBody Bar bar) {
        return this.barService.createBar(bar);
    }

    @RequestMapping(method = RequestMethod.PUT, value = "/bar")
    @ResponseBody
    public Bar updateBar(@RequestParam("id") String id, @RequestBody Bar bar) {
        Bar old_bar = this.barService.findBarById(id);
        old_bar.setName(bar.getName());
        return this.barService.updateBar(old_bar);
    }

    @RequestMapping(method = RequestMethod.DELETE, value = "/bar")
    @ResponseBody
    public ResponseEntity<?> deleteBar(@RequestParam("id") String id) {
        this.barService.deleteBar(id);
        return ResponseEntity.noContent().build();
    }
}
