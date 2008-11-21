function func(func){
  this.name = 'lendo.du';
  func(this.name);
}

var callbackFun = function(a){
  document.writeln(a);
}

var f = new func(callbackFun);

func.prototype.name = 'wyy.wen';

var z = new func(callbackFun);