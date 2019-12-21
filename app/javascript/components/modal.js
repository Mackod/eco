let modalBtn   = document.getElementById("modal-btn")
let modal      = document.querySelector(".modal")
let signup_btn = document.querySelector(".signup-btn")
let login_btn  = document.querySelector(".login-btn")
let signup     = document.querySelector(".signup")
let login      = document.querySelector(".login")

  if ((modalBtn == null) || (modal == null) || (signup_btn == null) || (login_btn == null) || (signup == null) || (login == null)) {
  console.log("You are succesfully signed in :)");
} else {
  signup_btn.onclick = function(){
  signup.classList.remove("hidden");
  login.classList.add("hidden");
  signup_btn.classList.remove("btn-opacity");
  login_btn.classList.add("btn-opacity");
  }

  login_btn.onclick = function(){
    login.classList.remove("hidden");
    signup.classList.add("hidden");
    signup_btn.classList.add("btn-opacity");
    login_btn.classList.remove("btn-opacity");
  }

  modalBtn.onclick = function(){
    modal.style.display = "block"
  }

  window.onclick = function(e){
    if(e.target == modal){
      modal.style.display = "none"
    }
  }
}
