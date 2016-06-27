import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.FileNotFoundException;

public class RandomStrfile {
        public static void main(String[] args) throws Exception {
                String filename = args[0];
                File file = new File(filename);
                BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
                br.mark((int)file.length()+1);
                for (int i=0; i<2; i++) {
                while(br.ready()) {
                                    String data = br.readLine();
                                    if (data != null)
                                        System.out.println("not null, data " + data);
                                    else
                                        System.out.println("null");
                }
                if (!br.ready()) {
                        System.out.println("null");
                	br.reset();
		}
                }


                br.close();
        }
}
