void main() {
  test(true);
  print(1.abs());
}

test(val) {
  var a = val ? 'a' : 'b';

  if ( false || '' == '') {
    print(a);
  }
}
