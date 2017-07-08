var Promise = require('bluebird');

module.exports = {
    save: function (saveInfo) {
        return new Promise(function (resolve) {
             var data = saveInfo;

             var mysql = require('mysql');
var con = mysql.createConnection({
   host: "localhost",
  user: "root",
  password: "",
   database: "hrbot"
 });
 con.connect(function(err) {
  if (err) throw err;

  var info  = {
      name: saveInfo.name, 
      email: saveInfo.email, 
      contact: saveInfo.contact,
      experience: saveInfo.experience,
      company: saveInfo.company,
      profile: saveInfo.profile,
      ctc: saveInfo.ctc,
      ectc: saveInfo.ectc,
      notice: saveInfo.notice,
    };
var query = con.query('INSERT INTO candidates SET ?', info, function(err, result) {
     if (err) throw err;
});
 });
            // complete promise with a timer to simulate async response
            setTimeout(function () { resolve(data); }, 1000);
        });
    }
};