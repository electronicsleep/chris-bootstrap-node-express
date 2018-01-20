#!/usr/bin/env node

//Node Declare
var http = require('http');
var fs = require('fs'); 


//Express Declare
var express = require('express');
var favicon = require('serve-favicon')
var path = require('path');
var app = express();


app.set('port', 8000);

//Use public folder for assets
app.use(express.static(path.join(__dirname, 'public')));

//Favicon
app.use(favicon(path.join(__dirname, 'public/images', 'favicon.ico')))


var server = app.listen(app.get('port'), function() {
  var port = server.address().port;
  console.log('Listening: http://localhost:' + port);


  app.get('/about', function (req, res) {
    console.log("Loaded About route")

    fs.readFile('public/about.html',function (err, data){
        res.writeHead(200, {'Content-Type': 'text/html','Content-Length':data.length});
        res.write(data);
        res.end();
    });
  })


  app.get('/linux', function (req, res) {
    console.log("Loaded Linux route")

    fs.readFile('public/linux.html',function (err, data){
        res.writeHead(200, {'Content-Type': 'text/html','Content-Length':data.length});
        res.write(data);
        res.end();
    });
  })


  app.get('/apple', function (req, res) {
    console.log("Loaded Apple route")

    fs.readFile('public/apple.html',function (err, data){
        res.writeHead(200, {'Content-Type': 'text/html','Content-Length':data.length});
        res.write(data);
        res.end();
    });
  })


  app.get('/projects', function (req, res) {
    console.log("Loaded Projects route")

    fs.readFile('public/projects.html',function (err, data){
        res.writeHead(200, {'Content-Type': 'text/html','Content-Length':data.length});
        res.write(data);
        res.end();
    });
  })

  app.get('/user/:id', function(req, res) {
    res.send('user: ' + req.params.id);
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
