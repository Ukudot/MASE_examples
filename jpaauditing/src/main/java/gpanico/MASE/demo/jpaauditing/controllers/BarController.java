package gpanico.MASE.demo.jpaauditing.controllers;

import gpanico.MASE.demo.jpaauditing.entities.Bar;
import gpanico.MASE.demo.jpaauditing.services.BarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
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

    @RequestMapping(method = RequestMethod.GET, value = "/bar")
    @ResponseBody
    public List<Bar> getAllBar() {
        return this.barService.findBarAll();
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
