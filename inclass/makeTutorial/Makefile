#build an executable file for Student example
#all: Student.cpp Driver.cpp
#	g++ -std=c++11 -o studs Student.cpp Driver.cpp
#

OBJS = Student.o Driver.o
CPPFLAGS = -Wall -std=c++11
PROG = stud
CC = g++

$(PROG): $(OBJS) 
	$(CC) -o $(PROG)j$(CPPFLAGS) $(OBJS) 

Student.o: Student.cpp Student.h
	$(CC) $(CPPFLAGS) -c Student.cpp

Driver.o: Driver.cpp
	$(CC) $(CPPFLAGS) -c Driver.cpp

clean: 
	$(RM) $(PROG) $(OBJS)
