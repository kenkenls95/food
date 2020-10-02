package application.controller;

import application.data.service.BaseService;
import application.model.ResponseModel;
import org.springframework.web.bind.annotation.*;

public abstract class BaseController<T extends BaseService,K> implements IController {

    private T service;
    private K obj;

    public K getObj() {
        return obj;
    }

    public void setObj(K obj) {
        this.obj = obj;
    }

    @Override
    public T getService() {
        return service;
    }

    public void setService(T service) {
        this.service = service;
    }

    @GetMapping
    public ResponseModel getAll(){
        return getService().getAll();
    }

    @GetMapping("/{id}")
    public ResponseModel findOne(@PathVariable Long id){
        return getService().findOne(id);
    }

    @PostMapping
    public ResponseModel insert(@RequestBody K obj){
        return getService().save(obj);
    }

    @PutMapping
    public ResponseModel update(@RequestBody K obj){
        return getService().update(obj);
    }

    @DeleteMapping("/deleteAll")
    public ResponseModel deleteAll(){
        return getService().deleteAll();
    }

    @DeleteMapping("/{id}")
    public ResponseModel delete(@PathVariable Long id){
        return getService().delete(id);
    }

}
