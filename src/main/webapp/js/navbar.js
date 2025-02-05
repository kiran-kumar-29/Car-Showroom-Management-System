/**
 * 
 */
 
 function changeNavbarColor() {
    const navbar = document.querySelector('.header-section');
    const colors = ['#ff6666', '#66b3ff', '#99ff99', '#ffcc66'];
    let colorIndex = 0;

    setInterval(() => {
        navbar.style.backgroundColor = colors[colorIndex];
        colorIndex = (colorIndex + 1) % colors.length;
    }, 2000);
}

window.onload = () => {
    initAnimations();
    changeNavbarColor();
};
 