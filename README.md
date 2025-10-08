# Github Merge Workshop

```bash
mkdir -p build && cd build
cmake ..
cmake --build .
ctest --output-on-failure
./app
cd .. && rm -rf build
```
