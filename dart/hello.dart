void main() {
  test(true);
}

test(val) {
  var a = val ? 'a' : 'b';

  if ( false || '' == '') {
    print(a);
  }
}
