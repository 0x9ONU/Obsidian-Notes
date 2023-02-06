Date: 30th January 2023
Date Modified: 3rd February 2023
File Folder: Week 2
#Programming2 

```ad-abstract
title: Today's Topics
collapse: open

- File Input and Output
- Writing to a File
- Reading From a File
- Throwing Clause

```


# File Input and Output

Java API provides serveral classes that you can use for writing data to a file and reading data from a file

```ad-question
title: Writing Data to a File
You can use the `PrintWriter` class or the `FileWriter` class
```

```ad-question
title: Reading Data from a File
color: 0, 255, 255
You use the `Scanner` class and the `File` class
```

## Three steps to using a file

1. The file must be opened. When the file is opened, a connection is crated between the file and the program
	1. Must be given a path (local or absolute)
2. Data is then written to a file or read from the file
3. When the program is finished using the file, the file *must* be closed

```ad-danger
title: Warning
If the file is not closed during the program, java will not compile the program
```

```ad-info
The Java Api for working with a class: `import java.io.*`
```

# Writing to A File

Opening a set file:
```java
import java.io.*
PrintWriter outputFile = new PrintWriter("eccs1621students.txt");
outputFile.println(/*"insert text here"*/)
```

Opening a file with a path from the user

```java
String filename;
filename = JOptionPane.hsowInputDialog("Enter the filename");
PrintWriter otuputFile = new PrintWriter(filename);
```

# Reading from a File

Syntax:
```java
File myFile = new File("");
Scanner inputFile = new Scanner(myFile);
String line = inputFile.nextLine();
System.out.println("The first score in the file is: " + line);

inputFile.close();
```

# Throws Clause

When you pass a File object reference to the Scanner class constructor, the constructor will throw an expection of the `IOException` type if the specified file is not found

```ad-check
title: Solution
use the `Throw IOException` after a method's definition and before the method's body
``` java
public static void main(String[] args) throws IOException
{
	//all the file code geos here
}
```






