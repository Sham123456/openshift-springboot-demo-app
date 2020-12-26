package com.shamik.openshift.openshiftdemo.controller;

import com.shamik.openshift.openshiftdemo.model.ResponseObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {

    private Logger LOGGER = LoggerFactory.getLogger(TestController.class);

    @GetMapping("/name")
    public ResponseEntity<ResponseObject> getName() {
        ResponseObject responseObject = new ResponseObject();
        responseObject.setFirstName("Shamik");
        responseObject.setLastName("Mukherjee");
        LOGGER.info("Request Received to send name");
        return ResponseEntity.ok(responseObject);
    }
}
