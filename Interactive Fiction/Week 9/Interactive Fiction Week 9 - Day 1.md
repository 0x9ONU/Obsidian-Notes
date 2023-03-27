Date: 27th March 2023
Date Modified: 27th March 2023
File Folder: Week 9
#InteractiveFiction 

```ad-abstract
title: Today's Topics
collapse: open

- Introduction to Tables

```

# Tables

- Useful for combining a run of basically similar rules in a simple and concise way.
- Format similar to that in a book or jounral article:

```ad-summary
title: Layout
- title line that names that table
	- **must start wtih Table**
- column title line containing a tab-separated list of column headers
- One or more rows of information
- A blank line that ends the table
```

## Example

Table 2.1 - Selected Elements
| Element    | Symbol | Atomic Number | Atomic weight |
| ---------- | ------ | ------------- | ------------- |
| "Hydrogen" | "H"    | 1             | 1             |
| "Iron"     | "Fe"   | 26            | 56            |
| "Zinc"     | "Zn"   | 30            | 65            |
| "Uranium"  | "U"    | 92            | 238              |

# Accessing Information

- Several ways for various purposes
	- Note that you can both read form and write to a table
	- Using a table for stroing read/write data will be looked at later
- Will focus on what's needed for paractical conversation:
	- Need column called topic 
	- Need to use soemthing similar to:

## Syntax
```
Instead of asking some about a topic listed in the Table of Foo:
```
```ad-important
- If the player enters ``ask Fred about pencil``, and "pencil" is an entry in the topic column, thent hat row has been matched
- Can now access any other data in that row by using the column header title followed by the word entry
```

```ad-note
The topic entry can have multiple matching words separated by a forward slash
```






