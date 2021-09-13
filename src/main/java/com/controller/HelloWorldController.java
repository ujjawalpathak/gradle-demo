package com.controller;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;

@Controller("/")
public class HelloWorldController {
    @Get
    public String displayHelloWorld() {
        return "Hello World";
    }
}