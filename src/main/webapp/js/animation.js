const images = document.querySelectorAll('.bmw-image');
let angle = 0;

function rotateImages() {
    angle += 0.02; // Adjust the speed of rotation here
    const radius = 150; // Radius of the circular path

    images.forEach((img, index) => {
        const imgAngle = angle + (index * (360 / images.length));
        const x = Math.cos(imgAngle) * radius;
        const y = Math.sin(imgAngle) * radius;
        img.style.transform = `translate(${x}px, ${y}px)`; // Circular motion
    });

    requestAnimationFrame(rotateImages);
}

rotateImages(); // Start the animation
