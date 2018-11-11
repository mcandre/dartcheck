#!/usr/bin/env dart

#import("dartcheck.dart");

propEven(i) {
    return i % 2 == 0;
}

genSmall() {
    return genInt(1000);
}

genEven() {
    var i = genSmall(1000);

    if (i % 2 != 0) {
        return i + 1;
    }
    else {
        return i;
    }
}

main() {
    forAll(propEven, [genSmall]);
    forAll(propEven, [genEven]);
}
