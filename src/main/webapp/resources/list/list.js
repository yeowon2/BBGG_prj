window.addEventListener("load", () => {
    document.querySelectorAll(".cart").forEach(item => {
        item.addEventListener("click", e=>{
            alert("찜한 매물")
        });
    });
});