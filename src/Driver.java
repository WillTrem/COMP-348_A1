import java.io.*;
import java.util.*;
import java.lang.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.stream.Collectors;
import java.util.stream.Stream;


public class Driver {
    public static void main(String[] args) throws IOException {

        System.out.print("Please enter path: ");
        Scanner kb = new Scanner(System.in);
        String file = kb.next();
        kb.close();
        
        File myFile = new File(file);
        String fullPath = myFile.getAbsolutePath();
        
        List<String> shapes; 
        String[] arr;

        try(BufferedReader br = new BufferedReader(new FileReader(fullPath))){
            //read all lines in file and store in shapes list
            shapes = Files.readAllLines(Paths.get(fullPath));
            List<String> sortedShapes = shapes.stream().sorted().collect((Collectors.toList()));
            //fill arr with the shapes from the list
            arr = new String[sortedShapes.size()];
            sortedShapes.toArray(arr);
        }

        Stream<String> sm = Arrays.stream(arr);

        //sort and display shape name and area
        sm.forEach(str -> {
            String[] myShape = str.split(",");
            System.out.println(myShape[0]+" "+myShape[1]);
           
        });





        
    }
}
