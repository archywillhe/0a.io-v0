window.onload = function(){
    if(window.innerWidth>709){
        el = window.aboutBtn;
        if (el.onclick) {
           el.onclick();
        } else if (el.click) {
           el.click();
        }
    }
}