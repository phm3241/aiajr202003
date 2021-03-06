<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lte IE 9]>
<html class="ie" lang="en">
<![endif]-->
<!--[if gt IE 9]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="UTF-8">
<title>Comments App - AngularJS</title>
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="@CodePen">
<meta name="twitter:title" content="Comments App - AngularJS">
<meta name="twitter:description"
	content="A simple comment app usgin AngularJS...">
<meta name="twitter:image"
	content="https://assets.codepen.io/145061/internal/screenshots/pens/wKMBpP.default.png?fit=cover&amp;format=auto&amp;ha=false&amp;height=720&amp;quality=75&amp;v=2&amp;version=1456016554&amp;width=1279">
<meta property="og:image"
	content="https://assets.codepen.io/145061/internal/screenshots/pens/wKMBpP.default.png?fit=cover&amp;format=auto&amp;ha=false&amp;height=720&amp;quality=75&amp;v=2&amp;version=1456016554&amp;width=1279"
	itemprop="thumbnailUrl">
<meta property="og:title" content="Comments App - AngularJS">
<meta property="og:url"
	content="https://codepen.io/cesar_mejiag/details/wKMBpP">
<meta property="og:site_name" content="CodePen">
<meta property="og:description"
	content="A simple comment app usgin AngularJS...">
<link rel="alternate" type="application/json+oembed"
	href="https://codepen.io/api/oembed?url=https%3A%2F%2Fcodepen.io%2Fcesar_mejiag%2Fpen%2FwKMBpP&format=json"
	title="Comments App - AngularJS" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,400italic,700,700italic,900,900italic"
	rel="stylesheet" />
<link rel="stylesheet" media="all"
	href="https://static.codepen.io/assets/global/global-24806a5a791a01ac06345a63a64ade04f93c0a6b0f117230363da0d4e581b19f.css" />
<link rel="stylesheet" media="screen"
	href="https://static.codepen.io/assets/packs/css/2-0b73550e.chunk.css" />
<link rel="stylesheet" media="screen"
	href="https://static.codepen.io/assets/packs/css/everypage-3905340e.css" />
<link rel="stylesheet" media="all"
	href="https://static.codepen.io/assets/editor/editor-84317cbfecf81b2f11023a8b63c2a2921bae99311a1d234065365f6ac32016bb.css" />
<meta name="description"
	content="A simple comment app usgin AngularJS...">
<link rel="stylesheet" media="screen"
	href="https://static.codepen.io/assets/editor/themes/twilight-bbb3d58f8024c27567f788f3990f2dce8754c2b67246bf12ad766768fe51955b.css"
	id="cm-theme" />
<style id="cm-font-family" class="cm-font-family">
.CodeMirror, .console-logs .console-line, .console-command-line-input,
	.console-message, .CodeMirror-hint {
	font-family: Monaco, MonoSpace;
}
</style>
<style id="cm-font-size">
.CodeMirror, .console-logs .console-line, .console-command-line-input,
	.console-message, .CodeMirror-hint {
	font-size: 14px;
}
</style>
<link rel="apple-touch-icon" type="image/png"
	href="https://static.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png" />
<meta name="apple-mobile-web-app-title" content="CodePen">
<link rel="shortcut icon" type="image/x-icon"
	href="https://static.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico" />
<link rel="mask-icon" type=""
	href="https://static.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg"
	color="#111" />
<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token"
	content="l9E/yCx8aBkADiOYQhm+wNfLnFqitU3AVG52EpL8xLwovZ8/Wg7J4mAEDcRYP+hvM/zErlQzslJ+7hd0mAQuzg==" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="monetization" content="$ilp.uphold.com/biyqg2MkQKbe">
<script>/* Firefox needs this to prevent FOUC. */</script>
</head>
<body
	class="room-editor editor state-htmlOn-cssOn-jsOn sidebar-false preload prelayout
  layout-top
 logged-out ">
	<header class="main-header" id="main-header"> </header>
	<div
		class="item-settings-modal tab-layout tab-layout-modal pen  item-settings-modal-half"
		id="item-settings-modal">
		<header class="item-settings-modal-header tab-layout-header">
			<h2 class="item-settings-modal-header-title tab-layout-header-title">Pen
				Settings</h2>
			<div class="save-and-close-wrap">
				<button type="button"
					class="button mini-button button-no-right-margin close"
					id="top-close-settings">
					<svg class="icon-x">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#x"></use>
</svg>
				</button>
			</div>
		</header>
		<div class="tabs tab-layout-wrapper settings-tabs-wrapper">
			<nav id="settings-tabs"
				class="no-mobile-nav tab-layout-tabs item-settings-tabs">
				<div class="tab-layout-tab-group">
					<a id="settings-html-tab" href="#settings-html"
						class="settings-tab-html" data-type="html"> HTML </a> <a
						id="settings-css-tab" href="#settings-css"
						class="settings-tab-css" data-type="css"> CSS </a> <a
						id="settings-js-tab" href="#settings-js" class="settings-tab-js"
						data-type="js"> JS </a>
				</div>
				<div class="tab-layout-tab-group">
					<a id="settings-behavior-tab" href="#settings-behavior"
						class="settings-tab-behavior" data-type="behavior"> Behavior </a>
					<a id="settings-editor-tab" href="#settings-editor"
						class="settings-tab-editor" data-type="editor"> Editor </a>
				</div>
			</nav>
			<div class="settings tab-page" id="settings-html">
				<h3 aria-label="HTML">HTML</h3>
				<form
					class="settings-row top-label-form normal-labels preprocessor-choice group">
					<h4>
						<label for="html-preprocessor">HTML Preprocessor</label>
					</h4>
					<div class="help-flyout-link">
						<svg class="icon-help">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#help"></use>
</svg>
						<div class="help-flyout help-flyout-reverse">
							<h5>About HTML Preprocessors</h5>
							<svg class="icon-x">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#x"></use>
</svg>
							<p>HTML preprocessors can make writing HTML more powerful or
								convenient. For instance, Markdown is designed to be easier to
								write and read for text documents and you could write a loop in
								Pug.</p>
							<p>
								<a
									href="https://blog.codepen.io/documentation/editor/using-html-preprocessors/"
									target="_blank" rel="noopener">Learn more</a> &middot; <a
									href="/versions/" target="_blank" rel="noopener">Versions</a>
							</p>
						</div>
					</div>
					<div class="custom-select-wrap">
						<select name="html-preprocessor" id="html-preprocessor"
							class="fullwidth">
							<option value="none">None</option>
							<option value="haml">Haml</option>
							<option value="markdown">Markdown</option>
							<option value="slim">Slim</option>
							<option value="pug">Pug</option>
						</select>
						<div class="select-icon">
							<svg class="icon-arrow-down-mini">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#arrow-down-mini"></use>
</svg>
							<svg class="icon-arrow-down-mini">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#arrow-down-mini"></use>
</svg>
						</div>
					</div>
				</form>
				<form
					class="settings-row top-label-form normal-labels prevent-form-submit"
					onsubmit="return false;">
					<h4>
						<label for="html-classes">Add Class(es) to &lt;html></label>
					</h4>
					<div class="help-flyout-link">
						<svg class="icon-help">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#help"></use>
</svg>
						<div class="help-flyout help-flyout-reverse">
							<h5>Adding Classes</h5>
							<svg class="icon-x">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#x"></use>
</svg>
							<p>
								In CodePen, whatever you write in the HTML editor is what goes
								within the
								<code>&lt;body></code>
								tags in <a target="_blank" rel="noopener"
									href="https://blog.codepen.io/documentation/features/preview-template/">a
									basic HTML5 template</a>. So you don't have access to higher-up
								elements like the
								<code>&lt;html></code>
								tag. If you want to add classes there that can affect the whole
								document, this is the place to do it.
							</p>
						</div>
					</div>
					<input type="text" id="html-classes" name="html-classes"
						class="fullwidth" placeholder="e.g. single post post-1234"
						maxlength="250">
				</form>
				<form
					class="settings-row top-label-form normal-labels prevent-form-submit"
					onsubmit="return false;">
					<h4>
						<label for="head-content">Stuff for &lt;head></label>
					</h4>
					<div class="help-flyout-link">
						<svg class="icon-help">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#help"></use>
</svg>
						<div class="help-flyout help-flyout-reverse">
							<h5>About the &lt;head></h5>
							<svg class="icon-x">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#x"></use>
</svg>
							<p>
								In CodePen, whatever you write in the HTML editor is what goes
								within the
								<code>&lt;body></code>
								tags in <a target="_blank" rel="noopener"
									href="https://blog.codepen.io/documentation/features/preview-template/">a
									basic HTML5 template</a>. If you need things in the
								<code>&lt;head></code>
								of the document, put that code here.
							</p>
						</div>
					</div>
					<div class="head-content-wrapper">
						<textarea id="head-content" name="head-content"
							class="fullwidth is-code head-content"
							placeholder="e.g. &lt;meta>, &lt;link>, &lt;script>"></textarea>
						<span class="insecure-resource-tooltip">
							<div class="help-flyout-link">
								<span class="icon-help">!</span>
								<div class="help-flyout help-flyout-reverse">
									<svg class="icon-x">
<use xmlns:xlink="http://www.w3.org/1999/xlink"
											xlink:href="/svgs/compiled/svgs.20ea15c6.svg#x"></use>
</svg>
									<h5>Insecure Resource</h5>
									<p>The resource you are linking to is using the 'http'
										protocol, which may not work when the browser is using https.</p>
								</div>
							</div>
						</span>
					</div>
					<button class="button mini-button button-medium"
						id="meta-tag-insert">↑ Insert the most common viewport
						meta tag</button>
				</form>
			</div>
			<div class="settings tab-page" id="settings-css">
				<h3 aria-label="CSS">CSS</h3>
				<form
					class="settings-row settings-row-1 top-label-form normal-labels preprocessor-choice group">
					<h4>
						<label for="css-preprocessor">CSS Preprocessor</label>
					</h4>
					<div class="help-flyout-link">
						<svg class="icon-help">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#help"></use>
</svg>
						<div class="help-flyout help-flyout-reverse">
							<h5>About CSS Preprocessors</h5>
							<svg class="icon-x">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#x"></use>
</svg>
							<p>CSS preprocessors help make authoring CSS easier. All of
								them offer things like variables and mixins to provide
								convenient abstractions.</p>
							<p>
								<a
									href="https://blog.codepen.io/documentation/editor/using-css-preprocessors/"
									target="_blank">Learn more</a> &middot; <a href="/versions/"
									target="_blank">Versions</a>
							</p>
						</div>
					</div>
					<div class="custom-select-wrap">
						<select name="css-preprocessor" id="css-preprocessor"
							class="fullwidth css-preprocessor">
							<option value="none">None</option>
							<option value="less">Less</option>
							<option value="scss">SCSS</option>
							<option value="sass">Sass</option>
							<option value="stylus">Stylus</option>
							<option value="postcss">PostCSS</option>
						</select>
						<div class="select-icon">
							<svg class="icon-arrow-down-mini">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#arrow-down-mini"></use>
</svg>
							<svg class="icon-arrow-down-mini">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#arrow-down-mini"></use>
</svg>
						</div>
					</div>
					<div id="need-an-addon" class="align-right hide">
						<a id="css-need-an-addon-button" href="#0"
							class="button button-medium mini-button need-an-addon-button">
							Need an add-on? </a>
					</div>
					<div class="add-ons add-ons-scss hide" id="add-ons"></div>
				</form>
				<form id="startercss-options-form"
					class="settings-row settings-row-2 top-label-form prevent-form-submit"
					onsubmit="return false;">
					<h4>CSS Base</h4>
					<div class="help-flyout-link">
						<svg class="icon-help">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#help"></use>
</svg>
						<div class="help-flyout help-flyout-reverse">
							<h5>About CSS Base</h5>
							<svg class="icon-x">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#x"></use>
</svg>
							<p>
								It's a common practice to apply CSS to a page that styles
								elements such that they are consistent across all browsers. We
								offer two of the most popular choices: <a
									href="https://necolas.github.io/normalize.css/" target="_blank"
									rel="noopener">normalize.css</a> and a <a
									href="http://meyerweb.com/eric/tools/css/reset/"
									target="_blank" rel="noopener">reset</a>. Or, choose <b>Neither</b>
								and nothing will be applied.
							</p>
						</div>
					</div>
					<ul class="radio-list">
						<li><input type="radio" id="startercss-normalize"
							name="startercss" checked value="normalize"> <label
							for="startercss-normalize" class="small-inline">Normalize</label>
						</li>
						<li><input type="radio" id="startercss-reset"
							name="startercss" checked value="reset"> <label
							for="startercss-reset" class="small-inline">Reset</label></li>
						<li><input type="radio" id="startercss-neither"
							name="startercss" checked value="neither"> <label
							for="startercss-neither" class="small-inline">Neither</label></li>
					</ul>
				</form>
				<form id="prefix-options-form"
					class="settings-row settings-row-3 top-label-form">
					<h4>Vendor Prefixing</h4>
					<div class="help-flyout-link">
						<svg class="icon-help">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#help"></use>
</svg>
						<div class="help-flyout help-flyout-reverse">
							<h5>About Vendor Prefixing</h5>
							<svg class="icon-x">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#x"></use>
</svg>
							<p>
								To get the best cross-browser support, it is a common practice
								to apply vendor prefixes to CSS properties and values that
								require them to work. For instance
								<code>-webkit-</code>
								or
								<code>-moz-</code>
								.
							</p>
							<p>
								We offer two popular choices: <a
									href="https://github.com/postcss/autoprefixer" target="blank"
									rel="noopener">Autoprefixer</a> (which processes your CSS
								server-side) and <a
									href="https://leaverou.github.io/prefixfree/" target="_blank"
									rel="noopener">-prefix-free</a> (which applies prefixes via a
								script, client-side).
							</p>
						</div>
					</div>
					<ul class="radio-list">
						<li><input type="radio" id="prefix-autoprefixer"
							name="prefix" value="autoprefixer"> <label
							for="prefix-autoprefixer" class="small-inline">Autoprefixer</label>
						</li>
						<li><input type="radio" id="prefix-prefixfree" name="prefix"
							value="prefixfree"> <label for="prefix-prefixfree"
							class="small-inline">Prefixfree</label></li>
						<li><input type="radio" id="prefix-neither" name="prefix"
							value="neither"> <label for="prefix-neither"
							class="small-inline">Neither</label></li>
					</ul>
				</form>
				<form id="external-css-resources"
					class="settings-row settings-row-4 top-label-form prevent-form-submit"
					onsubmit="return false;">
					<h4>Add External Stylesheets/Pens</h4>
					<p>
						Any URL's added here will be added as
						<code>&lt;link></code>
						s in order, and before the CSS in the editor. If you link to
						another Pen, it will include the CSS from that Pen. If the
						preprocessor matches, it will attempt to combine them before
						processing.
					</p>
					<div class="resource-search-bar">
						<svg class="icon icon-mag">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#mag"></use>
</svg>
						<input id="external-css-search" type="text" value=""
							placeholder="Search for resources (Bootstrap, Foundation, Animate.css...)">
					</div>
					<div class="algolia-shoutout">
						<a
							href="https://www.algolia.com/?utm_source=react-instantsearch&utm_medium=website&utm_content=codepen.io&utm_campaign=poweredby"
							target="_blank"> Powered by <img alt="Algolia"
							src="https://static.codepen.io/assets/settings/algolia-9e1c0c887f4db420704b2a79926864019ef156bcecc9d5774a7e4eaa731fc5b5.svg" />
						</a>
					</div>
					<div class="help-flyout-link">
						<svg class="icon-help">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#help"></use>
</svg>
						<div class="help-flyout help-flyout-reverse">
							<h5>About External Resources</h5>
							<svg class="icon-x">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#x"></use>
</svg>
							<p>You can apply CSS to your Pen from any stylesheet on the
								web. Just put a URL to it here and we'll apply it, in the order
								you have them, before the CSS in the Pen itself.</p>
							<p>If the stylesheet you link to has the file extension of a
								preprocessor, we'll attempt to process it before applying.</p>
							<p>You can also link to another Pen here, and we'll pull the
								CSS from that Pen and include it. If it's using a matching
								preprocessor, we'll combine the code before preprocessing, so
								you can use the linked Pen as a true dependency.</p>
							<p>
								<a
									href="https://blog.codepen.io/documentation/editor/adding-external-resources/"
									target="_blank" rel="noopener">Learn more</a>
							</p>
						</div>
					</div>
					<div id="css-external-resources" class="external-resource-wrapper">
					</div>
					<script id="css-external-resources-template" type="text/template">
  <div data-view-id="<%= view_id %>" class="external-resource-url-row <%= insecure_resource %>">

    <span class="move-external-url">
      <svg class="icon-drag-handle" width="20" height="17">
        <use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#drag-handle" />
      </svg>
    </span>

    <input
      id="external-resource-input-<%= view_id %>"
      class="fullwidth css-resource external-resource"
      type="text"
      pattern="^((ftp|http|https):)?\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?$"
      name="external-css"
      placeholder="<%= placeholder %>"
      value="<%= url %>"
      data-view-id="<%= view_id %>">

    <span class="insecure-resource-tooltip">
      <div class="help-flyout-link">
        <span class="icon-help">!</span>
        <div class="help-flyout help-flyout-reverse">
          <svg class="icon-x">
            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/svgs/compiled/svgs.20ea15c6.svg#x"></use>
          </svg>
          <h5>Insecure Resource</h5>
          <p>You are linking to a resource using the non-secure http:// protocol, which may not work when the browser is using https:// like CodePen enforces.</p>
        </div>
      </div>
    </span>

    <div class="resource-actions">
      <span class="remove-external-url external-url-option" data-view-id="<%= view_id %>">
        <svg class="icon-x" width="12" height="12">
          <use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#x" />
        </svg>
      </span>

      <a id="external-resource-input-view-link-<%= view_id %>" class="open-external-url external-url-option" target="_blank" rel="noopener" data-view-id="<%= view_id %>" href="<%= url %>">
        <svg class="icon-eye" width="14" height="14">
          <use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#eye" />
        </svg>
      </a>
    </div>

  </div>
</script>
					<div class="external-resource-actions group">
						<span id="add-css-resource"
							class="button mini-button button-medium add-resource"
							data-type="css"> <span data-type="css">+ add
								another resource</span>
						</span>
					</div>
				</form>
			</div>
			<div class="settings tab-page" id="settings-js">
				<div class="item-settings-javascript normal-labels">
					<h3 aria-label="JavaScript">JavaScript</h3>
					<div class="item-settings-javascript-preprocessor settings-row">
						<h4>
							<label for="js-preprocessor">JavaScript Preprocessor</label>
						</h4>
						<div class="help-flyout-link">
							<svg class="icon-help" width="14" height="14">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#help"></use>
</svg>
							<div class="help-flyout help-flyout-reverse">
								<h5>About JavaScript Preprocessors</h5>
								<svg class="icon-x" width="12" height="12">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#x"></use>
</svg>
								<p>JavaScript preprocessors can help make authoring
									JavaScript easier and more convenient. For instance,
									CoffeeScript can help prevent easy-to-make mistakes and offer a
									cleaner syntax and Babel can bring ECMAScript 6 features to
									browsers that only support ECMAScript 5.</p>
								<p>
									<a
										href="https://blog.codepen.io/documentation/editor/using-js-preprocessors/"
										target="_blank" rel="noopener">Learn more</a> &middot; <a
										href="/versions/" target="_blank">Versions</a>
								</p>
							</div>
						</div>
						<div class="custom-select-wrap">
							<select name="js-preprocessor" id="js-preprocessor"
								class="fullwidth">
								<option value="none">None</option>
								<option value="babel">Babel</option>
								<option value="typescript">TypeScript</option>
								<option value="coffeescript">CoffeeScript</option>
								<option value="livescript">LiveScript</option>
							</select>
							<div class="select-icon">
								<svg class="icon-arrow-down-mini">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#arrow-down-mini"></use>
</svg>
								<svg class="icon-arrow-down-mini">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#arrow-down-mini"></use>
</svg>
							</div>
						</div>
						<div class="processing-packages-message callout hide"
							id="processing-packages-message">Babel is required to
							process package imports. If you need a different preprocessor
							remove all packages first.</div>
					</div>
					<div id="external-js-resources"
						class="item-settings-javascript-external settings-row external-js-resources top-label-form prevent-form-submit"
						onsubmit="return false;">
						<h4>Add External Scripts/Pens</h4>
						<p>
							Any URL's added here will be added as
							<code>&lt;script></code>
							s in order, and run <em>before</em> the JavaScript in the editor.
							You can use the URL of any other Pen and it will include the
							JavaScript from that Pen.
						</p>
						<div class="resource-search-bar">
							<svg class="icon icon-mag" width="18" height="18">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#mag"></use>
</svg>
							<input id="external-js-search" type="text" value=""
								placeholder="Search CDNjs (jQuery, Lodash, React, Angular, Vue.js, Ember...)">
						</div>
						<div class="algolia-shoutout">
							<a
								href="https://www.algolia.com/?utm_source=react-instantsearch&utm_medium=website&utm_content=codepen.io&utm_campaign=poweredby"
								target="_blank"> Powered by <img alt="Algolia"
								src="https://static.codepen.io/assets/settings/algolia-9e1c0c887f4db420704b2a79926864019ef156bcecc9d5774a7e4eaa731fc5b5.svg" />
							</a>
						</div>
						<div class="help-flyout-link">
							<svg class="icon-help" width="14" height="14">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#help"></use>
</svg>
							<div class="help-flyout help-flyout-reverse">
								<h5>About External Resources</h5>
								<svg class="icon-x" width="12" height="12">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#x"></use>
</svg>
								<p>You can apply a script from anywhere on the web to your
									Pen. Just put a URL to it here and we'll add it, in the order
									you have them, before the JavaScript in the Pen itself.</p>
								<p>If the script you link to has the file extension of a
									preprocessor, we'll attempt to process it before applying.</p>
								<p>You can also link to another Pen here, and we'll pull the
									JavaScript from that Pen and include it. If it's using a
									matching preprocessor, we'll combine the code before
									preprocessing, so you can use the linked Pen as a true
									dependency.</p>
								<p>
									<a
										href="https://blog.codepen.io/documentation/adding-external-resources/"
										rel="noopener" target="_blank">Learn more</a>
								</p>
							</div>
						</div>
						<div id="js-external-resources" class="external-resource-wrapper">
						</div>
						<script id="js-external-resources-template" type="text/template">
  <div data-view-id="<%= view_id %>" class="external-resource-url-row <%= insecure_resource %>">

    <span class="move-external-url">
      <svg class="icon-drag-handle" width="20" height="17">
        <use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#drag-handle" />
      </svg>
    </span>

    <input
      id="external-resource-input-<%= view_id %>"
      class="fullwidth js-resource external-resource"
      type="text"
      pattern="^((ftp|http|https):)?\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?$"
      name="external-js"
      placeholder="<%= placeholder %>"
      value="<%= url %>"
      data-view-id="<%= view_id %>">

    <span class="insecure-resource-tooltip">
      <div class="help-flyout-link">
        <span class="icon-help">!</span>
        <div class="help-flyout help-flyout-reverse">
          <svg class="icon-x">
            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/svgs/compiled/svgs.20ea15c6.svg#x"></use>
          </svg>
          <h5>Insecure Resource</h5>
          <p>You are linking to a resource using the non-secure http:// protocol, which may not work when the browser is using https:// like CodePen enforces.</p>
        </div>
      </div>
    </span>

    <div class="resource-actions">
      <span class="remove-external-url external-url-option" data-view-id="<%= view_id %>">
        <svg class="icon-x" width="12" height="12">
          <use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#x" />
        </svg>
      </span>

      <a id="external-resource-input-view-link-<%= view_id %>" class="open-external-url external-url-option" target="_blank" rel="noopener" data-view-id="<%= view_id %>" href="<%= url %>">
        <svg class="icon-eye" width="14" height="14">
          <use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#eye" />
        </svg>
      </a>
    </div>

  </div>
</script>
						<div class="external-resource-actions group">
							<span id="add-js-resource"
								class="button button-medium mini-button add-resource"
								data-type="js"> <span data-type="js">+ add another
									resource</span>
							</span>
						</div>
					</div>
				</div>
			</div>
			<div class="settings tab-page" id="settings-behavior">
				<h3 aria-label="Pen Behavior">Behavior</h3>
				<div class="settings-row">
					<h4>Save Automatically?</h4>
					<div>
						<p class="hint">If active, Pens will autosave every 30 seconds
							after being saved once.</p>
						<div class="ios-toggle-mega-label-wrap">
							<span class="ios-toggle ios-toggle-ambiguous"> <input
								type="checkbox" id="auto-save" name="auto-save" checked>
								<label for="auto-save"></label> <label for="auto-save"
								class="ios-toggle-mega-label"></label>
							</span>
						</div>
					</div>
				</div>
				<div class="settings-row">
					<h4>Auto-Updating Preview</h4>
					<p class="hint">If enabled, the preview panel updates
						automatically as you code. If disabled, use the "Run" button to
						update.</p>
					<div class="ios-toggle-mega-label-wrap">
						<span class="ios-toggle ios-toggle-ambiguous"> <input
							type="checkbox" id="auto-run" name="auto-run" checked> <label
							for="auto-run"></label> <label for="auto-run"
							class="ios-toggle-mega-label"></label>
						</span>
					</div>
				</div>
				<div class="settings-row">
					<h4>Format on Save</h4>
					<p class="hint">
						If enabled, your code will be formatted when you actively save
						your Pen. <span style="color: #ffdc40; font-weight: bold;">Note:</span>
						your code becomes un-folded during formatting.
					</p>
					<div class="ios-toggle-mega-label-wrap">
						<span class="ios-toggle ios-toggle-ambiguous"> <input
							type="checkbox" id="format_on_save" name="format_on_save">
							<label for="format_on_save"></label> <label for="format_on_save"
							class="ios-toggle-mega-label"></label>
						</span>
					</div>
				</div>
			</div>
			<div class="settings tab-page" id="settings-editor">
				<h3 aria-label="Editor Settings">Editor Settings</h3>
				<form id="editor-settings-form"
					class="settings-row settings-row-1 top-label-form prevent-form-submit"
					onsubmit="return false;">
					<h4>Code Indentation</h4>
					<div class="settings-row">
						<ul class="radio-list">
							<li><input type="radio" id="indent-with-spaces"
								name="indent-with" value="spaces" checked> <label
								for="indent-with-spaces" class="small-inline">Spaces</label></li>
							<li><input type="radio" id="indent-with-tabs"
								name="indent-with" value="tabs"> <label
								for="indent-with-tabs" class="small-inline">Tabs</label></li>
						</ul>
					</div>
					<div class="settings-row top-label-form normal-labels">
						<h4>
							<label for="tab-size">Indent width</label>
						</h4>
						<div class="custom-select-wrap">
							<select id="tab-size" class="fullwidth" name="tab-size">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
							</select>
							<div class="select-icon">
								<svg class="icon-arrow-down-mini">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#arrow-down-mini"></use>
</svg>
								<svg class="icon-arrow-down-mini">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#arrow-down-mini"></use>
</svg>
							</div>
						</div>
					</div>
				</form>
				<div class="settings-row">
					<h4>Want to change your Syntax Highlighting theme, Fonts and
						more?</h4>
					<p>
						Visit <a href="/settings/editor" target="_blank">your global
							Editor Settings</a>.
					</p>
				</div>
			</div>
		</div>
		<footer>
			<div class="save-and-close-wrap">
				<input type="button"
					class="button button-small green button-no-right-margin close"
					value="Close" id="close-settings">
			</div>
		</footer>
	</div>
	<div class="page-wrap twilight">
		<div class="boxes">
			<div class="mobile-editor-nav">
				<button id="html-toggle" class="selected">
					<span>HTML</span>
				</button>
				<button id="css-toggle">
					<span>CSS</span>
				</button>
				<button id="js-toggle">
					<span>JS</span>
				</button>
				<button id="result-toggle" class="selected">
					<span>Result</span>
				</button>
			</div>
			<div class="top-boxes editor-parent" data-number-of-editors="3"
				elementtiming="pen-editors">
				<div class="editor-resizer html-editor-resizer"
					title="Double-click to expand."></div>
				<div id="box-html" class="box box-html" data-type="html">
					<div class="powers">
						<div class="powers-drag-handle" title="Double-click to expand."></div>
						<div class="editor-actions-left">
							<button id="settings-pane-html"
								class="button button-medium mini-button settings-nub"
								data-type="html" title="Open HTML Settings">
								<svg class="icon-gear" width="10" height="10">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#gear"></use>
</svg>
							</button>
							<h2 class="box-title html-editor-title" id="html-editor-title">
								<span class="box-title-name"> HTML </span> <span
									class="box-title-preprocessor-name "></span>
							</h2>
						</div>
						<div class="editor-actions-right">
							<div class="collaborators-indicators"></div>
							<button
								class="button mini-button button-medium editor-dropdown-button editor-dropdown-button-html"
								data-dropdown="#editor-dropdown-html" aria-haspopup="true"
								aria-expanded="false">
								<span class="visually-hidden"> HTML Options </span>
								<svg class="icon-arrow-down-mini" width="10" height="10">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#arrow-down-mini"></use>
</svg>
							</button>
							<ul id="editor-dropdown-html"
								class="link-list is-dropdown editor-dropdown editor-dropdown-html"
								data-dropdown-position="css" data-dropdown-type="html">
								<li class="editor-dropdown-list-item">
									<button id="tidy-html"
										class="invisible-button tidy-code-button"
										data-editor-type="html">Format HTML</button>
								</li>
								<li class="editor-dropdown-list-item">
									<button id="view-compiled-html"
										class="invisible-button view-compiled-button"
										data-editor-type="html">View Compiled HTML</button>
								</li>
								<li class="editor-dropdown-list-item">
									<button id="analyze-html"
										class="invisible-button analyze-button"
										data-editor-type="html">Analyze HTML</button>
								</li>
								<li class="editor-dropdown-list-item">
									<button id="maximize-html-editor"
										class="invisible-button maximize-button"
										data-editor-type="html">Maximize HTML Editor</button>
								</li>
								<li class="editor-dropdown-list-item">
									<button id="minimize-html-editor"
										class="invisible-button minimize-button"
										data-editor-type="html">Minimize HTML Editor</button>
								</li>
								<li class="editor-dropdown-list-item">
									<button id="fold-all-html"
										class="invisible-button fold-all-button"
										data-editor-type="html">Fold All</button>
								</li>
								<li class="editor-dropdown-list-item">
									<button id="unfold-all-html"
										class="invisible-button unfold-all-button"
										data-editor-type="html">Unfold All</button>
								</li>
							</ul>
						</div>
					</div>
					<div class="code-wrap">
						<pre id="html" class="code-box" aria-labeledby="html-editor-title">
              <code>
                &lt;div class=&quot;comments-app&quot; ng-app=&quot;commentsApp&quot; ng-controller=&quot;CommentsController as cmntCtrl&quot;&gt;
  &lt;h1&gt;Comments App - AngularJS&lt;/h1&gt;
  
  &lt;!-- From --&gt;
  &lt;div class=&quot;comment-form&quot;&gt;
    &lt;!-- Comment Avatar --&gt;
    &lt;div class=&quot;comment-avatar&quot;&gt;
      &lt;img src=&quot;http://lorempixel.com/200/200/people&quot;&gt;
    &lt;/div&gt;

    &lt;form class=&quot;form&quot; name=&quot;form&quot; ng-submit=&quot;form.$valid &amp;&amp; cmntCtrl.addComment()&quot; novalidate&gt;
      &lt;div class=&quot;form-row&quot;&gt;
        &lt;textarea
                  class=&quot;input&quot;
                  ng-model=&quot;cmntCtrl.comment.text&quot;
                  placeholder=&quot;Add comment...&quot;
                  required&gt;&lt;/textarea&gt;
      &lt;/div&gt;

      &lt;div class=&quot;form-row&quot;&gt;
        &lt;input
               class=&quot;input&quot;
               ng-class=&quot;{ disabled: cmntCtrl.comment.anonymous }&quot;
               ng-disabled=&quot;cmntCtrl.comment.anonymous&quot;
               ng-model=&quot;cmntCtrl.comment.author&quot;
               ng-required=&quot;!cmntCtrl.comment.anonymous&quot;
               placeholder=&quot;Email&quot;
               type=&quot;email&quot;&gt;
      &lt;/div&gt;

      &lt;div class=&quot;form-row text-right&quot;&gt;
        &lt;input
               id=&quot;comment-anonymous&quot;
               ng-change=&quot;cmntCtrl.anonymousChanged()&quot;
               ng-model=&quot;cmntCtrl.comment.anonymous&quot;
               type=&quot;checkbox&quot;&gt;
        &lt;label for=&quot;comment-anonymous&quot;&gt;Anonymous&lt;/label&gt;
      &lt;/div&gt;

      &lt;div class=&quot;form-row&quot;&gt;
        &lt;input type=&quot;submit&quot; value=&quot;Add Comment&quot;&gt;
      &lt;/div&gt;
    &lt;/form&gt;
  &lt;/div&gt;

  &lt;!-- Comments List --&gt;
  &lt;div class=&quot;comments&quot;&gt;
    &lt;!-- Comment --&gt;
    &lt;div class=&quot;comment&quot; ng-repeat=&quot;comment in cmntCtrl.comments | orderBy: &#39;-date&#39;&quot;&gt;
      &lt;!-- Comment Avatar --&gt;
      &lt;div class=&quot;comment-avatar&quot;&gt;
        &lt;img ng-src=&quot;{{ comment.avatarSrc }}&quot;&gt;
      &lt;/div&gt;

      &lt;!-- Comment Box --&gt;
      &lt;div class=&quot;comment-box&quot;&gt;
        &lt;div class=&quot;comment-text&quot;&gt;{{ comment.text }}&lt;/div&gt;
        &lt;div class=&quot;comment-footer&quot;&gt;
          &lt;div class=&quot;comment-info&quot;&gt;
            &lt;span class=&quot;comment-author&quot;&gt;
              &lt;em ng-if=&quot;comment.anonymous&quot;&gt;Anonymous&lt;/em&gt;
              &lt;a ng-if=&quot;!comment.anonymous&quot; href=&quot;{{ comment.author }}&quot;&gt;{{ comment.author }}&lt;/a&gt;
            &lt;/span&gt;
            &lt;span class=&quot;comment-date&quot;&gt;{{ comment.date | date: &#39;medium&#39; }}&lt;/span&gt;
          &lt;/div&gt;

          &lt;div class=&quot;comment-actions&quot;&gt;
            &lt;a href=&quot;#&quot;&gt;Reply&lt;/a&gt;
          &lt;/div&gt;
        &lt;/div&gt;
      &lt;/div&gt;
    &lt;/div&gt;

    &lt;!-- Comment - Dummy --&gt;
    &lt;div class=&quot;comment&quot;&gt;
      &lt;!-- Comment Avatar --&gt;
      &lt;div class=&quot;comment-avatar&quot;&gt;
        &lt;img src=&quot;http://gravatar.com/avatar/412c0b0ec99008245d902e6ed0b264ee?s=80&quot;&gt;
      &lt;/div&gt;

      &lt;!-- Comment Box --&gt;
      &lt;div class=&quot;comment-box&quot;&gt;
        &lt;div class=&quot;comment-text&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto temporibus iste nostrum dolorem natus recusandae incidunt voluptatum.&lt;/div&gt;
        &lt;div class=&quot;comment-footer&quot;&gt;
          &lt;div class=&quot;comment-info&quot;&gt;
            &lt;span class=&quot;comment-author&quot;&gt;
              &lt;a href=&quot;mailto:sexar@pagelab.io&quot;&gt;Sexar&lt;/a&gt;
            &lt;/span&gt;
            &lt;span class=&quot;comment-date&quot;&gt;Feb 2, 2013 11:32:04 PM&lt;/span&gt;
          &lt;/div&gt;

          &lt;div class=&quot;comment-actions&quot;&gt;
            &lt;a href=&quot;#&quot;&gt;Reply&lt;/a&gt;
          &lt;/div&gt;
        &lt;/div&gt;
      &lt;/div&gt;
    &lt;/div&gt;

    &lt;!-- Comment - Dummy --&gt;
    &lt;div class=&quot;comment&quot;&gt;
      &lt;!-- Comment Avatar --&gt;
      &lt;div class=&quot;comment-avatar&quot;&gt;
        &lt;img src=&quot;http://lorempixel.com/200/200/people&quot;&gt;
      &lt;/div&gt;

      &lt;!-- Comment Box --&gt;
      &lt;div class=&quot;comment-box&quot;&gt;
        &lt;div class=&quot;comment-text&quot;&gt;Eligendi voluptatum ducimus architecto tempore, quaerat explicabo veniam fuga corporis totam reprehenderit quasi sapiente modi tempora at perspiciatis mollitia, dolores voluptate. Cumque, corrupti?&lt;/div&gt;
        &lt;div class=&quot;comment-footer&quot;&gt;
          &lt;div class=&quot;comment-info&quot;&gt;
            &lt;span class=&quot;comment-author&quot;&gt;
              &lt;a href=&quot;mailto:ximme13@somedomain.io&quot;&gt;Ximme&lt;/a&gt;
            &lt;/span&gt;
            &lt;span class=&quot;comment-date&quot;&gt;Jan 31, 1986 11:32:04 PM&lt;/span&gt;
          &lt;/div&gt;

          &lt;div class=&quot;comment-actions&quot;&gt;
            &lt;a href=&quot;#&quot;&gt;Reply&lt;/a&gt;
          &lt;/div&gt;
        &lt;/div&gt;
      &lt;/div&gt;
    &lt;/div&gt;
  &lt;/div&gt;
&lt;/div&gt;
              </code>
            </pre>
						<div class="error-bar" id="error-bar-html">
							<span class="error-icon" data-type="html"> ! </span>
						</div>
					</div>
				</div>
				<div class="editor-resizer css-editor-resizer"
					title="Double-click to expand."></div>
				<div id="box-css" class="box box-css" data-type="css">
					<div class="powers">
						<div class="powers-drag-handle" title="Double-click to expand."></div>
						<div class="editor-actions-left">
							<button id="settings-pane-css"
								class="button button-medium mini-button settings-nub"
								data-type="css" title="Open CSS Settings">
								<svg class="icon-gear" width="10" height="10">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#gear"></use>
</svg>
							</button>
							<h2 class="box-title css-editor-title" id="css-editor-title">
								<span class="box-title-name"> CSS </span> <span
									class="box-title-preprocessor-name "></span>
							</h2>
						</div>
						<div class="editor-actions-right">
							<div class="collaborators-indicators"></div>
							<button
								class="button mini-button button-medium editor-dropdown-button editor-dropdown-button-css"
								data-dropdown="#editor-dropdown-css" aria-haspopup="true"
								aria-expanded="false">
								<span class="visually-hidden"> CSS Options </span>
								<svg class="icon-arrow-down-mini" width="10" height="10">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#arrow-down-mini"></use>
</svg>
							</button>
							<ul id="editor-dropdown-css"
								class="link-list is-dropdown editor-dropdown editor-dropdown-css"
								data-dropdown-position="css" data-dropdown-type="css">
								<li class="editor-dropdown-list-item">
									<button id="tidy-css" class="invisible-button tidy-code-button"
										data-editor-type="css">Format CSS</button>
								</li>
								<li class="editor-dropdown-list-item">
									<button id="view-compiled-css"
										class="invisible-button view-compiled-button"
										data-editor-type="css">View Compiled CSS</button>
								</li>
								<li class="editor-dropdown-list-item">
									<button id="analyze-css"
										class="invisible-button analyze-button" data-editor-type="css">
										Analyze CSS</button>
								</li>
								<li class="editor-dropdown-list-item">
									<button id="maximize-css-editor"
										class="invisible-button maximize-button"
										data-editor-type="css">Maximize CSS Editor</button>
								</li>
								<li class="editor-dropdown-list-item">
									<button id="minimize-css-editor"
										class="invisible-button minimize-button"
										data-editor-type="css">Minimize CSS Editor</button>
								</li>
								<li class="editor-dropdown-list-item">
									<button id="fold-all-css"
										class="invisible-button fold-all-button"
										data-editor-type="css">Fold All</button>
								</li>
								<li class="editor-dropdown-list-item">
									<button id="unfold-all-css"
										class="invisible-button unfold-all-button"
										data-editor-type="css">Unfold All</button>
								</li>
							</ul>
						</div>
					</div>
					<div class="code-wrap">
						<pre id="css" class="code-box" aria-labeledby="css-editor-title">
              <code>
                * {
  box-sizing: border-box;
  margin: 0;
  padding: 0;

  -webkit-box-sizing: border-box;
 	-moz-box-sizing: border-box;
}

body{
  background-color: #dee1e3;
  font-family: &quot;Roboto&quot;, &quot;Tahoma&quot;, &quot;Arial&quot;, sans-serif;,
}

.text-right{ text-align: right; }

.comments-app{
  margin: 50px auto;
  max-width: 680px;
  padding: 0 50px;
  width: 100%;
}

.comments-app h1{
  color: #191919;
  margin-bottom: 1.5em;
  text-align: center;
  text-shadow: 0 0 2px rgba(152, 152, 152, 1);
}

.comment-form{  }
.comment-form .comment-avatar{  }

.comment-form .form{ margin-left: 100px; }

.comment-form .form .form-row{ margin-bottom: 10px; }
.comment-form .form .form-row:last-child{ margin-bottom: 0; }

.comment-form .form .input{
  background-color: #fcfcfc;
  border: none;
  border-radius: 4px;
  box-shadow: 0 1px 1px rgba(0, 0, 0, .15);
  color: #555f77;
  font-family: inherit;
  font-size: 14px;
  padding: 5px 10px;
  outline: none;
  width: 100%;

  -webkit-transition: 350ms box-shadow;
  -moz-transition: 350ms box-shadow;
  -ms-transition: 350ms box-shadow;
  -o-transition: 350ms box-shadow;
  transition: 350ms box-shadow;
}

.comment-form .form textarea.input{
  height: 100px;
  padding: 15px;
}

.comment-form .form label{
  color: #555f77;
  font-family: inherit;
  font-size: 14px;
}

.comment-form .form input[type=submit]{
  background-color: #555f77;
  border: none;
  border-radius: 4px;
  box-shadow: 0 1px 1px rgba(0, 0, 0, .15);
  color: #fff;
  cursor: pointer;
  display: block;
  margin-left: auto;
  outline: none;
  padding: 6px 15px;

  -webkit-transition: 350ms box-shadow;
  -moz-transition: 350ms box-shadow;
  -ms-transition: 350ms box-shadow;
  -o-transition: 350ms box-shadow;
  transition: 350ms box-shadow;
}

.comment-form .form .input:focus,
.comment-form .form input[type=submit]:focus,
.comment-form .form input[type=submit]:hover{
  box-shadow: 0 2px 6px rgba(121, 137, 148, .55);
}

.comment-form .form.ng-submitted .input.ng-invalid,
.comment-form .form .input.ng-dirty.ng-invalid{
  box-shadow: 0 2px 6px rgba(212, 47, 47, .55) !important;
}

.comment-form .form .input.disabled {
    background-color: #E8E8E8;
}


.comments{  }

.comment-form,
.comment{
  margin-bottom: 20px;
  position: relative;
  z-index: 0;
}

.comment-form .comment-avatar,
.comment .comment-avatar{
  border: 2px solid #fff;
  border-radius: 50%;
  box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
  height: 80px;
  left: 0;
  overflow: hidden;
  position: absolute;
  top: 0;
  width: 80px;
}

.comment-form .comment-avatar img,
.comment .comment-avatar img{
  display: block;
  height: auto;
  width: 100%;
}

.comment .comment-box{
  background-color: #fcfcfc;
  border-radius: 4px;
  box-shadow: 0 1px 1px rgba(0, 0, 0, .15);
  margin-left: 100px;
  min-height: 60px;
  position: relative;
  padding: 15px;
}

.comment .comment-box:before,
.comment .comment-box:after{
  border-width: 10px 10px 10px 0;
  border-style: solid;
  border-color: transparent #FCFCFC;
  content: &quot;&quot;;
  left: -10px;
  position: absolute;
  top: 20px;
}

.comment .comment-box:before{
  border-color: transparent rgba(0, 0, 0, .05);
   top: 22px;
}

.comment .comment-text{
  color: #555f77;
  font-size: 15px;
  margin-bottom: 25px;
}

.comment .comment-footer{
  color: #acb4c2;
  font-size: 13px;
}

.comment .comment-footer:after{
  content: &quot;&quot;;
  display: table;
  clear: both;
}

.comment .comment-footer a{
  color: #acb4c2;
  text-decoration: none;

  -webkit-transition: 350ms color;
  -moz-transition: 350ms color;
  -ms-transition: 350ms color;
  -o-transition: 350ms color;
  transition: 350ms color;
}

.comment .comment-footer a:hover{
  color: #555f77;
  text-decoration: underline;
}

.comment .comment-info{
  float: left;
  width: 85%;
}

.comment .comment-author{ }
.comment .comment-date{ }

.comment .comment-date:before{
  content: &quot;|&quot;;
  margin: 0 10px;
}

.comment-actions{
  float: left;
  text-align: right;
  width: 15%;
}

              </code>
            </pre>
						<div class="error-bar" id="error-bar-css">
							<span class="error-icon" data-type="css"> ! </span>
						</div>
					</div>
				</div>
				<div class="editor-resizer js-editor-resizer"
					title="Double-click to expand."></div>
				<div id="box-js" class="box box-js" data-type="js">
					<div class="powers">
						<div class="powers-drag-handle" title="Double-click to expand."></div>
						<div class="editor-actions-left">
							<button id="settings-pane-js"
								class="button button-medium mini-button settings-nub"
								data-type="js" title="Open JS Settings">
								<svg class="icon-gear" width="10" height="10">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#gear"></use>
</svg>
							</button>
							<h2 class="box-title js-editor-title" id="js-editor-title">
								<span class="box-title-name"> JS </span> <span
									class="box-title-preprocessor-name "></span>
							</h2>
						</div>
						<div class="editor-actions-right">
							<div class="collaborators-indicators"></div>
							<button
								class="button mini-button button-medium editor-dropdown-button editor-dropdown-button-js"
								data-dropdown="#editor-dropdown-js" aria-haspopup="true"
								aria-expanded="false">
								<span class="visually-hidden"> JS Options </span>
								<svg class="icon-arrow-down-mini" width="10" height="10">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#arrow-down-mini"></use>
</svg>
							</button>
							<ul id="editor-dropdown-js"
								class="link-list is-dropdown editor-dropdown editor-dropdown-js"
								data-dropdown-position="css" data-dropdown-type="js">
								<li class="editor-dropdown-list-item">
									<button id="tidy-js" class="invisible-button tidy-code-button"
										data-editor-type="js">Format JavaScript</button>
								</li>
								<li class="editor-dropdown-list-item">
									<button id="view-compiled-js"
										class="invisible-button view-compiled-button"
										data-editor-type="js">View Compiled JavaScript</button>
								</li>
								<li class="editor-dropdown-list-item">
									<button id="analyze-js" class="invisible-button analyze-button"
										data-editor-type="js">Analyze JavaScript</button>
								</li>
								<li class="editor-dropdown-list-item">
									<button id="maximize-js-editor"
										class="invisible-button maximize-button" data-editor-type="js">
										Maximize JavaScript Editor</button>
								</li>
								<li class="editor-dropdown-list-item">
									<button id="minimize-js-editor"
										class="invisible-button minimize-button" data-editor-type="js">
										Minimize JavaScript Editor</button>
								</li>
								<li class="editor-dropdown-list-item">
									<button id="fold-all-js"
										class="invisible-button fold-all-button" data-editor-type="js">
										Fold All</button>
								</li>
								<li class="editor-dropdown-list-item">
									<button id="unfold-all-js"
										class="invisible-button unfold-all-button"
										data-editor-type="js">Unfold All</button>
								</li>
							</ul>
						</div>
					</div>
					<div class="code-wrap">
						<pre id="js" class="code-box" aria-labeledby="js-editor-title">
              <code>
                (function(){
  &#39;use strict&#39;;
  
  angular
    .module(&#39;commentsApp&#39;, [])
    .controller(&#39;CommentsController&#39;, CommentsController);
  
  // Inject $scope dependency.
  CommentsController.$inject = [&#39;$scope&#39;];
  
  // Declare CommentsController.
  function CommentsController($scope) {
    var vm = this;
    
    // Current comment.
    vm.comment = {};

    // Array where comments will be.
    vm.comments = [];

    // Fires when form is submited.
    vm.addComment = function() {
      // Fixed img.
      vm.comment.avatarSrc = &#39;http://lorempixel.com/200/200/people/&#39;;

      // Add current date to the comment.
      vm.comment.date = Date.now();

      vm.comments.push( vm.comment );
      vm.comment = {};

      // Reset clases of the form after submit.
      $scope.form.$setPristine();
    }

    // Fires when the comment change the anonymous state.
    vm.anonymousChanged = function(){
      if(vm.comment.anonymous)
        vm.comment.author = &quot;&quot;;
    }
  }

})();

              </code>
            </pre>
						<div class="error-bar" id="error-bar-js">
							<span class="error-icon" data-type="js"> ! </span>
						</div>
					</div>
				</div>
			</div>
			<div id="resizer" class="resizer">
				<span></span>
				<div id="width-readout" class="width-readout">999px</div>
			</div>
			<section id="drawer" class="drawer comments"></section>
			<div class="output-container">
				<div class="output-sizer">
					<div id="result_div" class="result">
						<iframe id="result" name="CodePen"
							src="https://cdpn.io/cesar_mejiag/fullpage/wKMBpP"
							sandbox="allow-downloads allow-forms allow-modals allow-pointer-lock allow-popups allow-presentation allow-same-origin allow-scripts allow-top-navigation-by-user-activation"
							allow="accelerometer; ambient-light-sensor; camera; encrypted-media; geolocation; gyroscope; microphone; midi; payment; vr"
							scrolling="auto" allowTransparency="true"
							allowpaymentrequest="true" allowfullscreen="true"
							class="result-iframe "> </iframe>
						<div id="editor-drag-cover" class="drag-cover"></div>
					</div>
					<div id="box-console" class="box box-console">
						<div class="editor-resizer editor-resizer-console"
							title="Drag to resize. Double-click to expand."></div>
						<div class="powers">
							<div class="powers-drag-handle"
								title="Drag to resize. Double-click to expand."></div>
							<div class="editor-actions-left">
								<h2 class="box-title">
									<span class="box-title-name">Console</span>
								</h2>
							</div>
							<div class="editor-actions-right">
								<button
									class="button button-medium mini-button console-clear-button"
									title="Clear">Clear</button>
								<button
									class="button button-medium mini-button close-editor-button"
									data-type="console" title="Close">
									<svg class="icon-x">
<use xlink:href="/svgs/compiled/svgs.20ea15c6.svg#x"></use>
</svg>
								</button>
							</div>
						</div>
						<div class="console-wrap">
							<div class="console-entries short-no-scroll"></div>
							<div class="console-command-line">
								<span class="console-arrow forwards"></span>
								<textarea class="console-command-line-input auto-expand"
									rows="1" data-min-rows="1"></textarea>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="asset-bin-goes-here"></div>
	<footer id="react-pen-footer" class="site-footer editor-footer"></footer>
	<div id="keycommands" class="modal modal-neutral">
		<div class="keycommands-container">
			<section class="editor-commands" style="padding-right: 10px;">
				<h2>Editor Commands</h2>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key pc_only">Ctrl</span> <span class="key mac_only">Ctrl</span>
						<span class="key">Space</span>
					</kbd>
					Autocomplete
				</div>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key">F</span>
					</kbd>
					Find
				</div>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key">G</span>
					</kbd>
					Find Next
				</div>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key" title="Shift">⇧</span>
						<span class="key">G</span>
					</kbd>
					Find Previous
				</div>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key pc_only"
							title="Shift">⇧</span> <span class="key mac_only">Opt</span> <span
							class="key">F</span>
					</kbd>
					Find & Replace
				</div>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key" title="Shift">⇧</span>
						<span class="key">F</span>
					</kbd>
					Format Code
				</div>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key">[</span>
					</kbd>
					Indent Code Right
				</div>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key">]</span>
					</kbd>
					Indent Code Left
				</div>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key" title="Shift">⇧</span> <span class="key">Tab</span>
					</kbd>
					Auto Indent Code
				</div>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key">/</span>
					</kbd>
					Line Comment
				</div>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key pc_only"
							title="Shift">⇧</span> <span class="key mac_only">Opt</span> <span
							class="key">/</span>
					</kbd>
					Block Comment
				</div>
				<p style="margin: 20px 0 0 0;">
					Also see: <a
						href="https://blog.codepen.io/documentation/features/tab-triggers/"
						target="_blank" rel="noopener">Tab Triggers</a>
				</p>
			</section>
			<section class="editor-commands">
				<h2>Editor Focus</h2>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key pc_only">Alt</span>
						<span class="key mac_only">Opt</span> <span class="key">1</span>
					</kbd>
					HTML Editor
				</div>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key pc_only">Alt</span>
						<span class="key mac_only">Opt</span> <span class="key">2</span>
					</kbd>
					CSS Editor
				</div>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key pc_only">Alt</span>
						<span class="key mac_only">Opt</span> <span class="key">3</span>
					</kbd>
					JS Editor
				</div>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key pc_only">Alt</span>
						<span class="key mac_only">Opt</span> <span class="key">4</span>
					</kbd>
					Toggle Console
				</div>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key pc_only">Alt</span>
						<span class="key mac_only">Opt</span> <span class="key">0</span>
					</kbd>
					Preview
				</div>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key">Esc</span>
					</kbd>
					Exit currently focused editor
				</div>
			</section>
			<section class="editor-commands">
				<h2>Misc</h2>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key" title="Shift">⇧</span>
						<span class="key">7</span>
					</kbd>
					Re-run Preview
				</div>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key" title="Shift">⇧</span>
						<span class="key">8</span>
					</kbd>
					Clear All Analyze Errors
				</div>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key" title="Shift">⇧</span>
						<span class="key">9</span>
					</kbd>
					Open This Dialog
				</div>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key" title="Shift">⇧</span>
						<span class="key">0</span>
					</kbd>
					Open Debug View
				</div>
				<h2>HTML Specific</h2>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key" title="Shift">⇧</span>
						<span class="key">A</span>
					</kbd>
					Wrap With...
				</div>
				<h2>Pen Actions</h2>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key">P</span>
					</kbd>
					Create New Pen
				</div>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key">S</span>
					</kbd>
					Save
				</div>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key" title="Shift">⇧</span>
						<span class="key">S</span>
					</kbd>
					Save As Private <span class="badge badge-pro text">PRO</span>
				</div>
				<div class="key-group">
					<kbd class="keycommand">
						<span class="key -command"></span> <span class="key">I</span>
					</kbd>
					Info Panel (if owned)
				</div>
			</section>
		</div>
	</div>
	<div id="popup-overlay" class="overlay popup-overlay"></div>
	<div id="modal-overlay" class="overlay modal-overlay"></div>
	<noscript>

		<input type="checkbox" class="modal-closing-trick"
			id="modal-closing-trick">

		<div class="overlay noscript-overlay" style="display: block;"></div>

		<div class="modal modal-message group modal-warning">

			<div class="modal-title">CodePen requires JavaScript to render
				the code and preview areas in this view.</div>

			<p>
				Trying <a href="https://codepen.io/cesar_mejiag/debug/wKMBpP">viewing
					this Pen in Debug Mode</a>, which is the preview area without any
				iframe and does not require JavaScript. Although what the preview is
				of might!
			</p>

			<p>
				Need to know how to enable JavaScript? <a
					href="http://enable-javascript.com/" target="_blank" rel="noopener">Go
					here.</a>
			</p>

			<label class="button button-medium" for="modal-closing-trick">Close
				this, use anyway.</label>

		</div>

	</noscript>
	<input type="hidden" id="init-data"
		value="{&quot;__browser&quot;:{&quot;device&quot;:&quot;unknown&quot;,&quot;mobile&quot;:null,&quot;name&quot;:&quot;microsoft edge&quot;,&quot;platform&quot;:&quot;pc&quot;,&quot;version&quot;:&quot;85&quot;},&quot;__constants&quot;:{&quot;gridIframeSandboxAttributes&quot;:&quot;allow-scripts allow-pointer-lock allow-same-origin&quot;},&quot;__CPDATA&quot;:{&quot;domain_iframe&quot;:&quot;https://cdpn.io&quot;,&quot;host&quot;:&quot;codepen.io&quot;,&quot;iframe_allow&quot;:&quot;accelerometer; ambient-light-sensor; camera; encrypted-media; geolocation; gyroscope; microphone; midi; payment; vr&quot;,&quot;iframe_sandbox&quot;:&quot;allow-downloads allow-forms allow-modals allow-pointer-lock allow-popups allow-presentation allow-same-origin allow-scripts allow-top-navigation-by-user-activation&quot;},&quot;__svg_sprite&quot;:&quot;/svgs/compiled/svgs.20ea15c6.svg&quot;,&quot;__stream_analytics&quot;:{&quot;api_key&quot;:&quot;64puhuch8n2j&quot;,&quot;token&quot;:&quot;eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyZXNvdXJjZSI6ImFuYWx5dGljcyIsImFjdGlvbiI6IioiLCJ1c2VyX2lkIjoiKiJ9.K-TP9-k-_ZnktGVf_CxDVZyUXKzGMFVJ--dNJ-20_t4&quot;},&quot;__user&quot;:{&quot;anon&quot;:true,&quot;base_url&quot;:&quot;/anon/&quot;,&quot;current_team_id&quot;:0,&quot;current_team_hashid&quot;:&quot;YdEzGn&quot;,&quot;hashid&quot;:&quot;VoDkNZ&quot;,&quot;id&quot;:1,&quot;itemType&quot;:&quot;user&quot;,&quot;name&quot;:&quot;Captain Anonymous&quot;,&quot;owner_id&quot;:&quot;VoDkNZYdEzGn&quot;,&quot;paid&quot;:false,&quot;tier&quot;:0,&quot;username&quot;:&quot;anon&quot;,&quot;created_at&quot;:null,&quot;email_verified&quot;:null,&quot;collections_count&quot;:0,&quot;collections_private_count&quot;:0,&quot;followers_count&quot;:0,&quot;followings_count&quot;:0,&quot;pens_count&quot;:0,&quot;pens_private_count&quot;:0,&quot;projects_count&quot;:0,&quot;projects_private_count&quot;:0},&quot;__firebase&quot;:{&quot;config&quot;:{&quot;apiKey&quot;:&quot;AIzaSyBgLAe7N_MdFpuVofMkcQLGwwhUu5tuxls&quot;,&quot;authDomain&quot;:&quot;codepen-store-production.firebaseapp.com&quot;,&quot;databaseURL&quot;:&quot;https://codepen-store-production.firebaseio.com&quot;,&quot;disabled&quot;:false,&quot;projectId&quot;:&quot;codepen-store-production&quot;},&quot;token&quot;:&quot;eyJhbGciOiJSUzI1NiJ9.eyJhdWQiOiJodHRwczovL2lkZW50aXR5dG9vbGtpdC5nb29nbGVhcGlzLmNvbS9nb29nbGUuaWRlbnRpdHkuaWRlbnRpdHl0b29sa2l0LnYxLklkZW50aXR5VG9vbGtpdCIsImNsYWltcyI6eyJvd25lcklkIjoiVm9Ea05aWWRFekduIiwiYWRtaW4iOmZhbHNlfSwiZXhwIjoxNTk5NDU3NDk2LCJpYXQiOjE1OTk0NTM4OTYsImlzcyI6ImZpcmViYXNlLWFkbWluc2RrLThva3lsQGNvZGVwZW4tc3RvcmUtcHJvZHVjdGlvbi5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsInN1YiI6ImZpcmViYXNlLWFkbWluc2RrLThva3lsQGNvZGVwZW4tc3RvcmUtcHJvZHVjdGlvbi5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsInVpZCI6IlZvRGtOWiJ9.2-HPPQjsXhfcjaprpPSIgiT3DkH65SmF5MQVYCOQDTuREPA3_lfnHrH-cnBTEJLs-EaaZTI1mfznGr4XkMA7dlSMJ1xm3ZEgGdOWqQd6NCWc9EvQ3_914-M2srmhG9Xzk9LN1KIjyGjAOBgUixvnHziGx57ei37LWNOLSUp232F-1-FIBgnhX02J-mS4tz7m-03LcYZjA2LqBsjiQemKRePc-n0xdVyr5GcaSBGB-4kXl5Oi2mSxy2DC3KWtHgwiTH46d45AOD_LOIsnOatnvj9i99i0ETfUuC9qOZEet90-_vzxJL9cFv0m2nW7MOIy135qZioyY98Ut_gMTunCEQ&quot;},&quot;__graphql&quot;:{&quot;data&quot;:{&quot;sessionUser&quot;:{&quot;id&quot;:&quot;VoDkNZ&quot;,&quot;name&quot;:&quot;Captain Anonymous&quot;,&quot;avatar80&quot;:&quot;https://gravatar.com/avatar/b15e0cf27861794b6faa31065e8f9950?d=https%3A%2F%2Fassets.codepen.io%2Finternal%2Favatars%2Fusers%2Fdefault.png&amp;format=auto&amp;height=80&amp;version=0&amp;width=80&quot;,&quot;avatar512&quot;:&quot;https://gravatar.com/avatar/b15e0cf27861794b6faa31065e8f9950?d=https%3A%2F%2Fassets.codepen.io%2Finternal%2Favatars%2Fusers%2Fdefault.png&amp;format=auto&amp;height=512&amp;version=0&amp;width=512&quot;,&quot;canCreatePosts&quot;:false,&quot;currentContext&quot;:{&quot;id&quot;:&quot;VoDkNZ&quot;,&quot;baseUrl&quot;:&quot;/anon&quot;,&quot;title&quot;:&quot;Captain Anonymous&quot;,&quot;name&quot;:&quot;Captain Anonymous&quot;,&quot;avatar80&quot;:&quot;https://gravatar.com/avatar/b15e0cf27861794b6faa31065e8f9950?d=https%3A%2F%2Fassets.codepen.io%2Finternal%2Favatars%2Fusers%2Fdefault.png&amp;format=auto&amp;height=80&amp;version=0&amp;width=80&quot;,&quot;avatar512&quot;:&quot;https://gravatar.com/avatar/b15e0cf27861794b6faa31065e8f9950?d=https%3A%2F%2Fassets.codepen.io%2Finternal%2Favatars%2Fusers%2Fdefault.png&amp;format=auto&amp;height=512&amp;version=0&amp;width=512&quot;,&quot;username&quot;:&quot;anon&quot;,&quot;contextType&quot;:&quot;USER&quot;,&quot;projectLimitations&quot;:{&quot;projects&quot;:0,&quot;usedProjects&quot;:0,&quot;__typename&quot;:&quot;ProjectLimitations&quot;},&quot;privateByDefault&quot;:false,&quot;__typename&quot;:&quot;User&quot;},&quot;currentTeamId&quot;:null,&quot;baseUrl&quot;:&quot;/anon&quot;,&quot;username&quot;:&quot;anon&quot;,&quot;admin&quot;:false,&quot;anon&quot;:true,&quot;pro&quot;:false,&quot;verified&quot;:null,&quot;teams&quot;:[],&quot;permissions&quot;:{&quot;canCreatePrivate&quot;:false,&quot;canUploadAssets&quot;:false,&quot;__typename&quot;:&quot;UserPermissions&quot;},&quot;__typename&quot;:&quot;User&quot;}}},&quot;__boomboom&quot;:{&quot;serve_url&quot;:&quot;https://cdpn.io/boomboom/v2/index.html&quot;,&quot;store_url&quot;:&quot;https://cdpn.io/boomboom/v2/store&quot;},&quot;__editor_config&quot;:{&quot;id&quot;:&quot;classic&quot;,&quot;editors&quot;:[{&quot;id&quot;:&quot;html&quot;,&quot;type&quot;:&quot;html&quot;,&quot;name&quot;:&quot;HTML&quot;,&quot;showEditor&quot;:true,&quot;showSettings&quot;:true,&quot;showProcessors&quot;:true,&quot;embeds&quot;:{&quot;showViewCompiled&quot;:true},&quot;settings&quot;:[{&quot;id&quot;:&quot;processor&quot;,&quot;name&quot;:&quot;HTML Preprocessor&quot;,&quot;type&quot;:&quot;select&quot;,&quot;visible&quot;:true,&quot;values&quot;:[{&quot;id&quot;:&quot;none&quot;,&quot;name&quot;:&quot;None&quot;,&quot;value&quot;:&quot;none&quot;,&quot;default&quot;:true},{&quot;id&quot;:&quot;haml&quot;,&quot;name&quot;:&quot;Haml&quot;,&quot;value&quot;:&quot;haml&quot;},{&quot;id&quot;:&quot;markdown&quot;,&quot;name&quot;:&quot;Markdown&quot;,&quot;value&quot;:&quot;markdown&quot;},{&quot;id&quot;:&quot;slim&quot;,&quot;name&quot;:&quot;Slim&quot;,&quot;value&quot;:&quot;slim&quot;},{&quot;id&quot;:&quot;pug&quot;,&quot;name&quot;:&quot;Pug&quot;,&quot;value&quot;:&quot;pug&quot;}]},{&quot;id&quot;:&quot;html_classes&quot;,&quot;name&quot;:&quot;Add Class(es) to &lt;html&gt;&quot;,&quot;type&quot;:&quot;input&quot;,&quot;placeholder&quot;:&quot;e.g. single post post-1234&quot;,&quot;visible&quot;:true},{&quot;id&quot;:&quot;head&quot;,&quot;name&quot;:&quot;Stuff for &lt;head&gt;&quot;,&quot;type&quot;:&quot;textarea&quot;,&quot;placeholder&quot;:&quot;e.g. &lt;meta&gt;, &lt;link&gt;, &lt;script&gt;&quot;,&quot;visible&quot;:true}],&quot;actions&quot;:[{&quot;id&quot;:&quot;tidy_html&quot;,&quot;type&quot;:&quot;tidy_code&quot;,&quot;name&quot;:&quot;Format HTML&quot;,&quot;disabled_processors&quot;:[&quot;haml&quot;,&quot;slim&quot;]},{&quot;id&quot;:&quot;view_compiled_html&quot;,&quot;type&quot;:&quot;view_compiled&quot;,&quot;name&quot;:&quot;View Compiled HTML&quot;,&quot;disabled_processors&quot;:[&quot;none&quot;],&quot;showInEmbeds&quot;:true},{&quot;id&quot;:&quot;analyze_html&quot;,&quot;type&quot;:&quot;analyze&quot;,&quot;name&quot;:&quot;Analyze HTML&quot;},{&quot;id&quot;:&quot;maximize_html_editor&quot;,&quot;type&quot;:&quot;maximize&quot;,&quot;name&quot;:&quot;Maximize HTML Editor&quot;},{&quot;id&quot;:&quot;minimize_html_editor&quot;,&quot;type&quot;:&quot;minimize&quot;,&quot;name&quot;:&quot;Minimize HTML Editor&quot;},{&quot;id&quot;:&quot;fold_all_html&quot;,&quot;type&quot;:&quot;fold_all&quot;,&quot;name&quot;:&quot;Fold All&quot;},{&quot;id&quot;:&quot;unfold_all_html&quot;,&quot;type&quot;:&quot;unfold_all&quot;,&quot;name&quot;:&quot;Unfold All&quot;}],&quot;processors&quot;:[{&quot;id&quot;:&quot;none&quot;,&quot;name&quot;:&quot;None&quot;},{&quot;id&quot;:&quot;haml&quot;,&quot;name&quot;:&quot;Haml&quot;},{&quot;id&quot;:&quot;markdown&quot;,&quot;name&quot;:&quot;Markdown&quot;},{&quot;id&quot;:&quot;slim&quot;,&quot;name&quot;:&quot;Slim&quot;},{&quot;id&quot;:&quot;pug&quot;,&quot;name&quot;:&quot;Pug&quot;}]},{&quot;id&quot;:&quot;css&quot;,&quot;type&quot;:&quot;css&quot;,&quot;name&quot;:&quot;CSS&quot;,&quot;showEditor&quot;:true,&quot;showSettings&quot;:true,&quot;showProcessors&quot;:true,&quot;showVendorPrefixing&quot;:true,&quot;embeds&quot;:{&quot;showViewCompiled&quot;:true},&quot;actions&quot;:[{&quot;id&quot;:&quot;tidy_css&quot;,&quot;type&quot;:&quot;tidy_code&quot;,&quot;name&quot;:&quot;Format CSS&quot;,&quot;disabled_processors&quot;:[&quot;sass&quot;,&quot;stylus&quot;]},{&quot;id&quot;:&quot;view_compiled_css&quot;,&quot;type&quot;:&quot;view_compiled&quot;,&quot;name&quot;:&quot;View Compiled CSS&quot;,&quot;disabled_processors&quot;:[&quot;none&quot;],&quot;disabled_prefixes&quot;:[&quot;neither&quot;,&quot;prefixfree&quot;]},{&quot;id&quot;:&quot;analyze_css&quot;,&quot;type&quot;:&quot;analyze&quot;,&quot;name&quot;:&quot;Analyze CSS&quot;},{&quot;id&quot;:&quot;maximize_css_editor&quot;,&quot;type&quot;:&quot;maximize&quot;,&quot;name&quot;:&quot;Maximize CSS Editor&quot;},{&quot;id&quot;:&quot;minimize_css_editor&quot;,&quot;type&quot;:&quot;minimize&quot;,&quot;name&quot;:&quot;Minimize CSS Editor&quot;},{&quot;id&quot;:&quot;fold_all_css&quot;,&quot;type&quot;:&quot;fold_all&quot;,&quot;name&quot;:&quot;Fold All&quot;,&quot;disabled_processors&quot;:[&quot;sass&quot;]},{&quot;id&quot;:&quot;unfold_all_css&quot;,&quot;type&quot;:&quot;unfold_all&quot;,&quot;name&quot;:&quot;Unfold All&quot;,&quot;disabled_processors&quot;:[&quot;sass&quot;]}],&quot;processors&quot;:[{&quot;id&quot;:&quot;none&quot;,&quot;name&quot;:&quot;None&quot;},{&quot;id&quot;:&quot;less&quot;,&quot;name&quot;:&quot;Less&quot;},{&quot;id&quot;:&quot;scss&quot;,&quot;name&quot;:&quot;SCSS&quot;},{&quot;id&quot;:&quot;sass&quot;,&quot;name&quot;:&quot;Sass&quot;},{&quot;id&quot;:&quot;stylus&quot;,&quot;name&quot;:&quot;Stylus&quot;},{&quot;id&quot;:&quot;postcss&quot;,&quot;name&quot;:&quot;PostCSS&quot;}],&quot;parSuffixes&quot;:[&quot;less&quot;,&quot;scss&quot;,&quot;sass&quot;,&quot;styl&quot;]},{&quot;id&quot;:&quot;js&quot;,&quot;type&quot;:&quot;js&quot;,&quot;name&quot;:&quot;JS&quot;,&quot;showEditor&quot;:true,&quot;showSettings&quot;:true,&quot;showProcessors&quot;:true,&quot;externalResourcesHidden&quot;:false,&quot;embeds&quot;:{&quot;showViewCompiled&quot;:true},&quot;actions&quot;:[{&quot;id&quot;:&quot;tidy_js&quot;,&quot;type&quot;:&quot;tidy_code&quot;,&quot;name&quot;:&quot;Format JavaScript&quot;,&quot;disabled_processors&quot;:[&quot;coffeescript, livescript&quot;]},{&quot;id&quot;:&quot;view_compiled_js&quot;,&quot;type&quot;:&quot;view_compiled&quot;,&quot;name&quot;:&quot;View Compiled JavaScript&quot;,&quot;disabled_processors&quot;:[&quot;none&quot;]},{&quot;id&quot;:&quot;analyze_js&quot;,&quot;type&quot;:&quot;analyze&quot;,&quot;name&quot;:&quot;Analyze JavaScript&quot;},{&quot;id&quot;:&quot;maximize_js_editor&quot;,&quot;type&quot;:&quot;maximize&quot;,&quot;name&quot;:&quot;Maximize JavaScript Editor&quot;},{&quot;id&quot;:&quot;minimize_js_editor&quot;,&quot;type&quot;:&quot;minimize&quot;,&quot;name&quot;:&quot;Minimize JavaScript Editor&quot;},{&quot;id&quot;:&quot;fold_all_js&quot;,&quot;type&quot;:&quot;fold_all&quot;,&quot;name&quot;:&quot;Fold All&quot;},{&quot;id&quot;:&quot;unfold_all_js&quot;,&quot;type&quot;:&quot;unfold_all&quot;,&quot;name&quot;:&quot;Unfold All&quot;}],&quot;processors&quot;:[{&quot;id&quot;:&quot;none&quot;,&quot;name&quot;:&quot;None&quot;},{&quot;id&quot;:&quot;babel&quot;,&quot;name&quot;:&quot;Babel&quot;},{&quot;id&quot;:&quot;typescript&quot;,&quot;name&quot;:&quot;TypeScript&quot;},{&quot;id&quot;:&quot;coffeescript&quot;,&quot;name&quot;:&quot;CoffeeScript&quot;},{&quot;id&quot;:&quot;livescript&quot;,&quot;name&quot;:&quot;LiveScript&quot;}]}],&quot;formatters&quot;:[{&quot;id&quot;:&quot;classic&quot;,&quot;name&quot;:&quot;Classic&quot;,&quot;runOn&quot;:[{&quot;eventType&quot;:&quot;demand&quot;}],&quot;url&quot;:&quot;https://fi593g2v2a.execute-api.us-west-2.amazonaws.com/production/format&quot;}],&quot;layout&quot;:{&quot;default&quot;:&quot;top&quot;},&quot;linters&quot;:[{&quot;id&quot;:&quot;classic&quot;,&quot;name&quot;:&quot;Classic&quot;,&quot;runOn&quot;:[{&quot;eventType&quot;:&quot;demand&quot;}],&quot;url&quot;:&quot;https://fi593g2v2a.execute-api.us-west-2.amazonaws.com/production/lint&quot;}],&quot;preview&quot;:{&quot;intervalMaxWaitMS&quot;:3500,&quot;intervalMS&quot;:1200},&quot;settings&quot;:[{&quot;id&quot;:&quot;behavior&quot;,&quot;name&quot;:&quot;Behavior&quot;,&quot;type&quot;:&quot;setting&quot;},{&quot;id&quot;:&quot;editor&quot;,&quot;name&quot;:&quot;Editor&quot;,&quot;type&quot;:&quot;setting&quot;}]},&quot;__export_service_url&quot;:&quot;https://codepen.io/api/export&quot;,&quot;__item&quot;:&quot;{\&quot;dependencies\&quot;:{},\&quot;editor_settings\&quot;:{\&quot;auto_run\&quot;:true,\&quot;autocomplete\&quot;:false,\&quot;code_folding\&quot;:true,\&quot;css_pre_processor\&quot;:\&quot;none\&quot;,\&quot;css_prefix\&quot;:\&quot;neither\&quot;,\&quot;css_starter\&quot;:\&quot;neither\&quot;,\&quot;emmet_active\&quot;:true,\&quot;font_size\&quot;:\&quot;14\&quot;,\&quot;font_type\&quot;:\&quot;monaco\&quot;,\&quot;format_on_save\&quot;:false,\&quot;html_pre_processor\&quot;:\&quot;none\&quot;,\&quot;indent_with\&quot;:\&quot;spaces\&quot;,\&quot;js_pre_processor\&quot;:\&quot;none\&quot;,\&quot;key_bindings\&quot;:\&quot;normal\&quot;,\&quot;line_numbers\&quot;:true,\&quot;line_wrapping\&quot;:true,\&quot;match_brackets\&quot;:true,\&quot;snippets\&quot;:{\&quot;markupSnippets\&quot;:{},\&quot;stylesheetSnippets\&quot;:{}},\&quot;tab_size\&quot;:\&quot;2\&quot;,\&quot;theme\&quot;:\&quot;twilight\&quot;,\&quot;id\&quot;:\&quot;wKMBpP\&quot;,\&quot;auto_save\&quot;:true},\&quot;hashid\&quot;:\&quot;wKMBpP\&quot;,\&quot;itemType\&quot;:\&quot;pen\&quot;,\&quot;owner_id\&quot;:\&quot;MQWbNnYdEzGn\&quot;,\&quot;resources\&quot;:[{\&quot;url\&quot;:\&quot;https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.3.14/angular.min.js\&quot;,\&quot;order\&quot;:0,\&quot;resource_type\&quot;:\&quot;js\&quot;,\&quot;par_content\&quot;:\&quot;\&quot;}],\&quot;tags\&quot;:[\&quot;comments\&quot;,\&quot;comment\&quot;,\&quot;angularjs\&quot;],\&quot;id\&quot;:4926124,\&quot;user_id\&quot;:145061,\&quot;html\&quot;:\&quot;&lt;div class=\\\&quot;comments-app\\\&quot; ng-app=\\\&quot;commentsApp\\\&quot; ng-controller=\\\&quot;CommentsController as cmntCtrl\\\&quot;&gt;\\n  &lt;h1&gt;Comments App - AngularJS&lt;/h1&gt;\\n  \\n  &lt;!-- From --&gt;\\n  &lt;div class=\\\&quot;comment-form\\\&quot;&gt;\\n    &lt;!-- Comment Avatar --&gt;\\n    &lt;div class=\\\&quot;comment-avatar\\\&quot;&gt;\\n      &lt;img src=\\\&quot;http://lorempixel.com/200/200/people\\\&quot;&gt;\\n    &lt;/div&gt;\\n\\n    &lt;form class=\\\&quot;form\\\&quot; name=\\\&quot;form\\\&quot; ng-submit=\\\&quot;form.$valid &amp;&amp; cmntCtrl.addComment()\\\&quot; novalidate&gt;\\n      &lt;div class=\\\&quot;form-row\\\&quot;&gt;\\n        &lt;textarea\\n                  class=\\\&quot;input\\\&quot;\\n                  ng-model=\\\&quot;cmntCtrl.comment.text\\\&quot;\\n                  placeholder=\\\&quot;Add comment...\\\&quot;\\n                  required&gt;&lt;/textarea&gt;\\n      &lt;/div&gt;\\n\\n      &lt;div class=\\\&quot;form-row\\\&quot;&gt;\\n        &lt;input\\n               class=\\\&quot;input\\\&quot;\\n               ng-class=\\\&quot;{ disabled: cmntCtrl.comment.anonymous }\\\&quot;\\n               ng-disabled=\\\&quot;cmntCtrl.comment.anonymous\\\&quot;\\n               ng-model=\\\&quot;cmntCtrl.comment.author\\\&quot;\\n               ng-required=\\\&quot;!cmntCtrl.comment.anonymous\\\&quot;\\n               placeholder=\\\&quot;Email\\\&quot;\\n               type=\\\&quot;email\\\&quot;&gt;\\n      &lt;/div&gt;\\n\\n      &lt;div class=\\\&quot;form-row text-right\\\&quot;&gt;\\n        &lt;input\\n               id=\\\&quot;comment-anonymous\\\&quot;\\n               ng-change=\\\&quot;cmntCtrl.anonymousChanged()\\\&quot;\\n               ng-model=\\\&quot;cmntCtrl.comment.anonymous\\\&quot;\\n               type=\\\&quot;checkbox\\\&quot;&gt;\\n        &lt;label for=\\\&quot;comment-anonymous\\\&quot;&gt;Anonymous&lt;/label&gt;\\n      &lt;/div&gt;\\n\\n      &lt;div class=\\\&quot;form-row\\\&quot;&gt;\\n        &lt;input type=\\\&quot;submit\\\&quot; value=\\\&quot;Add Comment\\\&quot;&gt;\\n      &lt;/div&gt;\\n    &lt;/form&gt;\\n  &lt;/div&gt;\\n\\n  &lt;!-- Comments List --&gt;\\n  &lt;div class=\\\&quot;comments\\\&quot;&gt;\\n    &lt;!-- Comment --&gt;\\n    &lt;div class=\\\&quot;comment\\\&quot; ng-repeat=\\\&quot;comment in cmntCtrl.comments | orderBy: &#39;-date&#39;\\\&quot;&gt;\\n      &lt;!-- Comment Avatar --&gt;\\n      &lt;div class=\\\&quot;comment-avatar\\\&quot;&gt;\\n        &lt;img ng-src=\\\&quot;{{ comment.avatarSrc }}\\\&quot;&gt;\\n      &lt;/div&gt;\\n\\n      &lt;!-- Comment Box --&gt;\\n      &lt;div class=\\\&quot;comment-box\\\&quot;&gt;\\n        &lt;div class=\\\&quot;comment-text\\\&quot;&gt;{{ comment.text }}&lt;/div&gt;\\n        &lt;div class=\\\&quot;comment-footer\\\&quot;&gt;\\n          &lt;div class=\\\&quot;comment-info\\\&quot;&gt;\\n            &lt;span class=\\\&quot;comment-author\\\&quot;&gt;\\n              &lt;em ng-if=\\\&quot;comment.anonymous\\\&quot;&gt;Anonymous&lt;/em&gt;\\n              &lt;a ng-if=\\\&quot;!comment.anonymous\\\&quot; href=\\\&quot;{{ comment.author }}\\\&quot;&gt;{{ comment.author }}&lt;/a&gt;\\n            &lt;/span&gt;\\n            &lt;span class=\\\&quot;comment-date\\\&quot;&gt;{{ comment.date | date: &#39;medium&#39; }}&lt;/span&gt;\\n          &lt;/div&gt;\\n\\n          &lt;div class=\\\&quot;comment-actions\\\&quot;&gt;\\n            &lt;a href=\\\&quot;#\\\&quot;&gt;Reply&lt;/a&gt;\\n          &lt;/div&gt;\\n        &lt;/div&gt;\\n      &lt;/div&gt;\\n    &lt;/div&gt;\\n\\n    &lt;!-- Comment - Dummy --&gt;\\n    &lt;div class=\\\&quot;comment\\\&quot;&gt;\\n      &lt;!-- Comment Avatar --&gt;\\n      &lt;div class=\\\&quot;comment-avatar\\\&quot;&gt;\\n        &lt;img src=\\\&quot;http://gravatar.com/avatar/412c0b0ec99008245d902e6ed0b264ee?s=80\\\&quot;&gt;\\n      &lt;/div&gt;\\n\\n      &lt;!-- Comment Box --&gt;\\n      &lt;div class=\\\&quot;comment-box\\\&quot;&gt;\\n        &lt;div class=\\\&quot;comment-text\\\&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto temporibus iste nostrum dolorem natus recusandae incidunt voluptatum.&lt;/div&gt;\\n        &lt;div class=\\\&quot;comment-footer\\\&quot;&gt;\\n          &lt;div class=\\\&quot;comment-info\\\&quot;&gt;\\n            &lt;span class=\\\&quot;comment-author\\\&quot;&gt;\\n              &lt;a href=\\\&quot;mailto:sexar@pagelab.io\\\&quot;&gt;Sexar&lt;/a&gt;\\n            &lt;/span&gt;\\n            &lt;span class=\\\&quot;comment-date\\\&quot;&gt;Feb 2, 2013 11:32:04 PM&lt;/span&gt;\\n          &lt;/div&gt;\\n\\n          &lt;div class=\\\&quot;comment-actions\\\&quot;&gt;\\n            &lt;a href=\\\&quot;#\\\&quot;&gt;Reply&lt;/a&gt;\\n          &lt;/div&gt;\\n        &lt;/div&gt;\\n      &lt;/div&gt;\\n    &lt;/div&gt;\\n\\n    &lt;!-- Comment - Dummy --&gt;\\n    &lt;div class=\\\&quot;comment\\\&quot;&gt;\\n      &lt;!-- Comment Avatar --&gt;\\n      &lt;div class=\\\&quot;comment-avatar\\\&quot;&gt;\\n        &lt;img src=\\\&quot;http://lorempixel.com/200/200/people\\\&quot;&gt;\\n      &lt;/div&gt;\\n\\n      &lt;!-- Comment Box --&gt;\\n      &lt;div class=\\\&quot;comment-box\\\&quot;&gt;\\n        &lt;div class=\\\&quot;comment-text\\\&quot;&gt;Eligendi voluptatum ducimus architecto tempore, quaerat explicabo veniam fuga corporis totam reprehenderit quasi sapiente modi tempora at perspiciatis mollitia, dolores voluptate. Cumque, corrupti?&lt;/div&gt;\\n        &lt;div class=\\\&quot;comment-footer\\\&quot;&gt;\\n          &lt;div class=\\\&quot;comment-info\\\&quot;&gt;\\n            &lt;span class=\\\&quot;comment-author\\\&quot;&gt;\\n              &lt;a href=\\\&quot;mailto:ximme13@somedomain.io\\\&quot;&gt;Ximme&lt;/a&gt;\\n            &lt;/span&gt;\\n            &lt;span class=\\\&quot;comment-date\\\&quot;&gt;Jan 31, 1986 11:32:04 PM&lt;/span&gt;\\n          &lt;/div&gt;\\n\\n          &lt;div class=\\\&quot;comment-actions\\\&quot;&gt;\\n            &lt;a href=\\\&quot;#\\\&quot;&gt;Reply&lt;/a&gt;\\n          &lt;/div&gt;\\n        &lt;/div&gt;\\n      &lt;/div&gt;\\n    &lt;/div&gt;\\n  &lt;/div&gt;\\n&lt;/div&gt;\&quot;,\&quot;css\&quot;:\&quot;* {\\n  box-sizing: border-box;\\n  margin: 0;\\n  padding: 0;\\n\\n  -webkit-box-sizing: border-box;\\n \\t-moz-box-sizing: border-box;\\n}\\n\\nbody{\\n  background-color: #dee1e3;\\n  font-family: \\\&quot;Roboto\\\&quot;, \\\&quot;Tahoma\\\&quot;, \\\&quot;Arial\\\&quot;, sans-serif;,\\n}\\n\\n.text-right{ text-align: right; }\\n\\n.comments-app{\\n  margin: 50px auto;\\n  max-width: 680px;\\n  padding: 0 50px;\\n  width: 100%;\\n}\\n\\n.comments-app h1{\\n  color: #191919;\\n  margin-bottom: 1.5em;\\n  text-align: center;\\n  text-shadow: 0 0 2px rgba(152, 152, 152, 1);\\n}\\n\\n.comment-form{  }\\n.comment-form .comment-avatar{  }\\n\\n.comment-form .form{ margin-left: 100px; }\\n\\n.comment-form .form .form-row{ margin-bottom: 10px; }\\n.comment-form .form .form-row:last-child{ margin-bottom: 0; }\\n\\n.comment-form .form .input{\\n  background-color: #fcfcfc;\\n  border: none;\\n  border-radius: 4px;\\n  box-shadow: 0 1px 1px rgba(0, 0, 0, .15);\\n  color: #555f77;\\n  font-family: inherit;\\n  font-size: 14px;\\n  padding: 5px 10px;\\n  outline: none;\\n  width: 100%;\\n\\n  -webkit-transition: 350ms box-shadow;\\n  -moz-transition: 350ms box-shadow;\\n  -ms-transition: 350ms box-shadow;\\n  -o-transition: 350ms box-shadow;\\n  transition: 350ms box-shadow;\\n}\\n\\n.comment-form .form textarea.input{\\n  height: 100px;\\n  padding: 15px;\\n}\\n\\n.comment-form .form label{\\n  color: #555f77;\\n  font-family: inherit;\\n  font-size: 14px;\\n}\\n\\n.comment-form .form input[type=submit]{\\n  background-color: #555f77;\\n  border: none;\\n  border-radius: 4px;\\n  box-shadow: 0 1px 1px rgba(0, 0, 0, .15);\\n  color: #fff;\\n  cursor: pointer;\\n  display: block;\\n  margin-left: auto;\\n  outline: none;\\n  padding: 6px 15px;\\n\\n  -webkit-transition: 350ms box-shadow;\\n  -moz-transition: 350ms box-shadow;\\n  -ms-transition: 350ms box-shadow;\\n  -o-transition: 350ms box-shadow;\\n  transition: 350ms box-shadow;\\n}\\n\\n.comment-form .form .input:focus,\\n.comment-form .form input[type=submit]:focus,\\n.comment-form .form input[type=submit]:hover{\\n  box-shadow: 0 2px 6px rgba(121, 137, 148, .55);\\n}\\n\\n.comment-form .form.ng-submitted .input.ng-invalid,\\n.comment-form .form .input.ng-dirty.ng-invalid{\\n  box-shadow: 0 2px 6px rgba(212, 47, 47, .55) !important;\\n}\\n\\n.comment-form .form .input.disabled {\\n    background-color: #E8E8E8;\\n}\\n\\n\\n.comments{  }\\n\\n.comment-form,\\n.comment{\\n  margin-bottom: 20px;\\n  position: relative;\\n  z-index: 0;\\n}\\n\\n.comment-form .comment-avatar,\\n.comment .comment-avatar{\\n  border: 2px solid #fff;\\n  border-radius: 50%;\\n  box-shadow: 0 1px 2px rgba(0, 0, 0, .2);\\n  height: 80px;\\n  left: 0;\\n  overflow: hidden;\\n  position: absolute;\\n  top: 0;\\n  width: 80px;\\n}\\n\\n.comment-form .comment-avatar img,\\n.comment .comment-avatar img{\\n  display: block;\\n  height: auto;\\n  width: 100%;\\n}\\n\\n.comment .comment-box{\\n  background-color: #fcfcfc;\\n  border-radius: 4px;\\n  box-shadow: 0 1px 1px rgba(0, 0, 0, .15);\\n  margin-left: 100px;\\n  min-height: 60px;\\n  position: relative;\\n  padding: 15px;\\n}\\n\\n.comment .comment-box:before,\\n.comment .comment-box:after{\\n  border-width: 10px 10px 10px 0;\\n  border-style: solid;\\n  border-color: transparent #FCFCFC;\\n  content: \\\&quot;\\\&quot;;\\n  left: -10px;\\n  position: absolute;\\n  top: 20px;\\n}\\n\\n.comment .comment-box:before{\\n  border-color: transparent rgba(0, 0, 0, .05);\\n   top: 22px;\\n}\\n\\n.comment .comment-text{\\n  color: #555f77;\\n  font-size: 15px;\\n  margin-bottom: 25px;\\n}\\n\\n.comment .comment-footer{\\n  color: #acb4c2;\\n  font-size: 13px;\\n}\\n\\n.comment .comment-footer:after{\\n  content: \\\&quot;\\\&quot;;\\n  display: table;\\n  clear: both;\\n}\\n\\n.comment .comment-footer a{\\n  color: #acb4c2;\\n  text-decoration: none;\\n\\n  -webkit-transition: 350ms color;\\n  -moz-transition: 350ms color;\\n  -ms-transition: 350ms color;\\n  -o-transition: 350ms color;\\n  transition: 350ms color;\\n}\\n\\n.comment .comment-footer a:hover{\\n  color: #555f77;\\n  text-decoration: underline;\\n}\\n\\n.comment .comment-info{\\n  float: left;\\n  width: 85%;\\n}\\n\\n.comment .comment-author{ }\\n.comment .comment-date{ }\\n\\n.comment .comment-date:before{\\n  content: \\\&quot;|\\\&quot;;\\n  margin: 0 10px;\\n}\\n\\n.comment-actions{\\n  float: left;\\n  text-align: right;\\n  width: 15%;\\n}\\n\&quot;,\&quot;parent\&quot;:0,\&quot;js\&quot;:\&quot;(function(){\\n  &#39;use strict&#39;;\\n  \\n  angular\\n    .module(&#39;commentsApp&#39;, [])\\n    .controller(&#39;CommentsController&#39;, CommentsController);\\n  \\n  // Inject $scope dependency.\\n  CommentsController.$inject = [&#39;$scope&#39;];\\n  \\n  // Declare CommentsController.\\n  function CommentsController($scope) {\\n    var vm = this;\\n    \\n    // Current comment.\\n    vm.comment = {};\\n\\n    // Array where comments will be.\\n    vm.comments = [];\\n\\n    // Fires when form is submited.\\n    vm.addComment = function() {\\n      // Fixed img.\\n      vm.comment.avatarSrc = &#39;http://lorempixel.com/200/200/people/&#39;;\\n\\n      // Add current date to the comment.\\n      vm.comment.date = Date.now();\\n\\n      vm.comments.push( vm.comment );\\n      vm.comment = {};\\n\\n      // Reset clases of the form after submit.\\n      $scope.form.$setPristine();\\n    }\\n\\n    // Fires when the comment change the anonymous state.\\n    vm.anonymousChanged = function(){\\n      if(vm.comment.anonymous)\\n        vm.comment.author = \\\&quot;\\\&quot;;\\n    }\\n  }\\n\\n})();\\n\&quot;,\&quot;html_pre_processor\&quot;:\&quot;none\&quot;,\&quot;css_pre_processor\&quot;:\&quot;none\&quot;,\&quot;js_pre_processor\&quot;:\&quot;none\&quot;,\&quot;html_classes\&quot;:\&quot;\&quot;,\&quot;css_starter\&quot;:\&quot;neither\&quot;,\&quot;css_prefix_free\&quot;:null,\&quot;css_external\&quot;:null,\&quot;js_library\&quot;:null,\&quot;js_modernizr\&quot;:null,\&quot;js_external\&quot;:null,\&quot;created_at\&quot;:\&quot;2015-09-13T20:40:29.000Z\&quot;,\&quot;updated_at\&quot;:\&quot;2016-02-21T01:02:34.000Z\&quot;,\&quot;session_hash\&quot;:\&quot;c53a05a0fcec4e360358065798328929\&quot;,\&quot;title\&quot;:\&quot;Comments App - AngularJS\&quot;,\&quot;description\&quot;:\&quot;A simple comment app usgin AngularJS\&quot;,\&quot;slug_hash\&quot;:\&quot;wKMBpP\&quot;,\&quot;head\&quot;:\&quot;\&quot;,\&quot;private\&quot;:false,\&quot;has_animation\&quot;:false,\&quot;css_pre_processor_lib\&quot;:\&quot;\&quot;,\&quot;checksum\&quot;:1309289776,\&quot;screenshot_uuid\&quot;:\&quot;89179526-34c0-4858-9647-7c6188fcdaa0\&quot;,\&quot;team_id\&quot;:0,\&quot;css_prefix\&quot;:\&quot;neither\&quot;,\&quot;template\&quot;:false,\&quot;js_module\&quot;:null,\&quot;pen_hash\&quot;:null}&quot;,&quot;__jwt&quot;:&quot;eyJhbGciOiJIUzI1NiJ9.eyJkYXRhIjp7InBhaWQiOmZhbHNlLCJ0ZWFtX2lkIjoiWWRFekduIiwidXNlcl9pZCI6IlZvRGtOWiIsInVzZXJuYW1lIjoiYW5vbiJ9LCJleHAiOjE1OTk1NDAyOTZ9.2vS430PFTKk3I_3Fea4x1gwvainatUFEiL1ktSOPuOM&quot;,&quot;__layoutType&quot;:null,&quot;__packages_domain&quot;:&quot;https://bundles-development.cdpn.io&quot;,&quot;__packages_enabled&quot;:false,&quot;__pageType&quot;:&quot;pen&quot;,&quot;__preprocessors_url&quot;:&quot;https://wfwf9k3tn7.execute-api.us-west-2.amazonaws.com/production&quot;,&quot;__profiled&quot;:{&quot;base_url&quot;:&quot;/cesar_mejiag&quot;,&quot;hashid&quot;:&quot;MQWbNn&quot;,&quot;id&quot;:145061,&quot;name&quot;:&quot;César Mejía&quot;,&quot;type&quot;:&quot;user&quot;,&quot;username&quot;:&quot;cesar_mejiag&quot;},&quot;__rtData&quot;:&quot;{\&quot;maxMembers\&quot;:0,\&quot;roomID\&quot;:\&quot;wKMBpP/live\&quot;,\&quot;roomType\&quot;:\&quot;live\&quot;,\&quot;updatedAt\&quot;:1456016554,\&quot;user\&quot;:{\&quot;id\&quot;:\&quot;VoDkNZ\&quot;,\&quot;hashid\&quot;:\&quot;VoDkNZ\&quot;,\&quot;name\&quot;:\&quot;Captain Anonymous\&quot;,\&quot;username\&quot;:\&quot;anon\&quot;,\&quot;role\&quot;:\&quot;editor\&quot;}}&quot;,&quot;__embed_modal_script&quot;:&quot;https://static.codepen.io/assets/embed/modal/embed_modal-dc3638e8ad8bf40c6ed07631a433408d52e7d3451d1d12952f9b06906ebd38d6.js&quot;,&quot;__run_mode_script&quot;:&quot;https://static.codepen.io/assets/libs/codemirror/addon/runmode/runmode-bfc439c2e56cc8aa5b0ed0c95c742d64b92d6ec36eb562d881bfefcb020bf614.js&quot;,&quot;__runtime_js&quot;:&quot;https://static.codepen.io/assets/common/runtime-78f7737f2b92b1b279253c92344b93db2bdf0e3193c90dae7d462d102b33c722.js&quot;,&quot;__standalone_run_mode_script&quot;:&quot;https://static.codepen.io/assets/libs/codemirror/addon/runmode/runmode-standalone-86ed18f2f4ca933889b656c3dcd4135af20477c88c764ae92dd139b682a0ab98.js&quot;,&quot;__syntax_highlighting_script&quot;:&quot;https://static.codepen.io/assets/comments/syntax_highlight_comments.js&quot;,&quot;__eijs&quot;:&quot;https://static.codepen.io/assets/embed/ei.js&quot;,&quot;__favicon_mask_icon&quot;:&quot;https://static.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg&quot;,&quot;__favicon_shortcut_icon&quot;:&quot;https://static.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico&quot;,&quot;__path_to_iframe_console_runner&quot;:&quot;https://static.codepen.io/assets/editor/iframe/iframeConsoleRunner-7f4d47902dc785f30dedcac9c996b9f31d4dfcc33567cc48f0431bc918c2bf05.js&quot;,&quot;__path_to_iframe_refresh_css&quot;:&quot;https://static.codepen.io/assets/editor/iframe/iframeRefreshCSS-e03f509ba0a671350b4b363ff105b2eb009850f34a2b4deaadaa63ed5d970b37.js&quot;,&quot;__path_to_iframe_runtime_errors&quot;:&quot;https://static.codepen.io/assets/editor/iframe/iframeRuntimeErrors-29f059e28a3c6d3878960591ef98b1e303c1fe1935197dae7797c017a3ca1e82.js&quot;,&quot;__path_to_processor_worker&quot;:&quot;https://static.codepen.io/assets/packs/router.js&quot;,&quot;__path_to_stop_execution_on_timeout&quot;:&quot;https://static.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js&quot;,&quot;__path_to_webpack_runtime&quot;:&quot;https://static.codepen.io/assets/common/runtime-78f7737f2b92b1b279253c92344b93db2bdf0e3193c90dae7d462d102b33c722.js&quot;,&quot;__pen_normalize_css_url&quot;:&quot;https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css&quot;,&quot;__pen_prefix_free_url&quot;:&quot;https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js&quot;,&quot;__pen_reset_css_url&quot;:&quot;https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css&quot;,&quot;__cdn_css_url&quot;:&quot;https://static.codepen.io/assets/editor/other/cdn/cdncss_data-3920a09dad6d4fc8f26388543dd6e897701bb9eb7adad7644001579fa97c3bcc.json&quot;,&quot;__cdn_js_url&quot;:&quot;https://static.codepen.io/assets/editor/other/cdn/cdnjs_data-d48ecfb6f69488f4fd036843964b79819dab4f33a0ef800d8e3362688252e672.json&quot;,&quot;__theme_url_twilight&quot;:&quot;https://static.codepen.io/assets/editor/themes/twilight-bbb3d58f8024c27567f788f3990f2dce8754c2b67246bf12ad766768fe51955b.css&quot;,&quot;__theme_url_solarized_dark&quot;:&quot;https://static.codepen.io/assets/editor/themes/solarized-dark-74aa4885fce5e2654a252ce5d046a231528fa7d0bab4a6da9335f61f75641a24.css&quot;,&quot;__theme_url_tomorrow_night&quot;:&quot;https://static.codepen.io/assets/editor/themes/tomorrow-night-d40615974321d1e903d870a0feb427a925a3aaa6710a856a012cb5feb317de06.css&quot;,&quot;__theme_url_oceanic_dark&quot;:&quot;https://static.codepen.io/assets/editor/themes/oceanic-dark-6819a04bdb142273008450549c44fae26e7e75bc5e8ca6d8a78d3bdca2e14057.css&quot;,&quot;__theme_url_panda&quot;:&quot;https://static.codepen.io/assets/editor/themes/panda-00401281f2fb82904fcc5bdf9ccdade7866b7674181a06b0f26ee6fc591aed29.css&quot;,&quot;__theme_url_duotone_dark&quot;:&quot;https://static.codepen.io/assets/editor/themes/duotone-dark-6f36080c52f085d1c4b7aa50e7eeb8e9bae96206fa22c6aa4e536db129ed7f47.css&quot;,&quot;__theme_url_highcontrast_dark&quot;:&quot;https://static.codepen.io/assets/editor/themes/highcontrast-dark-6fac7534892153b41a69be61dcfbd27dacbe6f3359e73912fea94614a283be8e.css&quot;,&quot;__theme_url_classic&quot;:&quot;https://static.codepen.io/assets/editor/themes/classic-d7cab86e6d3da60d8cc880622136b2b12354fcb6d74dbf8fa7344b4e2c8c7a07.css&quot;,&quot;__theme_url_solarized_light&quot;:&quot;https://static.codepen.io/assets/editor/themes/solarized-light-5e319a816752c9f0b7caed1d6d7ef1c46dd9b4a6c880aae4330e995a66da8740.css&quot;,&quot;__theme_url_xq_light&quot;:&quot;https://static.codepen.io/assets/editor/themes/xq-light-ff587a13ad3689cf47ce4efaeef9ba5a4693ca8f8b7cdc795207f5cbcefa93fc.css&quot;,&quot;__theme_url_oceanic_light&quot;:&quot;https://static.codepen.io/assets/editor/themes/oceanic-light-7bc150e27e7d7bd775ee1f1a6ee5a77e6fbe19cbeacf078ccb4023ae81c0f834.css&quot;,&quot;__theme_url_mdn_like&quot;:&quot;https://static.codepen.io/assets/editor/themes/mdn-like-b6d8af50e237d6feac2a7c152f479999705d5a33e6a9512f6ce366cc77979855.css&quot;,&quot;__theme_url_duotone_light&quot;:&quot;https://static.codepen.io/assets/editor/themes/duotone-light-3c888339133e6ccf10476b8000003491cc4cf6d09c84a49ba1d60b678544e358.css&quot;,&quot;__theme_url_highcontrast_light&quot;:&quot;https://static.codepen.io/assets/editor/themes/highcontrast-light-48ad69bb14f1618e8908352ea7101f66afecd53f3fd15002116f1e232ce43125.css&quot;,&quot;__theme_url_scoped_twilight&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/twilight-440b9df51ecbe6257384600a5ea09c8ac33a9d860e15d950190a11d4f82f7909.css&quot;,&quot;__theme_url_scoped_solarized_dark&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/solarized-dark-4b456e5e71195d8d9c8e5f060722d5f9fb908be40147ff5159851a72051f3747.css&quot;,&quot;__theme_url_scoped_tomorrow_night&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/tomorrow-night-8b26461b91055f2cd4c7bebebb26b97807e33048c46f80d53d4ade465fe11c71.css&quot;,&quot;__theme_url_scoped_oceanic_dark&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/oceanic-dark-a36b8ac5408ac81f9dea080ce5fb9ddd71537448b2c20f46e5145fb96ed1db62.css&quot;,&quot;__theme_url_scoped_panda&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/panda-16542061ba4c8158eef01aaa0bc82eda10310b37aa85985e27eb6d49f44b34ea.css&quot;,&quot;__theme_url_scoped_duotone_dark&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/duotone-dark-f8ac6d0ba133460720598e2476004dae25eb6dc631e181b558555ed4a1c62b9e.css&quot;,&quot;__theme_url_scoped_highcontrast_dark&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/highcontrast-dark-1f760b46f811648ea7a58a89f7d3b174b3c2733fa00ab78dc56b81fcd27ae137.css&quot;,&quot;__theme_url_scoped_classic&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/classic-e4128896151af1d515c6553eaeb67043bb53a354c2e49a25ed2b25de526710da.css&quot;,&quot;__theme_url_scoped_solarized_light&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/solarized-light-2527ff5d4dbff7c38a474d4dfab0a39a303cddb0fb64daccb85303533c5f99fc.css&quot;,&quot;__theme_url_scoped_xq_light&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/xq-light-5d0c8647757fcd697ee1c1f5d39edb372193e87bb402d0d4a9866d87cdc089ab.css&quot;,&quot;__theme_url_scoped_oceanic_light&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/oceanic-light-df8f48b79b5c783af47cf585b78a9b06801b89754ddfd18ed48e0af50fb09d80.css&quot;,&quot;__theme_url_scoped_mdn_like&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/mdn-like-e3435649da66454bfb7a84146034426aee6a1ed661170537eb120108125109b4.css&quot;,&quot;__theme_url_scoped_duotone_light&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/duotone-light-44c77e7ad84a7326ec3c070c6a2e30bc81677da2cb8752683499eb9ae659073b.css&quot;,&quot;__theme_url_scoped_highcontrast_light&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/highcontrast-light-001750c2a4a8eaba783e4bd98b0df57d07a9ca269377ce161d1c54e12a5a66ff.css&quot;}">
	<script
		src="https://static.codepen.io/assets/common/browser_support-1963aa6406ae47d3176af996336c5d219acd8913c5af309e72f18933e95201cc.js"></script>
	<script
		src="https://static.codepen.io/assets/common/everypage-a63f0cbd5f67116206c89108a0a1da6978ab1606d953812d875b800cf8fe823e.js"></script>
	<script
		src="https://static.codepen.io/assets/common/analytics_and_notifications-538ab2710674d4676fe331ffda620410176f9ac968498eeba639b3f0d1125ff8.js"></script>
	<script>
		LUX = (function() {
			var a = ("undefined" !== typeof (LUX)
					&& "undefined" !== typeof (LUX.gaMarks) ? LUX.gaMarks : []);
			var d = ("undefined" !== typeof (LUX)
					&& "undefined" !== typeof (LUX.gaMeasures) ? LUX.gaMeasures
					: []);
			var j = "LUX_start";
			var k = window.performance;
			var l = ("undefined" !== typeof (LUX) && LUX.ns ? LUX.ns
					: (Date.now ? Date.now() : +(new Date())));
			if (k && k.timing && k.timing.navigationStart) {
				l = k.timing.navigationStart
			}
			function f() {
				if (k && k.now) {
					return k.now()
				}
				var o = Date.now ? Date.now() : +(new Date());
				return o - l
			}
			function b(n) {
				if (k) {
					if (k.mark) {
						return k.mark(n)
					} else {
						if (k.webkitMark) {
							return k.webkitMark(n)
						}
					}
				}
				a.push({
					name : n,
					entryType : "mark",
					startTime : f(),
					duration : 0
				});
				return
			}
			function m(p, t, n) {
				if ("undefined" === typeof (t) && h(j)) {
					t = j
				}
				if (k) {
					if (k.measure) {
						if (t) {
							if (n) {
								return k.measure(p, t, n)
							} else {
								return k.measure(p, t)
							}
						} else {
							return k.measure(p)
						}
					} else {
						if (k.webkitMeasure) {
							return k.webkitMeasure(p, t, n)
						}
					}
				}
				var r = 0, o = f();
				if (t) {
					var s = h(t);
					if (s) {
						r = s.startTime
					} else {
						if (k && k.timing && k.timing[t]) {
							r = k.timing[t] - k.timing.navigationStart
						} else {
							return
						}
					}
				}
				if (n) {
					var q = h(n);
					if (q) {
						o = q.startTime
					} else {
						if (k && k.timing && k.timing[n]) {
							o = k.timing[n] - k.timing.navigationStart
						} else {
							return
						}
					}
				}
				d.push({
					name : p,
					entryType : "measure",
					startTime : r,
					duration : (o - r)
				});
				return
			}
			function h(n) {
				return c(n, g())
			}
			function c(p, o) {
				for (i = o.length - 1; i >= 0; i--) {
					var n = o[i];
					if (p === n.name) {
						return n
					}
				}
				return undefined
			}
			function g() {
				if (k) {
					if (k.getEntriesByType) {
						return k.getEntriesByType("mark")
					} else {
						if (k.webkitGetEntriesByType) {
							return k.webkitGetEntriesByType("mark")
						}
					}
				}
				return a
			}
			return {
				mark : b,
				measure : m,
				gaMarks : a,
				gaMeasures : d
			}
		})();
		LUX.ns = (Date.now ? Date.now() : +(new Date()));
		LUX.ac = [];
		LUX.cmd = function(a) {
			LUX.ac.push(a)
		};
		LUX.init = function() {
			LUX.cmd([ "init" ])
		};
		LUX.send = function() {
			LUX.cmd([ "send" ])
		};
		LUX.addData = function(a, b) {
			LUX.cmd([ "addData", a, b ])
		};
		LUX_ae = [];
		window.addEventListener("error", function(a) {
			LUX_ae.push(a)
		});
		LUX_al = [];
		if ("function" === typeof (PerformanceObserver)
				&& "function" === typeof (PerformanceLongTaskTiming)) {
			var LongTaskObserver = new PerformanceObserver(function(c) {
				var b = c.getEntries();
				for (var a = 0; a < b.length; a++) {
					var d = b[a];
					LUX_al.push(d)
				}
			});
			try {
				LongTaskObserver.observe({
					type : [ "longtask" ]
				})
			} catch (e) {
			}
		};
	</script>
	<script src="https://cdn.speedcurve.com/js/lux.js?id=410041" async
		defer crossorigin="anonymous"></script>
	<script
		src="https://static.codepen.io/assets/packs/js/vendor-e873aa04f486f4ea03bc.chunk.js"></script>
	<script
		src="https://static.codepen.io/assets/packs/js/2-f12fa60ec3f4fa31b47e.chunk.js"></script>
	<script
		src="https://static.codepen.io/assets/packs/js/everypage-b2d2f342c3bbf4c6ae2a.js"></script>
	<script
		src="https://static.codepen.io/assets/packs/js/vendor-e873aa04f486f4ea03bc.chunk.js"></script>
	<script
		src="https://static.codepen.io/assets/packs/js/firebaseConnectLibs-09c7be821edd4a2bfc19.js"></script>
	<script
		src="https://static.codepen.io/assets/packs/js/processorRouter-c16e41168d7bfb0a7051.js"></script>
	<script
		src="https://static.filestackapi.com/filestack-js/3.x.x/filestack.min.js"></script>
	<script
		src="https://static.codepen.io/assets/editor/global/commonLibs-9baf61da2f0b1adbfdbda1a98aa009379eddc23641e45edf6d5c41f98fe361d0.js"></script>
	<script
		src="https://static.codepen.io/assets/editor/global/codemirror-c4c6f5379377e67f3e79161513066c5c491a47a393cd3e5669c9d3f40cee44fe.js"></script>
	<script
		src="https://static.codepen.io/assets/libs/emmet-codemirror-plugin-4eb895d546572aaa83c328e8766ad12bff808dc4115466de4baab2f025c13b6a.js"></script>
	<script
		src="https://static.codepen.io/assets/editor/pen/index-a2556251abdb66c32fe9f16f83ec5a6749666f58d0a752106032fc762ec2fb26.js"></script>
</body>
</html>
