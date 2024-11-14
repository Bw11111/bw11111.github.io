/// scriptfinished.js

window.addEventListener("load", event => {
setTimeout(function() {
      try {
         const elements = document.querySelectorAll('body *');
         
         // Loop through each element and change its font family with !important
         elements.forEach(element => {
            element.style.setProperty('font-family', '"Comic Sans MS", "Comic Sans", cursive', 'important');
         });
      } catch (error) {
         console.error("Error:", error);
      }
   }, 500);
});
