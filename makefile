CXX = gcc
CXXFLAGS = -w -O3

gauss:
	$(CXX) gauss-sequential.c $(CXXFLAGS) -o gauss-sequential
	$(CXX) gauss-openmp.c $(CXXFLAGS) -fopenmp -o gauss-openmp
	$(CXX) gauss-cilk.c $(CXXFLAGS) -fcilkplus -o gauss-cilk

clean:
	rm -f gauss-sequential
	rm -f gauss-openmp
	rm -f gauss-cilk
