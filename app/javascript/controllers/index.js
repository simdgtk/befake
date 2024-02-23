// Import and register all your controllers from the importmap under controllers/*

import { application } from "controllers/application"

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)

window.addEventListener('load', () => {
    const notification = document.querySelector('.notification');
    const newBefakepost = document.querySelector('.new-befakepost');
    setTimeout(() => {
      notification.style.transform = 'scale(1)';
      notification.style.top = "-30px";
    }, 2000);
    //animation bouton photo
    const takePhoto = document.querySelector(".take-photo");
    const takePhotoCircle = document.querySelector(".take-photo-circle");
    takePhoto.addEventListener("mouseover", ()=>{
      if (takePhotoCircle.style.height === "0px") {
        takePhotoCircle.style.height = "50px";
        takePhotoCircle.style.width = "50px";
      } else {
        takePhotoCircle.style.height = "0px";
        takePhotoCircle.style.width = "0px";
      }
    });
    notification.onclick = () => {
        newBefakepost.style.display = 'none';
    }
  });
