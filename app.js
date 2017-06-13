#!/usr/bin/env node

//Node Declare
var http = require('http');
var fs = require('fs'); 


//Express Declare
var express = require('express');
var path = require('path');
var app = express();


app.set('port', 8080);

//Use public folder for assets
app.use(express.static(path.join(__dirname, 'public')));


var server = app.listen(app.get('port'), function() {
  var port = server.address().port;
  console.log('Listening: http://localhost:' + port);


  app.get('/hello', function (req, res) {
    res.send('Hello World!')
    console.log("Loaded hello route")
  })

  app.get('/user/:id', function(req, res) {
    res.send('user: ' + req.params.id);
  })


  app.get('/blog', function (req, res) {
    res.send('Hello Blog!')
    console.log("Loaded Blog route")
  })


  app.get('/access', function (req, res) {
    res.send("Date and time accessed: " + Date());

    fs.appendFile('access.txt', Date() + "\n", function(err) {
      if (err) throw err;
        console.log('Saved: ' + Date());
    })

  })

  app.use(function (req, res, next) {
    res.status(404).send("Page not available.")
    console.log("Loaded 404: " + req.url)
  })

})
