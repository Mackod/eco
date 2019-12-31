let modalBtns   = document.querySelectorAll(".post")
let modals    = document.querySelectorAll(".modal-post")

modalBtns.forEach((modalBtn) => {
  modalBtn.onclick = function(){
    modalBtn.lastElementChild.style.display = "block"
    document.body.style.overflowY = "hidden";
    window.onclick = function(e){
      if(e.target == modalBtn.lastElementChild){
        modalBtn.lastElementChild.style.display = "none"
        document.body.style.overflowY = "auto";
      }
    }
  }
});
