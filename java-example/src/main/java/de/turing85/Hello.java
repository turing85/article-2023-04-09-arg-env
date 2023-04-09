package de.turing85;

import java.util.Objects;

public class Hello {
  public static void main(String[] args) {
    String name = System.getenv("GREETING");
    if (Objects.isNull(name)) {
      name = "world";
    }
    System.out.printf("Hello, %s!%n", name);
  }
}
