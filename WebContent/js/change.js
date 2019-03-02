function setTab(name,cursel,n,begin){
 	for(i=begin;i<=n;i++){
 	var menu=document.getElementById("menu"+i);
 	var con=document.getElementById(name+i);
 	menu.className=i==cursel?"hover":"";
 	con.style.display=i==cursel?"block":"none";
 	}
 	}

function $(element){
	return element = document.getElementById(element);
	}
function $D(){
var d=$('book-locate');
var h=d.offsetHeight;
var maxh=150;
function dmove(){
h+=50; //设置层展开的速度23sc.cn
if(h>=maxh){
d.style.height='150px';
clearInterval(iIntervalId);
}else{
d.style.display='block';
d.style.height=h+'px';
}
}
iIntervalId=setInterval(dmove,2);
}
function $D2(){
var d=$('book-locate');
var h=d.offsetHeight;
var maxh=150;
function dmove(){
h-=50;//设置层收缩的速度23sc.cn
if(h<=0){
d.style.display='none';
clearInterval(iIntervalId);
}else{
d.style.height=h+'px';
}
}
iIntervalId=setInterval(dmove,2);
}
function $use(){
var d=$('book-locate');
var sb=$('stateBtn');
if(d.style.display=='none'){
$D();
sb.innerHTML='收缩';
}else{
$D2();
sb.innerHTML='展开';
}
}

var arr2 = new Array(4);
arr2["所有学院"] = new Array("所有专业");
arr2["会计学院"] = new Array("会计学");
arr2["工程学院"] = new Array("计算机科学与技术");
arr2["金融学院"] = new Array("金融学");
function removeinfo(classMenu){//将下拉框各选项清空
 for (var i=0; i < classMenu.options.length; i++){
 classMenu.options[i]=null;
 }
}
function changeMenu(classList,classMenu){
 for (var i=0; i < classList.length; i++){
 classMenu[i]=new Option(classList[i],classList[i]);
 }
}