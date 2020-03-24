let newPost = document.querySelector(".new-post")
let realnewPost = document.querySelector(".post-for-new")

newPost.addEventListener("click", (event) => {
  newPost.style.display = "none";
  realnewPost.style.display = "flex";
});
