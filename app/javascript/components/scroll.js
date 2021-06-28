
const initScroll = () => {
  console.log("hello");

  const buttons = document.querySelectorAll(".btn-scroll");
  console.log(buttons);

  if (buttons) {
    buttons.forEach((button) => {

    console.log(button);
    button.addEventListener("click", (event) => {
        const elementToScrollTo = document.getElementById(`${parseInt(button.parentElement.id) + 1}`);
        console.log(elementToScrollTo);

        window.scrollTo({ top: elementToScrollTo.offsetTop, behavior: 'smooth' });
    });
});
  }

};

export {initScroll};
