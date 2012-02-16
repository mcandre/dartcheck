#!/usr/bin/env dart

#import("dartcheck.dart");

main() {
	print("Random bool: ${genBool()}");
	print("Random int: ${genInt(10000)}");
	print("Random double: ${genDouble(10000)}");
	print("Random byte: ${genByte()}");

	print("Random string: ${genString()}");
}