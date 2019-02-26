
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.*;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileChannel.MapMode;
import java.util.List;
import java.util.Map;

public class readfile3 {
    public static void main(String[] args) {

        try {
            long startTime = System.nanoTime();
            ByteArrayOutputStream output = new ByteArrayOutputStream();
            byte[] buffer = new byte[16 * 1024];
            File initialFile = new File("file.txt");
            InputStream input = new FileInputStream(initialFile);
            // InputStream input = resourceAsStream("file.txt");
            try {
                int readN;

                while ((readN = input.read(buffer)) != -1) {
                    output.write(buffer, 0, readN);
                }

            } catch (IOException e) {
                // throw U.rte(e);
            }

            byte[] resbytes = output.toByteArray();
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
