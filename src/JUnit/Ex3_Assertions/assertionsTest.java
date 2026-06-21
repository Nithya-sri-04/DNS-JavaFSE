package JUnit.Ex3_Assertions;

import org.junit.Test;
import static org.junit.Assert.*;

public class assertionsTest {

    @Test
    public void testAssertions(){
        assertEquals(5, 2 + 3);

        assertTrue(5 > 3);

        assertFalse(5 < 3);

        assertNull(null);

        assertNotNull(new Object());

    }

}
