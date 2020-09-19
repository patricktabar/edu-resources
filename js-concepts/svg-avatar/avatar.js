// console.log("avatar loaded...");

const container = document.getElementById("avatar-container");

window.onload = function () {
  const centerX = container.clientWidth / 2;
  const centerY = container.clientWidth / 2;

  //   translations on mousemove
  document.addEventListener("mousemove", function (e) {
    let windowWidth = window.innerWidth,
      windowHeight = window.innerHeight,
      mouseX = e.clientX,
      mouseY = e.clientY;

    // console.log("mousePos", mouseX, mouseY);
    // console.log("window", windowWidth, windowHeight);

    // mouse X-axis movement
    if (mouseX <= centerX) {
      gsap.to("#cheeks", {
        x: -gsap.utils.mapRange(0, windowWidth, 1, 0, mouseX),
      });
      gsap.to("#ears", {
        x: gsap.utils.mapRange(0, windowWidth, 2, 0, mouseX),
      });
      gsap.to("#eyes", {
        x: -gsap.utils.mapRange(0, windowWidth, 15, 0, mouseX),
      });
      gsap.to("#eyebrows", {
        x: -gsap.utils.mapRange(0, windowWidth, 3, 0, mouseX),
      });
      gsap.to("#glasses", {
        x: -gsap.utils.mapRange(0, windowWidth, 2, 0, mouseX),
      });
      gsap.to("#mouth", {
        x: -gsap.utils.mapRange(0, windowWidth, 1, 0, mouseX),
      });
      gsap.to("#mouth-inner", {
        x: -gsap.utils.mapRange(0, windowWidth, 1, 0, mouseX),
      });
      gsap.to("#nose", {
        x: -gsap.utils.mapRange(0, windowWidth, 2, 0, mouseX),
      });
    } else {
      gsap.to("#cheeks", {
        x: gsap.utils.mapRange(0, windowWidth, 0, 1, mouseX),
      });
      gsap.to("#ears", {
        x: -gsap.utils.mapRange(0, windowWidth, 0, 2, mouseX),
      });
      gsap.to("#eyes", {
        x: gsap.utils.mapRange(0, windowWidth, 0, 15, mouseX),
      });
      gsap.to("#eyebrows", {
        x: gsap.utils.mapRange(0, windowWidth, 0, 3, mouseX),
      });
      gsap.to("#glasses", {
        x: gsap.utils.mapRange(0, windowWidth, 0, 2, mouseX),
      });
      gsap.to("#mouth", {
        x: gsap.utils.mapRange(0, windowWidth, 0, 1, mouseX),
      });
      gsap.to("#mouth-inner", {
        x: gsap.utils.mapRange(0, windowWidth, 0, 1, mouseX),
      });
      gsap.to("#nose", {
        x: gsap.utils.mapRange(0, windowWidth, 0, 2, mouseX),
      });
    }

    // mouse Y-axis movement
    if (mouseY <= centerY) {
      gsap.to("#cheeks", {
        y: -gsap.utils.mapRange(0, windowHeight, 1, 0, mouseY),
      });
      gsap.to("#eyes", {
        y: -gsap.utils.mapRange(0, windowHeight, 7, 0, mouseY),
      });
      gsap.to("#eyebrows", {
        y: -gsap.utils.mapRange(0, windowHeight, 3, 0, mouseY),
      });
      gsap.to("#glasses", {
        y: -gsap.utils.mapRange(0, windowHeight, 2, 0, mouseY),
      });
      gsap.to("#mouth", {
        y: -gsap.utils.mapRange(0, windowHeight, 1, 0, mouseY),
      });
      gsap.to("#mouth-inner", {
        y: -gsap.utils.mapRange(0, windowHeight, 1, 0, mouseY),
      });
      gsap.to("#nose", {
        y: -gsap.utils.mapRange(0, windowHeight, 2, 0, mouseY),
      });
    } else {
      gsap.to("#cheeks", {
        y: gsap.utils.mapRange(0, windowHeight, 0, 1, mouseY),
      });
      gsap.to("#eyes", {
        y: gsap.utils.mapRange(0, windowHeight, 0, 7, mouseY),
      });
      gsap.to("#eyebrows", {
        y: gsap.utils.mapRange(0, windowHeight, 0, 2, mouseY),
      });
      gsap.to("#glasses", {
        y: gsap.utils.mapRange(0, windowHeight, 0, 2, mouseY),
      });
      gsap.to("#mouth", {
        y: gsap.utils.mapRange(0, windowHeight, 0, 1, mouseY),
      });
      gsap.to("#mouth-inner", {
        y: gsap.utils.mapRange(0, windowHeight, 0, 1, mouseY),
      });
      gsap.to("#nose", {
        y: gsap.utils.mapRange(0, windowHeight, 0, 2, mouseY),
      });
    }
  });

  //   eyes blinking
  setInterval(eyesBlinking, 5000);

  //   arm breathing
  setInterval(breathing, 3000);
};

function eyesBlinking() {
  gsap.to("#eyes", 0.1, {
    scaleY: 0.3,
    onComplete: function () {
      gsap.to("#eyes", 0.1, { scaleY: 1 });
    },
  });
}

function breathing() {
  gsap.to("#chest", 0.7, {
    y: "-=1",
    onComplete: function () {
      gsap.to("#chest", 0.7, { y: "+=1" });
    },
  });
}
