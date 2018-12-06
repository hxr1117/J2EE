package bean;

import java.io.*;
import java.util.*;

public class Counter {
    public String read(){
        String c = "";
        String path = "/Users/hexinrong/IdeaProjects/untitled/first/web/ccc.txt";
        try {
            BufferedReader br = new BufferedReader(new FileReader(path));
            c = br.readLine();
            br.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return c;
    }

    public void write(String cnt){
        try {
            String path = "/Users/hexinrong/IdeaProjects/untitled/first/web/ccc.txt";
            File f = new File(path);
            FileWriter fw = new FileWriter(f.getAbsoluteFile());
            BufferedWriter bw = new BufferedWriter(fw);
            bw.write(cnt);
            bw.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args){
        Counter c = new Counter();
    }

}
