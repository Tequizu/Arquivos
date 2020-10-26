var spunh;
var pun;


window.onload = function(){
  spunh = document.getElementById("spunh");
  pun = document.getElementById("pun");
  var bt12 = document.getElementById("bt12");
  bt12.onclick = mostrarspunh;
   spunh.classList.add("sumiu");


}
function mostrarspunh(){
   spunh.classList.remove("sumiu"); 
   

}

