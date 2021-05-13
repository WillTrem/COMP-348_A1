import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;
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
            
            //fill arr with the shapes from the list
            arr = new String[shapes.size()];
            shapes.toArray(arr);
        }

        Stream<String> sm = Arrays.stream(arr);

        ArrayList<Shape> shapeList = new ArrayList<>();//Arraylist of shapes from file

        //sort and display shape name and area
        sm.forEach(str -> {
            String[] myShape = str.split(",");
            if(myShape[0].equals("Rectangle")){
                shapeList.add(Rectangle.parse(str));
            }
            else if(myShape[0].equals("Circle")){
                shapeList.add(Circle.parse(str));
            }
        });





        
    }
}
