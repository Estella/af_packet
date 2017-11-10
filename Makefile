all:
	g++ fastnetmon_packet_parser.c -ofastnetmon_packet_parser.o -Wno-write-strings -c -std=c++11
	g++ af_packet_rx_ring.cpp fastnetmon_packet_parser.o -lpthread -std=c++11
