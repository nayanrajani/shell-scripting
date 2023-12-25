# shell-scripting

## Resources

- https://www.geeksforgeeks.org/introduction-linux-shell-shell-scripting/

- https://www.tutorialspoint.com/unix/shell_scripting.htm

- https://www.freecodecamp.org/news/shell-scripting-crash-course-how-to-write-bash-scripts-in-linux/

- https://www.shellscript.sh/

## Grafana

- https://sbcode.net/grafana/

## waht is #!?

- Shebang

## Initialize the local directory as a Git repository

git init

## Add files

git add .

## Commit your changes

git commit -m "First commit"

## Add remote origin

git remote add origin {Remote repository URL}

## {Remote repository URL} looks like: {<https://github.com/user/repo.git}>

## Verifies the new remote URL

git remote -v

git pull {repo url} main
git pull origin main --allow-unrelated-histories
git push --set-upstream origin main
git add .
git commit -m "changes added"
git push

## Remove a git repo init

rm -rf .git

## change local branch name to main

git branch -m main

## Introduction:

- A shell script is a computer program designed to be run by the Unix/Linux shell which could be one of the following:

  - The Bourne Shell
  - The C Shell
  - The Korn Shell
  - The GNU Bourne-Again Shell

- A shell is a command-line interpreter and typical operations performed by shell scripts include file manipulation, program execution, and printing text.

- Extended Shell Scripts
  
  - Shell scripts have several required constructs that tell the shell environment what to do and when to do it. Of course, most scripts are more complex than the above one.

  - The shell is, after all, a real programming language, complete with variables, control structures, and so forth. No matter how complicated a script gets, it is still just a list of commands executed sequentially.

- The following script uses the read command which takes the input from the keyboard and assigns it as the value of the variable PERSON and finally prints it on STDOUT.

    #!/bin/sh
    echo "What is your name?"
    read PERSON
    echo "Hello, $PERSON"

## What is shell?

- A Shell provides you with an interface to the Unix system. It gathers input from you and executes programs based on that input. When a program finishes executing, it displays that program's output.

- Shell is an environment in which we can run our commands, programs, and shell scripts. There are different flavors of a shell, just as there are different flavors of operating systems. Each flavor of shell has its own set of recognized commands and functions.

- Shell Prompt
  - The prompt, $, which is called the command prompt, is issued by the shell. While the prompt is displayed, you can type a command.

- Shell reads your input after you press Enter. It determines the command you want executed by looking at the first word of your input. A word is an unbroken set of characters. Spaces and tabs separate words.

- Shell Types
  - In Unix, there are two major types of shells −

    - Bourne shell − If you are using a Bourne-type shell, the $ character is the default prompt.
      - The Bourne Shell has the following subcategories −
        - Bourne shell (sh)
        - Korn shell (ksh)
        - Bourne Again shell (bash)
        - POSIX shell (sh)

    - C shell − If you are using a C-type shell, the % character is the default prompt.
      - The different C-type shells follow −
        - C shell (csh)
        - TENEX/TOPS C shell (tcsh)

- The original Unix shell was written in the mid-1970s by Stephen R. Bourne while he was at the AT&T Bell Labs in New Jersey.

- Bourne shell was the first shell to appear on Unix systems, thus it is referred to as "the shell".

- Bourne shell is usually installed as /bin/sh on most versions of Unix. For this reason, it is the shell of choice for writing scripts that can be used on different versions of Unix.

- Shell Scripts

  - The basic concept of a shell script is a list of commands, which are listed in the order of execution. A good shell script will have comments, preceded by # sign, describing the steps.
  
  - There are conditional tests, such as value A is greater than value B, loops allowing us to go through massive amounts of data, files to read and store data, and variables to read and store data, and the script may include functions.
  
  - We are going to write many scripts in the next sections. It would be a simple text file in which we would put all our commands and several other required constructs that tell the shell environment what to do and when to do it.
  
  - Shell scripts and functions are both interpreted. This means they are not compiled.

## Important:

- #!/bin/sh
  - This tells the system that the commands that follow are to be executed by the Bourne shell. It's called a shebang because the # symbol is called a hash, and the ! symbol is called a bang.

- commands like pwd, date, ls etc
- :wq!

- chmod +x file name.
- ./filename

## Shell variable:

- A variable is nothing more than a pointer to the actual data. The shell enables you to create, assign, and delete variables.

- The name of a variable can contain only letters (a to z or A to Z), numbers ( 0 to 9) or the underscore character ( _).

- By convention, Unix shell variables will have their names in UPPERCASE.

- The following examples are valid variable names −

  - _ALI
  - TOKEN_A
  - VAR_1
  - VAR_2

- Following are the examples of invalid variable names

  - 2_VAR
  - -VARIABLE
  - VAR1-VAR2
  - VAR_A!

- The reason you cannot use other characters such as !, *, or - is that these characters have a special meaning for the shell.

- Variable defining:
  - variable_name=variable_value
  - For Example:
    - Name="Nayan Rajani"

- Access values:
  - echo $Name

- Read-only variable:
  - Shell provides a way to mark variables as read-only by using the read-only command. After a variable is marked read-only, its value cannot be changed.
  - readonly Name

- Unsetting Variables
  - Unsetting or deleting a variable directs the shell to remove the variable from the list of variables that it tracks. Once you unset a variable, you cannot access the stored value in the variable.

  - Following is the syntax to unset a defined variable using the unset command −

    - unset Name

- Variable Types
  - When a shell is running, three main types of variables are present −

    - Local Variables − A local variable is a variable that is present within the current instance of the shell. It is not available to programs that are started by the shell. They are set at the command prompt.

    - Environment Variables − An environment variable is available to any child process of the shell. Some programs need environment variables in order to function correctly. Usually, a shell script defines only those environment variables that are needed by the programs that it runs.

    - Shell Variables − A shell variable is a special variable that is set by the shell and is required by the shell in order to function correctly. Some of these variables are environment variables whereas others are local variables.

- The following table shows a number of special variables that you can use in your shell scripts −
  - $0 = The filename of the current script.
  - $n = These variables correspond to the arguments with which a script was invoked. Here n is a positive decimal number corresponding to the position of an argument (the first argument is $1, the second argument is $2, and so on).
  - $# = The number of arguments supplied to a script.
  - $* = All the arguments are double quoted. If a script receives two arguments, $* is equivalent to $1 $2.
  - $@ = All the arguments are individually double quoted. If a script receives two arguments, $@ is equivalent to $1 $2.
  - $? = The exit status of the last command executed.
  - $$ = The process number of the current shell. For shell scripts, this is the process ID under which they are executing.
  - $! = The process number of the last background command.

- Command-Line Arguments

  - The command-line arguments $1, $2, $3, ...$9 are positional parameters, with $0 pointing to the actual command, program, shell script, or function and $1, $2, $3, ...$9 as the arguments to the command.

  - Following script uses various special variables related to the command line−
  - check command-line.sh with ./command-line.sh Nayan Rajani

- Special Parameters $* and $@
  - There are special parameters that allow accessing all the command-line arguments at once. $* and $@ both will act the same unless they are enclosed in double quotes, "".
  
  - Both the parameters specify the command-line arguments. However, the "$*" special parameter takes the entire list as one argument with spaces between and the "$@" special parameter takes the entire list and separates it into separate arguments.
  
  - We can write the shell script as shown below to process an unknown number of commandline arguments with either the $* or $@ special parameters

  - check special parameter.sh with ./special-parameter.sh Nayan Rajani is 25 years old
  - echo $?

## Using Shell Arrays:

- 