const ct = document.getElementsByClassName("categoryClick");

function selectAll(selectAll)  {
    const checkboxes 
       = document.querySelectorAll('input[type="checkbox"]');
    
    checkboxes.forEach((checkbox) => {
      checkbox.checked = selectAll.checked
    })
  }

function handleClick(event) {
  console.log(event.target);
  console.log(event.target.classList);

  if (event.target.classList[1] === "clicked") {
    event.target.classList.remove("clicked");
  } else {
    for (var i = 0; i < ct.length; i++) {
      ct[i].classList.remove("clicked");
    }
    event.target.classList.add("clicked");
  }
}

function init() {
  for (var i = 0; i < ct.length; i++) {
    ct[i].addEventListener("click", handleClick);
  }
}

init();