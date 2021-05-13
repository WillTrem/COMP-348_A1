import java.util.Locale;

public class Circle implements Shape{
    private double radius;

    public Circle(double radius) {
        this.radius = radius;
    }

    public double getRadius() {
        return radius;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }

    public String toString(){
        return this.getName() + "," + radius;
    }

    public static Circle parse(String str){
        String[] list = str.split(",");
        return new Circle(Double.parseDouble(list[1]));
    }
    public double getPerimeter(){
        return Math.PI * 2 * radius;
    }
    public double getArea(){
        return Math.PI * Math.pow(radius,2);
    }
    public String getName(){
        return this.getClass().toString().toUpperCase(Locale.ROOT);
    }
}
