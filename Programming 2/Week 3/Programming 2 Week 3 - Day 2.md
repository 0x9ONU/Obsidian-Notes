Date: 8th February 2023
Date Modified: 8th February 2023
File Folder: Week 3
#Programming2 

```ad-abstract
title: Today's Topics
collapse: open

- Class Activity

```

## Full Game.java



```java
import java.util.Scanner;
import java.util.Random;

/**
 * Write a description of class FullGame here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class FullGame
{
    // instance variables - replace the example below with your own
    static Scanner input = new Scanner(System.in);
    
    public static void main(String[] args) {
        
        // Player 1
        String name1 = getUserPetName("cat");
        Cat c = new Cat(name1, getRandomNumber(), getRandomNumber(), 0);

        // Player 2
        String name2 = getUserPetName("penguin");
        Penguin p = new Penguin(name2, getRandomNumber(), getRandomNumber(), 0);
        
        while((c.getLocation() < 10) && (p.getLocation() < 10)) {
            // Player 1
            int move = getRandomNumber();
            if(move == 0) { // feed
                c.feed(getRandomNumber());
            }
            else if(move == 1) { // walk
                c.walk();
            }
            else { // pet
                c.pet(getRandomNumber() * 10);
            }
            System.out.println(c.toString());
            if(c.winGame()) { System.out.println("Cat wins!"); break; }
            
            // Player 2
            move = getRandomNumber();
            if(move == 0) { // feed
                p.feed(getRandomNumber());
            }
            else if(move == 1) { // swim
                p.swim();
            }
            else { // play
                p.play(getRandomNumber() * 10);
            }
            System.out.println(p.toString());
            if(p.winGame()) { System.out.println("Penguin wins!"); break; }
            
        }
        
    }


    /**
     * This method gets the pet name from the user (either Cat or Penguin)
     *
     * @param  animal  name of the animal to be displayed in prompt
     * @return    the name from the user
     */
    public static String getUserPetName(String animal)
    {
        Scanner keyboard = new Scanner(System.in);
        
        System.out.println("What do you want to name your " + animal + "?:");
        return keyboard.nextLine();
        
    }

    /**
     * This method uses the Random class to generate a random number
     * in the range 0 to 3
     *
     * @return    an int number 0, 1, 2, or 3
     */
    public static int getRandomNumber()
    {
        Random rand = new Random();
        return rand.nextInt(3);
    }
    
}
```

## Cat.java

```java

/**
 * Write a description of class Cat here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class Cat
{
    // instance variables - replace the example below with your own
    private String name = "Muffin";
    private int hunger = 0;
    private int happiness = 0;
    int location = 0;
    
    /**
     * Default Constructor for objects of class Cat
     * Sets everything to 0 and name to Cat
     */
    public Cat()
    {
        this.name = "Muffin";
        this.hunger = 0;
        this.happiness = 0;
        this.location = 0;
    }
    
    /**
     * Constructor for objects of class Cat
     * @param name - name of the cat
     * @param hunger - level of hunger
     * @param happiness - level of happy the cat is
     * @param location - starting location
     */
    public Cat(String name, int hunger, int happiness, int location)
    {
        // initialise instance variables
        this.name = name;
        this.hunger = hunger;
        this.happiness = happiness;
        this.location = 0;
    }
    
    // getters and setters
    String getName() { return this.name; }
    int getHunger() { return this.hunger; }
    int getHappiness() { return this.happiness; }
    int getLocation() { return this.location; }
    
    void setName(String name) { this.name = name; }
    void setHunger(int hunger) { 
        if(hunger < 0) { this.hunger = 0; }
        else if(hunger > 10) { this.hunger = 10; }
        else { this.hunger = hunger; }
        //System.out.println("    Hunger = " + this.hunger);
    }
    void setHappiness(int happiness) { 
        if(happiness > 10) { this.happiness = 10; }
        else if (happiness < 0) { this.happiness = 0; }
        else {this.happiness = happiness; }
    }
    void setLocation(int location) {
        if(location < 0) { this.location = 0; }
        else if (location > 10) { this.location = 10; }
        else { this.location = location; }
    }

    /**
     * This method moves the cat based on happiness level
     * Hunger level greater than 8, walk changes location by 3
     * Happiness and hunger less than 4, walk changes location by 1
     * Otherwise walk changes location by 2
     * 
     * As the cat walks, their hunger level goes up
     * if location changes by 3, hunger increases by 3
     * if location changes by 2, hunger increases by 2
     * if location changes by 1, hunger increases by 1
     */
    public void walk()
    {
        if(this.hunger > 8)
        {
            this.location += 3;
            this.hunger += 3;
        }
        else if (this.hunger < 4 && this.happiness < 4)
        {
            this.location += 1;
            this.hunger += 1;
        }
        else
        {
            this.location += 1;
            this.hunger += 1;
        }
        return;
    }        
        
    
    
    /**
     * This method feeds the cat. As we feed the cat, hunger 
     * level decreases
     * @param amount - the amount we are feeding the cat
     */
    public void feed(int amount)
    {
      System.out.println("You fed the cat " + amount + " Treats!");
      this.hunger -= amount;
    }
    
    /**
     * This method pets the cat. The higher the amount of time, 
     * the happier the cat will be
     * 
     * 15 or less, happiness increases 1
     * 15-30, happiness increases by 2
     * 31+, happiness increases by 3
     * 
     * @param time - the amount of time spend petting the cat
     */
    public void pet(int time)
    {
        System.out.println("You pet the cat for " + time + " minutes!");
        if (time >= 31) {
            happiness += 3;
        }
        else if (time > 15) {
            happiness += 2;
        }
        else {
            happiness += 1;
        }
    }
    
    /**
     * This method determiens if the cat has reaches the destination. Destination is location 10.
     * So if the cat is at location 10, the cat wins
     * @return boolean of false (not win) or true (win)
     */
    public boolean winGame()
    {
        if (location == 10) return true;
        return false;
    }
    
    /**
     * This method displays the cat's status
     * (hunger, happiness, and location) along with the name
     */
    public String toString()
    {
        // put your code here
        return this.getName() + ": " + "Hunger = " + this.getHunger() + 
        ", Happiness = " + this.getHappiness() + ", Location = " + 
        this.getLocation();
    }
}

```

## Penguin.java

```java

/**
 * Write a description of class Penguin here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class Penguin
{
    // instance variables - replace the example below with your own
    // instance variables - replace the example below with your own
    private String name = "Tennessee Tuxedo";
    private int hunger = 0;
    private int happiness = 0;
    int location = 0;
    
    /**
     * Default Constructor for objects of class Penguin
     * Sets everything to 0 and name to Penguin
     */
    public Penguin()
    {
        this.name = "Tennessee Tuxedo";
        this.hunger = 0;
        this.happiness = 0;
        this.location = 0;
    }
    
    /**
     * Constructor for objects of class Penguin
     * @param name - name of the Penguin
     * @param hunger - level of hunger
     * @param happiness - level of happy the Penguin is
     * @param location - starting location
     */
    public Penguin(String name, int hunger, int happiness, int location)
    {
        // initialise instance variables
        this.name = name;
        this.hunger = hunger;
        this.happiness = happiness;
        this.location = 0;
    }
    
    // getters and setters
    String getName() { return this.name; }
    int getHunger() { return this.hunger; }
    int getHappiness() { return this.happiness; }
    int getLocation() { return this.location; }
    
    void setName(String name) { this.name = name; }
    void setHunger(int hunger) { 
        if(hunger < 0) { this.hunger = 0; }
        else if(hunger > 10) { this.hunger = 10; }
        else { this.hunger = hunger; }
    }
    void setHappiness(int happiness) { 
        if(happiness > 10) { this.happiness = 10; }
        else if (happiness < 0) { this.happiness = 0; }
        else {this.happiness = happiness; }
    }
    void setLocation(int location) {
        if(location < 0) { this.location = 0; }
        else if (location > 10) { this.location = 10; }
        else { this.location = location; }
    }

    /**
     * This method moves the penguin based on happiness level
     * Hunger level greater than 8, swim changes location by 3
     * Happiness and hunger less than 4, swim changes location by 1
     * Otherwise swim changes location by 2
     * 
     * As the penguin swims, their hunger level goes up
     * if location changes by 3, hunger increases by 3
     * if location changes by 2, hunger increases by 2
     * if location changes by 1, hunger increases by 1
     */
    public void swim()
    {
        if(this.hunger > 8)
        {
            this.location += 3;
            this.hunger += 3;
        }
        else if (this.hunger < 4 && this.happiness < 4)
        {
            this.location += 1;
            this.hunger += 1;
        }
        else
        {
            this.location += 1;
            this.hunger += 1;
        }
        return;
    }
    
    /**
     * This method feeds the penguin. As we feed the penguin, hunger 
     * level decreases
     * @param amount - the amount we are feeding the penguin
     */
    public void feed(int amount)
    {
        System.out.println("You fed the penguin " + amount + " fish!");
        this.hunger -= amount;   
    }
    
    /**
     * This method allows the peguin to play. The higher the amount of time, 
     * the happier the penguin will be
     * 
     * 15 or less, happiness increases 1
     * 15-30, happiness increases by 2
     * 31+, happiness increases by 3
     * 
     * @param time - the amount of time spend playing with the penguin
     */
    public void play(int time)
    {
        System.out.println("You played with the penguin for " + time + " minutes!");
        if (time >= 31) {
            happiness += 3;
        }
        else if (time > 15) {
            happiness += 2;
        }
        else {
            happiness += 1;
        }
    }
    
    /**
     * This method determiens if the penguin has reaches the destination. Destination is location 10.
     * So if location is 10, it is a win
     * @return boolean of false (not win) or true (win)
     */
    public boolean winGame()
    {
        if (location == 10) return true;
        return false;
    }
    
    /**
     * This method displays the penguins's status
     * (hunger, happiness, and location) along with the name
     */
    public String toString()
    {
        // put your code here
        return this.getName() + ": " + "Hunger = " + this.getHunger() + 
        ", Happiness = " + this.getHappiness() + ", Location = " + 
        this.getLocation();
    }
}

```

test