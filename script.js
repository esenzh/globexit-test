const form = document.getElementById("tableform");
form.addEventListener("submit", (event) => {
  event.preventDefault();
  event.stopPropagation();

  const color = event.target[0].value;
  const cellnumber = event.target[1].value;

  const cells = document.querySelectorAll("td");
  cells.forEach((cell, index) => {
    if (index + 1 !== +cellnumber) {
      cell.style.backgroundColor = color;
    }
  });
});
