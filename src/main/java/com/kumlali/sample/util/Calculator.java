package com.kumlali.sample.util;

public class Calculator {

  private static final org.slf4j.Logger logger = org.slf4j.LoggerFactory.getLogger(Calculator.class);
  
  public final int sum (int x, int y) {
    int result = x + y;
    logger.trace("{} + {} = {}", x, y, result);
    return result;    
  }
  
  public final int subtract (int x, int y) {
    int result = x - y;
    logger.trace("{} - {} = {}", x, y, result);
    return result;    
  }

  public final int multiply (int x, int y) {
    int result = x * y;
    logger.trace("{} * {} = {}", x, y, result);
    return result;    
  }

  public final float divide (int x, int y) {
    float result = x / y;
    logger.trace("{} / {} = {}", x, y, result);
    return result;    
  }

  // For local test (do not forget to use -ea switch to enable assertions) 
  public static void main(String[] args) {    
    Calculator calc = new Calculator ();    
    int expectedResult = 8;
    int calculatedResult = calc.sum(3, 5); 
    assert expectedResult == calculatedResult;
  }

}
