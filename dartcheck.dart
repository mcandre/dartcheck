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