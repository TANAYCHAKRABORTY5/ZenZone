const username = document.querySelector(".username");
const activemain = document.querySelector(".activemain");

const bool = false;

if (!bool) {
  activemain.classList.add("hidden");
  username.classList.remove("hidden");
}
const btn = document.querySelector(".click");
const input = document.querySelector(".gettext");
const here = document.querySelector(".userhere");

btn.addEventListener("click", function (event) {
  event.preventDefault();
  var name = input.value;
  if (input.value) {
    username.classList.add("hidden");
    activemain.classList.remove("hidden");
    console.log(name);
    here.innerHTML = name;
  }
});

console.log(username, activemain);
