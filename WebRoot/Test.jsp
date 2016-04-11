<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<base href="<%=basePath%>">

<title>PM25.in | PM2.5(细颗粒物)及空气质量指数(AQI)实时查询！</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="提供PM2.5(细颗粒物)及空气质量指数(AQI)实时查询的网站，同时开放PM2.5监测数据查询的API给开发者使用！" name="description" />
<meta content="pm2.5,pm2.5查询,pm25,pm2.5 api,空气质量查询,空气质量指数(aqi),空气污染指数,细颗粒物,雾霾,空气质量新标准,颗粒物(粒径小于等于2.5μm),空气质量指数实时报" name="keywords" />
  
  <meta name="author" content="">
  <!--   <link href="${pageContext.request.contextPath}/assets/application.css" media="all" rel="stylesheet" type="text/css" />-->
  <meta content="authenticity_token" name="csrf-param" />
<meta content="ysThNORxh3pAXkpisNnXNv2z79TOHm6a1ZOKkzgBdng=" name="csrf-token" />
  
  <style type="text/css" >
 
article, aside, details, figcaption, figure, footer, header, hgroup, nav, section {
    display: block;
}
audio, canvas, video {
    display: inline-block;
}
audio:not([controls]) {
    display: none;
}
html {
    font-size: 100%;
}
a:focus {
    outline: thin dotted #333333;
    outline-offset: -2px;
}
a:hover, a:active {
    outline: 0 none;
}
sub, sup {
    font-size: 75%;
    line-height: 0;
    position: relative;
    vertical-align: baseline;
}
sup {
    top: -0.5em;
}
sub {
    bottom: -0.25em;
}
img {
    border: 0 none;
    height: auto;
    max-width: 100%;
    vertical-align: middle;
}
#map_canvas img, .google-maps img {
    max-width: none;
}
button, input, select, textarea {
    font-size: 100%;
    margin: 0;
    vertical-align: middle;
}
button, input {
    line-height: normal;
}
button::-moz-focus-inner, input::-moz-focus-inner {
    border: 0 none;
    padding: 0;
}
button, html input[type="button"], input[type="reset"], input[type="submit"] {
    cursor: pointer;
}
label, select, button, input[type="button"], input[type="reset"], input[type="submit"], input[type="radio"], input[type="checkbox"] {
    cursor: pointer;
}
input[type="search"] {
    box-sizing: content-box;
}
textarea {
    overflow: auto;
    vertical-align: top;
}
@media print {
* {
    background: none repeat scroll 0 0 rgba(0, 0, 0, 0) !important;
    box-shadow: none !important;
    color: #000000 !important;
    text-shadow: none !important;
}
a, a:visited {
    text-decoration: underline;
}
a[href]:after {
    content: " (" attr(href) ")";
}
abbr[title]:after {
    content: " (" attr(title) ")";
}
.ir a:after, a[href^="javascript:"]:after, a[href^="#"]:after {
    content: "";
}
pre, blockquote {
    border: 1px solid #999999;
    page-break-inside: avoid;
}
thead {
    display: table-header-group;
}
tr, img {
    page-break-inside: avoid;
}
img {
    max-width: 100% !important;
}
@page {
    margin: 0.5cm;
}
p, h2, h3 {
    orphans: 3;
    widows: 3;
}
h2, h3 {
    page-break-after: avoid;
}
}
body {
    background-color: #FFFFFF;
    color: #333333;
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 14px;
    line-height: 20px;
    margin: 0;
}
a {
    color: #0088CC;
    text-decoration: none;
}
a:hover, a:focus {
    color: #005580;
    text-decoration: underline;
}
.img-rounded {
    border-radius: 6px;
}
.img-polaroid {
    background-color: #FFFFFF;
    border: 1px solid rgba(0, 0, 0, 0.2);
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
    padding: 4px;
}
.img-circle {
    border-radius: 500px;
}
.row {
    margin-left: -20px;
}
.row:before, .row:after {
    content: "";
    display: table;
    line-height: 0;
}
.row:after {
    clear: both;
}
[class*="span"] {
    float: left;
    margin-left: 20px;
    min-height: 1px;
}
.container, .navbar-static-top .container, .navbar-fixed-top .container, .navbar-fixed-bottom .container {
    width: 940px;
}
.span12 {
    width: 940px;
}
.span11 {
    width: 860px;
}
.span10 {
    width: 780px;
}
.span9 {
    width: 700px;
}
.span8 {
    width: 620px;
}
.span7 {
    width: 540px;
}
.span6 {
    width: 460px;
}
.span5 {
    width: 380px;
}
.span4 {
    width: 300px;
}
.span3 {
    width: 220px;
}
.span2 {
    width: 140px;
}
.span1 {
    width: 60px;
}
.offset12 {
    margin-left: 980px;
}
.offset11 {
    margin-left: 900px;
}
.offset10 {
    margin-left: 820px;
}
.offset9 {
    margin-left: 740px;
}
.offset8 {
    margin-left: 660px;
}
.offset7 {
    margin-left: 580px;
}
.offset6 {
    margin-left: 500px;
}
.offset5 {
    margin-left: 420px;
}
.offset4 {
    margin-left: 340px;
}
.offset3 {
    margin-left: 260px;
}
.offset2 {
    margin-left: 180px;
}
.offset1 {
    margin-left: 100px;
}
.row-fluid {
    width: 100%;
}
.row-fluid:before, .row-fluid:after {
    content: "";
    display: table;
    line-height: 0;
}
.row-fluid:after {
    clear: both;
}
.row-fluid [class*="span"] {
    box-sizing: border-box;
    display: block;
    float: left;
    margin-left: 2.12766%;
    min-height: 30px;
    width: 100%;
}
.row-fluid [class*="span"]:first-child {
    margin-left: 0;
}
.row-fluid .controls-row [class*="span"] + [class*="span"] {
    margin-left: 2.12766%;
}
.row-fluid .span12 {
    width: 100%;
}
.row-fluid .span11 {
    width: 91.4894%;
}
.row-fluid .span10 {
    width: 82.9787%;
}
.row-fluid .span9 {
    width: 74.4681%;
}
.row-fluid .span8 {
    width: 65.9575%;
}
.row-fluid .span7 {
    width: 57.4468%;
}
.row-fluid .span6 {
    width: 48.9362%;
}
.row-fluid .span5 {
    width: 40.4255%;
}
.row-fluid .span4 {
    width: 31.9149%;
}
.row-fluid .span3 {
    width: 23.4043%;
}
.row-fluid .span2 {
    width: 14.8936%;
}
.row-fluid .span1 {
    width: 6.38298%;
}
.row-fluid .offset12 {
    margin-left: 104.255%;
}
.row-fluid .offset12:first-child {
    margin-left: 102.128%;
}
.row-fluid .offset11 {
    margin-left: 95.7447%;
}
.row-fluid .offset11:first-child {
    margin-left: 93.617%;
}
.row-fluid .offset10 {
    margin-left: 87.234%;
}
.row-fluid .offset10:first-child {
    margin-left: 85.1064%;
}
.row-fluid .offset9 {
    margin-left: 78.7234%;
}
.row-fluid .offset9:first-child {
    margin-left: 76.5957%;
}
.row-fluid .offset8 {
    margin-left: 70.2128%;
}
.row-fluid .offset8:first-child {
    margin-left: 68.0851%;
}
.row-fluid .offset7 {
    margin-left: 61.7021%;
}
.row-fluid .offset7:first-child {
    margin-left: 59.5745%;
}
.row-fluid .offset6 {
    margin-left: 53.1915%;
}
.row-fluid .offset6:first-child {
    margin-left: 51.0638%;
}
.row-fluid .offset5 {
    margin-left: 44.6808%;
}
.row-fluid .offset5:first-child {
    margin-left: 42.5532%;
}
.row-fluid .offset4 {
    margin-left: 36.1702%;
}
.row-fluid .offset4:first-child {
    margin-left: 34.0425%;
}
.row-fluid .offset3 {
    margin-left: 27.6596%;
}
.row-fluid .offset3:first-child {
    margin-left: 25.5319%;
}
.row-fluid .offset2 {
    margin-left: 19.1489%;
}
.row-fluid .offset2:first-child {
    margin-left: 17.0213%;
}
.row-fluid .offset1 {
    margin-left: 10.6383%;
}
.row-fluid .offset1:first-child {
    margin-left: 8.51064%;
}
.hide[class*="span"], .row-fluid .hide[class*="span"] {
    display: none;
}
.pull-right[class*="span"], .row-fluid .pull-right[class*="span"] {
    float: right;
}
.container {
    margin-left: auto;
    margin-right: auto;
}
.container:before, .container:after {
    content: "";
    display: table;
    line-height: 0;
}
.container:after {
    clear: both;
}
.container-fluid {
    padding-left: 20px;
    padding-right: 20px;
}
.container-fluid:before, .container-fluid:after {
    content: "";
    display: table;
    line-height: 0;
}
.container-fluid:after {
    clear: both;
}
p {
    margin: 0 0 10px;
}
.lead {
    font-size: 21px;
    font-weight: 200;
    line-height: 30px;
    margin-bottom: 20px;
}
small {
    font-size: 85%;
}
strong {
    font-weight: bold;
}
em {
    font-style: italic;
}
cite {
    font-style: normal;
}
.muted {
    color: #999999;
}
a.muted:hover, a.muted:focus {
    color: #808080;
}
.text-warning {
    color: #C09853;
}
a.text-warning:hover, a.text-warning:focus {
    color: #A47E3C;
}
.text-error {
    color: #B94A48;
}
a.text-error:hover, a.text-error:focus {
    color: #953B39;
}
.text-info {
    color: #3A87AD;
}
a.text-info:hover, a.text-info:focus {
    color: #2D6987;
}
.text-success {
    color: #468847;
}
a.text-success:hover, a.text-success:focus {
    color: #356635;
}
.text-left {
    text-align: left;
}
.text-right {
    text-align: right;
}
.text-center {
    text-align: center;
}
h1, h2, h3, h4, h5, h6 {
    color: inherit;
    font-family: inherit;
    font-weight: bold;
    line-height: 20px;
    margin: 10px 0;
    text-rendering: optimizelegibility;
}
h1 small, h2 small, h3 small, h4 small, h5 small, h6 small {
    color: #999999;
    font-weight: normal;
    line-height: 1;
}
h1, h2, h3 {
    line-height: 40px;
}
h1 {
    font-size: 38.5px;
}
h2 {
    font-size: 31.5px;
}
h3 {
    font-size: 24.5px;
}
h4 {
    font-size: 17.5px;
}
h5 {
    font-size: 14px;
}
h6 {
    font-size: 11.9px;
}
h1 small {
    font-size: 24.5px;
}
h2 small {
    font-size: 17.5px;
}
h3 small {
    font-size: 14px;
}
h4 small {
    font-size: 14px;
}
.page-header {
    border-bottom: 1px solid #EEEEEE;
    margin: 20px 0 30px;
    padding-bottom: 9px;
}
ul, ol {
    margin: 0 0 10px 25px;
    padding: 0;
}
ul ul, ul ol, ol ol, ol ul {
    margin-bottom: 0;
}
li {
    line-height: 20px;
}
ul.unstyled, ol.unstyled {
    list-style: none outside none;
    margin-left: 0;
}
ul.inline, ol.inline {
    list-style: none outside none;
    margin-left: 0;
}
ul.inline > li, ol.inline > li {
    display: inline-block;
    padding-left: 5px;
    padding-right: 5px;
}
dl {
    margin-bottom: 20px;
}
dt, dd {
    line-height: 20px;
}
dt {
    font-weight: bold;
}
dd {
    margin-left: 10px;
}
.dl-horizontal {
}
.dl-horizontal:before, .dl-horizontal:after {
    content: "";
    display: table;
    line-height: 0;
}
.dl-horizontal:after {
    clear: both;
}
.dl-horizontal dt {
    clear: left;
    float: left;
    overflow: hidden;
    text-align: right;
    text-overflow: ellipsis;
    white-space: nowrap;
    width: 160px;
}
.dl-horizontal dd {
    margin-left: 180px;
}
hr {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    border-color: #EEEEEE -moz-use-text-color #FFFFFF;
    border-image: none;
    border-left: 0 none;
    border-right: 0 none;
    border-style: solid none;
    border-width: 1px 0;
    margin: 20px 0;
}
abbr[title], abbr[data-original-title] {
    border-bottom: 1px dotted #999999;
    cursor: help;
}
abbr.initialism {
    font-size: 90%;
    text-transform: uppercase;
}
blockquote {
    border-left: 5px solid #EEEEEE;
    margin: 0 0 20px;
    padding: 0 0 0 15px;
}
blockquote p {
    font-size: 17.5px;
    font-weight: 300;
    line-height: 1.25;
    margin-bottom: 0;
}
blockquote small {
    color: #999999;
    display: block;
    line-height: 20px;
}
blockquote small:before {
    content: "— ";
}
blockquote.pull-right {
    border-left: 0 none;
    border-right: 5px solid #EEEEEE;
    float: right;
    padding-left: 0;
    padding-right: 15px;
}
blockquote.pull-right p, blockquote.pull-right small {
    text-align: right;
}
blockquote.pull-right small:before {
    content: "";
}
blockquote.pull-right small:after {
    content: " —";
}
q:before, q:after, blockquote:before, blockquote:after {
    content: "";
}
address {
    display: block;
    font-style: normal;
    line-height: 20px;
    margin-bottom: 20px;
}
code, pre {
    border-radius: 3px;
    color: #333333;
    font-family: Monaco,Menlo,Consolas,"Courier New",monospace;
    font-size: 12px;
    padding: 0 3px 2px;
}
code {
    background-color: #F7F7F9;
    border: 1px solid #E1E1E8;
    color: #DD1144;
    padding: 2px 4px;
    white-space: nowrap;
}
pre {
    background-color: #F5F5F5;
    border: 1px solid rgba(0, 0, 0, 0.15);
    border-radius: 4px;
    display: block;
    font-size: 13px;
    line-height: 20px;
    margin: 0 0 10px;
    padding: 9.5px;
    white-space: pre-wrap;
    word-break: break-all;
    word-wrap: break-word;
}
pre.prettyprint {
    margin-bottom: 20px;
}
pre code {
    background-color: rgba(0, 0, 0, 0);
    border: 0 none;
    color: inherit;
    padding: 0;
    white-space: pre-wrap;
}
.pre-scrollable {
    max-height: 340px;
    overflow-y: scroll;
}
form {
    margin: 0 0 20px;
}
fieldset {
    border: 0 none;
    margin: 0;
    padding: 0;
}
legend {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    border-color: -moz-use-text-color -moz-use-text-color #E5E5E5;
    border-image: none;
    border-style: none none solid;
    border-width: 0 0 1px;
    color: #333333;
    display: block;
    font-size: 21px;
    line-height: 40px;
    margin-bottom: 20px;
    padding: 0;
    width: 100%;
}
legend small {
    color: #999999;
    font-size: 15px;
}
label, input, button, select, textarea {
    font-size: 14px;
    font-weight: normal;
    line-height: 20px;
}
input, button, select, textarea {
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
}
label {
    display: block;
    margin-bottom: 5px;
}
select, textarea, input[type="text"], input[type="password"], input[type="datetime"], input[type="datetime-local"], input[type="date"], input[type="month"], input[type="time"], input[type="week"], input[type="number"], input[type="email"], input[type="url"], input[type="search"], input[type="tel"], input[type="color"], .uneditable-input {
    border-radius: 4px;
    color: #555555;
    display: inline-block;
    font-size: 14px;
    height: 20px;
    line-height: 20px;
    margin-bottom: 10px;
    padding: 4px 6px;
    vertical-align: middle;
}
input, textarea, .uneditable-input {
    width: 206px;
}
textarea {
    height: auto;
}
textarea, input[type="text"], input[type="password"], input[type="datetime"], input[type="datetime-local"], input[type="date"], input[type="month"], input[type="time"], input[type="week"], input[type="number"], input[type="email"], input[type="url"], input[type="search"], input[type="tel"], input[type="color"], .uneditable-input {
    background-color: #FFFFFF;
    border: 1px solid #CCCCCC;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset;
    transition: border 0.2s linear 0s, box-shadow 0.2s linear 0s;
}
textarea:focus, input[type="text"]:focus, input[type="password"]:focus, input[type="datetime"]:focus, input[type="datetime-local"]:focus, input[type="date"]:focus, input[type="month"]:focus, input[type="time"]:focus, input[type="week"]:focus, input[type="number"]:focus, input[type="email"]:focus, input[type="url"]:focus, input[type="search"]:focus, input[type="tel"]:focus, input[type="color"]:focus, .uneditable-input:focus {
    border-color: rgba(82, 168, 236, 0.8);
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset, 0 0 8px rgba(82, 168, 236, 0.6);
    outline: 0 none;
}
input[type="radio"], input[type="checkbox"] {
    line-height: normal;
    margin: 4px 0 0;
}
input[type="file"], input[type="image"], input[type="submit"], input[type="reset"], input[type="button"], input[type="radio"], input[type="checkbox"] {
    width: auto;
}
select, input[type="file"] {
    height: 30px;
    line-height: 30px;
}
select {
    background-color: #FFFFFF;
    border: 1px solid #CCCCCC;
    width: 220px;
}
select[multiple], select[size] {
    height: auto;
}
select:focus, input[type="file"]:focus, input[type="radio"]:focus, input[type="checkbox"]:focus {
    outline: thin dotted #333333;
    outline-offset: -2px;
}
.uneditable-input, .uneditable-textarea {
    background-color: #FCFCFC;
    border-color: #CCCCCC;
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.024) inset;
    color: #999999;
    cursor: not-allowed;
}
.uneditable-input {
    overflow: hidden;
    white-space: nowrap;
}
.uneditable-textarea {
    height: auto;
    width: auto;
}
input:-moz-placeholder, textarea:-moz-placeholder {
    color: #999999;
}
.radio, .checkbox {
    min-height: 20px;
    padding-left: 20px;
}
.radio input[type="radio"], .checkbox input[type="checkbox"] {
    float: left;
    margin-left: -20px;
}
.controls > .radio:first-child, .controls > .checkbox:first-child {
    padding-top: 5px;
}
.radio.inline, .checkbox.inline {
    display: inline-block;
    margin-bottom: 0;
    padding-top: 5px;
    vertical-align: middle;
}
.radio.inline + .radio.inline, .checkbox.inline + .checkbox.inline {
    margin-left: 10px;
}
.input-mini {
    width: 60px;
}
.input-small {
    width: 90px;
}
.input-medium {
    width: 150px;
}
.input-large {
    width: 210px;
}
.input-xlarge {
    width: 270px;
}
.input-xxlarge {
    width: 530px;
}
input[class*="span"], select[class*="span"], textarea[class*="span"], .uneditable-input[class*="span"], .row-fluid input[class*="span"], .row-fluid select[class*="span"], .row-fluid textarea[class*="span"], .row-fluid .uneditable-input[class*="span"] {
    float: none;
    margin-left: 0;
}
.input-append input[class*="span"], .input-append .uneditable-input[class*="span"], .input-prepend input[class*="span"], .input-prepend .uneditable-input[class*="span"], .row-fluid input[class*="span"], .row-fluid select[class*="span"], .row-fluid textarea[class*="span"], .row-fluid .uneditable-input[class*="span"], .row-fluid .input-prepend [class*="span"], .row-fluid .input-append [class*="span"] {
    display: inline-block;
}
input, textarea, .uneditable-input {
    margin-left: 0;
}
.controls-row [class*="span"] + [class*="span"] {
    margin-left: 20px;
}
input.span12, textarea.span12, .uneditable-input.span12 {
    width: 926px;
}
input.span11, textarea.span11, .uneditable-input.span11 {
    width: 846px;
}
input.span10, textarea.span10, .uneditable-input.span10 {
    width: 766px;
}
input.span9, textarea.span9, .uneditable-input.span9 {
    width: 686px;
}
input.span8, textarea.span8, .uneditable-input.span8 {
    width: 606px;
}
input.span7, textarea.span7, .uneditable-input.span7 {
    width: 526px;
}
input.span6, textarea.span6, .uneditable-input.span6 {
    width: 446px;
}
input.span5, textarea.span5, .uneditable-input.span5 {
    width: 366px;
}
input.span4, textarea.span4, .uneditable-input.span4 {
    width: 286px;
}
input.span3, textarea.span3, .uneditable-input.span3 {
    width: 206px;
}
input.span2, textarea.span2, .uneditable-input.span2 {
    width: 126px;
}
input.span1, textarea.span1, .uneditable-input.span1 {
    width: 46px;
}
.controls-row {
}
.controls-row:before, .controls-row:after {
    content: "";
    display: table;
    line-height: 0;
}
.controls-row:after {
    clear: both;
}
.controls-row [class*="span"], .row-fluid .controls-row [class*="span"] {
    float: left;
}
.controls-row .checkbox[class*="span"], .controls-row .radio[class*="span"] {
    padding-top: 5px;
}
input[disabled], select[disabled], textarea[disabled], input[readonly], select[readonly], textarea[readonly] {
    background-color: #EEEEEE;
    cursor: not-allowed;
}
input[type="radio"][disabled], input[type="checkbox"][disabled], input[type="radio"][readonly], input[type="checkbox"][readonly] {
    background-color: rgba(0, 0, 0, 0);
}
.control-group.warning .control-label, .control-group.warning .help-block, .control-group.warning .help-inline {
    color: #C09853;
}
.control-group.warning .checkbox, .control-group.warning .radio, .control-group.warning input, .control-group.warning select, .control-group.warning textarea {
    color: #C09853;
}
.control-group.warning input, .control-group.warning select, .control-group.warning textarea {
    border-color: #C09853;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset;
}
.control-group.warning input:focus, .control-group.warning select:focus, .control-group.warning textarea:focus {
    border-color: #A47E3C;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset, 0 0 6px #DBC59E;
}
.control-group.warning .input-prepend .add-on, .control-group.warning .input-append .add-on {
    background-color: #FCF8E3;
    border-color: #C09853;
    color: #C09853;
}
.control-group.error .control-label, .control-group.error .help-block, .control-group.error .help-inline {
    color: #B94A48;
}
.control-group.error .checkbox, .control-group.error .radio, .control-group.error input, .control-group.error select, .control-group.error textarea {
    color: #B94A48;
}
.control-group.error input, .control-group.error select, .control-group.error textarea {
    border-color: #B94A48;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset;
}
.control-group.error input:focus, .control-group.error select:focus, .control-group.error textarea:focus {
    border-color: #953B39;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset, 0 0 6px #D59392;
}
.control-group.error .input-prepend .add-on, .control-group.error .input-append .add-on {
    background-color: #F2DEDE;
    border-color: #B94A48;
    color: #B94A48;
}
.control-group.success .control-label, .control-group.success .help-block, .control-group.success .help-inline {
    color: #468847;
}
.control-group.success .checkbox, .control-group.success .radio, .control-group.success input, .control-group.success select, .control-group.success textarea {
    color: #468847;
}
.control-group.success input, .control-group.success select, .control-group.success textarea {
    border-color: #468847;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset;
}
.control-group.success input:focus, .control-group.success select:focus, .control-group.success textarea:focus {
    border-color: #356635;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset, 0 0 6px #7ABA7B;
}
.control-group.success .input-prepend .add-on, .control-group.success .input-append .add-on {
    background-color: #DFF0D8;
    border-color: #468847;
    color: #468847;
}
.control-group.info .control-label, .control-group.info .help-block, .control-group.info .help-inline {
    color: #3A87AD;
}
.control-group.info .checkbox, .control-group.info .radio, .control-group.info input, .control-group.info select, .control-group.info textarea {
    color: #3A87AD;
}
.control-group.info input, .control-group.info select, .control-group.info textarea {
    border-color: #3A87AD;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset;
}
.control-group.info input:focus, .control-group.info select:focus, .control-group.info textarea:focus {
    border-color: #2D6987;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset, 0 0 6px #7AB5D3;
}
.control-group.info .input-prepend .add-on, .control-group.info .input-append .add-on {
    background-color: #D9EDF7;
    border-color: #3A87AD;
    color: #3A87AD;
}
input:focus:invalid, textarea:focus:invalid, select:focus:invalid {
    border-color: #EE5F5B;
    color: #B94A48;
}
input:focus:invalid:focus, textarea:focus:invalid:focus, select:focus:invalid:focus {
    border-color: #E9322D;
    box-shadow: 0 0 6px #F8B9B7;
}
.form-actions {
    background-color: #F5F5F5;
    border-top: 1px solid #E5E5E5;
    margin-bottom: 20px;
    margin-top: 20px;
    padding: 19px 20px 20px;
}
.form-actions:before, .form-actions:after {
    content: "";
    display: table;
    line-height: 0;
}
.form-actions:after {
    clear: both;
}
.help-block, .help-inline {
    color: #595959;
}
.help-block {
    display: block;
    margin-bottom: 10px;
}
.help-inline {
    display: inline-block;
    padding-left: 5px;
    vertical-align: middle;
}
.input-append, .input-prepend {
    display: inline-block;
    font-size: 0;
    margin-bottom: 10px;
    vertical-align: middle;
    white-space: nowrap;
}
.input-append input, .input-append select, .input-append .uneditable-input, .input-append .dropdown-menu, .input-append .popover, .input-prepend input, .input-prepend select, .input-prepend .uneditable-input, .input-prepend .dropdown-menu, .input-prepend .popover {
    font-size: 14px;
}
.input-append input, .input-append select, .input-append .uneditable-input, .input-prepend input, .input-prepend select, .input-prepend .uneditable-input {
    border-radius: 0 4px 4px 0;
    margin-bottom: 0;
    position: relative;
    vertical-align: top;
}
.input-append input:focus, .input-append select:focus, .input-append .uneditable-input:focus, .input-prepend input:focus, .input-prepend select:focus, .input-prepend .uneditable-input:focus {
    z-index: 2;
}
.input-append .add-on, .input-prepend .add-on {
    background-color: #EEEEEE;
    border: 1px solid #CCCCCC;
    display: inline-block;
    font-size: 14px;
    font-weight: normal;
    height: 20px;
    line-height: 20px;
    min-width: 16px;
    padding: 4px 5px;
    text-align: center;
    text-shadow: 0 1px 0 #FFFFFF;
    width: auto;
}
.input-append .add-on, .input-append .btn, .input-append .btn-group > .dropdown-toggle, .input-prepend .add-on, .input-prepend .btn, .input-prepend .btn-group > .dropdown-toggle {
    border-radius: 0;
    vertical-align: top;
}
.input-append .active, .input-prepend .active {
    background-color: #A9DBA9;
    border-color: #46A546;
}
.input-prepend .add-on, .input-prepend .btn {
    margin-right: -1px;
}
.input-prepend .add-on:first-child, .input-prepend .btn:first-child {
    border-radius: 4px 0 0 4px;
}
.input-append input, .input-append select, .input-append .uneditable-input {
    border-radius: 4px 0 0 4px;
}
.input-append input + .btn-group .btn:last-child, .input-append select + .btn-group .btn:last-child, .input-append .uneditable-input + .btn-group .btn:last-child {
    border-radius: 0 4px 4px 0;
}
.input-append .add-on, .input-append .btn, .input-append .btn-group {
    margin-left: -1px;
}
.input-append .add-on:last-child, .input-append .btn:last-child, .input-append .btn-group:last-child > .dropdown-toggle {
    border-radius: 0 4px 4px 0;
}
.input-prepend.input-append input, .input-prepend.input-append select, .input-prepend.input-append .uneditable-input {
    border-radius: 0;
}
.input-prepend.input-append input + .btn-group .btn, .input-prepend.input-append select + .btn-group .btn, .input-prepend.input-append .uneditable-input + .btn-group .btn {
    border-radius: 0 4px 4px 0;
}
.input-prepend.input-append .add-on:first-child, .input-prepend.input-append .btn:first-child {
    border-radius: 4px 0 0 4px;
    margin-right: -1px;
}
.input-prepend.input-append .add-on:last-child, .input-prepend.input-append .btn:last-child {
    border-radius: 0 4px 4px 0;
    margin-left: -1px;
}
.input-prepend.input-append .btn-group:first-child {
    margin-left: 0;
}
input.search-query {
    border-radius: 15px;
    margin-bottom: 0;
    padding-left: 14px;
    padding-right: 14px;
}
.form-search .input-append .search-query, .form-search .input-prepend .search-query {
    border-radius: 0;
}
.form-search .input-append .search-query {
    border-radius: 14px 0 0 14px;
}
.form-search .input-append .btn {
    border-radius: 0 14px 14px 0;
}
.form-search .input-prepend .search-query {
    border-radius: 0 14px 14px 0;
}
.form-search .input-prepend .btn {
    border-radius: 14px 0 0 14px;
}
.form-search input, .form-search textarea, .form-search select, .form-search .help-inline, .form-search .uneditable-input, .form-search .input-prepend, .form-search .input-append, .form-inline input, .form-inline textarea, .form-inline select, .form-inline .help-inline, .form-inline .uneditable-input, .form-inline .input-prepend, .form-inline .input-append, .form-horizontal input, .form-horizontal textarea, .form-horizontal select, .form-horizontal .help-inline, .form-horizontal .uneditable-input, .form-horizontal .input-prepend, .form-horizontal .input-append {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle;
}
.form-search .hide, .form-inline .hide, .form-horizontal .hide {
    display: none;
}
.form-search label, .form-inline label, .form-search .btn-group, .form-inline .btn-group {
    display: inline-block;
}
.form-search .input-append, .form-inline .input-append, .form-search .input-prepend, .form-inline .input-prepend {
    margin-bottom: 0;
}
.form-search .radio, .form-search .checkbox, .form-inline .radio, .form-inline .checkbox {
    margin-bottom: 0;
    padding-left: 0;
    vertical-align: middle;
}
.form-search .radio input[type="radio"], .form-search .checkbox input[type="checkbox"], .form-inline .radio input[type="radio"], .form-inline .checkbox input[type="checkbox"] {
    float: left;
    margin-left: 0;
    margin-right: 3px;
}
.control-group {
    margin-bottom: 10px;
}
legend + .control-group {
    margin-top: 20px;
}
.form-horizontal .control-group {
    margin-bottom: 20px;
}
.form-horizontal .control-group:before, .form-horizontal .control-group:after {
    content: "";
    display: table;
    line-height: 0;
}
.form-horizontal .control-group:after {
    clear: both;
}
.form-horizontal .control-label {
    float: left;
    padding-top: 5px;
    text-align: right;
    width: 160px;
}
.form-horizontal .controls {
    margin-left: 180px;
}
.form-horizontal .controls:first-child {
}
.form-horizontal .help-block {
    margin-bottom: 0;
}
.form-horizontal input + .help-block, .form-horizontal select + .help-block, .form-horizontal textarea + .help-block, .form-horizontal .uneditable-input + .help-block, .form-horizontal .input-prepend + .help-block, .form-horizontal .input-append + .help-block {
    margin-top: 10px;
}
.form-horizontal .form-actions {
    padding-left: 180px;
}
table {
    background-color: rgba(0, 0, 0, 0);
    border-collapse: collapse;
    border-spacing: 0;
    max-width: 100%;
}
.table {
    margin-bottom: 20px;
    width: 100%;
}
.table th, .table td {
    border-top: 1px solid #DDDDDD;
    line-height: 20px;
    padding: 8px;
    text-align: left;
    vertical-align: top;
}
.table th {
    font-weight: bold;
}
.table thead th {
    vertical-align: bottom;
}
.table caption + thead tr:first-child th, .table caption + thead tr:first-child td, .table colgroup + thead tr:first-child th, .table colgroup + thead tr:first-child td, .table thead:first-child tr:first-child th, .table thead:first-child tr:first-child td {
    border-top: 0 none;
}
.table tbody + tbody {
    border-top: 2px solid #DDDDDD;
}
.table .table {
    background-color: #FFFFFF;
}
.table-condensed th, .table-condensed td {
    padding: 4px 5px;
}
.table-bordered {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    border-collapse: separate;
    border-color: #DDDDDD #DDDDDD #DDDDDD -moz-use-text-color;
    border-image: none;
    border-radius: 4px;
    border-style: solid solid solid none;
    border-width: 1px 1px 1px 0;
}
.table-bordered th, .table-bordered td {
    border-left: 1px solid #DDDDDD;
}
.table-bordered caption + thead tr:first-child th, .table-bordered caption + tbody tr:first-child th, .table-bordered caption + tbody tr:first-child td, .table-bordered colgroup + thead tr:first-child th, .table-bordered colgroup + tbody tr:first-child th, .table-bordered colgroup + tbody tr:first-child td, .table-bordered thead:first-child tr:first-child th, .table-bordered tbody:first-child tr:first-child th, .table-bordered tbody:first-child tr:first-child td {
    border-top: 0 none;
}
.table-bordered thead:first-child tr:first-child > th:first-child, .table-bordered tbody:first-child tr:first-child > td:first-child, .table-bordered tbody:first-child tr:first-child > th:first-child {
    border-top-left-radius: 4px;
}
.table-bordered thead:first-child tr:first-child > th:last-child, .table-bordered tbody:first-child tr:first-child > td:last-child, .table-bordered tbody:first-child tr:first-child > th:last-child {
    border-top-right-radius: 4px;
}
.table-bordered thead:last-child tr:last-child > th:first-child, .table-bordered tbody:last-child tr:last-child > td:first-child, .table-bordered tbody:last-child tr:last-child > th:first-child, .table-bordered tfoot:last-child tr:last-child > td:first-child, .table-bordered tfoot:last-child tr:last-child > th:first-child {
    border-bottom-left-radius: 4px;
}
.table-bordered thead:last-child tr:last-child > th:last-child, .table-bordered tbody:last-child tr:last-child > td:last-child, .table-bordered tbody:last-child tr:last-child > th:last-child, .table-bordered tfoot:last-child tr:last-child > td:last-child, .table-bordered tfoot:last-child tr:last-child > th:last-child {
    border-bottom-right-radius: 4px;
}
.table-bordered tfoot + tbody:last-child tr:last-child td:first-child {
    border-bottom-left-radius: 0;
}
.table-bordered tfoot + tbody:last-child tr:last-child td:last-child {
    border-bottom-right-radius: 0;
}
.table-bordered caption + thead tr:first-child th:first-child, .table-bordered caption + tbody tr:first-child td:first-child, .table-bordered colgroup + thead tr:first-child th:first-child, .table-bordered colgroup + tbody tr:first-child td:first-child {
    border-top-left-radius: 4px;
}
.table-bordered caption + thead tr:first-child th:last-child, .table-bordered caption + tbody tr:first-child td:last-child, .table-bordered colgroup + thead tr:first-child th:last-child, .table-bordered colgroup + tbody tr:first-child td:last-child {
    border-top-right-radius: 4px;
}
.table-striped tbody > tr:nth-child(2n+1) > td, .table-striped tbody > tr:nth-child(2n+1) > th {
    background-color: #F9F9F9;
}
.table-hover tbody tr:hover > td, .table-hover tbody tr:hover > th {
    background-color: #F5F5F5;
}
table td[class*="span"], table th[class*="span"], .row-fluid table td[class*="span"], .row-fluid table th[class*="span"] {
    display: table-cell;
    float: none;
    margin-left: 0;
}
.table td.span1, .table th.span1 {
    float: none;
    margin-left: 0;
    width: 44px;
}
.table td.span2, .table th.span2 {
    float: none;
    margin-left: 0;
    width: 124px;
}
.table td.span3, .table th.span3 {
    float: none;
    margin-left: 0;
    width: 204px;
}
.table td.span4, .table th.span4 {
    float: none;
    margin-left: 0;
    width: 284px;
}
.table td.span5, .table th.span5 {
    float: none;
    margin-left: 0;
    width: 364px;
}
.table td.span6, .table th.span6 {
    float: none;
    margin-left: 0;
    width: 444px;
}
.table td.span7, .table th.span7 {
    float: none;
    margin-left: 0;
    width: 524px;
}
.table td.span8, .table th.span8 {
    float: none;
    margin-left: 0;
    width: 604px;
}
.table td.span9, .table th.span9 {
    float: none;
    margin-left: 0;
    width: 684px;
}
.table td.span10, .table th.span10 {
    float: none;
    margin-left: 0;
    width: 764px;
}
.table td.span11, .table th.span11 {
    float: none;
    margin-left: 0;
    width: 844px;
}
.table td.span12, .table th.span12 {
    float: none;
    margin-left: 0;
    width: 924px;
}
.table tbody tr.success > td {
    background-color: #DFF0D8;
}
.table tbody tr.error > td {
    background-color: #F2DEDE;
}
.table tbody tr.warning > td {
    background-color: #FCF8E3;
}
.table tbody tr.info > td {
    background-color: #D9EDF7;
}
.table-hover tbody tr.success:hover > td {
    background-color: #D0E9C6;
}
.table-hover tbody tr.error:hover > td {
    background-color: #EBCCCC;
}
.table-hover tbody tr.warning:hover > td {
    background-color: #FAF2CC;
}
.table-hover tbody tr.info:hover > td {
    background-color: #C4E3F3;
}
[class^="icon-"], [class*=" icon-"] {
    background-image: url("/assets/glyphicons-halflings-2851b489e8c39f8fad44fc10efb99c3e.png");
    background-position: 14px 14px;
    background-repeat: no-repeat;
    display: inline-block;
    height: 14px;
    line-height: 14px;
    margin-top: 1px;
    vertical-align: text-top;
    width: 14px;
}
.icon-white, .nav-pills > .active > a > [class^="icon-"], .nav-pills > .active > a > [class*=" icon-"], .nav-list > .active > a > [class^="icon-"], .nav-list > .active > a > [class*=" icon-"], .navbar-inverse .nav > .active > a > [class^="icon-"], .navbar-inverse .nav > .active > a > [class*=" icon-"], .dropdown-menu > li > a:hover > [class^="icon-"], .dropdown-menu > li > a:focus > [class^="icon-"], .dropdown-menu > li > a:hover > [class*=" icon-"], .dropdown-menu > li > a:focus > [class*=" icon-"], .dropdown-menu > .active > a > [class^="icon-"], .dropdown-menu > .active > a > [class*=" icon-"], .dropdown-submenu:hover > a > [class^="icon-"], .dropdown-submenu:focus > a > [class^="icon-"], .dropdown-submenu:hover > a > [class*=" icon-"], .dropdown-submenu:focus > a > [class*=" icon-"] {
    background-image: url("/assets/glyphicons-halflings-white-6cccd17a7aed91dbc0157d343c68c0d9.png");
}
.icon-glass {
    background-position: 0 0;
}
.icon-music {
    background-position: -24px 0;
}
.icon-search {
    background-position: -48px 0;
}
.icon-envelope {
    background-position: -72px 0;
}
.icon-heart {
    background-position: -96px 0;
}
.icon-star {
    background-position: -120px 0;
}
.icon-star-empty {
    background-position: -144px 0;
}
.icon-user {
    background-position: -168px 0;
}
.icon-film {
    background-position: -192px 0;
}
.icon-th-large {
    background-position: -216px 0;
}
.icon-th {
    background-position: -240px 0;
}
.icon-th-list {
    background-position: -264px 0;
}
.icon-ok {
    background-position: -288px 0;
}
.icon-remove {
    background-position: -312px 0;
}
.icon-zoom-in {
    background-position: -336px 0;
}
.icon-zoom-out {
    background-position: -360px 0;
}
.icon-off {
    background-position: -384px 0;
}
.icon-signal {
    background-position: -408px 0;
}
.icon-cog {
    background-position: -432px 0;
}
.icon-trash {
    background-position: -456px 0;
}
.icon-home {
    background-position: 0 -24px;
}
.icon-file {
    background-position: -24px -24px;
}
.icon-time {
    background-position: -48px -24px;
}
.icon-road {
    background-position: -72px -24px;
}
.icon-download-alt {
    background-position: -96px -24px;
}
.icon-download {
    background-position: -120px -24px;
}
.icon-upload {
    background-position: -144px -24px;
}
.icon-inbox {
    background-position: -168px -24px;
}
.icon-play-circle {
    background-position: -192px -24px;
}
.icon-repeat {
    background-position: -216px -24px;
}
.icon-refresh {
    background-position: -240px -24px;
}
.icon-list-alt {
    background-position: -264px -24px;
}
.icon-lock {
    background-position: -287px -24px;
}
.icon-flag {
    background-position: -312px -24px;
}
.icon-headphones {
    background-position: -336px -24px;
}
.icon-volume-off {
    background-position: -360px -24px;
}
.icon-volume-down {
    background-position: -384px -24px;
}
.icon-volume-up {
    background-position: -408px -24px;
}
.icon-qrcode {
    background-position: -432px -24px;
}
.icon-barcode {
    background-position: -456px -24px;
}
.icon-tag {
    background-position: 0 -48px;
}
.icon-tags {
    background-position: -25px -48px;
}
.icon-book {
    background-position: -48px -48px;
}
.icon-bookmark {
    background-position: -72px -48px;
}
.icon-print {
    background-position: -96px -48px;
}
.icon-camera {
    background-position: -120px -48px;
}
.icon-font {
    background-position: -144px -48px;
}
.icon-bold {
    background-position: -167px -48px;
}
.icon-italic {
    background-position: -192px -48px;
}
.icon-text-height {
    background-position: -216px -48px;
}
.icon-text-width {
    background-position: -240px -48px;
}
.icon-align-left {
    background-position: -264px -48px;
}
.icon-align-center {
    background-position: -288px -48px;
}
.icon-align-right {
    background-position: -312px -48px;
}
.icon-align-justify {
    background-position: -336px -48px;
}
.icon-list {
    background-position: -360px -48px;
}
.icon-indent-left {
    background-position: -384px -48px;
}
.icon-indent-right {
    background-position: -408px -48px;
}
.icon-facetime-video {
    background-position: -432px -48px;
}
.icon-picture {
    background-position: -456px -48px;
}
.icon-pencil {
    background-position: 0 -72px;
}
.icon-map-marker {
    background-position: -24px -72px;
}
.icon-adjust {
    background-position: -48px -72px;
}
.icon-tint {
    background-position: -72px -72px;
}
.icon-edit {
    background-position: -96px -72px;
}
.icon-share {
    background-position: -120px -72px;
}
.icon-check {
    background-position: -144px -72px;
}
.icon-move {
    background-position: -168px -72px;
}
.icon-step-backward {
    background-position: -192px -72px;
}
.icon-fast-backward {
    background-position: -216px -72px;
}
.icon-backward {
    background-position: -240px -72px;
}
.icon-play {
    background-position: -264px -72px;
}
.icon-pause {
    background-position: -288px -72px;
}
.icon-stop {
    background-position: -312px -72px;
}
.icon-forward {
    background-position: -336px -72px;
}
.icon-fast-forward {
    background-position: -360px -72px;
}
.icon-step-forward {
    background-position: -384px -72px;
}
.icon-eject {
    background-position: -408px -72px;
}
.icon-chevron-left {
    background-position: -432px -72px;
}
.icon-chevron-right {
    background-position: -456px -72px;
}
.icon-plus-sign {
    background-position: 0 -96px;
}
.icon-minus-sign {
    background-position: -24px -96px;
}
.icon-remove-sign {
    background-position: -48px -96px;
}
.icon-ok-sign {
    background-position: -72px -96px;
}
.icon-question-sign {
    background-position: -96px -96px;
}
.icon-info-sign {
    background-position: -120px -96px;
}
.icon-screenshot {
    background-position: -144px -96px;
}
.icon-remove-circle {
    background-position: -168px -96px;
}
.icon-ok-circle {
    background-position: -192px -96px;
}
.icon-ban-circle {
    background-position: -216px -96px;
}
.icon-arrow-left {
    background-position: -240px -96px;
}
.icon-arrow-right {
    background-position: -264px -96px;
}
.icon-arrow-up {
    background-position: -289px -96px;
}
.icon-arrow-down {
    background-position: -312px -96px;
}
.icon-share-alt {
    background-position: -336px -96px;
}
.icon-resize-full {
    background-position: -360px -96px;
}
.icon-resize-small {
    background-position: -384px -96px;
}
.icon-plus {
    background-position: -408px -96px;
}
.icon-minus {
    background-position: -433px -96px;
}
.icon-asterisk {
    background-position: -456px -96px;
}
.icon-exclamation-sign {
    background-position: 0 -120px;
}
.icon-gift {
    background-position: -24px -120px;
}
.icon-leaf {
    background-position: -48px -120px;
}
.icon-fire {
    background-position: -72px -120px;
}
.icon-eye-open {
    background-position: -96px -120px;
}
.icon-eye-close {
    background-position: -120px -120px;
}
.icon-warning-sign {
    background-position: -144px -120px;
}
.icon-plane {
    background-position: -168px -120px;
}
.icon-calendar {
    background-position: -192px -120px;
}
.icon-random {
    background-position: -216px -120px;
    width: 16px;
}
.icon-comment {
    background-position: -240px -120px;
}
.icon-magnet {
    background-position: -264px -120px;
}
.icon-chevron-up {
    background-position: -288px -120px;
}
.icon-chevron-down {
    background-position: -313px -119px;
}
.icon-retweet {
    background-position: -336px -120px;
}
.icon-shopping-cart {
    background-position: -360px -120px;
}
.icon-folder-close {
    background-position: -384px -120px;
    width: 16px;
}
.icon-folder-open {
    background-position: -408px -120px;
    width: 16px;
}
.icon-resize-vertical {
    background-position: -432px -119px;
}
.icon-resize-horizontal {
    background-position: -456px -118px;
}
.icon-hdd {
    background-position: 0 -144px;
}
.icon-bullhorn {
    background-position: -24px -144px;
}
.icon-bell {
    background-position: -48px -144px;
}
.icon-certificate {
    background-position: -72px -144px;
}
.icon-thumbs-up {
    background-position: -96px -144px;
}
.icon-thumbs-down {
    background-position: -120px -144px;
}
.icon-hand-right {
    background-position: -144px -144px;
}
.icon-hand-left {
    background-position: -168px -144px;
}
.icon-hand-up {
    background-position: -192px -144px;
}
.icon-hand-down {
    background-position: -216px -144px;
}
.icon-circle-arrow-right {
    background-position: -240px -144px;
}
.icon-circle-arrow-left {
    background-position: -264px -144px;
}
.icon-circle-arrow-up {
    background-position: -288px -144px;
}
.icon-circle-arrow-down {
    background-position: -312px -144px;
}
.icon-globe {
    background-position: -336px -144px;
}
.icon-wrench {
    background-position: -360px -144px;
}
.icon-tasks {
    background-position: -384px -144px;
}
.icon-filter {
    background-position: -408px -144px;
}
.icon-briefcase {
    background-position: -432px -144px;
}
.icon-fullscreen {
    background-position: -456px -144px;
}
.dropup, .dropdown {
    position: relative;
}
.dropdown-toggle {
}
.dropdown-toggle:active, .open .dropdown-toggle {
    outline: 0 none;
}
.caret {
    border-left: 4px solid rgba(0, 0, 0, 0);
    border-right: 4px solid rgba(0, 0, 0, 0);
    border-top: 4px solid #000000;
    content: "";
    display: inline-block;
    height: 0;
    vertical-align: top;
    width: 0;
}
.dropdown .caret {
    margin-left: 2px;
    margin-top: 8px;
}
.dropdown-menu {
    background-clip: padding-box;
    background-color: #FFFFFF;
    border: 1px solid rgba(0, 0, 0, 0.2);
    border-radius: 6px;
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
    display: none;
    float: left;
    left: 0;
    list-style: none outside none;
    margin: 2px 0 0;
    min-width: 160px;
    padding: 5px 0;
    position: absolute;
    top: 100%;
    z-index: 1000;
}
.dropdown-menu.pull-right {
    left: auto;
    right: 0;
}
.dropdown-menu .divider {
    background-color: #E5E5E5;
    border-bottom: 1px solid #FFFFFF;
    height: 1px;
    margin: 9px 1px;
    overflow: hidden;
}
.dropdown-menu > li > a {
    clear: both;
    color: #333333;
    display: block;
    font-weight: normal;
    line-height: 20px;
    padding: 3px 20px;
    white-space: nowrap;
}
.dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus, .dropdown-submenu:hover > a, .dropdown-submenu:focus > a {
    background-color: #0081C2;
    background-image: linear-gradient(to bottom, #0088CC, #0077B3);
    background-repeat: repeat-x;
    color: #FFFFFF;
    text-decoration: none;
}
.dropdown-menu > .active > a, .dropdown-menu > .active > a:hover, .dropdown-menu > .active > a:focus {
    background-color: #0081C2;
    background-image: linear-gradient(to bottom, #0088CC, #0077B3);
    background-repeat: repeat-x;
    color: #FFFFFF;
    outline: 0 none;
    text-decoration: none;
}
.dropdown-menu > .disabled > a, .dropdown-menu > .disabled > a:hover, .dropdown-menu > .disabled > a:focus {
    color: #999999;
}
.dropdown-menu > .disabled > a:hover, .dropdown-menu > .disabled > a:focus {
    background-color: rgba(0, 0, 0, 0);
    background-image: none;
    cursor: default;
    text-decoration: none;
}
.open {
}
.open > .dropdown-menu {
    display: block;
}
.pull-right > .dropdown-menu {
    left: auto;
    right: 0;
}
.dropup .caret, .navbar-fixed-bottom .dropdown .caret {
    border-bottom: 4px solid #000000;
    border-top: 0 none;
    content: "";
}
.dropup .dropdown-menu, .navbar-fixed-bottom .dropdown .dropdown-menu {
    bottom: 100%;
    margin-bottom: 1px;
    top: auto;
}
.dropdown-submenu {
    position: relative;
}
.dropdown-submenu > .dropdown-menu {
    border-radius: 0 6px 6px;
    left: 100%;
    margin-left: -1px;
    margin-top: -6px;
    top: 0;
}
.dropdown-submenu:hover > .dropdown-menu {
    display: block;
}
.dropup .dropdown-submenu > .dropdown-menu {
    border-radius: 5px 5px 5px 0;
    bottom: 0;
    margin-bottom: -2px;
    margin-top: 0;
    top: auto;
}
.dropdown-submenu > a:after {
    border-color: rgba(0, 0, 0, 0) rgba(0, 0, 0, 0) rgba(0, 0, 0, 0) #CCCCCC;
    border-style: solid;
    border-width: 5px 0 5px 5px;
    content: " ";
    display: block;
    float: right;
    height: 0;
    margin-right: -10px;
    margin-top: 5px;
    width: 0;
}
.dropdown-submenu:hover > a:after {
    border-left-color: #FFFFFF;
}
.dropdown-submenu.pull-left {
    float: none;
}
.dropdown-submenu.pull-left > .dropdown-menu {
    border-radius: 6px 0 6px 6px;
    left: -100%;
    margin-left: 10px;
}
.dropdown .dropdown-menu .nav-header {
    padding-left: 20px;
    padding-right: 20px;
}
.typeahead {
    border-radius: 4px;
    margin-top: 2px;
    z-index: 1051;
}
.well {
    background-color: #F5F5F5;
    border: 1px solid #E3E3E3;
    border-radius: 4px;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05) inset;
    margin-bottom: 20px;
    min-height: 20px;
    padding: 19px;
}
.well blockquote {
    border-color: rgba(0, 0, 0, 0.15);
}
.well-large {
    border-radius: 6px;
    padding: 24px;
}
.well-small {
    border-radius: 3px;
    padding: 9px;
}
.fade {
    opacity: 0;
    transition: opacity 0.15s linear 0s;
}
.fade.in {
    opacity: 1;
}
.collapse {
    height: 0;
    overflow: hidden;
    position: relative;
    transition: height 0.35s ease 0s;
}
.collapse.in {
    height: auto;
}
.close {
    color: #000000;
    float: right;
    font-size: 20px;
    font-weight: bold;
    line-height: 20px;
    opacity: 0.2;
    text-shadow: 0 1px 0 #FFFFFF;
}
.close:hover, .close:focus {
    color: #000000;
    cursor: pointer;
    opacity: 0.4;
    text-decoration: none;
}
button.close {
    background: none repeat scroll 0 0 rgba(0, 0, 0, 0);
    border: 0 none;
    cursor: pointer;
    padding: 0;
}
.btn {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    background-color: #F5F5F5;
    background-image: linear-gradient(to bottom, #FFFFFF, #E6E6E6);
    background-repeat: repeat-x;
    border-color: #CCCCCC #CCCCCC #B3B3B3;
    border-image: none;
    border-radius: 4px;
    border-style: solid;
    border-width: 1px;
    box-shadow: 0 1px 0 rgba(255, 255, 255, 0.2) inset, 0 1px 2px rgba(0, 0, 0, 0.05);
    color: #333333;
    cursor: pointer;
    display: inline-block;
    font-size: 14px;
    line-height: 20px;
    margin-bottom: 0;
    padding: 4px 12px;
    text-align: center;
    text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
    vertical-align: middle;
}
.btn:hover, .btn:focus, .btn:active, .btn.active, .btn.disabled, .btn[disabled] {
    background-color: #E6E6E6;
    color: #333333;
}
.btn:active, .btn.active {
}
.btn:first-child {
}
.btn:hover, .btn:focus {
    background-position: 0 -15px;
    color: #333333;
    text-decoration: none;
    transition: background-position 0.1s linear 0s;
}
.btn:focus {
    outline: thin dotted #333333;
    outline-offset: -2px;
}
.btn.active, .btn:active {
    background-image: none;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.15) inset, 0 1px 2px rgba(0, 0, 0, 0.05);
    outline: 0 none;
}
.btn.disabled, .btn[disabled] {
    background-image: none;
    box-shadow: none;
    cursor: default;
    opacity: 0.65;
}
.btn-large {
    border-radius: 6px;
    font-size: 17.5px;
    padding: 11px 19px;
}
.btn-large [class^="icon-"], .btn-large [class*=" icon-"] {
    margin-top: 4px;
}
.btn-small {
    border-radius: 3px;
    font-size: 11.9px;
    padding: 2px 10px;
}
.btn-small [class^="icon-"], .btn-small [class*=" icon-"] {
    margin-top: 0;
}
.btn-mini [class^="icon-"], .btn-mini [class*=" icon-"] {
    margin-top: -1px;
}
.btn-mini {
    border-radius: 3px;
    font-size: 10.5px;
    padding: 0 6px;
}
.btn-block {
    box-sizing: border-box;
    display: block;
    padding-left: 0;
    padding-right: 0;
    width: 100%;
}
.btn-block + .btn-block {
    margin-top: 5px;
}
input.btn-block[type="submit"], input.btn-block[type="reset"], input.btn-block[type="button"] {
    width: 100%;
}
.btn-primary.active, .btn-warning.active, .btn-danger.active, .btn-success.active, .btn-info.active, .btn-inverse.active {
    color: rgba(255, 255, 255, 0.75);
}
.btn-primary {
    background-color: #006CCC;
    background-image: linear-gradient(to bottom, #0088CC, #0044CC);
    background-repeat: repeat-x;
    border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
    color: #FFFFFF;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
}
.btn-primary:hover, .btn-primary:focus, .btn-primary:active, .btn-primary.active, .btn-primary.disabled, .btn-primary[disabled] {
    background-color: #0044CC;
    color: #FFFFFF;
}
.btn-primary:active, .btn-primary.active {
}
.btn-warning {
    background-color: #F9A732;
    background-image: linear-gradient(to bottom, #FBB450, #F89406);
    background-repeat: repeat-x;
    border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
    color: #FFFFFF;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
}
.btn-warning:hover, .btn-warning:focus, .btn-warning:active, .btn-warning.active, .btn-warning.disabled, .btn-warning[disabled] {
    background-color: #F89406;
    color: #FFFFFF;
}
.btn-warning:active, .btn-warning.active {
}
.btn-danger {
    background-color: #DA4E49;
    background-image: linear-gradient(to bottom, #EE5F5B, #BD362F);
    background-repeat: repeat-x;
    border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
    color: #FFFFFF;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
}
.btn-danger:hover, .btn-danger:focus, .btn-danger:active, .btn-danger.active, .btn-danger.disabled, .btn-danger[disabled] {
    background-color: #BD362F;
    color: #FFFFFF;
}
.btn-danger:active, .btn-danger.active {
}
.btn-success {
    background-color: #5BB65B;
    background-image: linear-gradient(to bottom, #62C462, #51A351);
    background-repeat: repeat-x;
    border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
    color: #FFFFFF;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
}
.btn-success:hover, .btn-success:focus, .btn-success:active, .btn-success.active, .btn-success.disabled, .btn-success[disabled] {
    background-color: #51A351;
    color: #FFFFFF;
}
.btn-success:active, .btn-success.active {
}
.btn-info {
    background-color: #49AFCD;
    background-image: linear-gradient(to bottom, #5BC0DE, #2F96B4);
    background-repeat: repeat-x;
    border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
    color: #FFFFFF;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
}
.btn-info:hover, .btn-info:focus, .btn-info:active, .btn-info.active, .btn-info.disabled, .btn-info[disabled] {
    background-color: #2F96B4;
    color: #FFFFFF;
}
.btn-info:active, .btn-info.active {
}
.btn-inverse {
    background-color: #363636;
    background-image: linear-gradient(to bottom, #444444, #222222);
    background-repeat: repeat-x;
    border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
    color: #FFFFFF;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
}
.btn-inverse:hover, .btn-inverse:focus, .btn-inverse:active, .btn-inverse.active, .btn-inverse.disabled, .btn-inverse[disabled] {
    background-color: #222222;
    color: #FFFFFF;
}
.btn-inverse:active, .btn-inverse.active {
}
button.btn, input.btn[type="submit"] {
}
button.btn::-moz-focus-inner, input.btn[type="submit"]::-moz-focus-inner {
    border: 0 none;
    padding: 0;
}
button.btn.btn-large, input.btn.btn-large[type="submit"] {
}
button.btn.btn-small, input.btn.btn-small[type="submit"] {
}
button.btn.btn-mini, input.btn.btn-mini[type="submit"] {
}
.btn-link, .btn-link:active, .btn-link[disabled] {
    background-color: rgba(0, 0, 0, 0);
    background-image: none;
    box-shadow: none;
}
.btn-link {
    border-color: rgba(0, 0, 0, 0);
    border-radius: 0;
    color: #0088CC;
    cursor: pointer;
}
.btn-link:hover, .btn-link:focus {
    background-color: rgba(0, 0, 0, 0);
    color: #005580;
    text-decoration: underline;
}
.btn-link[disabled]:hover, .btn-link[disabled]:focus {
    color: #333333;
    text-decoration: none;
}
.btn-group {
    display: inline-block;
    font-size: 0;
    position: relative;
    vertical-align: middle;
    white-space: nowrap;
}
.btn-group:first-child {
}
.btn-group + .btn-group {
    margin-left: 5px;
}
.btn-toolbar {
    font-size: 0;
    margin-bottom: 10px;
    margin-top: 10px;
}
.btn-toolbar > .btn + .btn, .btn-toolbar > .btn-group + .btn, .btn-toolbar > .btn + .btn-group {
    margin-left: 5px;
}
.btn-group > .btn {
    border-radius: 0;
    position: relative;
}
.btn-group > .btn + .btn {
    margin-left: -1px;
}
.btn-group > .btn, .btn-group > .dropdown-menu, .btn-group > .popover {
    font-size: 14px;
}
.btn-group > .btn-mini {
    font-size: 10.5px;
}
.btn-group > .btn-small {
    font-size: 11.9px;
}
.btn-group > .btn-large {
    font-size: 17.5px;
}
.btn-group > .btn:first-child {
    border-bottom-left-radius: 4px;
    border-top-left-radius: 4px;
    margin-left: 0;
}
.btn-group > .btn:last-child, .btn-group > .dropdown-toggle {
    border-bottom-right-radius: 4px;
    border-top-right-radius: 4px;
}
.btn-group > .btn.large:first-child {
    border-bottom-left-radius: 6px;
    border-top-left-radius: 6px;
    margin-left: 0;
}
.btn-group > .btn.large:last-child, .btn-group > .large.dropdown-toggle {
    border-bottom-right-radius: 6px;
    border-top-right-radius: 6px;
}
.btn-group > .btn:hover, .btn-group > .btn:focus, .btn-group > .btn:active, .btn-group > .btn.active {
    z-index: 2;
}
.btn-group .dropdown-toggle:active, .btn-group.open .dropdown-toggle {
    outline: 0 none;
}
.btn-group > .btn + .dropdown-toggle {
    box-shadow: 1px 0 0 rgba(255, 255, 255, 0.125) inset, 0 1px 0 rgba(255, 255, 255, 0.2) inset, 0 1px 2px rgba(0, 0, 0, 0.05);
    padding-left: 8px;
    padding-right: 8px;
}
.btn-group > .btn-mini + .dropdown-toggle {
    padding-left: 5px;
    padding-right: 5px;
}
.btn-group > .btn-small + .dropdown-toggle {
}
.btn-group > .btn-large + .dropdown-toggle {
    padding-left: 12px;
    padding-right: 12px;
}
.btn-group.open .dropdown-toggle {
    background-image: none;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.15) inset, 0 1px 2px rgba(0, 0, 0, 0.05);
}
.btn-group.open .btn.dropdown-toggle {
    background-color: #E6E6E6;
}
.btn-group.open .btn-primary.dropdown-toggle {
    background-color: #0044CC;
}
.btn-group.open .btn-warning.dropdown-toggle {
    background-color: #F89406;
}
.btn-group.open .btn-danger.dropdown-toggle {
    background-color: #BD362F;
}
.btn-group.open .btn-success.dropdown-toggle {
    background-color: #51A351;
}
.btn-group.open .btn-info.dropdown-toggle {
    background-color: #2F96B4;
}
.btn-group.open .btn-inverse.dropdown-toggle {
    background-color: #222222;
}
.btn .caret {
    margin-left: 0;
    margin-top: 8px;
}
.btn-large .caret {
    margin-top: 6px;
}
.btn-large .caret {
    border-left-width: 5px;
    border-right-width: 5px;
    border-top-width: 5px;
}
.btn-mini .caret, .btn-small .caret {
    margin-top: 8px;
}
.dropup .btn-large .caret {
    border-bottom-width: 5px;
}
.btn-primary .caret, .btn-warning .caret, .btn-danger .caret, .btn-info .caret, .btn-success .caret, .btn-inverse .caret {
    border-bottom-color: #FFFFFF;
    border-top-color: #FFFFFF;
}
.btn-group-vertical {
    display: inline-block;
}
.btn-group-vertical > .btn {
    border-radius: 0;
    display: block;
    float: none;
    max-width: 100%;
}
.btn-group-vertical > .btn + .btn {
    margin-left: 0;
    margin-top: -1px;
}
.btn-group-vertical > .btn:first-child {
    border-radius: 4px 4px 0 0;
}
.btn-group-vertical > .btn:last-child {
    border-radius: 0 0 4px 4px;
}
.btn-group-vertical > .btn-large:first-child {
    border-radius: 6px 6px 0 0;
}
.btn-group-vertical > .btn-large:last-child {
    border-radius: 0 0 6px 6px;
}
.alert {
    background-color: #FCF8E3;
    border: 1px solid #FBEED5;
    border-radius: 4px;
    margin-bottom: 20px;
    padding: 8px 35px 8px 14px;
    text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
}
.alert, .alert h4 {
    color: #C09853;
}
.alert h4 {
    margin: 0;
}
.alert .close {
    line-height: 20px;
    position: relative;
    right: -21px;
    top: -2px;
}
.alert-success {
    background-color: #DFF0D8;
    border-color: #D6E9C6;
    color: #468847;
}
.alert-success h4 {
    color: #468847;
}
.alert-danger, .alert-error {
    background-color: #F2DEDE;
    border-color: #EED3D7;
    color: #B94A48;
}
.alert-danger h4, .alert-error h4 {
    color: #B94A48;
}
.alert-info {
    background-color: #D9EDF7;
    border-color: #BCE8F1;
    color: #3A87AD;
}
.alert-info h4 {
    color: #3A87AD;
}
.alert-block {
    padding-bottom: 14px;
    padding-top: 14px;
}
.alert-block > p, .alert-block > ul {
    margin-bottom: 0;
}
.alert-block p + p {
    margin-top: 5px;
}
.nav {
    list-style: none outside none;
    margin-bottom: 20px;
    margin-left: 0;
}
.nav > li > a {
    display: block;
}
.nav > li > a:hover, .nav > li > a:focus {
    background-color: #EEEEEE;
    text-decoration: none;
}
.nav > li > a > img {
    max-width: none;
}
.nav > .pull-right {
    float: right;
}
.nav-header {
    color: #999999;
    display: block;
    font-size: 11px;
    font-weight: bold;
    line-height: 20px;
    padding: 3px 15px;
    text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
    text-transform: uppercase;
}
.nav li + .nav-header {
    margin-top: 9px;
}
.nav-list {
    margin-bottom: 0;
    padding-left: 15px;
    padding-right: 15px;
}
.nav-list > li > a, .nav-list .nav-header {
    margin-left: -15px;
    margin-right: -15px;
    text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
}
.nav-list > li > a {
    padding: 3px 15px;
}
.nav-list > .active > a, .nav-list > .active > a:hover, .nav-list > .active > a:focus {
    background-color: #0088CC;
    color: #FFFFFF;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.2);
}
.nav-list [class^="icon-"], .nav-list [class*=" icon-"] {
    margin-right: 2px;
}
.nav-list .divider {
    background-color: #E5E5E5;
    border-bottom: 1px solid #FFFFFF;
    height: 1px;
    margin: 9px 1px;
    overflow: hidden;
}
.nav-tabs, .nav-pills {
}
.nav-tabs:before, .nav-tabs:after, .nav-pills:before, .nav-pills:after {
    content: "";
    display: table;
    line-height: 0;
}
.nav-tabs:after, .nav-pills:after {
    clear: both;
}
.nav-tabs > li, .nav-pills > li {
    float: left;
}
.nav-tabs > li > a, .nav-pills > li > a {
    line-height: 14px;
    margin-right: 2px;
    padding-left: 12px;
    padding-right: 12px;
}
.nav-tabs {
    border-bottom: 1px solid #DDDDDD;
}
.nav-tabs > li {
    margin-bottom: -1px;
}
.nav-tabs > li > a {
    border: 1px solid rgba(0, 0, 0, 0);
    border-radius: 4px 4px 0 0;
    line-height: 20px;
    padding-bottom: 8px;
    padding-top: 8px;
}
.nav-tabs > li > a:hover, .nav-tabs > li > a:focus {
    border-color: #EEEEEE #EEEEEE #DDDDDD;
}
.nav-tabs > .active > a, .nav-tabs > .active > a:hover, .nav-tabs > .active > a:focus {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    background-color: #FFFFFF;
    border-color: #DDDDDD #DDDDDD rgba(0, 0, 0, 0);
    border-image: none;
    border-style: solid;
    border-width: 1px;
    color: #555555;
    cursor: default;
}
.nav-pills > li > a {
    border-radius: 5px;
    margin-bottom: 2px;
    margin-top: 2px;
    padding-bottom: 8px;
    padding-top: 8px;
}
.nav-pills > .active > a, .nav-pills > .active > a:hover, .nav-pills > .active > a:focus {
    background-color: #0088CC;
    color: #FFFFFF;
}
.nav-stacked > li {
    float: none;
}
.nav-stacked > li > a {
    margin-right: 0;
}
.nav-tabs.nav-stacked {
    border-bottom: 0 none;
}
.nav-tabs.nav-stacked > li > a {
    border: 1px solid #DDDDDD;
    border-radius: 0;
}
.nav-tabs.nav-stacked > li:first-child > a {
    border-top-left-radius: 4px;
    border-top-right-radius: 4px;
}
.nav-tabs.nav-stacked > li:last-child > a {
    border-bottom-left-radius: 4px;
    border-bottom-right-radius: 4px;
}
.nav-tabs.nav-stacked > li > a:hover, .nav-tabs.nav-stacked > li > a:focus {
    border-color: #DDDDDD;
    z-index: 2;
}
.nav-pills.nav-stacked > li > a {
    margin-bottom: 3px;
}
.nav-pills.nav-stacked > li:last-child > a {
    margin-bottom: 1px;
}
.nav-tabs .dropdown-menu {
    border-radius: 0 0 6px 6px;
}
.nav-pills .dropdown-menu {
    border-radius: 6px;
}
.nav .dropdown-toggle .caret {
    border-bottom-color: #0088CC;
    border-top-color: #0088CC;
    margin-top: 6px;
}
.nav .dropdown-toggle:hover .caret, .nav .dropdown-toggle:focus .caret {
    border-bottom-color: #005580;
    border-top-color: #005580;
}
.nav-tabs .dropdown-toggle .caret {
    margin-top: 8px;
}
.nav .active .dropdown-toggle .caret {
    border-bottom-color: #FFFFFF;
    border-top-color: #FFFFFF;
}
.nav-tabs .active .dropdown-toggle .caret {
    border-bottom-color: #555555;
    border-top-color: #555555;
}
.nav > .dropdown.active > a:hover, .nav > .dropdown.active > a:focus {
    cursor: pointer;
}
.nav-tabs .open .dropdown-toggle, .nav-pills .open .dropdown-toggle, .nav > li.dropdown.open.active > a:hover, .nav > li.dropdown.open.active > a:focus {
    background-color: #999999;
    border-color: #999999;
    color: #FFFFFF;
}
.nav li.dropdown.open .caret, .nav li.dropdown.open.active .caret, .nav li.dropdown.open a:hover .caret, .nav li.dropdown.open a:focus .caret {
    border-bottom-color: #FFFFFF;
    border-top-color: #FFFFFF;
    opacity: 1;
}
.tabs-stacked .open > a:hover, .tabs-stacked .open > a:focus {
    border-color: #999999;
}
.tabbable {
}
.tabbable:before, .tabbable:after {
    content: "";
    display: table;
    line-height: 0;
}
.tabbable:after {
    clear: both;
}
.tab-content {
    overflow: auto;
}
.tabs-below > .nav-tabs, .tabs-right > .nav-tabs, .tabs-left > .nav-tabs {
    border-bottom: 0 none;
}
.tab-content > .tab-pane, .pill-content > .pill-pane {
    display: none;
}
.tab-content > .active, .pill-content > .active {
    display: block;
}
.tabs-below > .nav-tabs {
    border-top: 1px solid #DDDDDD;
}
.tabs-below > .nav-tabs > li {
    margin-bottom: 0;
    margin-top: -1px;
}
.tabs-below > .nav-tabs > li > a {
    border-radius: 0 0 4px 4px;
}
.tabs-below > .nav-tabs > li > a:hover, .tabs-below > .nav-tabs > li > a:focus {
    border-bottom-color: rgba(0, 0, 0, 0);
    border-top-color: #DDDDDD;
}
.tabs-below > .nav-tabs > .active > a, .tabs-below > .nav-tabs > .active > a:hover, .tabs-below > .nav-tabs > .active > a:focus {
    border-color: rgba(0, 0, 0, 0) #DDDDDD #DDDDDD;
}
.tabs-left > .nav-tabs > li, .tabs-right > .nav-tabs > li {
    float: none;
}
.tabs-left > .nav-tabs > li > a, .tabs-right > .nav-tabs > li > a {
    margin-bottom: 3px;
    margin-right: 0;
    min-width: 74px;
}
.tabs-left > .nav-tabs {
    border-right: 1px solid #DDDDDD;
    float: left;
    margin-right: 19px;
}
.tabs-left > .nav-tabs > li > a {
    border-radius: 4px 0 0 4px;
    margin-right: -1px;
}
.tabs-left > .nav-tabs > li > a:hover, .tabs-left > .nav-tabs > li > a:focus {
    border-color: #EEEEEE #DDDDDD #EEEEEE #EEEEEE;
}
.tabs-left > .nav-tabs .active > a, .tabs-left > .nav-tabs .active > a:hover, .tabs-left > .nav-tabs .active > a:focus {
    border-color: #DDDDDD rgba(0, 0, 0, 0) #DDDDDD #DDDDDD;
}
.tabs-right > .nav-tabs {
    border-left: 1px solid #DDDDDD;
    float: right;
    margin-left: 19px;
}
.tabs-right > .nav-tabs > li > a {
    border-radius: 0 4px 4px 0;
    margin-left: -1px;
}
.tabs-right > .nav-tabs > li > a:hover, .tabs-right > .nav-tabs > li > a:focus {
    border-color: #EEEEEE #EEEEEE #EEEEEE #DDDDDD;
}
.tabs-right > .nav-tabs .active > a, .tabs-right > .nav-tabs .active > a:hover, .tabs-right > .nav-tabs .active > a:focus {
    border-color: #DDDDDD #DDDDDD #DDDDDD rgba(0, 0, 0, 0);
}
.nav > .disabled > a {
    color: #999999;
}
.nav > .disabled > a:hover, .nav > .disabled > a:focus {
    background-color: rgba(0, 0, 0, 0);
    cursor: default;
    text-decoration: none;
}
.navbar {
    margin-bottom: 20px;
    overflow: visible;
}
.navbar-inner {
    background-color: #F9F9F9;
    background-image: linear-gradient(to bottom, #FFFFFF, #F2F2F2);
    background-repeat: repeat-x;
    border: 1px solid #D4D4D4;
    border-radius: 4px;
    box-shadow: 0 1px 4px rgba(0, 0, 0, 0.067);
    min-height: 40px;
    padding-left: 20px;
    padding-right: 20px;
}
.navbar-inner:before, .navbar-inner:after {
    content: "";
    display: table;
    line-height: 0;
}
.navbar-inner:after {
    clear: both;
}
.navbar .container {
    width: auto;
}
.nav-collapse.collapse {
    height: auto;
    overflow: visible;
}
.navbar .brand {
    color: #777777;
    display: block;
    float: left;
    font-size: 20px;
    font-weight: 200;
    margin-left: -20px;
    padding: 10px 20px;
    text-shadow: 0 1px 0 #FFFFFF;
}
.navbar .brand:hover, .navbar .brand:focus {
    text-decoration: none;
}
.navbar-text {
    color: #777777;
    line-height: 40px;
    margin-bottom: 0;
}
.navbar-link {
    color: #777777;
}
.navbar-link:hover, .navbar-link:focus {
    color: #333333;
}
.navbar .divider-vertical {
    border-left: 1px solid #F2F2F2;
    border-right: 1px solid #FFFFFF;
    height: 40px;
    margin: 0 9px;
}
.navbar .btn, .navbar .btn-group {
    margin-top: 5px;
}
.navbar .btn-group .btn, .navbar .input-prepend .btn, .navbar .input-append .btn, .navbar .input-prepend .btn-group, .navbar .input-append .btn-group {
    margin-top: 0;
}
.navbar-form {
    margin-bottom: 0;
}
.navbar-form:before, .navbar-form:after {
    content: "";
    display: table;
    line-height: 0;
}
.navbar-form:after {
    clear: both;
}
.navbar-form input, .navbar-form select, .navbar-form .radio, .navbar-form .checkbox {
    margin-top: 5px;
}
.navbar-form input, .navbar-form select, .navbar-form .btn {
    display: inline-block;
    margin-bottom: 0;
}
.navbar-form input[type="image"], .navbar-form input[type="checkbox"], .navbar-form input[type="radio"] {
    margin-top: 3px;
}
.navbar-form .input-append, .navbar-form .input-prepend {
    margin-top: 5px;
    white-space: nowrap;
}
.navbar-form .input-append input, .navbar-form .input-prepend input {
    margin-top: 0;
}
.navbar-search {
    float: left;
    margin-bottom: 0;
    margin-top: 5px;
    position: relative;
}
.navbar-search .search-query {
    border-radius: 15px;
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 13px;
    font-weight: normal;
    line-height: 1;
    margin-bottom: 0;
    padding: 4px 14px;
}
.navbar-static-top {
    margin-bottom: 0;
    position: static;
}
.navbar-static-top .navbar-inner {
    border-radius: 0;
}
.navbar-fixed-top, .navbar-fixed-bottom {
    left: 0;
    margin-bottom: 0;
    position: fixed;
    right: 0;
    z-index: 1030;
}
.navbar-fixed-top .navbar-inner, .navbar-static-top .navbar-inner {
    border-width: 0 0 1px;
}
.navbar-fixed-bottom .navbar-inner {
    border-width: 1px 0 0;
}
.navbar-fixed-top .navbar-inner, .navbar-fixed-bottom .navbar-inner {
    border-radius: 0;
    padding-left: 0;
    padding-right: 0;
}
.navbar-static-top .container, .navbar-fixed-top .container, .navbar-fixed-bottom .container {
    width: 940px;
}
.navbar-fixed-top {
    top: 0;
}
.navbar-fixed-top .navbar-inner, .navbar-static-top .navbar-inner {
    box-shadow: 0 1px 10px rgba(0, 0, 0, 0.1);
}
.navbar-fixed-bottom {
    bottom: 0;
}
.navbar-fixed-bottom .navbar-inner {
    box-shadow: 0 -1px 10px rgba(0, 0, 0, 0.1);
}
.navbar .nav {
    display: block;
    float: left;
    left: 0;
    margin: 0 10px 0 0;
    position: relative;
}
.navbar .nav.pull-right {
    float: right;
    margin-right: 0;
}
.navbar .nav > li {
    float: left;
}
.navbar .nav > li > a {
    color: #777777;
    float: none;
    padding: 10px 15px;
    text-decoration: none;
    text-shadow: 0 1px 0 #FFFFFF;
}
.navbar .nav .dropdown-toggle .caret {
    margin-top: 8px;
}
.navbar .nav > li > a:focus, .navbar .nav > li > a:hover {
    background-color: rgba(0, 0, 0, 0);
    color: #333333;
    text-decoration: none;
}
.navbar .nav > .active > a, .navbar .nav > .active > a:hover, .navbar .nav > .active > a:focus {
    background-color: #E6E6E6;
    box-shadow: 0 3px 8px rgba(0, 0, 0, 0.125) inset;
    color: #555555;
    text-decoration: none;
}
.navbar .btn-navbar {
    background-color: #EDEDED;
    background-image: linear-gradient(to bottom, #F2F2F2, #E6E6E6);
    background-repeat: repeat-x;
    border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
    box-shadow: 0 1px 0 rgba(255, 255, 255, 0.1) inset, 0 1px 0 rgba(255, 255, 255, 0.075);
    color: #FFFFFF;
    display: none;
    float: right;
    margin-left: 5px;
    margin-right: 5px;
    padding: 7px 10px;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
}
.navbar .btn-navbar:hover, .navbar .btn-navbar:focus, .navbar .btn-navbar:active, .navbar .btn-navbar.active, .navbar .btn-navbar.disabled, .navbar .btn-navbar[disabled] {
    background-color: #E6E6E6;
    color: #FFFFFF;
}
.navbar .btn-navbar:active, .navbar .btn-navbar.active {
}
.navbar .btn-navbar .icon-bar {
    background-color: #F5F5F5;
    border-radius: 1px;
    box-shadow: 0 1px 0 rgba(0, 0, 0, 0.25);
    display: block;
    height: 2px;
    width: 18px;
}
.btn-navbar .icon-bar + .icon-bar {
    margin-top: 3px;
}
.navbar .nav > li > .dropdown-menu:before {
    border-bottom: 7px solid rgba(0, 0, 0, 0.2);
    border-left: 7px solid rgba(0, 0, 0, 0);
    border-right: 7px solid rgba(0, 0, 0, 0);
    content: "";
    display: inline-block;
    left: 9px;
    position: absolute;
    top: -7px;
}
.navbar .nav > li > .dropdown-menu:after {
    border-bottom: 6px solid #FFFFFF;
    border-left: 6px solid rgba(0, 0, 0, 0);
    border-right: 6px solid rgba(0, 0, 0, 0);
    content: "";
    display: inline-block;
    left: 10px;
    position: absolute;
    top: -6px;
}
.navbar-fixed-bottom .nav > li > .dropdown-menu:before {
    border-bottom: 0 none;
    border-top: 7px solid rgba(0, 0, 0, 0.2);
    bottom: -7px;
    top: auto;
}
.navbar-fixed-bottom .nav > li > .dropdown-menu:after {
    border-bottom: 0 none;
    border-top: 6px solid #FFFFFF;
    bottom: -6px;
    top: auto;
}
.navbar .nav li.dropdown > a:hover .caret, .navbar .nav li.dropdown > a:focus .caret {
    border-bottom-color: #555555;
    border-top-color: #555555;
}
.navbar .nav li.dropdown.open > .dropdown-toggle, .navbar .nav li.dropdown.active > .dropdown-toggle, .navbar .nav li.dropdown.open.active > .dropdown-toggle {
    background-color: #E6E6E6;
    color: #555555;
}
.navbar .nav li.dropdown > .dropdown-toggle .caret {
    border-bottom-color: #777777;
    border-top-color: #777777;
}
.navbar .nav li.dropdown.open > .dropdown-toggle .caret, .navbar .nav li.dropdown.active > .dropdown-toggle .caret, .navbar .nav li.dropdown.open.active > .dropdown-toggle .caret {
    border-bottom-color: #555555;
    border-top-color: #555555;
}
.navbar .pull-right > li > .dropdown-menu, .navbar .nav > li > .dropdown-menu.pull-right {
    left: auto;
    right: 0;
}
.navbar .pull-right > li > .dropdown-menu:before, .navbar .nav > li > .dropdown-menu.pull-right:before {
    left: auto;
    right: 12px;
}
.navbar .pull-right > li > .dropdown-menu:after, .navbar .nav > li > .dropdown-menu.pull-right:after {
    left: auto;
    right: 13px;
}
.navbar .pull-right > li > .dropdown-menu .dropdown-menu, .navbar .nav > li > .dropdown-menu.pull-right .dropdown-menu {
    border-radius: 6px 0 6px 6px;
    left: auto;
    margin-left: 0;
    margin-right: -1px;
    right: 100%;
}
.navbar-inverse .navbar-inner {
    background-color: #1B1B1B;
    background-image: linear-gradient(to bottom, #222222, #111111);
    background-repeat: repeat-x;
    border-color: #252525;
}
.navbar-inverse .brand, .navbar-inverse .nav > li > a {
    color: #999999;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
}
.navbar-inverse .brand:hover, .navbar-inverse .brand:focus, .navbar-inverse .nav > li > a:hover, .navbar-inverse .nav > li > a:focus {
    color: #FFFFFF;
}
.navbar-inverse .brand {
    color: #999999;
}
.navbar-inverse .navbar-text {
    color: #999999;
}
.navbar-inverse .nav > li > a:focus, .navbar-inverse .nav > li > a:hover {
    background-color: rgba(0, 0, 0, 0);
    color: #FFFFFF;
}
.navbar-inverse .nav .active > a, .navbar-inverse .nav .active > a:hover, .navbar-inverse .nav .active > a:focus {
    background-color: #111111;
    color: #FFFFFF;
}
.navbar-inverse .navbar-link {
    color: #999999;
}
.navbar-inverse .navbar-link:hover, .navbar-inverse .navbar-link:focus {
    color: #FFFFFF;
}
.navbar-inverse .divider-vertical {
    border-left-color: #111111;
    border-right-color: #222222;
}
.navbar-inverse .nav li.dropdown.open > .dropdown-toggle, .navbar-inverse .nav li.dropdown.active > .dropdown-toggle, .navbar-inverse .nav li.dropdown.open.active > .dropdown-toggle {
    background-color: #111111;
    color: #FFFFFF;
}
.navbar-inverse .nav li.dropdown > a:hover .caret, .navbar-inverse .nav li.dropdown > a:focus .caret {
    border-top-color: #FFFFFF;
    color: #FFFFFF;
}
.navbar-inverse .nav li.dropdown > .dropdown-toggle .caret {
    border-bottom-color: #999999;
    border-top-color: #999999;
}
.navbar-inverse .nav li.dropdown.open > .dropdown-toggle .caret, .navbar-inverse .nav li.dropdown.active > .dropdown-toggle .caret, .navbar-inverse .nav li.dropdown.open.active > .dropdown-toggle .caret {
    border-bottom-color: #FFFFFF;
    border-top-color: #FFFFFF;
}
.navbar-inverse .navbar-search .search-query {
    background-color: #515151;
    border-color: #111111;
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1) inset, 0 1px 0 rgba(255, 255, 255, 0.15);
    color: #FFFFFF;
    transition: none 0s ease 0s;
}
.navbar-inverse .navbar-search .search-query:-moz-placeholder {
    color: #CCCCCC;
}
.navbar-inverse .navbar-search .search-query:focus, .navbar-inverse .navbar-search .search-query.focused {
    background-color: #FFFFFF;
    border: 0 none;
    box-shadow: 0 0 3px rgba(0, 0, 0, 0.15);
    color: #333333;
    outline: 0 none;
    padding: 5px 15px;
    text-shadow: 0 1px 0 #FFFFFF;
}
.navbar-inverse .btn-navbar {
    background-color: #0E0E0E;
    background-image: linear-gradient(to bottom, #151515, #040404);
    background-repeat: repeat-x;
    border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
    color: #FFFFFF;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
}
.navbar-inverse .btn-navbar:hover, .navbar-inverse .btn-navbar:focus, .navbar-inverse .btn-navbar:active, .navbar-inverse .btn-navbar.active, .navbar-inverse .btn-navbar.disabled, .navbar-inverse .btn-navbar[disabled] {
    background-color: #040404;
    color: #FFFFFF;
}
.navbar-inverse .btn-navbar:active, .navbar-inverse .btn-navbar.active {
}
.breadcrumb {
    background-color: #F5F5F5;
    border-radius: 4px;
    list-style: none outside none;
    margin: 0 0 20px;
    padding: 8px 15px;
}
.breadcrumb > li {
    display: inline-block;
    text-shadow: 0 1px 0 #FFFFFF;
}
.breadcrumb > li > .divider {
    color: #CCCCCC;
    padding: 0 5px;
}
.breadcrumb .active {
    color: #999999;
}
.pagination {
    margin: 20px 0;
}
.pagination ul {
    border-radius: 4px;
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
    display: inline-block;
    margin-bottom: 0;
    margin-left: 0;
}
.pagination ul > li {
    display: inline;
}
.pagination ul > li > a, .pagination ul > li > span {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    background-color: #FFFFFF;
    border-color: #DDDDDD;
    border-image: none;
    border-style: solid;
    border-width: 1px 1px 1px 0;
    float: left;
    line-height: 20px;
    padding: 4px 12px;
    text-decoration: none;
}
.pagination ul > li > a:hover, .pagination ul > li > a:focus, .pagination ul > .active > a, .pagination ul > .active > span {
    background-color: #F5F5F5;
}
.pagination ul > .active > a, .pagination ul > .active > span {
    color: #999999;
    cursor: default;
}
.pagination ul > .disabled > span, .pagination ul > .disabled > a, .pagination ul > .disabled > a:hover, .pagination ul > .disabled > a:focus {
    background-color: rgba(0, 0, 0, 0);
    color: #999999;
    cursor: default;
}
.pagination ul > li:first-child > a, .pagination ul > li:first-child > span {
    border-bottom-left-radius: 4px;
    border-left-width: 1px;
    border-top-left-radius: 4px;
}
.pagination ul > li:last-child > a, .pagination ul > li:last-child > span {
    border-bottom-right-radius: 4px;
    border-top-right-radius: 4px;
}
.pagination-centered {
    text-align: center;
}
.pagination-right {
    text-align: right;
}
.pagination-large ul > li > a, .pagination-large ul > li > span {
    font-size: 17.5px;
    padding: 11px 19px;
}
.pagination-large ul > li:first-child > a, .pagination-large ul > li:first-child > span {
    border-bottom-left-radius: 6px;
    border-top-left-radius: 6px;
}
.pagination-large ul > li:last-child > a, .pagination-large ul > li:last-child > span {
    border-bottom-right-radius: 6px;
    border-top-right-radius: 6px;
}
.pagination-mini ul > li:first-child > a, .pagination-mini ul > li:first-child > span, .pagination-small ul > li:first-child > a, .pagination-small ul > li:first-child > span {
    border-bottom-left-radius: 3px;
    border-top-left-radius: 3px;
}
.pagination-mini ul > li:last-child > a, .pagination-mini ul > li:last-child > span, .pagination-small ul > li:last-child > a, .pagination-small ul > li:last-child > span {
    border-bottom-right-radius: 3px;
    border-top-right-radius: 3px;
}
.pagination-small ul > li > a, .pagination-small ul > li > span {
    font-size: 11.9px;
    padding: 2px 10px;
}
.pagination-mini ul > li > a, .pagination-mini ul > li > span {
    font-size: 10.5px;
    padding: 0 6px;
}
.pager {
    list-style: none outside none;
    margin: 20px 0;
    text-align: center;
}
.pager:before, .pager:after {
    content: "";
    display: table;
    line-height: 0;
}
.pager:after {
    clear: both;
}
.pager li {
    display: inline;
}
.pager li > a, .pager li > span {
    background-color: #FFFFFF;
    border: 1px solid #DDDDDD;
    border-radius: 15px;
    display: inline-block;
    padding: 5px 14px;
}
.pager li > a:hover, .pager li > a:focus {
    background-color: #F5F5F5;
    text-decoration: none;
}
.pager .next > a, .pager .next > span {
    float: right;
}
.pager .previous > a, .pager .previous > span {
    float: left;
}
.pager .disabled > a, .pager .disabled > a:hover, .pager .disabled > a:focus, .pager .disabled > span {
    background-color: #FFFFFF;
    color: #999999;
    cursor: default;
}
.modal-backdrop {
    background-color: #000000;
    bottom: 0;
    left: 0;
    position: fixed;
    right: 0;
    top: 0;
    z-index: 1040;
}
.modal-backdrop.fade {
    opacity: 0;
}
.modal-backdrop, .modal-backdrop.fade.in {
    opacity: 0.8;
}
.modal {
    background-clip: padding-box;
    background-color: #FFFFFF;
    border: 1px solid rgba(0, 0, 0, 0.3);
    border-radius: 6px;
    box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
    left: 50%;
    margin-left: -280px;
    outline: medium none;
    position: fixed;
    top: 10%;
    width: 560px;
    z-index: 1050;
}
.modal.fade {
    top: -25%;
    transition: opacity 0.3s linear 0s, top 0.3s ease-out 0s;
}
.modal.fade.in {
    top: 10%;
}
.modal-header {
    border-bottom: 1px solid #EEEEEE;
    padding: 9px 15px;
}
.modal-header .close {
    margin-top: 2px;
}
.modal-header h3 {
    line-height: 30px;
    margin: 0;
}
.modal-body {
    max-height: 400px;
    overflow-y: auto;
    padding: 15px;
    position: relative;
}
.modal-form {
    margin-bottom: 0;
}
.modal-footer {
    background-color: #F5F5F5;
    border-radius: 0 0 6px 6px;
    border-top: 1px solid #DDDDDD;
    box-shadow: 0 1px 0 #FFFFFF inset;
    margin-bottom: 0;
    padding: 14px 15px 15px;
    text-align: right;
}
.modal-footer:before, .modal-footer:after {
    content: "";
    display: table;
    line-height: 0;
}
.modal-footer:after {
    clear: both;
}
.modal-footer .btn + .btn {
    margin-bottom: 0;
    margin-left: 5px;
}
.modal-footer .btn-group .btn + .btn {
    margin-left: -1px;
}
.modal-footer .btn-block + .btn-block {
    margin-left: 0;
}
.tooltip {
    display: block;
    font-size: 11px;
    line-height: 1.4;
    opacity: 0;
    position: absolute;
    visibility: visible;
    z-index: 1030;
}
.tooltip.in {
    opacity: 0.8;
}
.tooltip.top {
    margin-top: -3px;
    padding: 5px 0;
}
.tooltip.right {
    margin-left: 3px;
    padding: 0 5px;
}
.tooltip.bottom {
    margin-top: 3px;
    padding: 5px 0;
}
.tooltip.left {
    margin-left: -3px;
    padding: 0 5px;
}
.tooltip-inner {
    background-color: #000000;
    border-radius: 4px;
    color: #FFFFFF;
    max-width: 200px;
    padding: 8px;
    text-align: center;
    text-decoration: none;
}
.tooltip-arrow {
    border-color: rgba(0, 0, 0, 0);
    border-style: solid;
    height: 0;
    position: absolute;
    width: 0;
}
.tooltip.top .tooltip-arrow {
    border-top-color: #000000;
    border-width: 5px 5px 0;
    bottom: 0;
    left: 50%;
    margin-left: -5px;
}
.tooltip.right .tooltip-arrow {
    border-right-color: #000000;
    border-width: 5px 5px 5px 0;
    left: 0;
    margin-top: -5px;
    top: 50%;
}
.tooltip.left .tooltip-arrow {
    border-left-color: #000000;
    border-width: 5px 0 5px 5px;
    margin-top: -5px;
    right: 0;
    top: 50%;
}
.tooltip.bottom .tooltip-arrow {
    border-bottom-color: #000000;
    border-width: 0 5px 5px;
    left: 50%;
    margin-left: -5px;
    top: 0;
}
.popover {
    background-clip: padding-box;
    background-color: #FFFFFF;
    border: 1px solid rgba(0, 0, 0, 0.2);
    border-radius: 6px;
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
    display: none;
    left: 0;
    max-width: 276px;
    padding: 1px;
    position: absolute;
    text-align: left;
    top: 0;
    white-space: normal;
    z-index: 1010;
}
.popover.top {
    margin-top: -10px;
}
.popover.right {
    margin-left: 10px;
}
.popover.bottom {
    margin-top: 10px;
}
.popover.left {
    margin-left: -10px;
}
.popover-title {
    background-color: #F7F7F7;
    border-bottom: 1px solid #EBEBEB;
    border-radius: 5px 5px 0 0;
    font-size: 14px;
    font-weight: normal;
    line-height: 18px;
    margin: 0;
    padding: 8px 14px;
}
.popover-title:empty {
    display: none;
}
.popover-content {
    padding: 9px 14px;
}
.popover .arrow, .popover .arrow:after {
    border-color: rgba(0, 0, 0, 0);
    border-style: solid;
    display: block;
    height: 0;
    position: absolute;
    width: 0;
}
.popover .arrow {
    border-width: 11px;
}
.popover .arrow:after {
    border-width: 10px;
    content: "";
}
.popover.top .arrow {
    border-bottom-width: 0;
    border-top-color: rgba(0, 0, 0, 0.25);
    bottom: -11px;
    left: 50%;
    margin-left: -11px;
}
.popover.top .arrow:after {
    border-bottom-width: 0;
    border-top-color: #FFFFFF;
    bottom: 1px;
    margin-left: -10px;
}
.popover.right .arrow {
    border-left-width: 0;
    border-right-color: rgba(0, 0, 0, 0.25);
    left: -11px;
    margin-top: -11px;
    top: 50%;
}
.popover.right .arrow:after {
    border-left-width: 0;
    border-right-color: #FFFFFF;
    bottom: -10px;
    left: 1px;
}
.popover.bottom .arrow {
    border-bottom-color: rgba(0, 0, 0, 0.25);
    border-top-width: 0;
    left: 50%;
    margin-left: -11px;
    top: -11px;
}
.popover.bottom .arrow:after {
    border-bottom-color: #FFFFFF;
    border-top-width: 0;
    margin-left: -10px;
    top: 1px;
}
.popover.left .arrow {
    border-left-color: rgba(0, 0, 0, 0.25);
    border-right-width: 0;
    margin-top: -11px;
    right: -11px;
    top: 50%;
}
.popover.left .arrow:after {
    border-left-color: #FFFFFF;
    border-right-width: 0;
    bottom: -10px;
    right: 1px;
}
.thumbnails {
    list-style: none outside none;
    margin-left: -20px;
}
.thumbnails:before, .thumbnails:after {
    content: "";
    display: table;
    line-height: 0;
}
.thumbnails:after {
    clear: both;
}
.row-fluid .thumbnails {
    margin-left: 0;
}
.thumbnails > li {
    float: left;
    margin-bottom: 20px;
    margin-left: 20px;
}
.thumbnail {
    border: 1px solid #DDDDDD;
    border-radius: 4px;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.055);
    display: block;
    line-height: 20px;
    padding: 4px;
    transition: all 0.2s ease-in-out 0s;
}
a.thumbnail:hover, a.thumbnail:focus {
    border-color: #0088CC;
    box-shadow: 0 1px 4px rgba(0, 105, 214, 0.25);
}
.thumbnail > img {
    display: block;
    margin-left: auto;
    margin-right: auto;
    max-width: 100%;
}
.thumbnail .caption {
    color: #555555;
    padding: 9px;
}
.media, .media-body {
    overflow: hidden;
}
.media, .media .media {
    margin-top: 15px;
}
.media:first-child {
    margin-top: 0;
}
.media-object {
    display: block;
}
.media-heading {
    margin: 0 0 5px;
}
.media > .pull-left {
    margin-right: 10px;
}
.media > .pull-right {
    margin-left: 10px;
}
.media-list {
    list-style: none outside none;
    margin-left: 0;
}
.label, .badge {
    background-color: #999999;
    color: #FFFFFF;
    display: inline-block;
    font-size: 11.844px;
    font-weight: bold;
    line-height: 14px;
    padding: 2px 4px;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
    vertical-align: baseline;
    white-space: nowrap;
}
.label {
    border-radius: 3px;
}
.badge {
    border-radius: 9px;
    padding-left: 9px;
    padding-right: 9px;
}
.label:empty, .badge:empty {
    display: none;
}
a.label:hover, a.label:focus, a.badge:hover, a.badge:focus {
    color: #FFFFFF;
    cursor: pointer;
    text-decoration: none;
}
.label-important {
    background-color: #B94A48;
}
.label-important[href] {
    background-color: #953B39;
}
.label-warning {
    background-color: #F89406;
}
.label-warning[href] {
    background-color: #C67605;
}
.label-success {
    background-color: #468847;
}
.label-success[href] {
    background-color: #356635;
}
.label-info {
    background-color: #3A87AD;
}
.label-info[href] {
    background-color: #2D6987;
}
.label-inverse {
    background-color: #333333;
}
.label-inverse[href] {
    background-color: #1A1A1A;
}
.badge-important {
    background-color: #B94A48;
}
.badge-important[href] {
    background-color: #953B39;
}
.badge-warning {
    background-color: #F89406;
}
.badge-warning[href] {
    background-color: #C67605;
}
.badge-success {
    background-color: #468847;
}
.badge-success[href] {
    background-color: #356635;
}
.badge-info {
    background-color: #3A87AD;
}
.badge-info[href] {
    background-color: #2D6987;
}
.badge-inverse {
    background-color: #333333;
}
.badge-inverse[href] {
    background-color: #1A1A1A;
}
.btn .label, .btn .badge {
    position: relative;
    top: -1px;
}
.btn-mini .label, .btn-mini .badge {
    top: 0;
}
@-moz-keyframes progress-bar-stripes {
0% {
    background-position: 40px 0;
}
100% {
    background-position: 0 0;
}
}
@-moz-keyframes progress-bar-stripes {
0% {
    background-position: 40px 0;
}
100% {
    background-position: 0 0;
}
}
.progress {
    background-color: #F6F6F6;
    background-image: linear-gradient(to bottom, #F5F5F5, #F9F9F9);
    background-repeat: repeat-x;
    border-radius: 4px;
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1) inset;
    height: 20px;
    margin-bottom: 20px;
    overflow: hidden;
}
.progress .bar {
    background-color: #0D90D1;
    background-image: linear-gradient(to bottom, #149BDF, #0480BE);
    background-repeat: repeat-x;
    box-shadow: 0 -1px 0 rgba(0, 0, 0, 0.15) inset;
    box-sizing: border-box;
    color: #FFFFFF;
    float: left;
    font-size: 12px;
    height: 100%;
    text-align: center;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
    transition: width 0.6s ease 0s;
    width: 0;
}
.progress .bar + .bar {
    box-shadow: 1px 0 0 rgba(0, 0, 0, 0.15) inset, 0 -1px 0 rgba(0, 0, 0, 0.15) inset;
}
.progress-striped .bar {
    background-color: #149BDF;
    background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, rgba(0, 0, 0, 0) 25%, rgba(0, 0, 0, 0) 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, rgba(0, 0, 0, 0) 75%, rgba(0, 0, 0, 0));
    background-size: 40px 40px;
}
.progress.active .bar {
    animation: 2s linear 0s normal none infinite progress-bar-stripes;
}
.progress-danger .bar, .progress .bar-danger {
    background-color: #DD514B;
    background-image: linear-gradient(to bottom, #EE5F5B, #C43C35);
    background-repeat: repeat-x;
}
.progress-danger.progress-striped .bar, .progress-striped .bar-danger {
    background-color: #EE5F5B;
    background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, rgba(0, 0, 0, 0) 25%, rgba(0, 0, 0, 0) 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, rgba(0, 0, 0, 0) 75%, rgba(0, 0, 0, 0));
}
.progress-success .bar, .progress .bar-success {
    background-color: #5DB95D;
    background-image: linear-gradient(to bottom, #62C462, #57A957);
    background-repeat: repeat-x;
}
.progress-success.progress-striped .bar, .progress-striped .bar-success {
    background-color: #62C462;
    background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, rgba(0, 0, 0, 0) 25%, rgba(0, 0, 0, 0) 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, rgba(0, 0, 0, 0) 75%, rgba(0, 0, 0, 0));
}
.progress-info .bar, .progress .bar-info {
    background-color: #4BB1CF;
    background-image: linear-gradient(to bottom, #5BC0DE, #339BB9);
    background-repeat: repeat-x;
}
.progress-info.progress-striped .bar, .progress-striped .bar-info {
    background-color: #5BC0DE;
    background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, rgba(0, 0, 0, 0) 25%, rgba(0, 0, 0, 0) 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, rgba(0, 0, 0, 0) 75%, rgba(0, 0, 0, 0));
}
.progress-warning .bar, .progress .bar-warning {
    background-color: #F9A732;
    background-image: linear-gradient(to bottom, #FBB450, #F89406);
    background-repeat: repeat-x;
}
.progress-warning.progress-striped .bar, .progress-striped .bar-warning {
    background-color: #FBB450;
    background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, rgba(0, 0, 0, 0) 25%, rgba(0, 0, 0, 0) 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, rgba(0, 0, 0, 0) 75%, rgba(0, 0, 0, 0));
}
.accordion {
    margin-bottom: 20px;
}
.accordion-group {
    border: 1px solid #E5E5E5;
    border-radius: 4px;
    margin-bottom: 2px;
}
.accordion-heading {
    border-bottom: 0 none;
}
.accordion-heading .accordion-toggle {
    display: block;
    padding: 8px 15px;
}
.accordion-toggle {
    cursor: pointer;
}
.accordion-inner {
    border-top: 1px solid #E5E5E5;
    padding: 9px 15px;
}
.carousel {
    line-height: 1;
    margin-bottom: 20px;
    position: relative;
}
.carousel-inner {
    overflow: hidden;
    position: relative;
    width: 100%;
}
.carousel-inner > .item {
    display: none;
    position: relative;
    transition: left 0.6s ease-in-out 0s;
}
.carousel-inner > .item > img, .carousel-inner > .item > a > img {
    display: block;
    line-height: 1;
}
.carousel-inner > .active, .carousel-inner > .next, .carousel-inner > .prev {
    display: block;
}
.carousel-inner > .active {
    left: 0;
}
.carousel-inner > .next, .carousel-inner > .prev {
    position: absolute;
    top: 0;
    width: 100%;
}
.carousel-inner > .next {
    left: 100%;
}
.carousel-inner > .prev {
    left: -100%;
}
.carousel-inner > .next.left, .carousel-inner > .prev.right {
    left: 0;
}
.carousel-inner > .active.left {
    left: -100%;
}
.carousel-inner > .active.right {
    left: 100%;
}
.carousel-control {
    background: none repeat scroll 0 0 #222222;
    border: 3px solid #FFFFFF;
    border-radius: 23px;
    color: #FFFFFF;
    font-size: 60px;
    font-weight: 100;
    height: 40px;
    left: 15px;
    line-height: 30px;
    margin-top: -20px;
    opacity: 0.5;
    position: absolute;
    text-align: center;
    top: 40%;
    width: 40px;
}
.carousel-control.right {
    left: auto;
    right: 15px;
}
.carousel-control:hover, .carousel-control:focus {
    color: #FFFFFF;
    opacity: 0.9;
    text-decoration: none;
}
.carousel-indicators {
    list-style: none outside none;
    margin: 0;
    position: absolute;
    right: 15px;
    top: 15px;
    z-index: 5;
}
.carousel-indicators li {
    background-color: rgba(255, 255, 255, 0.25);
    border-radius: 5px;
    display: block;
    float: left;
    height: 10px;
    margin-left: 5px;
    text-indent: -999px;
    width: 10px;
}
.carousel-indicators .active {
    background-color: #FFFFFF;
}
.carousel-caption {
    background: none repeat scroll 0 0 rgba(0, 0, 0, 0.75);
    bottom: 0;
    left: 0;
    padding: 15px;
    position: absolute;
    right: 0;
}
.carousel-caption h4, .carousel-caption p {
    color: #FFFFFF;
    line-height: 20px;
}
.carousel-caption h4 {
    margin: 0 0 5px;
}
.carousel-caption p {
    margin-bottom: 0;
}
.hero-unit {
    background-color: #EEEEEE;
    border-radius: 6px;
    color: inherit;
    font-size: 18px;
    font-weight: 200;
    line-height: 30px;
    margin-bottom: 30px;
    padding: 60px;
}
.hero-unit h1 {
    color: inherit;
    font-size: 60px;
    letter-spacing: -1px;
    line-height: 1;
    margin-bottom: 0;
}
.hero-unit li {
    line-height: 30px;
}
.pull-right {
    float: right;
}
.pull-left {
    float: left;
}
.hide {
    display: none;
}
.show {
    display: block;
}
.invisible {
    visibility: hidden;
}
.affix {
    position: fixed;
}
.clearfix {
}
.clearfix:before, .clearfix:after {
    content: "";
    display: table;
    line-height: 0;
}
.clearfix:after {
    clear: both;
}
.hide-text {
    background-color: rgba(0, 0, 0, 0);
    border: 0 none;
    color: rgba(0, 0, 0, 0);
    font: 0px/0 a;
    text-shadow: none;
}
.input-block-level {
    box-sizing: border-box;
    display: block;
    min-height: 30px;
    width: 100%;
}
.hidden {
    display: none;
    visibility: hidden;
}
.visible-phone {
    display: none !important;
}
.visible-tablet {
    display: none !important;
}
.hidden-desktop {
    display: none !important;
}
.visible-desktop {
    display: inherit !important;
}
@media (min-width: 768px) and (max-width: 979px) {
.hidden-desktop {
    display: inherit !important;
}
.visible-desktop {
    display: none !important;
}
.visible-tablet {
    display: inherit !important;
}
.hidden-tablet {
    display: none !important;
}
}
@media (max-width: 767px) {
.hidden-desktop {
    display: inherit !important;
}
.visible-desktop {
    display: none !important;
}
.visible-phone {
    display: inherit !important;
}
.hidden-phone {
    display: none !important;
}
}
.visible-print {
    display: none !important;
}
@media print {
.visible-print {
    display: inherit !important;
}
.hidden-print {
    display: none !important;
}
}
.clearfix {
}
.clearfix:before, .clearfix:after {
    content: "";
    display: table;
    line-height: 0;
}
.clearfix:after {
    clear: both;
}
.hide-text {
    background-color: rgba(0, 0, 0, 0);
    border: 0 none;
    color: rgba(0, 0, 0, 0);
    font: 0px/0 a;
    text-shadow: none;
}
.input-block-level {
    box-sizing: border-box;
    display: block;
    min-height: 30px;
    width: 100%;
}
@media (min-width: 1200px) {
.row {
    margin-left: -30px;
}
.row:before, .row:after {
    content: "";
    display: table;
    line-height: 0;
}
.row:after {
    clear: both;
}
[class*="span"] {
    float: left;
    margin-left: 30px;
    min-height: 1px;
}
.container, .navbar-static-top .container, .navbar-fixed-top .container, .navbar-fixed-bottom .container {
    width: 1170px;
}
.span12 {
    width: 1170px;
}
.span11 {
    width: 1070px;
}
.span10 {
    width: 970px;
}
.span9 {
    width: 870px;
}
.span8 {
    width: 770px;
}
.span7 {
    width: 670px;
}
.span6 {
    width: 570px;
}
.span5 {
    width: 470px;
}
.span4 {
    width: 370px;
}
.span3 {
    width: 270px;
}
.span2 {
    width: 170px;
}
.span1 {
    width: 70px;
}
.offset12 {
    margin-left: 1230px;
}
.offset11 {
    margin-left: 1130px;
}
.offset10 {
    margin-left: 1030px;
}
.offset9 {
    margin-left: 930px;
}
.offset8 {
    margin-left: 830px;
}
.offset7 {
    margin-left: 730px;
}
.offset6 {
    margin-left: 630px;
}
.offset5 {
    margin-left: 530px;
}
.offset4 {
    margin-left: 430px;
}
.offset3 {
    margin-left: 330px;
}
.offset2 {
    margin-left: 230px;
}
.offset1 {
    margin-left: 130px;
}
.row-fluid {
    width: 100%;
}
.row-fluid:before, .row-fluid:after {
    content: "";
    display: table;
    line-height: 0;
}
.row-fluid:after {
    clear: both;
}
.row-fluid [class*="span"] {
    box-sizing: border-box;
    display: block;
    float: left;
    margin-left: 2.5641%;
    min-height: 30px;
    width: 100%;
}
.row-fluid [class*="span"]:first-child {
    margin-left: 0;
}
.row-fluid .controls-row [class*="span"] + [class*="span"] {
    margin-left: 2.5641%;
}
.row-fluid .span12 {
    width: 100%;
}
.row-fluid .span11 {
    width: 91.453%;
}
.row-fluid .span10 {
    width: 82.906%;
}
.row-fluid .span9 {
    width: 74.359%;
}
.row-fluid .span8 {
    width: 65.812%;
}
.row-fluid .span7 {
    width: 57.265%;
}
.row-fluid .span6 {
    width: 48.7179%;
}
.row-fluid .span5 {
    width: 40.1709%;
}
.row-fluid .span4 {
    width: 31.6239%;
}
.row-fluid .span3 {
    width: 23.0769%;
}
.row-fluid .span2 {
    width: 14.5299%;
}
.row-fluid .span1 {
    width: 5.98291%;
}
.row-fluid .offset12 {
    margin-left: 105.128%;
}
.row-fluid .offset12:first-child {
    margin-left: 102.564%;
}
.row-fluid .offset11 {
    margin-left: 96.5812%;
}
.row-fluid .offset11:first-child {
    margin-left: 94.0171%;
}
.row-fluid .offset10 {
    margin-left: 88.0342%;
}
.row-fluid .offset10:first-child {
    margin-left: 85.4701%;
}
.row-fluid .offset9 {
    margin-left: 79.4872%;
}
.row-fluid .offset9:first-child {
    margin-left: 76.9231%;
}
.row-fluid .offset8 {
    margin-left: 70.9402%;
}
.row-fluid .offset8:first-child {
    margin-left: 68.3761%;
}
.row-fluid .offset7 {
    margin-left: 62.3932%;
}
.row-fluid .offset7:first-child {
    margin-left: 59.8291%;
}
.row-fluid .offset6 {
    margin-left: 53.8461%;
}
.row-fluid .offset6:first-child {
    margin-left: 51.282%;
}
.row-fluid .offset5 {
    margin-left: 45.2991%;
}
.row-fluid .offset5:first-child {
    margin-left: 42.735%;
}
.row-fluid .offset4 {
    margin-left: 36.7521%;
}
.row-fluid .offset4:first-child {
    margin-left: 34.188%;
}
.row-fluid .offset3 {
    margin-left: 28.2051%;
}
.row-fluid .offset3:first-child {
    margin-left: 25.641%;
}
.row-fluid .offset2 {
    margin-left: 19.6581%;
}
.row-fluid .offset2:first-child {
    margin-left: 17.094%;
}
.row-fluid .offset1 {
    margin-left: 11.1111%;
}
.row-fluid .offset1:first-child {
    margin-left: 8.54701%;
}
input, textarea, .uneditable-input {
    margin-left: 0;
}
.controls-row [class*="span"] + [class*="span"] {
    margin-left: 30px;
}
input.span12, textarea.span12, .uneditable-input.span12 {
    width: 1156px;
}
input.span11, textarea.span11, .uneditable-input.span11 {
    width: 1056px;
}
input.span10, textarea.span10, .uneditable-input.span10 {
    width: 956px;
}
input.span9, textarea.span9, .uneditable-input.span9 {
    width: 856px;
}
input.span8, textarea.span8, .uneditable-input.span8 {
    width: 756px;
}
input.span7, textarea.span7, .uneditable-input.span7 {
    width: 656px;
}
input.span6, textarea.span6, .uneditable-input.span6 {
    width: 556px;
}
input.span5, textarea.span5, .uneditable-input.span5 {
    width: 456px;
}
input.span4, textarea.span4, .uneditable-input.span4 {
    width: 356px;
}
input.span3, textarea.span3, .uneditable-input.span3 {
    width: 256px;
}
input.span2, textarea.span2, .uneditable-input.span2 {
    width: 156px;
}
input.span1, textarea.span1, .uneditable-input.span1 {
    width: 56px;
}
.thumbnails {
    margin-left: -30px;
}
.thumbnails > li {
    margin-left: 30px;
}
.row-fluid .thumbnails {
    margin-left: 0;
}
}
@media (min-width: 768px) and (max-width: 979px) {
.row {
    margin-left: -20px;
}
.row:before, .row:after {
    content: "";
    display: table;
    line-height: 0;
}
.row:after {
    clear: both;
}
[class*="span"] {
    float: left;
    margin-left: 20px;
    min-height: 1px;
}
.container, .navbar-static-top .container, .navbar-fixed-top .container, .navbar-fixed-bottom .container {
    width: 724px;
}
.span12 {
    width: 724px;
}
.span11 {
    width: 662px;
}
.span10 {
    width: 600px;
}
.span9 {
    width: 538px;
}
.span8 {
    width: 476px;
}
.span7 {
    width: 414px;
}
.span6 {
    width: 352px;
}
.span5 {
    width: 290px;
}
.span4 {
    width: 228px;
}
.span3 {
    width: 166px;
}
.span2 {
    width: 104px;
}
.span1 {
    width: 42px;
}
.offset12 {
    margin-left: 764px;
}
.offset11 {
    margin-left: 702px;
}
.offset10 {
    margin-left: 640px;
}
.offset9 {
    margin-left: 578px;
}
.offset8 {
    margin-left: 516px;
}
.offset7 {
    margin-left: 454px;
}
.offset6 {
    margin-left: 392px;
}
.offset5 {
    margin-left: 330px;
}
.offset4 {
    margin-left: 268px;
}
.offset3 {
    margin-left: 206px;
}
.offset2 {
    margin-left: 144px;
}
.offset1 {
    margin-left: 82px;
}
.row-fluid {
    width: 100%;
}
.row-fluid:before, .row-fluid:after {
    content: "";
    display: table;
    line-height: 0;
}
.row-fluid:after {
    clear: both;
}
.row-fluid [class*="span"] {
    box-sizing: border-box;
    display: block;
    float: left;
    margin-left: 2.76243%;
    min-height: 30px;
    width: 100%;
}
.row-fluid [class*="span"]:first-child {
    margin-left: 0;
}
.row-fluid .controls-row [class*="span"] + [class*="span"] {
    margin-left: 2.76243%;
}
.row-fluid .span12 {
    width: 100%;
}
.row-fluid .span11 {
    width: 91.4365%;
}
.row-fluid .span10 {
    width: 82.8729%;
}
.row-fluid .span9 {
    width: 74.3094%;
}
.row-fluid .span8 {
    width: 65.7459%;
}
.row-fluid .span7 {
    width: 57.1823%;
}
.row-fluid .span6 {
    width: 48.6188%;
}
.row-fluid .span5 {
    width: 40.0553%;
}
.row-fluid .span4 {
    width: 31.4917%;
}
.row-fluid .span3 {
    width: 22.9282%;
}
.row-fluid .span2 {
    width: 14.3646%;
}
.row-fluid .span1 {
    width: 5.8011%;
}
.row-fluid .offset12 {
    margin-left: 105.525%;
}
.row-fluid .offset12:first-child {
    margin-left: 102.762%;
}
.row-fluid .offset11 {
    margin-left: 96.9613%;
}
.row-fluid .offset11:first-child {
    margin-left: 94.1989%;
}
.row-fluid .offset10 {
    margin-left: 88.3978%;
}
.row-fluid .offset10:first-child {
    margin-left: 85.6354%;
}
.row-fluid .offset9 {
    margin-left: 79.8343%;
}
.row-fluid .offset9:first-child {
    margin-left: 77.0718%;
}
.row-fluid .offset8 {
    margin-left: 71.2707%;
}
.row-fluid .offset8:first-child {
    margin-left: 68.5083%;
}
.row-fluid .offset7 {
    margin-left: 62.7072%;
}
.row-fluid .offset7:first-child {
    margin-left: 59.9447%;
}
.row-fluid .offset6 {
    margin-left: 54.1437%;
}
.row-fluid .offset6:first-child {
    margin-left: 51.3812%;
}
.row-fluid .offset5 {
    margin-left: 45.5801%;
}
.row-fluid .offset5:first-child {
    margin-left: 42.8177%;
}
.row-fluid .offset4 {
    margin-left: 37.0166%;
}
.row-fluid .offset4:first-child {
    margin-left: 34.2541%;
}
.row-fluid .offset3 {
    margin-left: 28.453%;
}
.row-fluid .offset3:first-child {
    margin-left: 25.6906%;
}
.row-fluid .offset2 {
    margin-left: 19.8895%;
}
.row-fluid .offset2:first-child {
    margin-left: 17.1271%;
}
.row-fluid .offset1 {
    margin-left: 11.326%;
}
.row-fluid .offset1:first-child {
    margin-left: 8.56354%;
}
input, textarea, .uneditable-input {
    margin-left: 0;
}
.controls-row [class*="span"] + [class*="span"] {
    margin-left: 20px;
}
input.span12, textarea.span12, .uneditable-input.span12 {
    width: 710px;
}
input.span11, textarea.span11, .uneditable-input.span11 {
    width: 648px;
}
input.span10, textarea.span10, .uneditable-input.span10 {
    width: 586px;
}
input.span9, textarea.span9, .uneditable-input.span9 {
    width: 524px;
}
input.span8, textarea.span8, .uneditable-input.span8 {
    width: 462px;
}
input.span7, textarea.span7, .uneditable-input.span7 {
    width: 400px;
}
input.span6, textarea.span6, .uneditable-input.span6 {
    width: 338px;
}
input.span5, textarea.span5, .uneditable-input.span5 {
    width: 276px;
}
input.span4, textarea.span4, .uneditable-input.span4 {
    width: 214px;
}
input.span3, textarea.span3, .uneditable-input.span3 {
    width: 152px;
}
input.span2, textarea.span2, .uneditable-input.span2 {
    width: 90px;
}
input.span1, textarea.span1, .uneditable-input.span1 {
    width: 28px;
}
}
@media (max-width: 767px) {
body {
    padding-left: 20px;
    padding-right: 20px;
}
.navbar-fixed-top, .navbar-fixed-bottom, .navbar-static-top {
    margin-left: -20px;
    margin-right: -20px;
}
.container-fluid {
    padding: 0;
}
.dl-horizontal dt {
    clear: none;
    float: none;
    text-align: left;
    width: auto;
}
.dl-horizontal dd {
    margin-left: 0;
}
.container {
    width: auto;
}
.row-fluid {
    width: 100%;
}
.row, .thumbnails {
    margin-left: 0;
}
.thumbnails > li {
    float: none;
    margin-left: 0;
}
[class*="span"], .uneditable-input[class*="span"], .row-fluid [class*="span"] {
    box-sizing: border-box;
    display: block;
    float: none;
    margin-left: 0;
    width: 100%;
}
.span12, .row-fluid .span12 {
    box-sizing: border-box;
    width: 100%;
}
.row-fluid [class*="offset"]:first-child {
    margin-left: 0;
}
.input-large, .input-xlarge, .input-xxlarge, input[class*="span"], select[class*="span"], textarea[class*="span"], .uneditable-input {
    box-sizing: border-box;
    display: block;
    min-height: 30px;
    width: 100%;
}
.input-prepend input, .input-append input, .input-prepend input[class*="span"], .input-append input[class*="span"] {
    display: inline-block;
    width: auto;
}
.controls-row [class*="span"] + [class*="span"] {
    margin-left: 0;
}
.modal {
    left: 20px;
    margin: 0;
    position: fixed;
    right: 20px;
    top: 20px;
    width: auto;
}
.modal.fade {
    top: -100px;
}
.modal.fade.in {
    top: 20px;
}
}
@media (max-width: 480px) {
.nav-collapse {
}
.page-header h1 small {
    display: block;
    line-height: 20px;
}
input[type="checkbox"], input[type="radio"] {
    border: 1px solid #CCCCCC;
}
.form-horizontal .control-label {
    float: none;
    padding-top: 0;
    text-align: left;
    width: auto;
}
.form-horizontal .controls {
    margin-left: 0;
}
.form-horizontal .control-list {
    padding-top: 0;
}
.form-horizontal .form-actions {
    padding-left: 10px;
    padding-right: 10px;
}
.media .pull-left, .media .pull-right {
    display: block;
    float: none;
    margin-bottom: 10px;
}
.media-object {
    margin-left: 0;
    margin-right: 0;
}
.modal {
    left: 10px;
    right: 10px;
    top: 10px;
}
.modal-header .close {
    margin: -10px;
    padding: 10px;
}
.carousel-caption {
    position: static;
}
}
@media (max-width: 979px) {
body {
    padding-top: 0;
}
.navbar-fixed-top, .navbar-fixed-bottom {
    position: static;
}
.navbar-fixed-top {
    margin-bottom: 20px;
}
.navbar-fixed-bottom {
    margin-top: 20px;
}
.navbar-fixed-top .navbar-inner, .navbar-fixed-bottom .navbar-inner {
    padding: 5px;
}
.navbar .container {
    padding: 0;
    width: auto;
}
.navbar .brand {
    margin: 0 0 0 -5px;
    padding-left: 10px;
    padding-right: 10px;
}
.nav-collapse {
    clear: both;
}
.nav-collapse .nav {
    float: none;
    margin: 0 0 10px;
}
.nav-collapse .nav > li {
    float: none;
}
.nav-collapse .nav > li > a {
    margin-bottom: 2px;
}
.nav-collapse .nav > .divider-vertical {
    display: none;
}
.nav-collapse .nav .nav-header {
    color: #777777;
    text-shadow: none;
}
.nav-collapse .nav > li > a, .nav-collapse .dropdown-menu a {
    border-radius: 3px;
    color: #777777;
    font-weight: bold;
    padding: 9px 15px;
}
.nav-collapse .btn {
    border-radius: 4px;
    font-weight: normal;
    padding: 4px 10px;
}
.nav-collapse .dropdown-menu li + li a {
    margin-bottom: 2px;
}
.nav-collapse .nav > li > a:hover, .nav-collapse .nav > li > a:focus, .nav-collapse .dropdown-menu a:hover, .nav-collapse .dropdown-menu a:focus {
    background-color: #F2F2F2;
}
.navbar-inverse .nav-collapse .nav > li > a, .navbar-inverse .nav-collapse .dropdown-menu a {
    color: #999999;
}
.navbar-inverse .nav-collapse .nav > li > a:hover, .navbar-inverse .nav-collapse .nav > li > a:focus, .navbar-inverse .nav-collapse .dropdown-menu a:hover, .navbar-inverse .nav-collapse .dropdown-menu a:focus {
    background-color: #111111;
}
.nav-collapse.in .btn-group {
    margin-top: 5px;
    padding: 0;
}
.nav-collapse .dropdown-menu {
    background-color: rgba(0, 0, 0, 0);
    border: medium none;
    border-radius: 0;
    box-shadow: none;
    display: none;
    float: none;
    left: auto;
    margin: 0 15px;
    max-width: none;
    padding: 0;
    position: static;
    top: auto;
}
.nav-collapse .open > .dropdown-menu {
    display: block;
}
.nav-collapse .dropdown-menu:before, .nav-collapse .dropdown-menu:after {
    display: none;
}
.nav-collapse .dropdown-menu .divider {
    display: none;
}
.nav-collapse .nav > li > .dropdown-menu:before, .nav-collapse .nav > li > .dropdown-menu:after {
    display: none;
}
.nav-collapse .navbar-form, .nav-collapse .navbar-search {
    border-bottom: 1px solid #F2F2F2;
    border-top: 1px solid #F2F2F2;
    box-shadow: 0 1px 0 rgba(255, 255, 255, 0.1) inset, 0 1px 0 rgba(255, 255, 255, 0.1);
    float: none;
    margin: 10px 0;
    padding: 10px 15px;
}
.navbar-inverse .nav-collapse .navbar-form, .navbar-inverse .nav-collapse .navbar-search {
    border-bottom-color: #111111;
    border-top-color: #111111;
}
.navbar .nav-collapse .nav.pull-right {
    float: none;
    margin-left: 0;
}
.nav-collapse, .nav-collapse.collapse {
    height: 0;
    overflow: hidden;
}
.navbar .btn-navbar {
    display: block;
}
.navbar-static .navbar-inner {
    padding-left: 10px;
    padding-right: 10px;
}
}
@media (min-width: 980px) {
.nav-collapse.collapse {
    height: auto !important;
    overflow: visible !important;
}
}
html, body {
    height: 100%;
}
.body {
    background-color: #F7F7EB;
    padding: 10px 10px 60px;
}
.navbar-wrapper {
    left: 0;
    margin-bottom: -90px;
    margin-top: 20px;
    position: absolute;
    right: 0;
    top: 0;
    z-index: 10;
}
.navbar .brand {
    background-image: url("${pageContext.request.contextPath}/assets/logo-fe922d94d4988e917709aa89cf03b757.png");
    display: block;
    height: 50px;
    padding: 0;
    width: 116px;
}
.footer {
    font-size: 16px;
    margin-bottom: 5px;
    margin-top: 10px;
    text-align: center;
}
.footer #show_request_time {
    color: #FFFFFF;
}
#back-top {
    bottom: 30px;
    position: fixed;
    right: 8px;
}
#back-top a {
    color: #BBBBBB;
    display: block;
    font: 11px/100% Arial,Helvetica,sans-serif;
    text-align: center;
    text-decoration: none;
    transition: all 1s ease 0s;
    width: 30px;
}
#back-top a:hover {
    color: #000000;
}
#back-top span {
    background: url("${pageContext.request.contextPath}/assets/up_arrow_24.png") no-repeat scroll center center #DDDDDD;
    border-radius: 15px;
    display: block;
    height: 30px;
    margin-bottom: 7px;
    transition: all 1s ease 0s;
    width: 30px;
}
#back-top a:hover span {
    background-color: #777777;
}
body {
    background: url("${pageContext.request.contextPath}/assets/banner_bg60.jpg") no-repeat scroll 0 0 rgba(0, 0, 0, 0);
}
body.aqis_index {
    background-size: 100% 480px;
}
body.aqis_live_data {
    background-size: 100% 385px;
}
.ptshort {
    padding-top: 270px;
}
.aqis_index .slogan {
    margin-top: 150px;
    position: relative;
    text-align: center;
    z-index: 8;
}
.aqis_index .search {
    position: relative;
    text-align: center;
    z-index: 8;
}
.aqis_index .cities .hot {
    margin-top: 55px;
}
.aqis_index .cities .hot .top {
    color: #569918;
    font-size: 28px;
}
.aqis_index .cities .hot .bottom {
    font-size: 16px;
    margin-top: 20px;
}
.aqis_index .cities .hot .bottom li {
    display: inline-block;
    width: 75px;
}
.aqis_index .cities .all {
    margin-top: 35px;
}
.aqis_index .cities .all .top {
    color: #569918;
    font-size: 28px;
}
.aqis_index .cities .all .bottom {
    font-size: 16px;
    margin-top: 20px;
}
.aqis_index .cities .all .bottom ul {
    margin-bottom: 10px;
}
.aqis_index .cities .all .bottom p {
    display: inline-block;
    width: 22px;
}
.aqis_index .cities .all .bottom li {
    display: inline-block;
    width: 75px;
}
.aqis_index .others {
    border-top: 1px solid #008000;
    margin-bottom: 25px;
    margin-top: 20px;
}
.aqis_index .others .wiki {
    margin-left: 0;
    padding-top: 20px;
}
.aqis_index .others .wiki p {
    color: #569918;
    font-size: 20px;
}
.aqis_index .others .wiki ul {
    margin-top: 15px;
}
.aqis_index .others .wiki li {
    margin-top: 6px;
}
.aqis_index .others .platform {
    padding-top: 20px;
}
.aqis_index .others .platform .title {
    color: #569918;
    font-size: 20px;
}
.aqis_index .others .platform ul {
    margin-left: 0;
    margin-top: 20px;
}
.aqis_index .others .platform ul li {
    display: inline-block;
    margin-right: 30px;
    text-align: center;
}
.aqis_index .others .platform ul li p {
    margin-top: 15px;
}
.aqis_live_data .avg {
    margin-top: 85px;
    position: relative;
    z-index: 8;
}
.aqis_live_data .avg .span11 {
    margin-left: 50px;
}
.aqis_live_data .avg .span11 .city_name {
    color: #569918;
    float: left;
}
.aqis_live_data .avg .span11 .level {
    color: #FFFFFF;
    float: left;
    margin-left: 15px;
    margin-top: 16px;
}
.aqis_live_data .avg .span11 .live_data_time {
    color: #BBBBBB;
    float: left;
    font-size: 16px;
    margin-left: 0;
    width: 50%;
}
.aqis_live_data .avg .span11 .live_data_unit {
    color: #BBBBBB;
    float: left;
    font-size: 16px;
    text-align: right;
    width: 50%;
}
.aqis_live_data .avg .data {
    margin-left: 15px;
}
.aqis_live_data .avg .data .span1 {
    background-color: rgba(255, 255, 255, 0.25);
    border-radius: 50%;
    height: 105px;
    margin-left: 0;
    margin-right: 40px;
    width: 105px;
}
.aqis_live_data .avg .data .span1 .value {
    color: #FFFFFF;
    font-size: 36px;
    margin-top: 30px;
    text-align: center;
}
.aqis_live_data .avg .data .span1 .caption {
    margin-top: 15px;
    text-align: center;
}
.aqis_live_data .avg .caution {
    margin-left: 15px;
    margin-top: 15px;
}
.aqis_live_data .avg .caution p {
    color: #BBBBBB;
}
.aqis_live_data .history {
    margin: 25px 0;
}
.aqis_live_data .station {
    color: #569918;
    float: left;
}
.aqis_live_data .station h3 {
    margin-left: 45px;
}
.aqis_live_data .share {
    float: left;
}
.aqis_live_data .share iframe {
    margin-left: 15px;
    margin-top: 16px;
}
.aqis_live_data .follow {
    float: left;
    margin-left: 8px;
    margin-top: 18px;
}
.aqis_live_data .table {
    margin: 0 auto;
    overflow: hidden;
}
.aqis_live_data .table th {
    text-align: center;
}
.more-city {
    display: none;
}
@media only screen and (min-width: 980px) and (max-width: 1200px) {
body.aqis_live_data {
    background-size: 100% 350px;
}
.aqis_live_data .avg .data .span1 {
    background-color: rgba(255, 255, 255, 0.25);
    border-radius: 50%;
    height: 90px;
    margin-left: 0;
    margin-right: 25px;
    width: 90px;
}
.aqis_live_data .avg .data .span1 .value {
    background-image: url("");
    color: #FFFFFF;
    font-size: 30px;
    margin-top: 15px;
    text-align: center;
}
.aqis_live_data .avg .data .span1 .caption {
    margin-top: 15px;
    text-align: center;
}
.caption {
    font-size: 10px;
}
.aqis_live_data .avg .live_data_time {
    color: #BBBBBB;
}
.aqis_live_data .avg .live_data_unit {
    color: #BBBBBB;
}
}
@media (min-width: 768px) and (max-width: 979px) {
body.aqis_live_data {
    background-size: 100% 330px;
}
.aqis_live_data .avg .data .span1 {
    background-color: rgba(255, 255, 255, 0.25);
    border-radius: 50%;
    height: 70px;
    margin-left: 0;
    margin-right: 20px;
    width: 70px;
}
.aqis_live_data .avg .data .span1 .value {
    color: #FFFFFF;
    font-size: 20px;
    margin-top: 10px;
    text-align: center;
}
.aqis_live_data .avg .data .span1 .caption {
    margin-top: 10px;
    text-align: center;
}
.caption {
    font-size: 10px;
}
.aqis_live_data .avg .live_data_time {
    color: #BBBBBB;
}
.aqis_live_data .avg .live_data_unit {
    color: #BBBBBB;
}
}
@media (max-width: 767px) {
body.aqis_live_data {
    background-size: 100% 600px;
    overflow-x: hidden;
}
body.aqis_index {
    background-size: 100% 430px;
}
.aqis_live_data .avg .data .span1 {
    background-color: rgba(255, 255, 255, 0.25);
    border-radius: 50%;
    float: left;
    height: 70px;
    margin-left: 0;
    margin-right: 20px;
    margin-top: 10px;
    width: 70px;
}
.aqis_live_data .avg .data .span1 .value {
    color: #FFFFFF;
    font-size: 20px;
    margin-top: 10px;
    text-align: center;
}
.aqis_live_data .avg .data .span1 .caption {
    margin-top: 10px;
    text-align: center;
}
.slogon .l_right {
    font-size: 18px;
    padding-top: 20px;
}
.caption {
    font-size: 10px;
}
.aqis_live_data .avg .span11 .live_data_time, .live_data .avg .span11 .live_data_unit {
    color: #BBBBBB;
    font-size: 12px;
    text-align: left;
}
.span11, .span12, .live_data_unit {
    clear: both;
}
.aqis_live_data .avg .caution {
    padding-bottom: 5px;
    padding-right: 50px;
    padding-top: 10px;
    position: relative;
}
}
@media (max-width: 420px) {
body.aqis_index {
    background-size: 100% 400px;
}
.more-city {
    display: block;
    padding-top: 10px;
}
.O3_8h_dn {
    display: none;
}
.aqis_live_data .avg .live_data_time {
    color: #BBBBBB;
}
.aqis_live_data .avg .live_data_unit {
    color: #BBBBBB;
}
}
body.docs_about, body.docs_api_doc, body.docs_sharer, body.docs_blacklist, body.docs_donate {
    background-size: 100% 250px;
}
.api_doc .apply, .api_doc .faq {
    background-color: #F5F5F5;
    border-radius: 4px;
    padding: 15px;
    width: inherit;
}
.api_doc .faq {
    margin-top: 50px;
}
.api_doc .faq .control-group {
    border-bottom: 1px solid #AAAAAA;
}
.api_doc input.optional, .api_doc textarea.optional, .api_doc select.optional {
    width: 90%;
}
.api_doc .slogon .l_left {
    width: 35%;
}
.api_doc .slogon .l_right {
    float: right;
    font-size: 20px;
    padding-top: 70px;
    position: relative;
    text-indent: 2em;
    width: 65%;
}
.api_doc .doc {
    border-top: 1px solid #555555;
    margin-top: 10px;
    padding-top: 20px;
}
.docs_about .title {
    font-size: 30px;
    margin-top: 275px;
}
.docs_about .about_left {
    float: left;
    margin: 5px 100px 5px 75px;
    width: 35%;
}
.docs_about .about_left .brief_intro {
    border-bottom: 1px solid #AAAAAA;
    margin: 10px 5px 5px;
}
.docs_about .about_left .author {
    border-bottom: 1px solid #AAAAAA;
    margin: 10px 5px 5px;
}
.docs_about .about_left .visit_way {
    border-bottom: 1px solid #AAAAAA;
    margin: 10px 5px 5px;
}
.docs_about .about_left .news {
    border-bottom: 1px solid #AAAAAA;
    margin: 10px 5px 5px;
}
.docs_about .about_right {
    background-color: #E5F6D6;
    float: left;
    margin: 20px;
    padding: 40px;
    width: 30%;
}
.docs_about .about_right .title {
    font-size: 24px;
    margin: 15px;
}
.docs_about .about_right .data div {
    display: inline-block;
    text-align: right;
}
.docs_about .about_right .data li {
    margin: 10px 0;
}
.docs_about .about_right .data .label {
    font-size: 14px;
    width: 125px;
}
.docs_about .about_right .data .value {
    font-size: 24px;
    width: 150px;
}
.donate .slogan {
    color: #FFFFFF;
    font-size: 34px;
    margin-top: 150px;
    text-align: center;
}
.donate .picture {
    margin-top: 100px;
    text-align: center;
}
.donate .number {
    margin-top: 20px;
    text-align: center;
}
.donate .number .collection {
    margin: auto;
    max-width: 800px;
}
.donate .number .collection .item {
    border: 1px dotted #AAAAAA;
    float: left;
    height: 220px;
    margin-left: 17px;
    width: 243px;
}
.donate #explain {
    margin: auto;
    max-width: 800px;
    padding-left: 30px;
    padding-top: 10px;
}
.donate .thanks {
    margin-bottom: 50px;
    margin-top: 35px;
}
.donate .thanks .title {
    font-size: 28px;
    margin: auto;
    max-width: 800px;
}
.donate .thanks .list {
    border-top: 1px dotted #AAAAAA;
    margin: 20px auto auto;
    max-width: 800px;
}
.donate .thanks .list ul {
    margin-top: 10px;
}
.donate .thanks .list li {
    display: inline-block;
    padding: 10px;
}
.sharer {
    margin-top: 255px;
}
.sharer .slogon {
    margin-bottom: 50px;
    margin-left: 60px;
}
.sharer .slogon .l_left {
    float: left;
}
.sharer .slogon .l_right {
    float: left;
    margin-left: 25px;
    margin-top: 35px;
}
.sharer .slogon .l_right h1 {
    margin-bottom: 25px;
}
.sharer .slogon .l_right p {
    margin: 0 0 5px;
}
.sharer .display {
    margin-bottom: 75px;
}
.sharer .display .app_type {
    clear: both;
    margin-bottom: 70px;
}
.sharer .display .title {
    border-bottom: 1px dotted #AAAAAA;
    clear: both;
    margin-top: 15px;
}
.sharer .display .title p {
    color: #569918;
    font-size: 18px;
}
.sharer .display .list {
    display: inline-block;
}
.sharer .display .list .item {
    clear: both;
    margin: 35px 5px 5px 55px;
}
.sharer .display .list .item .left {
    float: left;
}
.sharer .display .list .item .left img {
    height: 50px;
    width: 50px;
}
.sharer .display .list .item .right {
    float: left;
    margin-left: 10px;
    margin-top: 6px;
    width: 155px;
}
.sharer .display .list .item .right .app_name {
    cursor: pointer;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    width: 155px;
    word-break: keep-all;
}
.sharer .display .list .item .right .app_name a {
    display: inline-block;
    width: 155px;
}
.sharer .display .list .item .right .app_intro {
    color: #969696;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    width: 155px;
    word-break: keep-all;
}
.popover.fade.bottom.in {
    margin-left: 41px;
    margin-top: 30px;
}
body.history_index {
    background-size: 100% 250px;
}
.history {
    margin-top: 255px;
}
.history .slogon {
    margin-top: 50px;
}
.history .slogon p {
    margin-top: 18px;
}
.history .list {
    margin-top: 55px;
}
.history .list p {
    font-size: 24px;
}
.history .list ul {
    border-top: 1px solid #AAAAAA;
    margin-bottom: 75px;
}
.history .list li {
    display: inline-block;
    font-size: 18px;
    margin-right: 35px;
    margin-top: 25px;
}
body.sort_stations, body.sort_index, body.sort_hebei {
    background-size: 100% 250px;
}
.table {
    clear: both;
}
.table th {
    text-align: center;
}
.sort #best_highchart {
    float: left;
    margin-bottom: 15px;
    margin-right: 1%;
    width: 49.5%;
}
.sort #worst_highchart {
    float: left;
    margin-bottom: 15px;
    width: 49.5%;
}
.sort .title {
    clear: both;
    float: left;
}
.sort .share {
    float: left;
    margin-left: 15px;
    margin-top: 18px;
}
.sort .follow {
    float: left;
    margin-left: 10px;
    margin-top: 20px;
}
.sort .time {
    clear: both;
}
@media (min-width: 768px) and (max-width: 979px) {
.sort #best_highchart {
    width: 720px;
}
.sort #worst_highchart {
    width: 720px;
}
}
@media (max-width: 767px) {
.sort #best_highchart {
    width: 600px;
}
.sort #worst_highchart {
    width: 600px;
}
}
@media (max-width: 480px) {
.sort #best_highchart {
    width: 450px;
}
.sort #worst_highchart {
    width: 450px;
}
}
body.weibo_index {
    background-size: 100% 250px;
}
.weibo .login {
    margin-left: auto;
    margin-right: auto;
    margin-top: 275px;
    max-width: 250px;
    text-align: center;
}
 
 
 
 </style>

 <link href="${pageContext.request.contextPath}/css/common.css"
	 rel="stylesheet" type="text/css" />
 <link href="${pageContext.request.contextPath}/css/tinyscrollbar.css"
	 rel="stylesheet" type="text/css" />
	 <script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/jquery1.7.2.min.js"></script>
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/jquery.tinyscrollbar.js"></script>
	<!--<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/jquery.js"></script>-->
	
	
</head>

<body class="aqis_index">
  <!-- Navbar========================= -->
  <div class="navbar-wrapper">
    <div class="container">
      <div class="navbar navbar-inverse">
        <div class="navbar-inner">
          <a type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collaps">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand"></a>
          <div class="nav-collapse navbar-inverse-collaps collapse" style="height: 0px;">
            <ul class="nav">
              <li style="margin-top: 5px;">
                <a href="${pageContext.request.contextPath}/showCity.action">首页</a>
              </li>
              <li style="margin-top: 5px;">
                <a href="${pageContext.request.contextPath}/web/rank.jsp">排行榜</a>
              </li>
            
             
              <li style="margin-top: 5px;">
                <a href="/about">关于</a>
              </li>
            </ul>
          </div> <!-- end of .nav-collapse -->
        </div> <!-- end of .navbar-inner -->
      </div> <!-- end of .navbar -->
    </div> <!-- end of .container -->
  </div> <!-- end of .navbar-wrapper -->

  <!-- Carousel=========================== -->
  <!-- end of .carousel -->

  <div class="container">
    
  
  <div class="span12 banner">
    <div class="slogan">
      <img alt="Slogan" src="${pageContext.request.contextPath}/assets/slogan.png" />
    </div>
    <div class="search">
      <img alt="Pm25_logo_150" src="${pageContext.request.contextPath}/assets/pm25_logo_150.png" />
    </div>
  </div>

  <!-- 城市列表 -->
  <div class="span12 cities">
    <div class="hot">
      <div class="top">
        热门城市：
      </div>
      <div class="bottom">
        <ul class="unstyled">
          <li><a href="${pageContext.request.contextPath}/loadStation.action?area=北京">北京</a></li>
          <li><a href="${pageContext.request.contextPath}/loadStation.action?area=上海">上海</a></li>
          <li><a href="${pageContext.request.contextPath}/loadStation.action?area=广州">广州</a></li>
          <li><a href="${pageContext.request.contextPath}/loadStation.action?area=深圳">深圳</a></li>
          <li><a href="${pageContext.request.contextPath}/loadStation.action?area=杭州">杭州</a></li>
          <li><a href="${pageContext.request.contextPath}/loadStation.action?area=天津">天津</a></li>
          <li><a href="${pageContext.request.contextPath}/loadStation.action?area=成都">成都</a></li>
          <li><a href="${pageContext.request.contextPath}/loadStation.action?area=南京">南京</a></li>
          <li><a href="${pageContext.request.contextPath}/loadStation.action?area=西安">西安</a></li>
          <li><a href="${pageContext.request.contextPath}/loadStation.action?area=武汉">武汉</a></li>
        </ul>
      </div>
    </div> <!-- end of .hot -->

    <div class="all">
      <div class="top">
        全部城市：
      </div>
      <div class="bottom">
            
    
    
    
    <ul class="unstyled">
    <c:forEach items="${list }" var="c">
    <li>
    <a href="${pageContext.request.contextPath}/loadStation.action?area=${c.area }">${c.area }</a>
    </li>
    </c:forEach>
      
    </ul>
      </div>
    </div> <!-- end of all -->
  </div> <!-- end of cities -->

  <div class="span12 others">
    

     <!-- end of platform -->
  </div> <!-- end of others -->
  <!--小贴士固定位置-->
<div class="mini_xiaotieshi"><a href="javascript:void(0)"></a></div>
<!--小贴士弹出框-->
<div class="xiaotieshi"  id="scrollbar2">
<div class="xiaotieshi_title"><a style="cursor:pointer" class="mt_close"><i></i></a><p><span class="xiaotieshi_title_wenzi">PM2.5小贴士</span></p></div>
<div class="scrollbar">
<div class="track">
<div class="thumb">
<div class="end">
</div>
</div>
</div>
</div>

<div class="xiaotieshi_content viewport">
<div class="overview"><p><img src="${pageContext.request.contextPath}/images/xts_title1.gif"/></p><p>PM2.5指的是空气动力学当量直径小于或等于2.5微米的颗粒物(可悬浮于空气中的固态和液态的微粒)。富含大量的有毒、有害物质且在大气中的停留时间长、输送距离远，因而对人体健康和大气环境质量的影响更大。PM2.5它的直径还不到人类头发丝的1/20。PM2.5也是阴霾天气形成的主要原因。</p><p style="text-align:center;"><img src="${pageContext.request.contextPath}/images/xiaotieshi_content1.jpg"/></p><p><img src="${pageContext.request.contextPath}/images/xts_title2.gif"/></p><p>PM2.5主要对呼吸系统和心血管系统造成伤害，包括呼吸道受刺激、咳嗽、呼吸困难、降低肺功能、加重哮喘、导致慢性支气管炎、心律失常、非致命性的心脏病、心肺病患者的过早死。人体的生理结构决定了对PM2.5没有任何过滤、阻拦能力，因此，小孩、孕妇、老人以及心肺疾病患者，是PM2.5污染的敏感人群。</p><p style="text-align:center;"><img src="${pageContext.request.contextPath}/images/xiaotieshi_content2_1.gif"/></p><p>世界卫生组织(WHO)认为，PM2.5小于10μg/m<sup>3</sup>是安全值。我国PM2.5标准采用世卫组织设定最宽限值：PM2.5年和24小时平均浓度限值分别定为35μg/m<sup>3</sup>和75μg/m<sup>3</sup>。</p><p style="text-align:center;"><img src="${pageContext.request.contextPath}/images/xiaotieshi_content2_2.gif"/></p><p>南开大学国家环境保护城市空气颗粒物污染防治重点实验室、中国环境科学研究院大气环境研究所专家发布的论文表示：PM2.5浓度每升高10微克/立方米，我国居民每日死亡率上升0.31%。</p><p style="text-align:center;"><img src="${pageContext.request.contextPath}/images/xiaotieshi_content2_3.gif"/></p> <p><img src="${pageContext.request.contextPath}/images/xts_title3.gif"/></p><p style="text-align:center;"><img src="${pageContext.request.contextPath}/images/xiaotieshi_content3_1.gif"/></p><p style="text-align:center;"><img src="${pageContext.request.contextPath}/images/xiaotieshi_content3_2.gif"/></p><p style="text-align:center;"><img src="${pageContext.request.contextPath}/images/xiaotieshi_content3_3.gif"/></p><p>&nbsp;</p><p>&nbsp;</p><div class="clear"></div></div></div></div>
<script type="text/javascript">
$(document).ready(function(){
var h=$(window).height()-132;if(h<0)h=0;
$(".viewport").css('height',h);
$('#scrollbar2').tinyscrollbar();
});
window.onresize=function(){
	var h=$(window).height()-132;if(h<0)h=0;
	$(".viewport").css('height',h);
	$(".scrollbar").css('height',h);
	$(".track").css('height',h);
    $('#scrollbar2').tinyscrollbar();
}
$('.mini_xiaotieshi a').click(function(){
	$('#scrollbar2').animate({right:0}, 'slow');
})
$('.xiaotieshi_title .mt_close').click(function(){
	$('#scrollbar2').animate({right:'-900px'}, 'slow');
})

$(document).click(function(e){
  if($(e.target).parents('.xiaotieshi').length == 0 && $('.xiaotieshi').css('right') != '-900px') {
    $('#scrollbar2').animate({right:'-900px'}, 'slow');
  }
})
</script>

    <div class="footer">
      <p>
        Copyright © 2013-2014<a href="http://www.nxu.edu.cn/" target="_blank"> 宁夏大学</a> All Rights Reserved.
      </p>
     
    </div>
    <div id="back-top">
      <a href="#top"><span></span>回到顶部</a>
    </div>
  </div>

</body>
</html>