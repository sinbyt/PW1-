
document.addEventListener("DOMContentLoaded", function() {
  document.getElementById("login").addEventListener('submit', validarFormulario); 

});
function validarFormulario  (evento){
  evento.preventDefault(); //preventing from form submitting
  // //if email and password is blank then add shake class in it else call specified function
  // (eInput.value == "") ? eField.classList.add("shake", "error") : checkEmail();

  // setTimeout(()=>{ //remove shake class after 500ms
  //   eField.classList.remove("shake");
   
  // }, 500);
  var correo = document.getElementById("correo").value;
  var validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
  
    // if (!correo.value.match(validRegex)) {
  
    //   alert("Ingrese un correo valido");
  
    //   return;
  
    // } 


    // let pattern = /^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$/; 
    // if(correo != pattern){ 
     
    //   return
     
    // }
  

  
  
  alert("Correcto");
  this.submit();

}
