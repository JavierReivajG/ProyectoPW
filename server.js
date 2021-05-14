const express = require ('express');
const passport = require('passport');
const cookieParser = require('cookie-parser');
const session = require('express-session');
const PassportLocal = require('passport-local').Strategy;

const app = express();

app.use(express.urlencoded({ extended: true }));


app.use(cookieParser('mi ultra hiper secreto'));

app.use(session({
    secret: 'mi ultra hiper secreto',
    resave: true,
    saveUninitialized: true
}));

app.use(passport.initialize());
app.use(passport.session());


passport.use(new PassportLocal(function(username,password,done){
    if(username === "javier" && password ==="javier")
    return done (null, {id:1,name:"javier" });

    done(null,false);
}));


passport.serializeUser(function(user,done){
    done(null,user,id);
});

passport.deserializeUser(function(id,done){
    done(null,{id: 1,name:"javier"});
});


app.set('view engine', 'ejs');

app.get("/",(req,res,next)=>{
   if(req.isAuthenticated()) return next();

   res.redirect("/login");
},(req,res)=> {
    //si ya iniciamos mostrar bienvenida

    //si no, mostrar login
    res.send ("hola");
});

app.get("/login",(req,res)=>{
    // mostrar el login
    res.render("login");
});

app.post("/login", passport.authenticate({
    successRedirect: '/',
    failureRedirect: "/login"
}));



app.listen(8080,()=> console.log("Server started"));