
var nombre = "";
var correo = "123";
var contra = "123";

function iniciarsesion() 
{
    var a = document.getElementById('username').value;
    var b = document.getElementById('password').value;


    if (correo == a)
    {
        if (contra == b)
        {
            alert("Bienvenido");
        }
        else
        {
            alert("Contraseña incorrecta");
        }
    } 
    else
    {
        alert("Este correo no existe");
    }
}



function registrarse()
{
nombre = document.getElementById('rnomnbre').value;
correo = document.getElementById('remail').value;
contra = document.getElementById('rcontra').value;
console.log(contra);
console.log(nombre);
console.log(correo);

}
