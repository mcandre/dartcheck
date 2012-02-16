#library("dartcheck");

genBool() {
	return Math.random() > 0.5;
}

genInt(max) {
	var i = (Math.random() * max).toInt();

	if (genBool()) {
		return i * -1;
	}
	else {
		return i;
	}
}

genDouble(max) {
	var d = Math.random() * max;

	if (genBool()) {
		return d * -1;
	}
	else {
		return d;
	}
}

genByte() {
	return genInt(256).abs();
}

genList(gen) {
	var len = genInt(100).abs();

	var lst = [];

	for (var i = 0; i < len; i++) {
		lst.add(gen());
	}

	return lst;
}

genCharCode() {
	return genInt(128).abs();
}

genString() {
	return new String.fromCharCodes(genList(genCharCode));
}

forAll(property, generators) {
	var passedAllTests = true;

	for (var i = 0; i < 100; i++) {
		var testCase = [];

		for (var j = 0; j < generators.length; j++) {
			testCase.add(generators[j]());
		}

		print("Test case: ${testCase}");

		// With help from Dart
		// http://www.dartlang.org/articles/emulating-functions/
		var result = property.call.apply(testCase);

		if (!result) {
			passedAllTests = false;

			print("*** Failed!");
			print("${testCase}");

			break;
		}
	}

	if (passedAllTests) {
		print("+++ OK, passed 100 tests");
	}
}