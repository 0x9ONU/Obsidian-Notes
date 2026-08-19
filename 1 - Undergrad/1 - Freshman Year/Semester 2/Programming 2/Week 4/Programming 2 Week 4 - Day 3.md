Date: 17th February 2023
Date Modified: 17th February 2023
File Folder: Week 4
#Programming2 #year1 #semester2

```ad-abstract
title: Today's Topics
collapse: open

- Inheritance
- The Rectangle Class
- The Square Class

```


# Inheritance

Method/process that connects one class to another class.

Allows you to do less work and reuse methods from one class to another


## Rectangle Class Example

```java
import java.util.Scanner;

public class Rectange {
	boolean filled = false;
	double length = 0.0;
	double width = 0.0;
	
	//Constructors
	
	public Rectange() {
		this.length = 0.0;
		this.width = 0.0;
		this.filled = false;
	}
	
	public Rectange(double length, double width) {
		this.length = length;
		this.width = width;
		this.filled = false;
	}
	
	public Rectange(double length, double width, boolean filled) {
		this.length = length;
		this.width = width;
		this.filled = filled;
	}
	
	public double getLength() {
		return this.length;
	}
	
	//note: uses a special case because length can not be negative
	public void setLength(double length) {
		if (length < 0) {
			do {
				System.out.println("Length cannot be neg!")
				Scanner keyboard = new Scanner(System.in);
				length = keyboard.nextDouble();
			} while (length > 0);
		}
		else this.length = length;
	}
	
	public double getWidth() {
		return width;
	}
	
	public void setWidth(double width) {
		if (width < 0) {
			do {
				System.out.println("Width cannot be neg!")
				Scanner keyboard = new Scanner(System.in);
				length = keyboard.nextDouble();
			} while (width > 0);
		}
		else this.width = width;
	}
	
	public boolean getFilled() {
		return filled;
	}
	
	public void setFilled() {
		this.filled = filled;
	}
	
	public double calcArea() {
		return width * length; 
	}
	
	public double calcPerimeter() {
		return (2 * width) + (2 * length);
	}
	
	@Override
	public String toString() {
		return "Rectange{" + "filled=" + filled + ", length=" + length + ", width=" + width + '}';
	}
	
	
}
```

## Main Class


```java
public class Main {
	public static void main(String[] args) {
		Rectange r1 = new Rectangle(4.2, 6.0, false);
		Rectangle r2 = new Rectangle(6.0, 6.0, true);
	}
}
```

## Square Class

```java
public class Square extends Rectangle {
	
	public Square() {
		super(0.0, 0.0);
	}
	
	public Square(double side) {
		super(side, side);
	}
	
	public Square(double side, boolean filled) {
		super(side, side, filled);
	}
	
	@Override
	public void setLength(double side) {
		super.setLength(side);
		super.setWidth(side);
	}
	
	@Override
	public void setWidth(double side) {
		super.setLength(side);
		super.setWidth(side);
	}
	
	
}
```

```ad-note
Use either static or private to hide methods from inheriting to another class
```

