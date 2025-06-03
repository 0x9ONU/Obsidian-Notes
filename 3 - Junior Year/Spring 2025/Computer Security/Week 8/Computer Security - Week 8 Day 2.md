Date: 19th March 2025
Date Modified: 19th March 2025
File Folder: Week 8
#computersecurity

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

# Software Security Day 3

## Cross Site Scripting (XSS) Attacks

```ad-summary
title: Definition
A web server security uvlnerability that injects client-side scirpts into a web server's web page.
```

*Examples*:
1. Message boards
2. Online Forums
3. Web Pages that allow users to upload data

Injected script can access session tokens, cookies, or other sensitive information retained by a browser for the website hosting the web page.
- THe input provided by onoe user is subsequently output to another user
- Commonly seen in scripted Web applications

**Same Origin Policy (Content Security Policy)**: The assumption that all content from one site is equally trusted and hence is permitted to interact with other content from the site.
- XSS exploits his assumption as a web page will trust a malicious script to interact with a vulnerable script equally.
 
### Types of XSS Attacks

**Stored XSS**: Malicious script stored on a server, affecting the users accessing the vulnerable page

**Reflected XSS**: Malicious script reflected off a server, targeting users through manipulated URLs

**DOM-based XSS**: Harmful code manipulates web page’s DOM executing attacks in user’s browser

### XSS Example

![[Pasted image 20250319142946.png]]

## Validating Input Syntax

1. **Data Confirmation**: Ensures that data conforms with any assumptions made about the data before subsequent use
2. **Allowlisting**: Input data should be compared against what is wanted
3. **Denylisting**: Alternative is o compare the input with known dangerous values
4. **Accept Known Safe Data**: By only accepting known safe data the program is more likely to remain secure

### Alternative Encoding

1. There are multiple means of encoding text
2. Growing requirement to support users around the globe and to interact with them using their own languages
3. Unicode used for internationalization (different languages use more Unicode)
4. Canonicalization
	- Transforming input data into a single, standard, minimal representation
	- Once this is done the input data can be compared with a single representation of acceptable input values

### Numeric Input

Numeric inputs are typically stored in fixed-sized value
- 8, 16, 32, 64-bit integers
- Floating point numbers depend on standard used by processor
- Values may be signed or unsigned

Must correctly interpret text form and process consistently
- Have issues comparing signed to unsigned
- Could be used to thwart buffer overflow check

### Input Fuzzing

Developed by Professor Barton Miller at UW Madison in 1989. Today there are multiple tools:
- Peach Fuzzer
- OSS-Fuzz
- ClusterFuzz

```ad-summary
title: Defintion
Software testing technique that uses randomly generadata as inputs to a program.
```

- Range of inputs is very large
- Inen is to determine if the program or function correctly handles abnormal inputs
- Simple, free of susumptions, cheap
- Assists with reliability as well as security

Can also use templates to generate *known problem inputs*:
- Disadvantage is that bugs triggered by anotehr input could be missed
- A combination of approaches is needed for reaonably comprehensive coverage of the inputs

