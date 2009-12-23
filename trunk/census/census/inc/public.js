<script language="javascript">

<!--

function window.onhelp(){return false} //F1

function click() {

if (event.button==2) {

alert('\u5BF9\u4E0D\u8D77,\u7981\u6B62\u4F7F\u7528\u6B64\u529F\u80FD.');

}

}

document.onmousedown=click;



function window.document.onkeydown(){

if ((window.event.altKey)&&

((window.event.keyCode==37)|| // Alt+ &#8592;

(window.event.keyCode==39))){ //Alt+ &#8594;

alert("\u4E0D\u51C6\u4F60\u4F7F\u7528ALT+\u65B9\u5411\u952E\u524D\u8FDB\u6216\u540E\u9000\u7F51\u9875\uFF01");

event.returnvalue=false;

}



if ((event.keyCode ==116)|| // F5 

(event.ctrlKey && event.keyCode==82)){ //Ctrl + R

alert("\u7981\u6B62\u5237\u65B0\u9875\u9762\uFF01");

event.keyCode = 0; 

event.cancelBubble = true; 

return false; 

}

if ((event.ctrlKey)&&(event.keyCode==78)) //Ctrl+n

{

alert("\u7981\u6B62\u6253\u5F00\u65B0\u9875\u9762\uFF01");

event.returnvalue=false;

}

if ((event.shiftKey)&&(event.keyCode==121)) // shift+F10

{

alert("\u7981\u6B62\u6B64\u7C7B\u9875\u9762\u64CD\u4F5C\uFF01");

event.returnvalue=false;

}

if (window.event.srcElement.tagName == "A" && window.event.shiftKey) 

{

alert("\u7981\u6B62\u6B64\u7C7B\u9875\u9762\u64CD\u4F5C\uFF01");

window.event.returnvalue = false; //shift



}

}



//-->

</script>