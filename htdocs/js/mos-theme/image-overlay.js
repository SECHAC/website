/**
 * Create an overlay of images.
 */
function imageOverlay(elementId) {
    var wrapper = document.getElementById(elementId);
    var container = wrapper.querySelector("div");
    var images = wrapper.querySelectorAll("figure");
    var nav = wrapper.querySelectorAll("li");



    /**
     * To make wrapper span whole height of images.
     */
    function resetHeight() {
        var height = 0;

        for (var i = 0; i < images.length; i++) {
            var childHeight = Number.parseFloat(window.getComputedStyle(images[i]).getPropertyValue("height"));
            if (childHeight > height) {
                height = childHeight;
            }
        }

        container.style.height = height + "px";
        images[0].style.zIndex = 0;
    }



    /**
     * Swap image.
     */
    function swapImage(active) {
        for (var i = 0; i < images.length; i++) {
            images[i].style.zIndex = -1;
        }
        images[active].style.zIndex = 0;
    }



    /**
     * Init navigation and add eventlisteners.
     */
    function swapOnClick(event) {
        for (var j = 0; j < nav.length; j++) {
            nav[j].firstChild.classList.remove("active");
        }

        this.classList.add("active");
        swapImage(this.dataset.id);
        event.preventDefault();
    }



    /**
     * Init navigation and add eventlisteners.
     */
    function init() {
        var anchor;

        for (var i = 0; i < nav.length; i++) {
            anchor = "<a href='#' data-id='" + i + "'>" + nav[i].innerHTML + "</a>";
            nav[i].innerHTML = anchor;
            nav[i].firstChild.addEventListener("click", swapOnClick);
        }

        nav[0].firstChild.classList.add("active");
    }



    resetHeight();
    init();
}
