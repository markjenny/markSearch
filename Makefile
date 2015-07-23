objects=ThreadPool.o IndexTest.o Indexmodel.o 
IndexEngine:$(objects)
	g++ -o IndexEngine $(objects) -lpthread -lboost_system -lboost_thread
ThreadPool.o : ThreadPool.h ThreadPool.cpp
	g++ -g -Wall -c ThreadPool.cpp
IndexTest.o : Indexmodel.h IndexTest.cpp
	g++ -g -Wall -c IndexTest.cpp
Indexmodel.o : Indexmodel.h Indexmodel.cpp
	g++ -g -Wall -c Indexmodel.cpp
clean:
	rm IndexEngine $(objects)
