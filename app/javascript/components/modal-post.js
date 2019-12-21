let modalBtns   = document.querySelectorAll("#modal-btn-post")
let modals    = document.querySelectorAll(".modal-post")

modalBtns.forEach((modalBtn) => {
  modalBtn.onclick = function(){
    modalBtn.nextElementSibling.style.display = "block"
    document.body.style.overflowY = "hidden";
    window.onclick = function(e){
      if(e.target == modalBtn.nextElementSibling){
        modalBtn.nextElementSibling.style.display = "none"
        document.body.style.overflowY = "auto";
      }
    }
  }
});
