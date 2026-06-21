package JUnit.Ex4_AAA_Pattern;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class calculatorTest {

    calculator c;

    @Before
    public void setUp() {
        c = new calculator();
        System.out.println("Setup completed");
    }

    @Test
    public void testAddition() {

        // Arrange
        int a = 5;
        int b = 3;

        // Act
        int result = c.add(a, b);

        // Assert
        assertEquals(8, result);
    }

    @After
    public void tearDown() {
        System.out.println("Test completed");
    }

}
