var exec = require('cordova/exec');

function ApnsToken() {
  //console.log("plugin com.vbandrew.multishot: ha sido creado");
}

ApnsToken.prototype.getToken = function(success, fail){
  exec(success, fail, "ApnsToken", "getToken",[]);
};


var p = new ApnsToken();
module.exports = p;