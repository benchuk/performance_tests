
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.TimeUnit;

public class loop2 {
    public static void main(String[] args) {

        int[] nums = new int[10000000];
        long startTime = System.nanoTime();
        for (int i = 0; i < nums.length; i++) {
            nums[i] = 42;
        }

        long endTime = System.nanoTime();
        long timeElapsed = endTime - startTime;
        System.out.println("ms : " + timeElapsed / 1000000);
        System.out.print("loops: " + nums.length);
        System.out.print("first element in array (should be 42): " + nums[0]);
        System.out.print("done");
    }
}