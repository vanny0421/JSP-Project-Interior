<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<!--
	Formula by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
<head>
<title>Untitled</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet"
	href="//img.echosting.cafe24.com/editors/froala/3.2.2/css/froala_editor.pkgd.min.css">
<link rel="stylesheet"
	href="//img.echosting.cafe24.com/editors/froala/css/themes/ec_froala.css">
<style>
td {
	background-color: white !important;
}

th {
	background-color: white !important;
}

#view_list {
	float: left !important;
}

#write_post {
	float: right !important;
	margin-left: 4px !important;
}

#cancel_post {
	float: right !important;
	margin-left: 2px !important;
}

ul {
	list-style: none !important;
	padding-left: 0px !important;
	margin: 0 0 0 0 !important;
}

ul li {
	padding-left: 0 !important;
}

#view_list {
	float: left !important;
}

write_post {
	float: left !important;
}

cancel_post {
	float: left !important;
}

input[type="radio"]+label {
	color: #8e8e8e !important;
	margin: auto !important;
}

#div_write {
	width: 50% !important;
	height: 50% !important;
	margin: 0 auto !important;
}

#div_table {
	width: 100% !important;
	margin: 0 auto !important;
}

table {
	margin: 0 0 0 0 !important;
}

#wrapper>* {
	padding: 5em 0 3em 0 !important;
	border-bottom: none !important;
	overflow: hidden !important;
}
</style>
</head>
<body class="is-preload">

	<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header">
			<c:choose>
				<c:when test="${session_id==null }">
					<jsp:include page="/fixed/header.jsp"></jsp:include>
				</c:when>
				<c:otherwise>
					<jsp:include page="/fixed/header_login.jsp"></jsp:include>
				</c:otherwise>
			</c:choose>
		</header>

		<!-- Menu -->
		<nav id="menu">
			<jsp:include page="/fixed/menu.jsp"></jsp:include>
		</nav>

		<!-- Wrapper ?????? -->
		<div id="wrapper">
			<h3 style="text-align: center; border-bottom: none; margin: 0;">Q&A</h3>
			<!-- div_write ?????? -->
			<div id="div_write">
			<!-- form ?????? ?????? -->
			<form action="${pageContext.request.contextPath}/customerService/CS_WriteOk.bo?user_id=${session_id}" name="writeForm" method="post" enctype="multipart/form-data">
				<table id="div_table">
					<tr>
						<td><select id="board_select" name="board_select" fw-filter="isFill"
							fw-label="??????" fw-msg="" onchange="changeTitle()">
								<option selected disabled>????????????</option>
								<option value="????????????">????????????</option>
								<option value="????????????">????????????</option>
								<option value="????????????">????????????</option>
								<option value="????????????">????????????</option>
								<option value="????????????">????????????</option>
								<option value="????????????">????????????</option>
								<option value="????????????">????????????</option>
								<option value="????????????">????????????</option>
						</select></td>
						<th scope="row"><input id="board_title" name="board_title"
							type="text" placeholder="?????? ??????"></th>
					</tr>

				</table>
				<table border="1">
					<colgroup>
						<col style="width: 130px;">
						<col style="width: auto;">
					</colgroup>
					<tbody>
						<tr style="border-top: none; border-bottom: none;">
							<td colspan="2" class="clear"><textarea
									style="width: 100%; display: none;" name="cs_board_content" id="content"
									class="ec-fr-never-be-duplicated"></textarea> <input
								type="hidden" id="content_hidden"
								fw-filter="isSimplexEditorFill" fw-label="??????"
								value="EC_FROALA_INSTANCE"> <script
									type="text/javascript"
									src="//img.echosting.cafe24.com/editors/froala/js/polyfill.min.js"></script>
								<script type="text/javascript"
									src="//img.echosting.cafe24.com/editors/froala/3.2.2/js/froala_editor.pkgd.min.js"></script>
								<script type="text/javascript"
									src="//img.echosting.cafe24.com/editors/froala/js/i18n/ko_KR.js"></script>

								<!-- Run Froala Script --> <script>
									var EC_FROALA_ID = null;
									// isSimplexEditorFill ???????????? ?????????
									var EC_FROALA_INSTANCE = null;
									(function() {
										var d = "";
										try {
											var o = {
												"key" : "DUA2yF3G1E1A5A2A2pZGCTRSAPJWTLPLZHTQQe1JGZxC4B3A3E2B5A1E1E4I1C2==",
												"toolbarSticky" : false,
												"theme" : "ec-froala",
												"attribution" : false,
												"htmlRemoveTags" : [ "script" ],
												"htmlAllowedEmptyTags" : [ "*" ],
												"iframe" : true,
												"iframeStyle" : ".fr-view{font-size: 12px;}",
												"iframeStyleFiles" : [ "\/\/img.echosting.cafe24.com\/editors\/froala\/css\/froala_style.min.css" ],
												"heightMin" : 400,
												"language" : "ko_KR",
												"paragraphFormatSelection" : true,
												"fontFamilySelection" : true,
												"fontSize" : [ "8", "9", "10",
														"12", "14", "16", "18",
														"20", "22", "24", "26",
														"28", "30" ],
												"fontSizeSelection" : true,
												"linkInsertButtons" : [ "linkBack" ],
												"quickInsertButtons" : [ "ul",
														"ol", "hr" ],
												"codeMirror" : false,
												"imageEditButtons" : [
														"imageAlign",
														"imageRemove", "|",
														"imageLink",
														"linkOpen", "linkEdit",
														"linkRemove", "-",
														"imageDisplay",
														"imageStyle",
														"imageAlt", "imageSize" ],
												"tableEditButtons" : [],
												"tableInsertHelper" : false,
												"imageDefaultMargin" : 0,
												"imageDefaultWidth" : 0,
												"imageUpload" : false,
												"imageInsertButtons" : [ "imageUpload" ],
												"imageMaxSize" : 5242880,
												"filesManagerMaxSize" : 5242880,
												"toolbarButtons" : {
													"moreText" : {
														"buttons" : [
																"paragraphFormat",
																"fontFamily",
																"fontSize",
																"bold",
																"italic",
																"underline",
																"strikeThrough",
																"textColor",
																"backgroundColor",
																"subscript",
																"superscript",
																"clearFormatting" ],
														"buttonsVisible" : 5
													},
													"moreParagraph" : {
														"buttons" : [
																"formatOL",
																"formatUL",
																"alignLeft",
																"alignCenter",
																"alignRight",
																"outdent",
																"indent",
																"alignJustify",
																"lineHeight" ],
														"buttonsVisible" : 5
													},
													"moreRich" : {
														"buttons" : [
																"insertTable",
																"insertLink",
																"insertHR",
																"emoticons",
																"specialCharacters" ],
														"buttonsVisible" : 0
													},
													"moreMisc" : {
														"buttons" : [ "undo",
																"redo",
																"fullscreen",
																"html",
																"print",
																"spellChecker",
																"selectAll" ],
														"align" : "right",
														"buttonsVisible" : 2
													}
												},
												"toolbarButtonsSM" : {
													"moreText" : {
														"buttons" : [
																"paragraphFormat",
																"fontFamily",
																"fontSize",
																"bold",
																"italic",
																"underline",
																"strikeThrough",
																"textColor",
																"backgroundColor",
																"subscript",
																"superscript",
																"clearFormatting" ],
														"buttonsVisible" : 4
													},
													"moreParagraph" : {
														"buttons" : [
																"formatOL",
																"formatUL",
																"alignLeft",
																"alignCenter",
																"alignRight",
																"outdent",
																"indent",
																"alignJustify",
																"lineHeight" ],
														"buttonsVisible" : 2
													},
													"moreRich" : {
														"buttons" : [
																"insertTable",
																"insertLink",
																"insertHR",
																"emoticons",
																"specialCharacters" ],
														"buttonsVisible" : 0
													},
													"moreMisc" : {
														"buttons" : [ "undo",
																"redo",
																"fullscreen",
																"html",
																"print",
																"spellChecker",
																"selectAll" ],
														"align" : "right",
														"buttonsVisible" : 2
													}
												},
												"toolbarButtonsXS" : {
													"moreText" : {
														"buttons" : [
																"paragraphFormat",
																"textColor",
																"backgroundColor",
																"bold",
																"italic",
																"underline",
																"strikeThrough" ],
														"buttonsVisible" : 1
													},
													"moreParagraph" : {
														"buttons" : [
																"formatOL",
																"formatUL",
																"alignLeft",
																"alignCenter",
																"alignRight" ],
														"buttonsVisible" : 0
													},
													"moreRich" : {
														"buttons" : [ "insertLink" ]
													},
													"moreMisc" : {
														"buttons" : [ "undo",
																"redo", "html" ],
														"buttonsVisible" : 0,
														"align" : "right"
													}
												},
												"htmlDoNotWrapTags" : [
														"script", "style",
														"meta", "link" ],
												"htmlAllowedStyleProps" : [ ".*" ],
												"htmlAllowedTags" : [ ".*" ],
												"htmlAllowedAttrs" : [ ".*" ],
												"fontFamily" : {
													"Dotum,sans-serif" : "Dotum",
													"Gulim,sans-serif" : "Gulim",
													"Batang,sans-serif" : "Batang",
													"Gungsuh,sans-serif" : "Gungsuh",
													"Arial,Helvetica,sans-serif" : "Arial",
													"Tahoma,Geneva,sans-serif" : "Tahoma",
													"Verdana,Geneva,sans-serif" : "Verdana",
													"Fixedsys,sans-serif" : "Fixedsys",
													"'Times New Roman',Times,serif" : "Times New Roman",
													"helvetica,sans-serif" : "Helvetica",
													"sans-serif" : "Sans-serif",
													"palatino,sans-serif" : "Palatino",
													"'Comic Sans MS',sans-serif" : "Comic Sans MS",
													"sand,sans-serif" : "Sand",
													"'Courier New',sans-serif" : "Courier New",
													"courier,sans-serif" : "Courier",
													"monospace,sans-serif" : "Monospace",
													"Georgia,serif" : "Georgia",
													"SimSun,sans-serif" : "SimSun",
													"SimHei,sans-serif" : "SimHei",
													"'MS PGothic',sans-serif" : "MS PGothic",
													"'MS PMincho',sans-serif" : "MS PMincho",
													"'MS UI PGothic',sans-serif" : "MS UI PGothic",
													"Meiryo,sans-serif" : "Meiryo"
												},
												"colorsText" : [ "#FF0000",
														"#FF6C00", "#FFAA00",
														"#FFEF00", "#A6CF00",
														"#009E25", "#00B0A2",
														"#0075C8", "#3A32C3",
														"#7820B9", "#EF007C",
														"#000000", "#252525",
														"#464646", "#636363",
														"#7D7D7D", "#9A9A9A",
														"#FFE8E8", "#F7E2D2",
														"#F5EDDC", "#F5F4E0",
														"#EDF2C2", "#DEF7E5",
														"#D9EEEC", "#C9E0F0",
														"#D6D4EB", "#E7DBED",
														"#F1E2EA", "#ACACAC",
														"#C2C2C2", "#CCCCCC",
														"#E1E1E1", "#EBEBEB",
														"#FFFFFF", "#E97D81",
														"#E19B73", "#D1B274",
														"#CFCCA2", "#61B977",
														"#53AEA8", "#518FBB",
														"#6A65BB", "#9A54CE",
														"#E573AE", "#5A504B",
														"#767B86", "#951015",
														"#6E391A", "#785C25",
														"#5F5B25", "#4C511F",
														"#1C4827", "#0D514C",
														"#1B496A", "#2B285F",
														"#45245B", "#721947",
														"#352E2C", "#3C3F45" ],
												"colorsBackground" : [
														"#FF0000", "#FF6C00",
														"#FFAA00", "#FFEF00",
														"#A6CF00", "#009E25",
														"#00B0A2", "#0075C8",
														"#3A32C3", "#7820B9",
														"#EF007C", "#000000",
														"#252525", "#464646",
														"#636363", "#7D7D7D",
														"#9A9A9A", "#FFE8E8",
														"#F7E2D2", "#F5EDDC",
														"#F5F4E0", "#EDF2C2",
														"#DEF7E5", "#D9EEEC",
														"#C9E0F0", "#D6D4EB",
														"#E7DBED", "#F1E2EA",
														"#ACACAC", "#C2C2C2",
														"#CCCCCC", "#E1E1E1",
														"#EBEBEB", "#FFFFFF",
														"#E97D81", "#E19B73",
														"#D1B274", "#CFCCA2",
														"#61B977", "#53AEA8",
														"#518FBB", "#6A65BB",
														"#9A54CE", "#E573AE",
														"#5A504B", "#767B86",
														"#951015", "#6E391A",
														"#785C25", "#5F5B25",
														"#4C511F", "#1C4827",
														"#0D514C", "#1B496A",
														"#2B285F", "#45245B",
														"#721947", "#352E2C",
														"#3C3F45" ],
												"docId" : "content"
											};
											// IE tableEditbuttons ??????
											o["tableEditButtons"] = FroalaEditor.DEFAULTS.tableEditButtons
													.filter(function(
															tableEditButtonName) {
														return tableEditButtonName
																.indexOf("Style") === -1;
													});

											o["events"] = {
												"filesManager.beforeUpload" : function(
														files) {
													this.opts.filesManagerUploadURL = getConvertUrlBeforeUpload(this.opts.filesManagerUploadURL);
												},
												"image.beforeUpload" : function(
														images) {
													this.opts.imageUploadURL = getConvertUrlBeforeUpload(this.opts.imageUploadURL);
												},
												"image.error" : function(error,
														response) {
													if (typeof JSON != "undefined") {
														r = JSON
																.parse(response);
														alert(r["error"]);
													}
												},
												"filesManager.error" : function(
														error, response) {
													if (typeof JSON != "undefined") {
														r = JSON
																.parse(response);
														alert(r["error"]);
													}
												},
												"commands.after" : function(a) {
													if (a === "insertFiles") {
														var enableButton = document
																.querySelector(".fr-trim-button.fr-plugins-enable");
														if (enableButton)
															enableButton
																	.click();
													}

													if (a === "selectAll") {
														this.el.focus();
													}
												},
												"focus" : function() {
													if (this.iframe_document) {
														var iframeHeight = this.iframe_document.body.scrollHeight;
														this.$iframe[0].style.height = iframeHeight
																+ "px";
													}
												},
												"image.loaded" : function($img) {
													// IE?????? ????????? ?????? ???, ?????? ?????? ?????????
													if (/(trident).+rv[:\s]([\w\.]{1,9}).+like\sgecko/i
															.test(navigator.userAgent)) {
														var _this = this;
														var _img = $img[0];
														setTimeout(
																function() {
																	_this.selection
																			.setAfter(_img);
																	_this.selection
																			.restore();
																}, 300);
													}
												},
											};

											EC_FROALA_INSTANCE = new FroalaEditor(
													"textarea#content.ec-fr-never-be-duplicated",
													o,
													function() {
														EC_FROALA_ID = this.id;
														if (d != "") {
															this.html
																	.set(this.clean
																			.html(d));
															// ?????? textarea ????????? change ????????????
															this.undo
																	.saveStep();
														}
														var script = document
																.createElement("script");
														script.src = "//img.echosting.cafe24.com/editors/froala/js/polyfill.min.js";
														this.$iframe.get(0).contentWindow.document.head
																.appendChild(script);
													});

											EC_FROALA_INSTANCE.$iframe[0]
													.setAttribute("id",
															"content"
																	+ "_IFRAME");
											EC_FROALA_INSTANCE.$iframe[0].contentWindow.document.body
													.setAttribute("id",
															"content" + "_BODY");

											EC_FROALA_INSTANCE.isEmptyContent = function() {
												var c = getContentFromFroala(this.id);
												// ?????????????????? ?????? ?????????, validation??? ?????? ??????
												var val = c
														.replace(
																/\<br\/?\>|\<\/?p\>|\s|&nbsp;/gi,
																"");
												if ("" == val)
													return true;
												return false;
											};

											EC_FROALA_INSTANCE.getContentFromFroala = function() {
												return getContentFromFroala(this.id);
											};

											EC_FROALA_INSTANCE.applyContentToFroala = function(
													content) {
												return applyContentToFroala(
														content, this.id);
											};

											EC_FROALA_INSTANCE.setValueBeforeSubmit = function(
													sSection) {
												return setValueBeforeSubmit(
														sSection, this.id);
											};

											if (typeof $Editor === "undefined") {
												$Editor = {};
											}
											$Editor["content"] = EC_FROALA_INSTANCE;
										} catch (e) {
											document.getElementById("content").value = d;
											console.error(e);
										} finally {
										}
									})();

									//???????????? ????????? ?????? ??????
									function getContentFromFroala(id) {
										try {
											var sFroalaId = (typeof id === "undefined") ? EC_FROALA_ID
													: id;
											var oEditor = FroalaEditor.INSTANCES
													.filter(function(instance) {
														return instance.id === sFroalaId;
													});
											if (oEditor[0].codeView.isActive()) {
												oEditor[0].codeView.toggle();
											}

											return oEditor[0].html.get(true);

										} catch (e) {
											console.error(e);
											return false;
										}
									}

									//???????????? ????????? ?????? ??????
									function applyContentToFroala(content, id) {
										try {
											var sFroalaId = (typeof id === "undefined") ? EC_FROALA_ID
													: id;
											var oEditor = FroalaEditor.INSTANCES
													.filter(function(instance) {
														return instance.id === sFroalaId;
													});

											oEditor[0].html
													.set(oEditor[0].clean
															.html(content));

											// textarea ????????? change ????????????
											oEditor[0].undo.saveStep();
											return true;
										} catch (e) {
											console.error(e);
											return false;
										}
									}

									// useclasses ?????? ?????????, froala ????????? ????????? (fr-draggable) ??????
									function setValueBeforeSubmit(sSection, id) {
										try {
											var sFroalaId = (typeof id === "undefined") ? EC_FROALA_ID
													: id;
											var oEditor = FroalaEditor.INSTANCES
													.filter(function(instance) {
														return instance.id === sFroalaId;
													});

											var contents = oEditor[0].el.innerHTML;
											document.getElementById(sSection).value = contents
													.replace(
															/\sclass=("|')fr-draggable("|')|\s?fr-draggable\s?/gi,
															"");

											return true;
										} catch (e) {
											console.error(e);
											return false;
										}
									}

									//???????????? front reset CSS ????????????
									//Deprecated
									function getFroalaResetCSS() {
										return "//img.echosting.cafe24.com/editors/froala/css/froala_editor_reset.css;"
									}

									//???????????? front style CSS ????????????
									function getFroalaStyleCSS() {
										return "//img.echosting.cafe24.com/editors/froala/css/froala_style.min.css";
									}

									//???????????? front style EC CSS ????????????
									function getFroalaECStyleCSS() {
										return "//img.echosting.cafe24.com/editors/froala/css/froala_style_ec.min.css";
									}

									// ?????? ???????????? ????????? ???????????? ??? ??????
									function getConvertUrlBeforeUpload(
											sUploadUrl) {
										var aSplitUrl = sUploadUrl.split("?");
										var oParam = getParameterUploadUrl(aSplitUrl[1]);

										return decodeURIComponent(aSplitUrl[0]
												+ "?"
												+ "uploadPath="
												+ oParam["uploadPath"]
												+ "&uploadId="
												+ Math
														.floor(
																(Math.random() * 100000))
														.toString());
									}

									function getParameterUploadUrl(sQueryString) {
										var aParam = {};

										if (sQueryString) {
											var aFields = sQueryString
													.split("&");
											var aField = [];
											for (var i = 0; i < aFields.length; i++) {
												aField = aFields[i].split("=");
												aParam[aField[0]] = aField[1];
											}
										}
										return aParam;
									}
								</script></td>
						</tr>
						<tr class="ucc">
							<th scope="row">UCC URL</th>
							<td><input id="ucc" name="ucc" size="35" value=""
								type="text"></td>
						</tr>
					</tbody>
					<tbody class="">
						<tr>
							<th scope="row">????????????1</th>
							<td>
								<input id="cs_board_file1" name="cs_board_file1" type="file">
								<input type="button" onclick="cancelFile('cs_board_file1')" value="?????? ??????">
							</td>
						</tr>
						<tr>
							<th scope="row">????????????2</th>
							<td>
								<input id="cs_board_file2" name="cs_board_file2" type="file">
								<input type="button" onclick="cancelFile('cs_board_file2')" value="?????? ??????">
							</td>
						</tr>
						<tr>
							<th scope="row">????????????3</th>
							<td>
								<input id="cs_board_file3" name="cs_board_file3" type="file">
								<input type="button" onclick="cancelFile('cs_board_file3')" value="?????? ??????">
							</td>
						</tr>
						<tr>
							<th scope="row">????????????4</th>
							<td>
								<input id="cs_board_file4" name="board_file4" type="file"> 
								<input type="button" onclick="cancelFile('cs_board_file4')" value="?????? ??????">
							</td>
						</tr>
						<tr>
							<th scope="row">????????????5</th>
							<td>
								<input name="cs_board_file5" type="file">
								<input type="button" onclick="cancelFile('cs_board_file5')" value="?????? ??????">
							</td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th scope="row">????????????</th>
							<td><input id="password" name="password" type="password"></td>
						</tr>
						<tr>
							<th scope="row">???????????????</th>
							<td style="padding: 20px;"><input id="secure0" name="secure"
								value="" type="radio" checked="checked"><label
								for="secure0">?????????</label> <input id="secure1" name="secure"
								value="" type="radio"><label for="secure1">?????????</label></td>
						</tr>
					</tbody>
				</table>
				<ul>
					<li><input id="view_list" type="button" value="??????"
						class="primary"
						onclick="location.href='${pageContext.request.contextPath}/customerService/CS_BoardList.bo'" /></li>
					<li><input id="write_post" type="button" value="??????"
						class="primary" onclick="send()" /></li>
					<li><input id="cancel_post" type="button" value="??????"
						onclick="history.back()" /></li>
				</ul>
				</form>
			<!-- form ?????? ??? -->
			</div>
			<!-- div_write ??? -->

		</div>
		<!-- wrapper ??? -->
		<!-- Footer -->
		<footer id="footer">
			<jsp:include page="/fixed/footer.jsp"></jsp:include>
		</footer>


	</div>
	<!-- Page Wrapper ??? -->
	<!-- Scripts -->
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>


	<script>
		function changeTitle() {
																
			var select = document.getElementById('board_select');
			var title = document.getElementById('board_title');

			title.value = "[" + select.value + "] ";
		}
	</script>
	
	<!-- ??????????????? -->
	<script>
		function send() {
			if (document.getElementById('cs_board_title')=="") {
				alert("????????? ??????????????????.");
				return;
			}

			if (document.getElementById('cs_board_content')=="") {
				alert("????????? ??????????????????.");
				return;
			}
			document.writeForm.submit();
		}

		function cancelFile(fileTagName) {
			//explorer??? ????????? ??????????????? clone??? ????????????.
			//1. ?????? ???????????? ????????? ??????
			//2. ?????? ??? ?????? ?????? ??????, ????????? ??? append
			$("input[name='" + fileTagName + "']").val("");
		}
	</script>
</body>
</html>