Date: 17th March 2025
Date Modified: 17th March 2025
File Folder: Week 8
#operatingsystems

# Reflection Questions

## Part I: Exploring the Shell

```ad-question
Why is it necessary to implement a change directory `cd` command in the shell itself? Could it be implemented by an external program instead?
```

Due to the nature of the change directory (`cd`) command, it is critical that it must be implemented directly in the shell rather than in an external program. Unlike the other commands that are implemented as programs in this stripped down version of the shell, the `cd` command uses both absolute and *relative* pathing, which allows a user to hop from one folder to the next without having to provide the entire filepath. Additionally, the shell itself has to keep track of where it is in the file system so that this relative pathing can work in the first place. The shell cannot keep track of where it is relatively to the current path if `cd` is implemented with an external program.

```ad-question
Explain how our sample shell implements the change directory command.
```

The simple shell implements three different default commands, which allows the user to do the bare minimum. The first command consists of an empty line, which the program will just print the same line again. The second command implements the exit command, which will close out of the shell and terminate itself. The third command is what we are most interested in. The change directory command (`cd`) is implemented using a combination of lower-level operating system commands. To ensure that the command is ran properly, it includes an if statement that checks if the first argument of the shell contains `cd` to know if the user is trying to run the change directory command and if there is more than 1 argument so it knows that the user provided a path. Then, it will use the UNIX `chdir` command with the second argument as the input. If the command returns 1, it specifies an error happened and the change directory failed. Otherwise, it will change the directory properly and will provide no error message.

```ad-question
What would happen if this program did not use the fork function, but just used `execv` directly?
```

If the program chose the use the `execv()` function rather than the `fork()` function, there would be catastrophic failure on the shell’s part. The `execv()` command *replaces* the current process with a new process that is specified in the argument. Even though `execv()` is less resource intensive, it would overwrite the current “shell” process, which will break the shell. On the other hand, the `fork()` command will create a child process that is underneath of the “shell” process, which allows user to execute commands that return to the shell’s process after completion. 

## Part II: Fork Command

### Section A: Using the Fork Command

```ad-question
Explain what the return value of `fork()` means and how this program uses it.
```

The return value of `fork()` specifies the process ID that was created for the new process. The program uses the process ID to keep track of what child process is running under the parent shell. If the process ID is *less than* zero, it means that there was an integer overflow and that the kernel ran out of memory to run the fork. When the process ID is zero, it will exit from the shell since it assumes that a higher privileged process has taken over. Otherwise, it will run the child process and return to the parent shell as it finishes. 

```ad-question
What would happen if `fork()` were called prior to `chdir()`, and `chdir()` invoked within the forked child process?
```

See **Reflection**

```ad-question
Can you run multiple versions of `./b.sh` in the background? What happens to their output?
```


### Section B: `cd` With Fork

```ad-question
Can you execute a second instance of our shell from within our shell program? Which shell receives your input?
```



```ad-question
What ahppens if you type `CTRL-C` while the countdown script is running? What if `./b.sh` is running in the background?
```



```ad-question
Can a shell kill itself? Can a shell within a shell kill the parent shell?
```


# Reflection

In the allotted time, I was unable to finish the given reflection questions. I tried my best to get every question done, but I often take my time when it comes to writing assignments since I want to make sure that my language is proper and correct. The parts of the assignment that I was able to cover by the end of the class did make sense; however, I felt that there was a lot of tasks to do within the hour. 