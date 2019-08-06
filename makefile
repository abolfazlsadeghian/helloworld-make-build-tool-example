run: hello.jar
	java -cp hello.jar HelloWorld

hello.jar : HelloWorld.class
	jar -cf hello.jar HelloWorld.class

HelloWorld.class : HelloWorld.java
	javac HelloWorld.java
