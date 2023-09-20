const menu=document.querySelector("#ham")
const mobilenav=document.querySelector(".mobile-nav")

console.log(mobilenav);

menu.addEventListener("click", () => {
    mobilenav.classList.toggle("hidden")
    console.log(mobilenav);
})
