package com.mycompany.app;

import org.rapidoid.setup.On;
import org.rapidoid.u.U;

/**
 * Hello world!
 *
 */
public class App {
    public static void main(String[] args) {
        System.out.println("Running server!");
        // This starts a HTTP server on port 8080 and defines a handler for the route
        // GET /json
        On.get("/json").json(() -> U.map("message", "Hello, world!"));

        On.get("/plaintext").plain("Hello, world!");
    }
}
