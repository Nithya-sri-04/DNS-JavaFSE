package JUnit;

import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class numberTest {

    @Test
    public void testSquare() {

        number num = new number();

        assertEquals(16, num.square(4));

    }

}
