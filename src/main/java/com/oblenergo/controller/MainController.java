package com.oblenergo.controller;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

@Controller
public class MainController {

  @GetMapping("/authenticated")
  @ResponseStatus(HttpStatus.OK)
  public void checkAuthentication() {
  }

}
