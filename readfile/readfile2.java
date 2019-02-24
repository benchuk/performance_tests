
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.BufferedReader;
import java.io.FileReader;

public class readfile2 {
    public static void main(String[] args) {

        try {
            long startTime = System.nanoTime();
            List<String> lines = Files.readAllLines(Paths.get("file.txt"));
            // String str = new String(data, "UTF-8");
            long endTime = System.nanoTime();
            long timeElapsed = endTime - startTime;
            System.out.println("ms : " + timeElapsed / 1000000);
            // System.out.print(str);
            // System.out.print("file len: " + file.length());
        } catch (Exception e) {
            // TODO: handle exception
            System.out.print(e);
            System.out.print("error");
        }
    }

}
