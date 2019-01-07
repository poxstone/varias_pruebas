void main() {
  simpleParam();
  namedParams();
  extededClass();
  paramObjectClass();
}


class SimpleParam {
  // private var start with "_"
  var _value;
  // constructor
  SimpleParam(value) {
    _value = value;
  }
  // getter return _value
  get value => _value;
  // setter set val with "value" param
  set value(val) => _value = val;
}
simpleParam() {
  // call
  var o = new SimpleParam('Valor 1');
  // get value
  print("SimpleParam = '${o.value}'");
  // set value
  o.value = 'Valor 1b';
  print("SimpleParam = '${o.value}'");
}


/* with named parameters */
class NamedParams {
  var _value;
  var _name;
  // constructor with auto set var "this._name"
  // constructor with default value
  NamedParams(this._name, {value: 'defaul value'}) {
    _value = value;
  }
  get value => _value;
  get name => _name;
}
namedParams() {
  // call with parameter
  var o = new NamedParams('my var name', value: 'Valor 2');
  print("NamedParams = '${o.name}', '${o.value}'");
}


class SimpleClass {
  String _value1;
  get value1 => _value1;
  set value1(val) => _value1 = val;
  // alternative constructor
  SimpleClass({value: 'default val 1'}){
    this.value1 = value;
  }
}
class ExtededClassA extends SimpleClass {
  ExtededClassA(value1) {
    super._value1 = value1;
  }
}
class ExtededClassB extends SimpleClass {
  ExtededClassB(value1): super(value:value1);
}
extededClass() {
  var o1 = new ExtededClassA('Valor A');
  print('ExtededClassA = ${o1.value1}');
  var o2 = new ExtededClassB('Valor B');
  print('ExtededClassB = ${o2.value1}');
}


class ParamObjectClass {
  Map<dynamic, String> map;
  ParamObjectClass(this.map);
}
paramObjectClass() {
  var o = ParamObjectClass({'variable': 'hola'});
  print('ParamObjectClass = ${o.map}');
}
