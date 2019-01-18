_.each(document.getElementsByClassName("zeroDegreeLogo"), function(l){
l.addEventListener("click",function(){
    window.location.href = "http://0a.io"
})
l.addEventListener("touchstart",function(){
    window.location.href = "http://0a.io"
})

})

window.copyCurrentURL = function(){
    var copyText = document.getElementById("currrentLink");
    copyText.select();
    document.execCommand("copy");
}


_.each(document.getElementsByClassName("ArchyItem"),function(item){
    var aLink = item.querySelector(".ArchyItemTitle a")
    var date = item.querySelector(".ArchyItemDate")
    var img =  item.querySelector(".ArchyItemImg")
    if(date == null){
        date = item.querySelector(".ArchyItemSubtitle")
    }
    _.each([aLink,img],function(x){
    x.addEventListener("mouseover",function(){
        aLink.classList.add("hover")
        date.classList.add("ArchyItemDateHover")
    })
    x.addEventListener("mouseout",function(){
        aLink.classList.remove("hover")
        date.classList.remove("ArchyItemDateHover")
    })})
})

// var zer0DLogo = document.getElementsByClassName("zeroDegreeLogo")[0]
// var zer0DLogod = zer0DLogo.querySelector(".description")
//
// zer0DLogo.addEventListener("mouseover",function(){
//     zer0DLogod.classList.add("hover")
// })
//
// zer0DLogo.addEventListener("mouseout",function(){
//     zer0DLogod.classList.remove("hover")
// })
