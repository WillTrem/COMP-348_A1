public interface Shape {
    default String getName(){return this.getClass().toString();}
    double getPerimeter();
    double getArea();
}
