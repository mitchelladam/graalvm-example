package oracle.test;


import java.io.IOException;

import oracle.FileCount;
import oracle.ListDir;
import org.junit.Test;

import static org.junit.Assert.assertNotNull;

public class ListDirTest {

    @Test
    public void simpleTest() throws IOException {

        final FileCount count = ListDir.list(".");
        final String size = ListDir.humanReadableByteCountBin(count.getSize());
        assertNotNull(size);
    }
}