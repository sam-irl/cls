#!/usr/bin/env python

import argparse

if __name__ == "__main__":
	parser = argparse.ArgumentParser(description='Set number of lines to clear.')
	parser.add_argument('-l', '--lines', type=int, default=100, help='Set the number of lines to clear.')
	args = parser.parse_args()
	n = args.lines
	for i in range(n - 1):
		print "\n"
