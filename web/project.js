var v = 0;
function soft()
{

    var r = document.getElementById("SE");
    var w = document.getElementById("hidden");
    if (v == 0) {
        r.style.opacity = "0.8";
        w.style.display = "block";
        v = 1;
    }
    else if(v==1)
    {
        r.style.opacity = "0";
        w.style.display = "none";
        v = 0;
    }
}
function input() {
    var m = document.getElementById("chose").value;
    var r = document.getElementById("s");
    r.style.opacity = "0.8";
   
   
}




function showw() {
    var m = document.getElementById("chose").value;
    var t = document.getElementById("NE");
    var h = document.getElementById("sh1");
    var n = document.getElementById("sison1-y2").innerHTML;
    var s = document.getElementById("sison1-y1").innerHTML;
    var r = document.getElementById("sh1");


    if (m == "B" && n == "الفصل الاول") {
        t.style.opacity = "0.8";
        t.style.zIndex = "2";
        h.style.zIndex = "1";
        h.style.opacity = "0";
        r.style.top = "0px";

    }
    else if (m == "T" && s == "الفصل الاول") {
        t.style.opacity = "0";
        h.style.zIndex = "2";
        h.style.opacity = "0.8";
        r.style.top = "43px";
    }
}
var c = 1;
function move() {
    

    var mov = document.getElementById("ministry").value,
        idd = document.getElementById(mov),
        t = document.getElementById(c).innerHTML = mov;
   
    idd.style.display = "none";
    c++;
  
    
   
}
function remove()
{
    var e = document.getElementById("view").value;
    var r = document.getElementById(e);
     var t = r.innerHTML;
    var D = document.getElementById(t);
    D.style.display = "block";
  
   r.style.display = "none";
  
}

