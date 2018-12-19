new KudosPlease({ 
    el : '.kudos',
    counter: '.kudosC',
    duration : 900,
    persistent : true,
    status : {
      alpha: 'fontelico-emo-shoot',
      beta: 'fontelico-emo-shoot',
      gamma: 'fontelico-emo-beer'
    }
});
if (document.getElementsByClassName("subtitleBottom")[0] !== undefined){
    document.getElementById("articleContainer").style["padding-bottom"] = "25px";
}

// var a = document.getElementsByClassName("showDisqus")[0];
// var show = function(){
//     a.removeEventListener("click",show,false);
//     document.getElementById("disqus_thread").style.display = "block";
//     var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
//     dsq.src = '//0ar-ch.disqus.com/embed.js';
//     (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
// }
// a.addEventListener("click",show,false);
