Date: 24th February 2023
Date Modified: 24th February 2023
File Folder: Week 5
#Programming2 

```ad-abstract
title: Today's Topics
collapse: open

- Continuing Abstract Shape Example

```


# Shape Class Activity Review

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

# Rectangle Subclass

```java
public class Rectangle extends Shape {
	public Rectangle() {
		super();
	}
	
	public Rectangle(double width, double height) {
		super(width, height);
	} 
	
	@Override
	public double calcArea() {
		return super.getWidth() * super.getHeight;
	}
	
	@Override
	public double calcPerimeter() {
		return 2 * (super.getWidth()) + 2 * (super.getHeight());
	}
}
```

