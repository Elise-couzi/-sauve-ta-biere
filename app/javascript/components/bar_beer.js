const showModal = ( ) => {

  const modals = document.querySelectorAll(".mymodal");
  const triggers = document.querySelectorAll(".mytrigger");
  const closeButtons = document.querySelectorAll(".myclose-button");
  
  triggers.forEach((trigger)=>{
    trigger.addEventListener("click", (event)=>{
      //if (event.target === trigger){
        addModal(trigger);
        console.log("test");
      //};
    const beernum = trigger.dataset.beerNUmber
    });
    // récupérer le beer number de la card sur laquelle on a cliqué, sotcker dans une variable
    // utiliser cette variabel et interpoller dans le query selector de cette modal
    // Faire une querry selector sur la modal selectionnée pour recupérer le bouton
    // ajouter une evenet listener la dessus qui appelle le remove de la classe modal
  });

   
  closeButtons.forEach((button)=>{
    button.addEventListener("click",(event)=>{
      const selector = event.currentTarget.dataset.selector;
        removeModal(selector);
        console.log("test2");
      });
    });
  
  const addModal = (trigger) => {
    const selector = `Modalnumber${trigger.dataset.beerNumber}`
    console.log(selector)
    const modal = document.getElementById(selector);
    modal.classList.add("myshow-modal");
  };
  // A chaque evet listener de click sur le btn , changer la classe de modal
   const removeModal =(selector)=>{
      const modal = document.querySelector(selector);
      console.log(modal);
      modal.classList.remove("myshow-modal");
  };
 // sur chacun des triggers, ajouter un add event listerner , click, aller chercher

  // function toggleModal() {
  //   modal.classList.toggle("myshow-modal");
  // };

  // function windowOnClick(event) {
  //   if (event.target === modal) {
  //   toggleModal();
  //   };
  // }
  // if(modal){
  //   trigger.addEventListener("click", toggleModal);
  //   closeButton.addEventListener("click", toggleModal);
  //   window.addEventListener("click", windowOnClick);
  // };
};

export {showModal};