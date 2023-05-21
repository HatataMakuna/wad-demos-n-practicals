
function Browser() {

var ua, s, i;

this.isIE    = false;
this.isNS    = false;
this.version = null;

ua = navigator.userAgent;

s = "MSIE";
if ((i = ua.indexOf(s)) >= 0) {
	this.isIE = true;
	this.version = parseFloat(ua.substr(i + s.length));
	return;
}

s = "Netscape6/";
if ((i = ua.indexOf(s)) >= 0) {
	this.isNS = true;
	this.version = parseFloat(ua.substr(i + s.length));
	return;
}

// Treat any other "Gecko" browser as NS 6.1.

s = "Gecko";
if ((i = ua.indexOf(s)) >= 0) {
	this.isNS = true;
	this.version = 6.1;
	return;
}
}

var browser = new Browser();

// Global object to hold drag information.

var dragObj = new Object();
dragObj.zIndex = 0;

function dragStart(event, id) {

var el;
var x, y;

// If an element id was given, find it. Otherwise use the element being
// clicked on.

if (id)
	dragObj.elNode = document.getElementById(id);
else {
	if (browser.isIE)
	dragObj.elNode = window.event.srcElement;
	if (browser.isNS)
	dragObj.elNode = event.target;

	// If this is a text node, use its parent element.

	if (dragObj.elNode.nodeType == 3)
	dragObj.elNode = dragObj.elNode.parentNode;
}

// Get cursor position with respect to the page.

if (browser.isIE) {
	x = window.event.clientX + document.documentElement.scrollLeft
	+ document.body.scrollLeft;
	y = window.event.clientY + document.documentElement.scrollTop
	+ document.body.scrollTop;
}
if (browser.isNS) {
	x = event.clientX + window.scrollX;
	y = event.clientY + window.scrollY;
}

// Save starting positions of cursor and element.

dragObj.cursorStartX = x;
dragObj.cursorStartY = y;
dragObj.elStartLeft  = parseInt(dragObj.elNode.style.left, 10);
dragObj.elStartTop   = parseInt(dragObj.elNode.style.top,  10);

if (isNaN(dragObj.elStartLeft)) dragObj.elStartLeft = 0;
if (isNaN(dragObj.elStartTop))  dragObj.elStartTop  = 0;

// Update element's z-index.

dragObj.elNode.style.zIndex = ++dragObj.zIndex;

// Capture mousemove and mouseup events on the page.

if (browser.isIE) {
	document.attachEvent("onmousemove", dragGo);
	document.attachEvent("onmouseup",   dragStop);
	window.event.cancelBubble = true;
	window.event.returnValue = false;
}
if (browser.isNS) {
	document.addEventListener("mousemove", dragGo,   true);
	document.addEventListener("mouseup",   dragStop, true);
	event.preventDefault();
}
}

function dragGo(event) {

var x, y;

// Get cursor position with respect to the page.

if (browser.isIE) {
	x = window.event.clientX + document.documentElement.scrollLeft
	+ document.body.scrollLeft;
	y = window.event.clientY + document.documentElement.scrollTop
	+ document.body.scrollTop;
}
if (browser.isNS) {
	x = event.clientX + window.scrollX;
	y = event.clientY + window.scrollY;
}

// Move drag element by the same amount the cursor has moved.

dragObj.elNode.style.left = (dragObj.elStartLeft + x - dragObj.cursorStartX) + "px";
dragObj.elNode.style.top  = (dragObj.elStartTop  + y - dragObj.cursorStartY) + "px";

if (browser.isIE) {
	window.event.cancelBubble = true;
	window.event.returnValue = false;
}
if (browser.isNS)
	event.preventDefault();
}

function dragStop(event) {

// Stop capturing mousemove and mouseup events.

if (browser.isIE) {
	document.detachEvent("onmousemove", dragGo);
	document.detachEvent("onmouseup",   dragStop);
}
if (browser.isNS) {
	document.removeEventListener("mousemove", dragGo,   true);
	document.removeEventListener("mouseup",   dragStop, true);
}
}

var resizer = null;
function ResizeStart(event,resizeObjectID)
{		
    resizer = new Object();    
	resizer.resizeElement = document.getElementById(resizeObjectID);
	resizer.width = parseInt(document.getElementById(resizeObjectID).style.width);
	resizer.height = parseInt(document.getElementById(resizeObjectID).style.height);	
	
	if (browser.isIE) {resizer.dragger = event.srcElement;}
	if (browser.isNS) {resizer.dragger = event.target;}
    if (browser.isIE) {
	    document.attachEvent("onmousemove", resizeGO);
	    document.attachEvent("onmouseup",   resizeSTOP);	    
    }
    if (browser.isNS) {
	    document.addEventListener("mousemove", resizeGO,   true);
	    document.addEventListener("mouseup",   resizeSTOP, true);	    
    }				
	dragStart(event, null);
}

function resizeGO()
{							
	var w,h;	
	
	w = parseInt(resizer.width) + parseInt(resizer.dragger.style.left);
	h = parseInt(resizer.height) + parseInt(resizer.dragger.style.top);		
	if (w>0) resizer.resizeElement.style.width = w.toString() + "px";
	if (h>0) resizer.resizeElement.style.height = h.toString() + "px";
//	if (browser.isIE) 
//	{
//	    if (w>0) resizer.resizeElement.style.width = w;
//	    if (h>0) resizer.resizeElement.style.height = h;

//	} else {	    	    
//	    
//	    
//	}									
	
}
function resizeSTOP()
{    
	if (browser.isIE) {
	    document.detachEvent("onmousemove", resizeGO);
	    document.detachEvent("onmouseup",   resizeSTOP);
    }
    if (browser.isNS) {
	    document.removeEventListener("mousemove", resizeGO,   true);
	    document.removeEventListener("mouseup",   resizeSTOP, true);
    }	
	resizer.dragger.style.left = null;
	resizer.dragger.style.top = null;	
}

function HideDLG(DialogID) {
	document.getElementById(DialogID).style.visibility = "hidden";
}

function ShowDLG(DialogID)
{		
	var dlg = document.getElementById(DialogID);							 		
	dlg.style.visibility = "visible";	
	
}									
