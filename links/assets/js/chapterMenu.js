$(function(){
if($(".fixed_top_nav").length===0){
    //no chapterMenu;
    window.chapterMenu = function(){};
}else{
    $(".go_click").each(function() {
        var text = $(this).text();
        $(this).click(function() {
            $("body").animate({
                "scrollTop": ($(".to_" + text).offset().top - 30 - 70 + 25) + "px"
            }, {
                duration: 400
            });
        });
    });
    var page = 1;
    window.chapterMenu = function() {
        $(".loading_maths").fadeOut(300);
        var partition_buttons = $(".fixed_top_nav .inlineblock");
        var partition_borders = $("._index");
        var indexLength = partition_borders.length;
        var point = $(partition_borders[0]).offset().top - 30 - 70 + 25;
        var switcher = 1;
        var nav = $(".fixed_top_nav");
        var currently_at = -1;
        var partition = {
            init: function() {
                partition.determine();
                $(partition_buttons[currently_at]).addClass("currently_at");
                $(window).off("scroll.partition").on("scroll.partition", function() {
                    if (!(($(window).scrollTop() > partition.top) && ($(window).scrollTop() < partition.bottom))) {
                        partition.determine();
                        $(partition_buttons[currently_at]).addClass("currently_at");
                    }
                });
            },
            determine: function() {
                var a = 1;
                var window_top = $(window).scrollTop();
                window_top += (30 + 70 + 25 + 1);
                while (window_top > $(partition_borders[a]).offset().top) {
                    //console.log(window_top, $(partition_borders[a]).offset().top);
                    a++;
                    if (a === indexLength) {
                        break;
                    }
                }
                if (currently_at !== -1) {
                    $(partition_buttons[currently_at]).removeClass("currently_at");
                }
                currently_at = a - 1;
                //console.log(currently_at);
                switch_up(a-1);
                this.top = $(partition_borders[currently_at]).offset().top - 30 - 70 + 25;
                if (a !== indexLength) {
                    this.bottom = $(partition_borders[currently_at + 1]).offset().top - 30 - 70 + 25;
                } else {
                    this.bottom = 99999;
                }
            }
        }


        function situation(fn, number) {
            this.fn = fn;
            this.number = number;
        }
        var situations = [];
        situations[0] = new situation(function() {
            nav.css("top", "-70px");
            switcher = this.number;
            $(window).off("scroll.partition");
        }, 1);
        situations[1] = new situation(function() {
            nav.css("top", "0px");
            switcher = this.number;
            partition.init();
        }, 0);

        var a = 0;
        partition_buttons.each(function() {
            var b = a;
            $(this).click(function() {
                $(partition_buttons[currently_at]).removeClass("currently_at");
                currently_at = b;
                $(this).addClass("currently_at");
                $(window).off("scroll.partition");
                $("body").animate({
                    "scrollTop": $(partition_borders[b]).offset().top - 30 - 70 + 25 + "px"
                }, {
                    duration: 600,
                    complete: function() {
                        partition.init();
                    }
                });
            });
            a++;
        });
        $(window).scroll(function() {
            if (($(window).scrollTop() > point) == switcher) {
                situations[switcher].fn();
            }
        });


      function switch_up(a){
       if(a<10){
           if(page!==1){
           page = 1;
           $(".nav2").css("display","none");
           $(".nav1").css("display","block");
           }
       }else{
          if(page!==2){
           page = 2;
           $(".nav1").css("display","none");
           $(".nav2").css("display","block");
           }
       }
      }
      if(indexLength>10){
        $(".pretendToBeInlineBlock").on("click",function(){$(".inlineblock:eq(10)").trigger("click")});
      }
    }
}

});