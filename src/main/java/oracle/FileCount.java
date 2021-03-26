package oracle;

/**
 * Holds the count data - number of files and total size, in Bytes.
 */
public class FileCount {

    final long size;
    final long count;

    public FileCount(final long size, final long count) {
        this.count = count;
        this.size = size;
    }

    public long getSize() {
        return this.size;
    }

    public long getCount() {
        return this.count;
    }
}
