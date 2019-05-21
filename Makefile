build/may3.js: src/may3.cpp
	em++ src/may3.cpp -o build/may3.js \
	-s WASM=1   \
	-s EXTRA_EXPORTED_RUNTIME_METHODS='["ccall", "cwrap"]' \
	-std=c++11 -s ALLOW_MEMORY_GROWTH=1 \
	-s EXPORTED_FUNCTIONS="['_create_maze']" \
	-s TOTAL_MEMORY=268435456


test: src/test.cpp
	em++ src/test.cpp -o build/test.js \
	-s WASM=1   \
	-s EXTRA_EXPORTED_RUNTIME_METHODS='["ccall", "cwrap"]' \
	-std=c++11 -s ALLOW_MEMORY_GROWTH=1 \
	-s EXPORTED_FUNCTIONS="['_test_func']" \
	

ctest: src/may3.cpp src/main.cpp
	g++ src/main.cpp -o build/a.out
	build/a.out < graph.txt | sed -e 's/-1 /\n/g'
