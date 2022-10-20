```sh
yaroslav@yaroslav-VirtualBox:~/Desktop/labwork$ make
mkdir -p CACHE
g++ -c main.cpp -o CACHE/main.o
g++ -c calculator.cpp -o CACHE/calculator.o
ar -rcs CACHE/calculator.a CACHE/calculator.o
g++ CACHE/main.o CACHE/calculator.a -o ./result

yaroslav@yaroslav-VirtualBox:~/Desktop/labwork$ make run
15 + 20 = 35

yaroslav@yaroslav-VirtualBox:~/Desktop/labwork$ make clean
rm -rf CACHE
```
