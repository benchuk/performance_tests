
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.TimeUnit;

public class loop {
    public static void main(String[] args) {

        int sum = 0;
        long startTime = System.nanoTime();
        for (int x = 0; x < 10000000; x++) {
            sum++;
        }

        long endTime = System.nanoTime();
        long timeElapsed = endTime - startTime;
        System.out.println("ms : " + timeElapsed / 1000000);
        System.out.print(sum);
        System.out.print("loops 10000000");
        System.out.print("done");
    }
}