#library("dartcheck");

genBool() {
	return Math.random() > 0.5;
}

genInt(max) {
	var val = (Math.random() * max).toInt();

	if (genBool()) {
		val *= -1;
	}

	return val;
}

genDouble(max) {
	var val = Math.random() * max;

	if (genBool()) {
		val *= -1;
	}

	return val;
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