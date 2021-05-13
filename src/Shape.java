public interface Shape {
    default String getName(){return this.getClass().toString().substring(6);}
    double getPerimeter();
    double getArea();
}
