public class Rectangle implements Shape{
    private double width;
    private double height;

    public Rectangle(double width, double height) {
        this.width = width;
        this.height = height;
    }

    public double getWidth() {
        return width;
    }

    public void setWidth(double width) {
        this.width = width;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public String toString(){
        return this.getName() + "," + width + "," + height;
    }

    public static Rectangle parse(String str){
        String[] list = str.split(",");
        return new Rectangle(Double.parseDouble(list[1]),Double.parseDouble(list[2]));
    }

    public double getPerimeter(){
        return 2*width + 2*height;
    }
    public double getArea(){
        return width * height;
    }
}
