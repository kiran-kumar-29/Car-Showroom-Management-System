/**
 * 
 */
 
 
 function pageLoadAnimation() {
    const introSection = document.querySelector('.intro');
    introSection.style.opacity = 0;
    let opacity = 0;
    const fadeIn = setInterval(() => {
        if (opacity < 1) {
            opacity += 0.05;
            introSection.style.opacity = opacity;
        } else {
            clearInterval(fadeIn);
        }
    }, 50);
}
 