Date: 5th February 2025
Date Modified: 5th February 2025
File Folder: Week 3
#operatingsystems

```ad-abstract
title: Today's Topics
collapse: open

- Topic1
- Topic2
- Topic3

```

## Terminal Emulators

- In docker, just go to the "Exec" tab to see the linux shell (Bash by default)
- In Mac OS, just open the "Terminal" app and it runs a shell called ZSH
- In windows its more complicated
    
    - _Command Prompt_ is Microsoft's old school shell (hello DOS)
        
        - _Power Shell_ is the updated command prompt
        - _Terminal_ is a new window's application that runs power shell or command prompt instances
        - _Windows subsystem for Linux_ (WSL) is a Linux compatibility layer that runs a Linux shell with Windows
        
    

## Users

- Each Linux OS is made up of one or more users
- Allows for simultaneous access of the computer
- Helps Share the resources of the OS between different people
    
    - CPU time
        
        - RAM
        - I/O (folders, files, etc.)
        
    
- The "root" user (or super user) is the default admin user installed in the OS
    
    - The root user has unlimited privileges9
    

## Getting around Linux

- `cd` allows you to go to a folder (i.e., change directory)
- `ls` lists all of the files in a directory (i.e., list)
    
    - `ls -d` will also show you the current directory if the list is empty
    
- File structure is based off of tree-based model
    
    - Root is /
        
        - Subfolders beneath root are denoted as names separated by /
            
            - `/home/`
                
                - `/home/pi/`
                - `/home/pi/documents`
                - `/home/pi/downloads`
                - The `/root/` is folder called root but is not the _root_ directory
                
            
        
    
- ![[1 Operating Systems-20250203081446835.jpg]]

## Absolute Versus Relative Paths

- When your in shell, you're working in the directory in the file system
- Absolute paths contain the full path through the target directory
    
    - e.g., `/home/pi/Documents`
    
- Relative paths start at your current working directory and go from there
    
    - e.g., `Documents`
    
- You can find your current path with the `pwd`
    
    - . refers to your current directory
        
        - . . refers to your parent directory

![[Pasted image 20250205080700.png]]

![[Pasted image 20250205080706.png]]