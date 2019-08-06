# helloworld-make-build-tool-example
Just a Jave HelloWorld program compiled with make and make file as an exmaple.

When a project is more complex than a single class , and it usually is, then it is wise to define a project structure. 

 

We will have to decide we store the source files, where the resource files those that contain some resource for the program but are not java source are where .class files should be written by the compiler, and so on. 

 

Generally , the structure is mainly the directory setup and the configuration of the tools that perform the build. 

 

The compilation of complex programs cannot be feasibly done using the command line issuing javac commands, if we have 100 java source files. 

 

The make program was originally created in April 1976. It is included in the Unix system so this tool is available without any extra installation on Linux, Mac OS X or any other Unix-based systems.  

 

The make is not tied to Java. 

 

The make is a dependency description language that has a very simple syntax. 

 

The make , just like any other build tool , is controlled by a project description file. In the case of make , this file contains a rule set.  

 

The description file is usually named Makefile  but in case the name of the description file is different , it can be specified as a command-line option to the make command. 

 

Rules in Makefile follow each other and consist of one or more lines. The first line starts at the first position , there is no tab or space at the start of the he line and the following lines start with a tab character. 

 

E.g. of makefile for HelloWorld.java 

 
```
run: hello.jar 

    java -cp hello.jar HelloWorld 

  

hello.jar : HelloWorld.class 

    jar -cf hello.jar HelloWorld.class 

  

HelloWorld.class : HelloWorld.java 

    javac HelloWorld.java 
```
 

 

This file defines three so-called targets: run , hello.jar , and HelloWorld.class to create HelloWorld.class , type the following line at the command prompt: 

 
```
> make HelloWorld.class 
```
 

Make will look at the rule and see that it depends on HelloWorld.java , if HelloWorld.class file doesn't exist , or HelloWorld.java is newer than the Java class file, make will execute the command that is written on the next line and it will compile the Java Source file. 

 

If the class file was created following the last modification of HelloWorld.java , then make know that there is no need to run the command. 

 

In this case creating HelloWorld.class the make program has an easy task. The source file was already there. If issue the make hello.jar command , 

 
```
 > make hello.jar 
```
 

Procedure is more complex, the make command sees that in order to create hello.jar , it needs HelloWorld.class, which itself is also a target on another rule. Thus it may need to be created. 

 

First , it starts the problem the same way as before. If HelloWorld.class is there , and is older than hello.jar , there is nothing to do . 

 

If it is not there , or is newer than hello.jar , then the jar –cf  hello.jar HelloWorld.class command needs to be executed. 

 

Although not necessarily at the moment when it realizes that it has to be performed. 

 

The make program remember that this command has to be executed sometime in the future when all the commands that are needed to create HelloWorld.class are already executed successfully.  

 

In general a rule can have the following format :  

 

E.g.: 

 
```
Target : dependencies 

Command 
```
The make command can create any target using the make target command by first calculating which commands to execute  and then executing them one by one. 

 

The commands are shell commands executing in a different process and may pose problems under Windows , which  may render the Makefile files operating system dependent. 

 

Note that run target is not an actual file that make creates . A target can be a file name or just a name for the target.  

 

In the latter case , make will never consider the target to be readily available. 

 

We generally do not use make for a Java project. 

 

The make tool has many powerful features. 

 

The man make command will display the documentation of the tool on the screen: 

 
```
> man make 
```
 

The main points that you should remember about make are as follows: 

 

It defines the dependencies of individual artifacts (target) in a declarative way. 

It defines the actions to create the missing artifacts in an imperative way 

 

 

 

 
