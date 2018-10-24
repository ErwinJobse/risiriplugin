<?php
/**
 * Created by PhpStorm.
 * User: Erwin Jobse
 * Date: 10/23/2018
 * Time: 11:44 AM
 */
?>



<script>
    ;(function(){
    function id(v){ return document.getElementById(v); }
    function loadbar() {
        var ovrl = id("overlay"),
                prog = id("progress"),
                stat = id("progstat"),
                img = document.images,
                c = 0,
                tot = img.length;
            if(tot == 0) return doneLoading();


            function imgLoaded(){
                c += 1;
                var perc = ((100/tot*c) << 0) +"%";
                prog.style.width = perc;
                stat.innerHTML = "Loading "+ perc;
                if(c===tot) return doneLoading();
            }
            function doneLoading(){
                ovrl.style.opacity = 0;
                setTimeout(function(){
                    ovrl.style.display = "none";
                }, 1200);
            }


            for(var i=0; i<tot; i++) {
            var tImg     = new Image();
            tImg.onload  = imgLoaded;
            tImg.onerror = imgLoaded;
            tImg.src     = img[i].src;
        }
        }

    document.addEventListener('DOMContentLoaded', loadbar, false);
}());
</script>

<div id="overlay">
    <div id="progstat">
        <img src="<?php bloginfo('stylesheet_directory'); ?>/images/loading.gif" alt="Loading" />
        <b>RiSiRi Magazijn Applicatie</b><br>
        <b>Loading...</b>
    </div>

    <div id="progress"></div>
</div>

<style>
/* Load animation until ready*/

#overlay{
position:fixed;
        z-index:99999;
        top:0;
        left:0;
        bottom:0;
        right:0;
        background:#EDF7F9;
        transition: 1s 0.4s;
    }
    #progress{
        height:1px;
        background:#fff;
        position:absolute;
        width:0;                /* will be increased by JS */
        top:50%;
    }
    #progstat{
        font-size:0.7em;
        letter-spacing: 3px;
        position:absolute;
        top:50%;
        margin-top:-40px;
        width:100%;
        text-align:center;
        color:black;
    }

div.b {
    font-size: 500px;
}

</style>
