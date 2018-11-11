# dartcheck - a Dart port of the QuickCheck unit test framework

## HOMEPAGE

http://www.yellosoft.us/quickcheck

## EXAMPLE

```console
$ dart example.dart
Random bool: false
Random int: 1267
Random double: -5941.822277
Random byte: 254
Random string: i>GYMlw9*B|;F5atq8o?GYiR0(
&	J~sp8F5EIZ2DYzI6).
                          &AX!@Xz
```

## WARNING

The PRNG is Dart's `Math.random()`, which [fails](http://code.google.com/p/dart/issues/detail?id=771) to exhibit any form of seeding as of Dart v0.07. Until this is fixed, test cases generated by dartcheck will not begin to cover the input space of any properties passed to `forAll()`.
