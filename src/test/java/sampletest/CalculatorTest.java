package sampletest;

import junit.framework.TestCase;

import sample.Calculator;

public class CalculatorTest extends TestCase {
  Calculator cal=new Calculator();
  
   public CalculatorTest(String name) {
   super(name);
   }
 
   public void testSum() {
   assertEquals(3,cal.sum(1,1));
  }
}