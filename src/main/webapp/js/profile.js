function initAnimations() {
    // Simple animation to fade in the hero section
    const heroSection = document.querySelector('.hero-section');
    heroSection.style.opacity = 0;
    setTimeout(() => {
        heroSection.style.transition = 'opacity 2s';
        heroSection.style.opacity = 1;
    }, 500);
}
