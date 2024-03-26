package gpanico.MASE.demo.jpaauditinghibernate.services;

import gpanico.MASE.demo.jpaauditinghibernate.entities.Bar;
import gpanico.MASE.demo.jpaauditinghibernate.repositories.BarRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BarService {
    final private BarRepository barRepository;

    @Autowired
    public BarService(BarRepository barRepository) {
        this.barRepository = barRepository;
    }

    public Bar findBarById(String id) {
        return this.barRepository.findById(id).get();
    }

    public List<Bar> findBarAll() {
        return this.barRepository.findAll();
    }

    public Bar createBar(Bar bar) {
        return this.barRepository.save(bar);
    }

    public Bar updateBar(Bar bar) {
        return this.barRepository.save(bar);
    }

    public void deleteBar(String id) {
        this.barRepository.deleteById(id);
    }
}
