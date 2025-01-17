<!doctype html>
<html>
<head>
<meta charset="big5">
<title>王台南手工冰淇淋店</title>
<style>
body{
	font-size: 1.2rem;
	line-height: 2rem;
	background-attachment: fixed;
	background-image: url(img/bg5.png);
	background-repeat: no-repeat;
	margin: 0px;
	height: 100vh;
	background-size:cover;
}
.h{
	width: 1000px;
	margin-top: 110px;
	margin-right: auto;
	margin-bottom: 30px;
	margin-left: auto;
}
.w{
	width: 1100px;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 60px;
	margin-left: auto;
	display:flex;
}
.L{
	flex: 1;
	font-size: 1.3rem;
	color: #FFF;
	box-shadow: 0px 0px 5px #FCFCFC;
	padding: 50px;
	margin-top: -50px;
	margin-left: -50px;
	border-radius:15px;
}
.R{
	color: #FFF;
	background-color: #000;
	width: 400px;
	padding: 40px;
	margin-left: -300px;
	opacity:0.8;
	box-shadow:0px 0px 5px #FFC;
	border-radius:15px;
}
.footer{
	background-image: url(img/bgm.png);
	position: fixed;
	z-index: 3;
	height: 200px;
	width: 100%;
	left: 0px;
	top: 0px;
	right: 0px;
}
.f{
	height: 250px;
	width: 1200px;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
}
.t1{
	font-size: 24px;
	color: #FF9;
}
</style>
<script language="JavaScript">
<!--
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}
function MM_nbGroup(event, grpName) { //v6.0
var i,img,nbArr,args=MM_nbGroup.arguments;
  if (event == "init" && args.length > 2) {
    if ((img = MM_findObj(args[2])) != null && !img.MM_init) {
      img.MM_init = true; img.MM_up = args[3]; img.MM_dn = img.src;
      if ((nbArr = document[grpName]) == null) nbArr = document[grpName] = new Array();
      nbArr[nbArr.length] = img;
      for (i=4; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
        if (!img.MM_up) img.MM_up = img.src;
        img.src = img.MM_dn = args[i+1];
        nbArr[nbArr.length] = img;
    } }
  } else if (event == "over") {
    document.MM_nbOver = nbArr = new Array();
    for (i=1; i < args.length-1; i+=3) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = (img.MM_dn && args[i+2]) ? args[i+2] : ((args[i+1])?args[i+1] : img.MM_up);
      nbArr[nbArr.length] = img;
    }
  } else if (event == "out" ) {
    for (i=0; i < document.MM_nbOver.length; i++) { img = document.MM_nbOver[i]; img.src = (img.MM_dn) ? img.MM_dn : img.MM_up; }
  } else if (event == "down") {
    nbArr = document[grpName];
    if (nbArr) for (i=0; i < nbArr.length; i++) { img=nbArr[i]; img.src = img.MM_up; img.MM_dn = 0; }
    document[grpName] = nbArr = new Array();
    for (i=2; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = img.MM_dn = (args[i+1])? args[i+1] : img.MM_up;
      nbArr[nbArr.length] = img;
  } }
}

function MM_preloadImages() { //v3.0
 var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
   var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
   if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

//-->
</script>
</head>

<body>
<div class="h"><img src="img/h5.png"></div>
<div class="w">
<div class="L">
<%
tf = server.MapPath("talk.txt")
set fo = server.CreateObject("scripting.filesystemobject")
set out = fo.opentextfile(tf,1)
do until out.atendofstream
a = out.readline
b = out.readline
c = out.readline
d = out.readline

%>
<P>隊名:<%=a %></P>
<P>大名:<%=b %></P>
<P>報名人數:<%=d %>人</P>
<hr>
<%
loop
out.close
%>
</div>
<div class="R">
<P class="t1">我要報名</P>
<form method="post" action="add.asp">
<P>您的隊名:
<input type="text" name="a" required></P>
<P>您的大名:
<input type="text" name="b" required></P>
<P>連絡電話:
<input type="text" name="c" required></P>
<P>報名人數:
<input type="text" name="d" required>人</P>

<input type="submit" value="送出">
<input name="重設" type="reset" value="重置">
</form>
</div>
</div>
<div class="footer">
<div class="f">
<table border="0" cellpadding="0" cellspacing="0" width="1250">
  <tr>
   <td><img name="m_r1_c1" src="images/m_r1_c1.png" width="324" height="250" border="0" alt=""></td>
   <td><a href="index.html" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','m_r1_c2','images/m_r1_c2_f2.png','images/m_r1_c2_f3.png',1);" onClick="MM_nbGroup('down','navbar1','m_r1_c2','images/m_r1_c2_f3.png',1);"><img name="m_r1_c2" src="images/m_r1_c2.png" width="185" height="250" border="0" alt=""></a></td>
   <td><a href="web2.html" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','m_r1_c3','images/m_r1_c3_f2.png','images/m_r1_c3_f3.png',1);" onClick="MM_nbGroup('down','navbar1','m_r1_c3','images/m_r1_c3_f3.png',1);"><img name="m_r1_c3" src="images/m_r1_c3.png" width="185" height="250" border="0" alt=""></a></td>
   <td><a href="web3.html" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','m_r1_c4','images/m_r1_c4_f2.png','images/m_r1_c4_f3.png',1);" onClick="MM_nbGroup('down','navbar1','m_r1_c4','images/m_r1_c4_f3.png',1);"><img name="m_r1_c4" src="images/m_r1_c4.png" width="185" height="250" border="0" alt=""></a></td>
   <td><a href="web4.html" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','m_r1_c5','images/m_r1_c5_f2.png','images/m_r1_c5_f3.png',1);" onClick="MM_nbGroup('down','navbar1','m_r1_c5','images/m_r1_c5_f3.png',1);"><img name="m_r1_c5" src="images/m_r1_c5.png" width="186" height="250" border="0" alt=""></a></td>
   <td><a href="web5.asp" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','m_r1_c6','images/m_r1_c6_f2.png','images/m_r1_c6_f3.png',1);" onClick="MM_nbGroup('down','navbar1','m_r1_c6','images/m_r1_c6_f3.png',1);"><img name="m_r1_c6" src="images/m_r1_c6.png" width="185" height="250" border="0" alt=""></a></td>
   <td><img src="images/spacer.gif" width="1" height="250" border="0" alt=""></td>
  </tr>
</table>
</div>
</div>
</body>
</html>
