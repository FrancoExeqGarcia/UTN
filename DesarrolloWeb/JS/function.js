/**
 * 
 * 
document.getElementById('boton').onclick = function(){
    console.log("Capturamos el evento click");
    document.getElementById("demo").innerHTML = "Estamos probando nuestro primer evento en js";
}
 * 
 */
// document.addEventListener('click', function(){
// console.log("Hola mundo desde eventListener");
// document.getElementById("demo").innerHTML = "Estamos probando nuestro primer evento en js";

// });
document.getElementById('boton').addEventListener('click', function(){
    console.log("Hola mundo desde eventListener");
    document.getElementById("demo").innerHTML = "Estamos probando nuestro primer evento en js";
});

document.getElementById('boton_color').addEventListener('click', function(){
    document.body.style.backgroundColor = '#FF0000';
});
document.getElementById('boton_default').addEventListener('click', function(){
    document.body.style.backgroundColor = 'blue';
});