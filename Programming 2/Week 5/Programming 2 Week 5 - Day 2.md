Date: 22nd February 2023
Date Modified: 22nd February 2023
File Folder: Week 5
#Programming2 

```ad-abstract
title: Today's Topics
collapse: open

- MP1 Debrief
- RectanglePizza Example

```

# Pizza Class

```java
import java.util.ArrayList;

public abstract class Pizza {
	//instance variable
	private ArrayList<Double> size = new ArrayList<Double>();
	
	//constructor
	public Pizza(ArrayList<DOuble> size) {
		super();
		this.size = size;
	}
	
	//getters and setters
	public ArrayList<Double> getSize() {return size;}
	public void setSize(ArrayList<Double> size) { this.size = size;}
	
	//abstract method
	public abstract double calcArea();
	
	//method that overrides the class Object
	@Override
	public String toString() {return "Pizza [size=" + size + "]"; }
}
```

# Rectangle Pizza Class

```java
import java.util.ArrayList;

public class RectanlgePizza extends Pizza {
	public RectanlgePizza(ArrayList<Double> size) {
		super(size);
	}
	
	public double calcArea() {
		double area = 1.0;
		ArrayList<Double> temp = super.getSize();
		for(int i = 0; i < temp.size(); i++) {
			area *= temp.get(i);
		}
		
		return area;
	}
} 
```

# Round Pizza Class

```java
import java.util.ArrayList;

public class RoundPizza extends pIzza {
	public RoundPizza(ArrayList<Double> size) {
		super(size);
	}
	
	@Override
	public dobule calcArea() {
		return Math.PI * Math.power((super.getSize9).get(0)/2, 2)
	}
}
```

# Test Main Class

```java
public statid void main(String[] args) {
	ArrayList<Double> dimensions = new ArrayList<Double>();
	
	
}
```

# Shape Class Activity

```java

public abstract class Shape {
	private double width;
	private double height;
	
	public Shape() {
		width = 0.0;
		height = 0.0;
	}
	
	public Shape(double width, double height) {
		this.width = width;
		this.height = height;
	}
	
	public double getWidth() return width;
	public double getHeight() return height;
	
	public void setWidth(double width) this.width = width;
	public void setHeight(double height) this.height = height;
	
	public abstract double calcArea();
	
	public abstract double calcPerimeter();
}
```
