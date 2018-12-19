function getE(a){
    return document.getElementsByClassName(a)[0]
}
function behavior(link, fn) {
    this.link = link;
    this.fn = fn;
}
behavior.prototype.trigger = function() {
    this.fn();
    if (window.history.pushState) {
        window.history.pushState({},
            "0a: Archy here.",
            "/" + this.link
        );
    }
}
var HEADER = {
isClosed: true,
dom: getE("headerDOM"),
 //0 -> close, 1 -> open
close_open : [
    new behavior("",
        function() {
            about.style.opacity = 0;
            setTimeout(function() {
                about.style.display = "none";
                HEADER.dom.style.left="0px";
            }, 300);
        }
    ),
    new behavior("about",
        function() {
            HEADER.dom.style.left="-260px";
            setTimeout(function() {
                about.style.display = "block";
                //setTimeout 15ms for strange css-transition behavior in chrome
                setTimeout(function() {
                     about.style.opacity = 1;
                }, 15);
            }, 300);
        }
    )
]
}

window.aboutBtn = getE("about_trigger");
var about = getE("about_me");

//open if isClosed, close if 
window.aboutBtn.addEventListener("click",function(e) {
    if( window.innerWidth>709){
    e.preventDefault();
    //~~true -> 1, ~~false -> 0
    HEADER.close_open[(~~HEADER.isClosed)].trigger();
    HEADER.isClosed = !HEADER.isClosed;
    return false;
     }else{
        
    }
},false);
