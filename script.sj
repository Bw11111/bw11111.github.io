/// scriptfinished.js

document.addEventListener("DOMContentLoaded", event => {
   try {
      const elements = document.querySelectorAll('body *');
      
      // Loop through each element and change its font family with !important
      elements.forEach(element => {
         element.style.setProperty('font-family', '"Comic Sans MS", "Comic Sans", cursive', 'important');
      });
   } catch (error) {
      console.error("Error:", error);
   }
});
