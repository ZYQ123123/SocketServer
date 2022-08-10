CC=gcc
CXX=g++

BIN = wifi_video
PWD=$(shell pwd)

STD_11=-std=c++11 -std=gnu++11

	
all: $(BIN)

$(BIN).o: $(BIN).c
	$(CC) -c $(BIN).c -o $(BIN).o  -D_FILE_OFFSET_BITS=64
TcpSocketIF.o: TcpSocketIF.c
	$(CC) -c TcpSocketIF.c -o TcpSocketIF.o  -D_FILE_OFFSET_BITS=64
H264Encoder.o: H264Encoder.c
	$(CC) -c H264Encoder.c -o H264Encoder.o  -D_FILE_OFFSET_BITS=64
	

$(BIN): $(BIN).o TcpSocketIF.o H264Encoder.o
	$(CC) -o $(BIN) $(BIN).o  TcpSocketIF.o H264Encoder.o -lrt -lpthread -lz -lcrypto -lssl
	@echo "generate $(BIN) success!!!"

.PHONY:clean cleanall

clean:            
	@rm -f  *.o $(BIN)
	
cleanall:
	@rm -f  *.o $(BIN)
