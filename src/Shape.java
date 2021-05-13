public interface Shape {
    public default String getName(){return this.getClass().toString();}
    public double getPerimeter();
    public double getArea();

    
}
