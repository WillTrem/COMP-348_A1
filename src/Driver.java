import java.io.*;
import java.lang.reflect.Method;
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

       List<Shape> shapeList = new ArrayList<>();//Arraylist of shapes from file

        //Parse shapes
        sm.forEach(str -> {
            String[] myShape = str.split(",");
            if(myShape[0].equals("Rectangle")){
                shapeList.add(Rectangle.parse(str));
            }
            else if(myShape[0].equals("Circle")){
                shapeList.add(Circle.parse(str));
            }
        });
        sm.close();

        //Sort shapeList according to Class Name, then by area
        Collections.sort(shapeList, (s1, s2)->{
          int classCheck = ("" + s1.getClass()).compareTo(""+s2.getClass());
          return classCheck != 0 ? classCheck : (int)(s1.getArea()-s2.getArea());
        });//Based on page 19 of Tutorial 1 ppt

        System.out.println("Shapes sorted by Name & Area: " + shapeList);//Display the shapes sorted by Name then area

        Collections.sort(shapeList, (s1, s2) -> (int)(s1.getPerimeter() - s2.getPerimeter()));

        System.out.println("Shapes sorted by perimeters: " + shapeList);//Display the shapes sorted by perimeter only

        //Displaying Summaries
        double rectAvgPerimeter = shapeList.stream().filter(x->x.getName().equals("Rectangle")).mapToDouble(x -> x.getPerimeter()).average().getAsDouble();
        double rectAvgArea = shapeList.stream().filter(x->x.getName().equals("Rectangle")).mapToDouble(x -> x.getArea()).average().getAsDouble();
        double circAvgPerimeter = shapeList.stream().filter(x->x.getName().equals("CIRCLE")).mapToDouble(x -> x.getPerimeter()).average().getAsDouble();
        double circAvgArea = shapeList.stream().filter(x->x.getName().equals("CIRCLE")).mapToDouble(x -> x.getArea()).average().getAsDouble();
        System.out.println("Average Perimeter of Rectangles: " + rectAvgPerimeter + "\nAverage Area of Rectangles: " + rectAvgArea
        + "\nAverage Perimeter of Circles: " + circAvgPerimeter + "\nAverage Area of Circles: " + circAvgArea + "\nTotal amount of shapes: " + shapeList.size());
    }
}
