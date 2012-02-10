(function(){
  var TemplatesFor = function() {};
  TemplatesFor.prototype = new Array();
  TemplatesFor.prototype.get = function(key) {
    var i, t;
    for (var i = 0; i < this.length; i++) {
      if (this[i][0] == key) {
        t = this[i][1];
      }
    };
    if (typeof t !== "undefined" && t !== null) {
      return t;
    };
    throw 'template does not exist';
  };
  this.Templates = new TemplatesFor;
}).call(this);
