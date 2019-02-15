
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.TimeUnit;

public class readfile {
    public static void main(String[] args) {

        try {
            long startTime = System.nanoTime();
            File file = new File("file.txt");
            FileInputStream fis = new FileInputStream(file);
            byte[] data = new byte[(int) file.length()];
            fis.read(data);
            fis.close();
            // String str = new String(data, "UTF-8");
            long endTime = System.nanoTime();
            long timeElapsed = endTime - startTime;
            System.out.println("ms : " + timeElapsed / 1000000);
            // System.out.print(str);
            System.out.print("file len: " + file.length());
        } catch (Exception e) {
            // TODO: handle exception
            System.out.print("error");
        }
    }
}