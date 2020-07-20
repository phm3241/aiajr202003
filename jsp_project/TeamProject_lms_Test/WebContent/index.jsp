<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lte IE 9]>
<html class="ie" lang="en">
<![endif]-->
<!--[if gt IE 9]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="UTF-8">
<title>Notion split screen</title>
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="@CodePen">
<meta name="twitter:title" content="Notion split screen">
<meta name="twitter:description"
	content="Turn on “Split screen”  in database settings to open child pages side by side with their parent, not in modal views. Full case: https://twitter.com/and...">
<meta name="twitter:image"
	content="https://assets.codepen.io/1703172/internal/screenshots/pens/zQXagN.default.png?format=auto&amp;ha=false&amp;height=720&amp;quality=75&amp;v=1&amp;version=1563984916&amp;width=1279">
<meta name="twitter:creator" content="@andgordy">
<meta property="og:image"
	content="https://assets.codepen.io/1703172/internal/screenshots/pens/zQXagN.default.png?format=auto&amp;ha=false&amp;height=720&amp;quality=75&amp;v=1&amp;version=1563984916&amp;width=1279"
	itemprop="thumbnailUrl">
<meta property="og:title" content="Notion split screen">
<meta property="og:url"
	content="https://codepen.io/andgordy/details/zQXagN">
<meta property="og:site_name" content="CodePen">
<meta property="og:description"
	content="Turn on “Split screen”  in database settings to open child pages side by side with their parent, not in modal views. Full case: https://twitter.com/and...">
<link rel="alternate" type="application/json+oembed"
	href="https://codepen.io/api/oembed?url=https%3A%2F%2Fcodepen.io%2Fandgordy%2Fpen%2FzQXagN&format=json"
	title="Notion split screen" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,400italic,700,700italic,900,900italic"
	rel="stylesheet" />
<link rel="stylesheet" media="all"
	href="https://static.codepen.io/assets/global/global-88e23e28dcf2e140c0f59458e112cbdede91289a3d5a8aa1c991bf2fd1b759ee.css" />
<link rel="stylesheet" media="screen"
	href="https://static.codepen.io/assets/packs/css/everypage-cce3091a.css" />
<link rel="stylesheet" media="all"
	href="https://static.codepen.io/assets/editor/editor-acc5678cb077a838570eb7676a2803e471aa63a4726f5c411fe334d997dc0458.css" />
<meta name="description"
	content="Turn on “Split screen”  in database settings to open child pages side by side with their parent, not in modal views. Full case: https://twitter.com/and...">
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
	content="WGPaWTZ69v87S7Qr/4+XP6iN/X0quwR8OUgpOrT3pbzspqotmcjILhGJ60HUPo5cgvg8kXyJWGw0a7zNBChYsA==" />
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
<use xlink:href="/svg_sprite?v=bbd832a9#x"></use>
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
<use xlink:href="/svg_sprite?v=bbd832a9#help"></use>
</svg>
						<div class="help-flyout help-flyout-reverse">
							<h5>About HTML Preprocessors</h5>
							<svg class="icon-x">
<use xlink:href="/svg_sprite?v=bbd832a9#x"></use>
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
<use xlink:href="/svg_sprite?v=bbd832a9#arrow-down-mini"></use>
</svg>
							<svg class="icon-arrow-down-mini">
<use xlink:href="/svg_sprite?v=bbd832a9#arrow-down-mini"></use>
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
<use xlink:href="/svg_sprite?v=bbd832a9#help"></use>
</svg>
						<div class="help-flyout help-flyout-reverse">
							<h5>Adding Classes</h5>
							<svg class="icon-x">
<use xlink:href="/svg_sprite?v=bbd832a9#x"></use>
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
<use xlink:href="/svg_sprite?v=bbd832a9#help"></use>
</svg>
						<div class="help-flyout help-flyout-reverse">
							<h5>About the &lt;head></h5>
							<svg class="icon-x">
<use xlink:href="/svg_sprite?v=bbd832a9#x"></use>
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
											xlink:href="/svg_sprite?v=bbd832a9#x"></use>
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
<use xlink:href="/svg_sprite?v=bbd832a9#help"></use>
</svg>
						<div class="help-flyout help-flyout-reverse">
							<h5>About CSS Preprocessors</h5>
							<svg class="icon-x">
<use xlink:href="/svg_sprite?v=bbd832a9#x"></use>
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
<use xlink:href="/svg_sprite?v=bbd832a9#arrow-down-mini"></use>
</svg>
							<svg class="icon-arrow-down-mini">
<use xlink:href="/svg_sprite?v=bbd832a9#arrow-down-mini"></use>
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
<use xlink:href="/svg_sprite?v=bbd832a9#help"></use>
</svg>
						<div class="help-flyout help-flyout-reverse">
							<h5>About CSS Base</h5>
							<svg class="icon-x">
<use xlink:href="/svg_sprite?v=bbd832a9#x"></use>
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
<use xlink:href="/svg_sprite?v=bbd832a9#help"></use>
</svg>
						<div class="help-flyout help-flyout-reverse">
							<h5>About Vendor Prefixing</h5>
							<svg class="icon-x">
<use xlink:href="/svg_sprite?v=bbd832a9#x"></use>
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
<use xlink:href="/svg_sprite?v=bbd832a9#mag"></use>
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
<use xlink:href="/svg_sprite?v=bbd832a9#help"></use>
</svg>
						<div class="help-flyout help-flyout-reverse">
							<h5>About External Resources</h5>
							<svg class="icon-x">
<use xlink:href="/svg_sprite?v=bbd832a9#x"></use>
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
<use xlink:href="/svg_sprite?v=bbd832a9#help"></use>
</svg>
							<div class="help-flyout help-flyout-reverse">
								<h5>About JavaScript Preprocessors</h5>
								<svg class="icon-x" width="12" height="12">
<use xlink:href="/svg_sprite?v=bbd832a9#x"></use>
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
<use xlink:href="/svg_sprite?v=bbd832a9#arrow-down-mini"></use>
</svg>
								<svg class="icon-arrow-down-mini">
<use xlink:href="/svg_sprite?v=bbd832a9#arrow-down-mini"></use>
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
<use xlink:href="/svg_sprite?v=bbd832a9#mag"></use>
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
<use xlink:href="/svg_sprite?v=bbd832a9#help"></use>
</svg>
							<div class="help-flyout help-flyout-reverse">
								<h5>About External Resources</h5>
								<svg class="icon-x" width="12" height="12">
<use xlink:href="/svg_sprite?v=bbd832a9#x"></use>
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
										href="https://blog.codepen.io/documentation/editor/adding-external-resources/"
										target="_blank">Learn more</a>
								</p>
							</div>
						</div>
						<div id="js-external-resources" class="external-resource-wrapper">
						</div>
						<script id="js-external-resources-template" type="text/template">
 
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
<use xlink:href="/svg_sprite?v=bbd832a9#arrow-down-mini"></use>
</svg>
								<svg class="icon-arrow-down-mini">
<use xlink:href="/svg_sprite?v=bbd832a9#arrow-down-mini"></use>
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
<use xlink:href="/svg_sprite?v=bbd832a9#gear"></use>
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
<use xlink:href="/svg_sprite?v=bbd832a9#arrow-down-mini"></use>
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
                &lt;div id=&quot;app&quot; class=&quot;text-black antialiased&quot;&gt;
  &lt;div class=&quot;flex w-screen&quot; style=&quot;max-width: 100vw;&quot;&gt;
    &lt;!-- MAIN CONTENT --&gt;
    &lt;div class=&quot;h-screen flex flex-col flex-1 overflow-scroll&quot;
         v-if=&quot;!doShowFullScreenActors&quot;&gt;
      &lt;!-- Header --&gt;
      &lt;div class=&quot;h-10 flex px-3 items-center&quot;&gt;
        &lt;div class=&quot;w-3 h-3 mr-1 bg-gray-300 rounded-full&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;w-3 h-3 mr-1 bg-gray-300 rounded-full&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;w-3 h-3 mr-2 bg-gray-300 rounded-full&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mx-1 px-1 w-5 h-5 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
        &lt;button class=&quot;px-2 ion-md-arrow-back text-xl rounded text-gray-400&quot;&gt;&lt;/button&gt;
        &lt;button class=&quot;px-2 ion-md-arrow-forward text-xl rounded text-gray-400&quot;&gt;&lt;/button&gt;
        &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;text-gray-400&quot;&gt;/&lt;/div&gt;
        &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;flex-1&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mx-1 px-1 w-5 h-5 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
      &lt;/div&gt;
      &lt;!-- Content --&gt;
      &lt;div class=&quot;flex-1 flex&quot;&gt;
        &lt;div class=&quot;flex-1 px-8&quot; :class=&quot;{&#39;px-16&#39;: !doShowProjectDetails &amp;&amp; !doShowActorDetails}&quot;&gt;
          &lt;div class=&quot;h-16&quot;&gt;&lt;/div&gt;
          &lt;div class=&quot;text-3xl font-bold&quot;&gt;The Camera-Stylo&lt;/div&gt;
          &lt;!-- Table --&gt;
          &lt;div&gt;
            &lt;!-- table controls --&gt;
            &lt;div class=&quot;flex items-center border-b py-2 mt-3&quot;&gt;
              &lt;div class=&quot;text-lg font-semibold mr-2&quot;&gt;Films&lt;/div&gt;
              &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
              &lt;div class=&quot;flex-1&quot;&gt;&lt;/div&gt;
              &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
              &lt;div class=&quot;mx-1 px-1 w-5 h-5 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
              &lt;button class=&quot;ion-ios-more text-xl text-gray-600 mx-1 px-2 hover:bg-gray-200 rounded&quot; @click=&quot;doShowMoreMenu = true&quot;&gt;&lt;/button&gt;
              &lt;!-- more menu --&gt;
              &lt;div class=&quot;relative&quot;&gt;
                &lt;div class=&quot;fixed top-0 left-0 h-screen w-screen bg-white&quot; style=&quot;opacity: 0.01&quot; v-if=&quot;doShowMoreMenu&quot; @click=&quot;doShowMoreMenu = false&quot;&gt;&lt;/div&gt;
                &lt;div v-if=&quot;doShowMoreMenu&quot;
                     class=&quot;absolute bg-white w-48 shadow rounded text-sm&quot;
                     style=&quot;right: -12px; top: -32px;&quot;&gt;
                  &lt;div class=&quot;mx-3 px-1 my-3 w-24 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
                  &lt;div class=&quot;mx-3 px-1 my-3 w-16 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
                  &lt;div class=&quot;mx-3 px-1 my-3 w-16 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
                  &lt;div class=&quot;mx-3 px-1 my-3 w-24 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
                  &lt;div class=&quot;flex items-center px-3 py-1 border-t border-b hover:bg-gray-200 cursor-pointer&quot; @click=&quot;isInSidebarMode = !isInSidebarMode&quot;&gt;
                    &lt;div&gt;Split-screen&lt;/div&gt;
                    &lt;div class=&quot;flex-1&quot;&gt;&lt;/div&gt;
                    &lt;div class=&quot;w-8 h-5 bg-gray-400 rounded-full flex&quot; :class=&quot;{&#39;justify-end bg-blue-500&#39;: isInSidebarMode}&quot;&gt;
                      &lt;div class=&quot;h-5 w-5 rounded-full bg-white border-2 border-gray-400&quot; :class=&quot;{&#39;border-blue-500&#39;: isInSidebarMode}&quot;&gt;&lt;/div&gt;
                    &lt;/div&gt;
                  &lt;/div&gt;
                  &lt;div class=&quot;mx-3 px-1 my-3 w-16 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
                  &lt;div class=&quot;mx-3 px-1 my-3 w-24 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
                &lt;/div&gt;
              &lt;/div&gt;
              &lt;div class=&quot;mx-1 px-1 w-12 h-6 bg-blue-400 rounded&quot;&gt;&lt;/div&gt;
            &lt;/div&gt;
            &lt;!-- table header --&gt;
            &lt;div class=&quot;flex border-b text-sm&quot;&gt;
              &lt;div class=&quot;flex-1 px-2 border-r py-3&quot;&gt;
                &lt;div class=&quot;w-16 h-2 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
              &lt;/div&gt;
              &lt;div class=&quot;flex-1 px-2 border-r py-3&quot;&gt;
                &lt;div class=&quot;w-16 h-2 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
              &lt;/div&gt;
              &lt;div class=&quot;flex-1 px-2 py-3&quot;&gt;
                &lt;div class=&quot;w-16 h-2 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
              &lt;/div&gt;
              &lt;div class=&quot;w-4&quot;&gt;&lt;/div&gt;
            &lt;/div&gt;
            &lt;!-- table content --&gt;
            &lt;div v-for=&quot;project, i in projects&quot;
                 class=&quot;flex border-b text-sm group items-center&quot;
                 :class=&quot;{&#39;hover:bg-gray-200 cursor-pointer&#39;: isInSidebarMode, &#39;bg-gray-200&#39;: selectedProject === i}&quot;
                 @click=&quot;rowPressed(i)&quot;&gt;
                &lt;div class=&quot;flex-1 px-2 border-r py-2 flex item-center group &quot;&gt;
                  &lt;div class=&quot;flex-1&quot;&gt;{{project.name}}&lt;/div&gt;
                  &lt;button class=&quot;uppercase text-xs border rounded px-1 hidden group-hover-block&quot; @click=&quot;openPressed(i)&quot; v-if=&quot;!isInSidebarMode&quot;&gt;Open&lt;/button&gt;
                &lt;/div&gt;
                &lt;div class=&quot;flex-1 px-2 border-r py-2&quot;
                     :class=&quot;{&#39;hover:bg-gray-200 cursor-pointer&#39;: !isInSidebarMode}&quot;&gt;{{project.year}}&lt;/div&gt;
                &lt;div class=&quot;flex-1 px-2 py-2&quot;
                     :class=&quot;{&#39;hover:bg-gray-200 cursor-pointer&#39;: !isInSidebarMode}&quot;&gt;{{project.director}}&lt;/div&gt;
                &lt;div class=&quot;w-4&quot;&gt;
                  &lt;div class=&quot;ion-ios-arrow-forward text-gray-700 hidden group-hover-block pl-1&quot; v-if=&quot;isInSidebarMode&quot;&gt;&lt;/div&gt;
                &lt;/div&gt;
              &lt;/div&gt;
          &lt;/div&gt;
        &lt;/div&gt;
      &lt;/div&gt;
    &lt;/div&gt;
    &lt;!-- SIDEBAR 1 --&gt;
    &lt;div class=&quot;h-screen flex flex-col flex-1 overflow-scroll&quot;
         :class=&quot;{&#39;border-l&#39;: !doShowFullScreenActors}&quot;
         v-if=&quot;doShowProjectDetails &amp;&amp; isInSidebarMode&quot;&gt;
      &lt;!-- Header --&gt;
      &lt;div class=&quot;h-10 flex px-3 items-center&quot;&gt;
        &lt;button class=&quot;ion-md-close text-xl px-2 text-gray-700 hover:bg-gray-200 rounded&quot; 
                @click=&quot;doShowProjectDetails = false; selectedProject = null;&quot;
                v-if=&quot;!doShowFullScreenActors&quot;&gt;&lt;/button&gt;
        &lt;button class=&quot;ion-md-expand text-xl px-2 text-gray-700 hover:bg-gray-200 rounded mx-2&quot;
                @click=&quot;doShowFullScreenActors = true&quot;
                v-if=&quot;!doShowFullScreenActors&quot;&gt;
        &lt;/button&gt;
        &lt;div class=&quot;flex items-center&quot;
             v-if=&quot;doShowFullScreenActors&quot;&gt;
          &lt;div class=&quot;w-3 h-3 mr-1 bg-gray-300 rounded-full&quot;&gt;&lt;/div&gt;
          &lt;div class=&quot;w-3 h-3 mr-1 bg-gray-300 rounded-full&quot;&gt;&lt;/div&gt;
          &lt;div class=&quot;w-3 h-3 mr-2 bg-gray-300 rounded-full&quot;&gt;&lt;/div&gt;
          &lt;div class=&quot;mx-1 px-1 w-5 h-5 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
        &lt;/div&gt;
        &lt;button class=&quot;px-2 ion-md-arrow-back text-xl rounded text-gray-400&quot;
                :class=&quot;{&#39;text-gray-700&#39;: doShowFullScreenActors, &#39;hover:bg-gray-200&#39;: doShowFullScreenActors}&quot;
                @click=&quot;backPressedActors()&quot;&gt;&lt;/button&gt;
        &lt;button class=&quot;px-2 ion-md-arrow-forward text-xl rounded text-gray-400&quot;&gt;&lt;/button&gt;
        &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;text-gray-400&quot;&gt;/&lt;/div&gt;
        &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;flex-1&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mx-1 px-1 w-5 h-5 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
      &lt;/div&gt;
      &lt;!-- Sidebar content --&gt;
      &lt;div class=&quot;flex-1 overflow-scroll&quot;&gt;
        &lt;div class=&quot;h-56 bg-cover bg-center&quot; :style=&quot;{backgroundImage: &#39;url(&#39;+ projects[selectedProject].cover + &#39;)&#39;}&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;px-8&quot; :class=&quot;{&#39;px-16&#39;: doShowFullScreenActors &amp;&amp; !doShowActorDetails}&quot;&gt;
          &lt;div class=&quot;text-3xl font-bold mb-3 mt-5&quot;&gt;{{projects[selectedProject].name}}&lt;/div&gt;
          &lt;!-- properties --&gt;
          &lt;div class=&quot;border-b pb-4 mb-4&quot;&gt;
            &lt;div class=&quot;flex items-center&quot;&gt;
              &lt;div class=&quot;w-24&quot;&gt;
                &lt;div class=&quot;mx-1 px-1 w-16 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
              &lt;/div&gt;
              &lt;div&gt;
                {{projects[selectedProject].year}}
              &lt;/div&gt;
            &lt;/div&gt;
            &lt;div class=&quot;flex items-center&quot;&gt;
              &lt;div class=&quot;w-24&quot;&gt;
                &lt;div class=&quot;mx-1 px-1 w-16 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
              &lt;/div&gt;
              &lt;div&gt;
                {{projects[selectedProject].director}}
              &lt;/div&gt;
            &lt;/div&gt;
          &lt;/div&gt;
          &lt;!-- content --&gt;
          &lt;!-- Table --&gt;
          &lt;div class=&quot;pb-8&quot;&gt;
            &lt;!-- table controls --&gt;
            &lt;div class=&quot;flex items-center border-b py-2 mt-3&quot;&gt;
              &lt;div class=&quot;text-lg font-semibold mr-2&quot;&gt;Cast&lt;/div&gt;
              &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
              &lt;div class=&quot;flex-1&quot;&gt;&lt;/div&gt;
              &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
              &lt;div class=&quot;mx-1 px-1 w-5 h-5 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
              &lt;button class=&quot;ion-ios-more text-xl text-gray-600 mx-1 px-2 hover:bg-gray-200 rounded&quot; @click=&quot;doShowMoreMenuActors = true&quot;&gt;&lt;/button&gt;
              &lt;!-- more menu --&gt;
              &lt;div class=&quot;relative&quot;&gt;
                &lt;div class=&quot;fixed top-0 left-0 h-screen w-screen bg-white&quot; style=&quot;opacity: 0.01&quot; v-if=&quot;doShowMoreMenuActors&quot; @click=&quot;doShowMoreMenuActors = false&quot;&gt;&lt;/div&gt;
                &lt;div v-if=&quot;doShowMoreMenuActors&quot;
                     class=&quot;absolute bg-white w-48 shadow rounded text-sm&quot;
                     style=&quot;right: -12px; top: -32px;&quot;&gt;
                  &lt;div class=&quot;mx-3 px-1 my-3 w-24 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
                  &lt;div class=&quot;mx-3 px-1 my-3 w-16 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
                  &lt;div class=&quot;mx-3 px-1 my-3 w-16 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
                  &lt;div class=&quot;mx-3 px-1 my-3 w-24 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
                  &lt;div class=&quot;flex items-center px-3 py-1 border-t border-b hover:bg-gray-200 cursor-pointer&quot; @click=&quot;isInSidebarModeActors = !isInSidebarModeActors&quot;&gt;
                    &lt;div&gt;Split-screen&lt;/div&gt;
                    &lt;div class=&quot;flex-1&quot;&gt;&lt;/div&gt;
                    &lt;div class=&quot;w-8 h-5 bg-gray-400 rounded-full flex&quot; :class=&quot;{&#39;justify-end bg-blue-500&#39;: isInSidebarModeActors}&quot;&gt;
                      &lt;div class=&quot;h-5 w-5 rounded-full bg-white border-2 border-gray-400&quot; :class=&quot;{&#39;border-blue-500&#39;: isInSidebarModeActors}&quot;&gt;&lt;/div&gt;
                    &lt;/div&gt;
                  &lt;/div&gt;
                  &lt;div class=&quot;mx-3 px-1 my-3 w-16 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
                  &lt;div class=&quot;mx-3 px-1 my-3 w-24 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
                &lt;/div&gt;
              &lt;/div&gt;
              &lt;div class=&quot;mx-1 px-1 w-12 h-6 bg-blue-400 rounded&quot;&gt;&lt;/div&gt;
            &lt;/div&gt;
            &lt;!-- table header --&gt;
            &lt;div class=&quot;flex border-b text-sm&quot;&gt;
              &lt;div class=&quot;flex-1 px-2 border-r py-3&quot;&gt;
                &lt;div class=&quot;w-16 h-2 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
              &lt;/div&gt;
              &lt;div class=&quot;flex-1 px-2 border-r py-3&quot;&gt;
                &lt;div class=&quot;w-16 h-2 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
              &lt;/div&gt;
              &lt;div class=&quot;flex-1 px-2 py-3&quot;&gt;
                &lt;div class=&quot;w-16 h-2 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
              &lt;/div&gt;
              &lt;div class=&quot;w-4&quot;&gt;&lt;/div&gt;
            &lt;/div&gt;
            &lt;!-- table content --&gt;
            &lt;div v-for=&quot;actor, i in projects[selectedProject].actors&quot;
                 class=&quot;flex border-b text-sm group items-center&quot;
                 :class=&quot;{&#39;hover:bg-gray-200 cursor-pointer&#39;: isInSidebarModeActors, &#39;bg-gray-200&#39;: selectedActor === i}&quot;
                 @click=&quot;rowPressedActors(i)&quot;&gt;
              &lt;div class=&quot;flex-1 px-2 border-r py-2 flex item-center group &quot;&gt;
                &lt;div class=&quot;flex-1&quot;&gt;{{actor.name}}&lt;/div&gt;
                &lt;button class=&quot;uppercase text-xs border rounded px-1 hidden group-hover-block&quot; @click=&quot;openPressedActors(i)&quot; v-if=&quot;!isInSidebarModeActors&quot;&gt;Open&lt;/button&gt;
              &lt;/div&gt;
              &lt;div class=&quot;flex-1 px-2 border-r py-2&quot;
                   :class=&quot;{&#39;hover:bg-gray-200 cursor-pointer&#39;: !isInSidebarModeActors}&quot;&gt;{{actor.role}}&lt;/div&gt;
              &lt;div class=&quot;flex-1 px-2 py-2&quot;
                   :class=&quot;{&#39;hover:bg-gray-200 cursor-pointer&#39;: !isInSidebarModeActors}&quot;&gt;{{actor.born}}&lt;/div&gt;
              &lt;div class=&quot;w-4&quot;&gt;
                &lt;div class=&quot;ion-ios-arrow-forward text-gray-700 hidden group-hover-block pl-1&quot; v-if=&quot;isInSidebarModeActors&quot;&gt;&lt;/div&gt;
              &lt;/div&gt;
            &lt;/div&gt;
          &lt;/div&gt;
          &lt;div class=&quot;text-2xl font-bold pb-2&quot;&gt;Plot&lt;/div&gt;
          &lt;textarea class=&quot;w-full&quot; style=&quot;height: 700px;&quot; v-model=&quot;projects[selectedProject].content&quot;&gt;&lt;/textarea&gt;
        &lt;/div&gt;
      &lt;/div&gt;
    &lt;/div&gt;
    &lt;!-- SIDEBAR 2 --&gt;
    &lt;div class=&quot;h-screen flex flex-col flex-1 overflow-scroll border-l&quot;
         v-if=&quot;doShowActorDetails &amp;&amp; isInSidebarModeActors&quot;&gt;
      &lt;!-- Header --&gt;
      &lt;div class=&quot;h-10 flex px-3 items-center&quot;&gt;
        &lt;button class=&quot;ion-md-close text-xl px-2 text-gray-700 hover:bg-gray-200 rounded&quot; 
                @click=&quot;doShowActorDetails = false; selectedActor = null;&quot;&gt;&lt;/button&gt;
        &lt;div class=&quot;px-2 w-5 h-5 bg-gray-300 rounded&quot; style=&quot;margin-left: .83rem; margin-right: .83rem;&quot;&gt;&lt;/div&gt;
        &lt;button class=&quot;px-2 ion-md-arrow-back text-xl rounded text-gray-400&quot;
                :class=&quot;{&#39;text-gray-700&#39;: !doShowFullScreenActors, &#39;hover:bg-gray-200&#39;: !doShowFullScreenActors}&quot;
                @click=&quot;backPressedActorDetails()&quot;&gt;&lt;/button&gt;
        &lt;button class=&quot;px-2 ion-md-arrow-forward text-xl rounded text-gray-400&quot;&gt;&lt;/button&gt;
        &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;text-gray-400&quot;&gt;/&lt;/div&gt;
        &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;flex-1&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;mx-1 px-1 w-5 h-5 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
      &lt;/div&gt;
      &lt;!-- Sidebar content --&gt;
      &lt;div class=&quot;flex-1 px-8 overflow-scroll&quot;&gt;
        &lt;div class=&quot;h-16&quot;&gt;&lt;/div&gt;
        &lt;div class=&quot;text-3xl font-bold mb-3&quot;&gt;{{projects[selectedProject].actors[selectedActor].name}}&lt;/div&gt;
        &lt;!-- properties --&gt;
        &lt;div class=&quot;border-b pb-4 mb-4&quot;&gt;
          &lt;div class=&quot;flex items-center&quot;&gt;
            &lt;div class=&quot;w-24&quot;&gt;
              &lt;div class=&quot;mx-1 px-1 w-16 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
            &lt;/div&gt;
            &lt;div&gt;
              {{projects[selectedProject].actors[selectedActor].role}}
            &lt;/div&gt;
          &lt;/div&gt;
          &lt;div class=&quot;flex items-center&quot;&gt;
            &lt;div class=&quot;w-24&quot;&gt;
              &lt;div class=&quot;mx-1 px-1 w-16 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
            &lt;/div&gt;
            &lt;div&gt;
              {{projects[selectedProject].actors[selectedActor].born}}
            &lt;/div&gt;
          &lt;/div&gt;
        &lt;/div&gt;
        &lt;!-- content --&gt;
        &lt;div class=&quot;text-2xl font-bold pb-2&quot;&gt;Bio&lt;/div&gt;
        &lt;textarea class=&quot;w-full&quot; style=&quot;height: 700px;&quot; v-model=&quot;projects[selectedProject].actors[selectedActor].bio&quot;&gt;&lt;/textarea&gt;
      &lt;/div&gt;
    &lt;/div&gt;
  &lt;/div&gt;
  &lt;!-- OVERLAY 1 --&gt;
  &lt;div v-if=&quot;doShowProjectDetails &amp;&amp; !isInSidebarMode&quot;&gt;
    &lt;div class=&quot;fixed top-0 left-0 h-screen w-screen bg-black opacity-50&quot;&gt;&lt;/div&gt;
    &lt;div class=&quot;fixed top-0 left-0 h-screen w-screen flex items-center justify-center pt-12 pb-16 px-4&quot; @click=&quot;doShowProjectDetails = false; selectedProject = null&quot;&gt;
      &lt;div class=&quot;bg-white rounded w-full max-w-3xl shadow-lg h-full flex flex-col&quot; @click.stop=&quot;&quot;&gt;
        &lt;!-- Overlay header --&gt;
        &lt;div class=&quot;h-10 flex px-3 items-center border-b border-gray-200&quot;&gt;
          &lt;div class=&quot;mx-1 px-1 w-5 h-5 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
          &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
          &lt;div class=&quot;flex-1&quot;&gt;&lt;/div&gt;
          &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
          &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
          &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
          &lt;div class=&quot;mx-1 px-1 w-5 h-5 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
        &lt;/div&gt;
        &lt;!-- Overlay content --&gt;
        &lt;div class=&quot;flex-1 overflow-scroll&quot;&gt;
          &lt;div class=&quot;h-56 bg-cover bg-center&quot; :style=&quot;{backgroundImage: &#39;url(&#39;+ projects[selectedProject].cover + &#39;)&#39;}&quot;&gt;&lt;/div&gt;
          &lt;div class=&quot;px-12&quot;&gt;
            &lt;div class=&quot;text-3xl font-bold mt-5 mb-3&quot;&gt;{{projects[selectedProject].name}}&lt;/div&gt;
            &lt;!-- properties --&gt;
            &lt;div class=&quot;border-b pb-4 mb-4&quot;&gt;
              &lt;div class=&quot;flex items-center&quot;&gt;
                &lt;div class=&quot;w-24&quot;&gt;
                  &lt;div class=&quot;mx-1 px-1 w-16 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
                &lt;/div&gt;
                &lt;div&gt;
                  {{projects[selectedProject].year}}
                &lt;/div&gt;
              &lt;/div&gt;
              &lt;div class=&quot;flex items-center&quot;&gt;
              &lt;div class=&quot;w-24&quot;&gt;
                &lt;div class=&quot;mx-1 px-1 w-16 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
              &lt;/div&gt;
              &lt;div&gt;
                {{projects[selectedProject].director}}
              &lt;/div&gt;
            &lt;/div&gt;
            &lt;/div&gt;
            &lt;!-- content --&gt;
            &lt;textarea class=&quot;w-full&quot; style=&quot;height: 700px;&quot; v-model=&quot;projects[selectedProject].content&quot;&gt;&lt;/textarea&gt;
          &lt;/div&gt;
        &lt;/div&gt;
      &lt;/div&gt;
    &lt;/div&gt;
  &lt;/div&gt;
  &lt;!-- OVERLAY 2 --&gt;
  &lt;div v-if=&quot;doShowActorDetails &amp;&amp; !isInSidebarModeActors&quot;&gt;
    &lt;div class=&quot;fixed top-0 left-0 h-screen w-screen bg-black opacity-50&quot;&gt;&lt;/div&gt;
    &lt;div class=&quot;fixed top-0 left-0 h-screen w-screen flex items-center justify-center pt-12 pb-16 px-4&quot; @click=&quot;doShowActorDetails = false; selectedActor = null&quot;&gt;
      &lt;div class=&quot;bg-white rounded w-full max-w-3xl shadow-lg h-full flex flex-col&quot; @click.stop=&quot;&quot;&gt;
        &lt;!-- Overlay header --&gt;
        &lt;div class=&quot;h-10 flex px-3 items-center border-b border-gray-200&quot;&gt;
          &lt;div class=&quot;mx-1 px-1 w-5 h-5 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
          &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
          &lt;div class=&quot;flex-1&quot;&gt;&lt;/div&gt;
          &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
          &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
          &lt;div class=&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
          &lt;div class=&quot;mx-1 px-1 w-5 h-5 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
        &lt;/div&gt;
        &lt;!-- Overlay content --&gt;
        &lt;div class=&quot;flex-1 px-12 overflow-scroll&quot;&gt;
          &lt;div class=&quot;h-16&quot;&gt;&lt;/div&gt;
          &lt;div class=&quot;text-3xl font-bold mb-3&quot;&gt;{{projects[selectedProject].actors[selectedActor].name}}&lt;/div&gt;
          &lt;!-- properties --&gt;
          &lt;div class=&quot;border-b pb-4 mb-4&quot;&gt;
            &lt;div class=&quot;flex items-center&quot;&gt;
              &lt;div class=&quot;w-24&quot;&gt;
                &lt;div class=&quot;mx-1 px-1 w-16 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
              &lt;/div&gt;
              &lt;div&gt;
                {{projects[selectedProject].actors[selectedActor].role}}
              &lt;/div&gt;
            &lt;/div&gt;
            &lt;div class=&quot;flex items-center&quot;&gt;
              &lt;div class=&quot;w-24&quot;&gt;
                &lt;div class=&quot;mx-1 px-1 w-16 h-3 bg-gray-300 rounded&quot;&gt;&lt;/div&gt;
              &lt;/div&gt;
              &lt;div&gt;
                {{projects[selectedProject].actors[selectedActor].born}}
              &lt;/div&gt;
            &lt;/div&gt;
          &lt;/div&gt;
          &lt;!-- content --&gt;
          &lt;div class=&quot;text-2xl font-bold pb-2&quot;&gt;Bio&lt;/div&gt;
          &lt;textarea class=&quot;w-full&quot; style=&quot;height: 700px;&quot; v-model=&quot;projects[selectedProject].actors[selectedActor].bio&quot;&gt;&lt;/textarea&gt;
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
<use xlink:href="/svg_sprite?v=bbd832a9#gear"></use>
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
<use xlink:href="/svg_sprite?v=bbd832a9#arrow-down-mini"></use>
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
                input, textarea, button:focus, select {
  outline: none;
  resize: none;
}

input::placeholder, textarea::placeholder {
  color: #A0AEC0;
  opacity: 1;
}

select {
  -webkit-appearance: none;
  background: center right 12px / 12px url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/1703172/shevron.png) no-repeat;
}

.group:hover .group-hover-block {
  display: block !important;
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
<use xlink:href="/svg_sprite?v=bbd832a9#gear"></use>
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
<use xlink:href="/svg_sprite?v=bbd832a9#arrow-down-mini"></use>
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
                var app = new Vue({
  el: &#39;#app&#39;,
  data: {
    projects: [
      {
        name: &#39;Jules and Jim&#39;,
        year: &#39;1962&#39;,
        director: &#39;François Truffaut&#39;,
        content: &#39;The film is set before, during, and after the Great War in several different parts of France, Austria, and Germany. Jules (Oskar Werner) is a shy writer from Austria who forges a friendship with the more extroverted Frenchman, Jim (Henri Serre). They share an interest in the world of the arts and the Bohemian lifestyle. At a slide show, they become entranced with a bust of a goddess and her serene smile and travel to see the ancient statue on an island in the Adriatic Sea. After encounters with several women, they meet the free-spirited, capricious Catherine (Jeanne Moreau), a doppelgänger for the statue with the serene smile. The three hang out together. Although she begins a relationship with Jules, both men are affected by her presence and her attitude toward life. Jim continues to be involved with Gilberte, usually seeing her apart from the others. A few days before war is declared, Jules and Catherine move to Austria to get married. Both men serve during the war, on opposing sides; each fears throughout the conflict the potential for facing the other or learning that he might have killed his friend.&#39;,
        cover: &#39;https://m.media-amazon.com/images/M/MV5BNDFkNGI1Y2EtMzM5My00NDhkLTkzN2EtZTE1NDgzOGM5MzM5XkEyXkFqcGdeQXVyMzY1MzQyOTY@._V1_.jpg&#39;,
        actors: [
          {
            name: &#39;Jeanne Moreau&#39;,
            role: &#39;Catherine&#39;,
            born: &#39;1928&#39;,
            bio: &#39;When people gave Louis Malle credit for making a star of Jeanne Moreau in Elevator to the Gallows (1958) immediately followed by The Lovers (1958), he would point out that Moreau by that time had already been &quot;recognized as the prime stage actress of her generation.&quot; She had made it to the Comédie Française in her 20s. She had appeared in B-movie thrillers with Jean Gabin and Ascenseur was in that genre. The technicians at the film lab went to the producer after seeing the first week of dailies for Ascenseur and said: &quot;You must not let Malle destroy Jeanne Moreau&quot;. Malle explained: &quot;She was lit only by the windows of the Champs Elysées. That had never been done. Cameramen would have forced her to wear a lot of make-up and they would put a lot of light on her, because, supposedly, her face was not photogenic&quot;. This lack of artifice revealed Moreau\&#39;s &quot;essential qualities: she could be almost ugly and then ten seconds later she would turn her face and would be incredibly attractive. But she would be herself&quot;.&#39;
          },
          {
            name: &#39;Oskar Werner&#39;,
            role: &#39;Jules&#39;,
            born: &#39;1922&#39;,
            bio: &#39;Remote, somewhat morose and, as a result, intriguing, Viennese talent Oskar Werner was born in 1922, not far from the birthplace of &quot;Waltz King&quot; Johann Strauss, and christened Oskar Josef Bschließmayer. His parents divorced when he was fairly young.\n\nWhile growing up, Oskar found performing in school plays helped draw out a deep yearning to act. As a teenager, Oskar was further tempted when his uncle managed to find him some un-credited roles in a couple of German and Austrian war-era films.&#39;
          },
          {
            name: &#39;Henri Serre&#39;,
            role: &#39;Jim&#39;,
            born: &#39;1931&#39;,
            bio: &#39;Henri Serre was born on February 26, 1931 in Sete, Hérault, France as Henri Jean René Serre. He is an actor and writer, known for Jules and Jim (1962), Ces flics étranges venus d\&#39;ailleurs (1979) and The Fire Within (1963).&#39;
          },
          {
            name: &#39;Vanna Urbino&#39;,
            role: &#39;Gilberte&#39;,
            born: &#39;1929&#39;,
            bio: &#39;Vanna Urbino was born on March 18, 1929 in Florence, Tuscany, Italy. She is an actress, known for Jules and Jim (1962), La gatta (1958) and The Story of Dr. Louise (1949).&#39;
          },
          {
            name: &#39;Serge Rezvani&#39;,
            role: &#39;Albert&#39;,
            born: &#39;1928&#39;,
            bio: &#39;Serge Rezvani was born in 1928 in France. He has been married to Marie-José Nat since September 30, 2005.&#39;
          },
        ],
      },
      {
        name: &#39;Breathless&#39;,
        year: &#39;1960&#39;,
        director: &#39;Jean-Luc Godard&#39;,
        content: &#39;Michel (Jean-Paul Belmondo) is a youthful dangerous criminal who models himself on the film persona of Humphrey Bogart. After stealing a car in Marseille, Michel shoots and kills a policeman who has followed him onto a country road. Penniless and on the run from the police, he turns to an American love interest Patricia (Jean Seberg), a student and aspiring journalist, who sells the New York Herald Tribune on the boulevards of Paris. The ambivalent Patricia unwittingly hides him in her apartment as he simultaneously tries to seduce her and call in a loan to fund their escape to Italy. Patricia says she is pregnant, probably with Michel\&#39;s child. She learns that Michel is on the run when questioned by the police. Eventually she betrays him, but before the police arrive she tells Michel what she has done. He is somewhat resigned to a life in prison, and does not try to escape at first. The police shoot him in the street and, after a prolonged death run, he dies “à bout de souffle” (out of breath).&#39;,
        cover: &#39;https://m.media-amazon.com/images/M/MV5BYmU4YWY0NDUtY2I2OC00YzY5LWJlY2ItMTk4NWY2M2M1ZDljXkEyXkFqcGdeQXVyNjUwMzI2NzU@._V1_SY1000_CR0,0,1454,1000_AL_.jpg&#39;,
        actors: [
          {
            name: &#39;Jean Seberg&#39;,
            role: &#39;Patricia Franchini&#39;,
            born: &#39;1938&#39;,
            bio: &#39;Jean Dorothy Seberg was born in Marshalltown, Iowa, to Dorothy Arline (Benson), a substitute teacher, and Edward Waldemar Seberg, a pharmacist. Her father was of Swedish descent and her mother was of English and German ancestry.\n\nOne month before her eighteenth birthday, Jean landed the title role in Otto Preminger\&#39;s Saint Joan (1957) after a much-publicized contest involving some 18,000 hopefuls. The failure of that film and the only moderate success of her next, Bonjour Tristesse (1958), combined to stall Seberg\&#39;s career, until her role in Jean-Luc Godard\&#39;s landmark feature, Breathless (1960), brought her renewed international attention. Seberg gave a memorable performance as a schizophrenic in the title role of Robert Rossen\&#39;s Lilith (1964) opposite Warren Beatty and went on to appear in over 30 films in Hollywood and Europe.&#39;
          },
          {
            name: &#39;Jean-Paul Belmondo&#39;,
            role: &#39;Michel Poiccard / Laszlo Kovacs&#39;,
            born: &#39;1933&#39;,
            bio: &#39;The son of the renowned French sculptor Paul Belmondo, he studied at Conservatoire National Superieur d\&#39;Art Dramatique (CNSAD); after the minor stage performances he made his screen debut in A piedi... a cavallo... in automobile (1957) but the episodes with his participation were cut before release. However, the breakthrough role in Jean-Luc Godard\&#39;s Breathless (1960) made him one of the key figures in the French New Wave. Since mid-60s he completely switched to commercial mainstream pictures and became a big comedy and action star in France. Following the example of Alain Delon he founded his own production company Cerito named after his grandmother\&#39;s maiden name. In 1989 he was awarded Cesar for his performance in Una vita non basta (1988) . Recently he returned to stage performing in the Theatre Marigny in Paris. He still appears in the movies but not so often as before preferring mostly dramatic roles. The president of France distinguished him with order of Legion of Honour. Belmondo has daughter Florence and son Paul. His elder daughter Patricia died in a fire in 1993. None of his children became actors though you could have seen his son Paul in the episodic role in Una vita non basta (1988).&#39;
          },
          {
            name: &#39;Daniel Boulanger&#39;,
            role: &#39;Police Inspector Vital&#39;,
            born: &#39;1922&#39;,
            bio: &#39;Daniel Boulanger was born on January 24, 1922 in Compiègne, Oise, France as Daniel Michel Auguste Boulanger. He was a writer and actor, known for That Man from Rio (1964), The Joker (1960) and Breathless (1960). He died on September 27, 2014 in Paris, France.&#39;
          },
          {
            name: &#39;Henri-Jacques Huet&#39;,
            role: &#39;Antonio Berrutti&#39;,
            born: &#39;1930&#39;,
            bio: &#39;Henri-Jacques Huet was born on March 27, 1930 in Paris, France as Henri Jacques Charles Paul Huet. He was an actor, known for Breathless (1960), Au théâtre ce soir (1966) and Claudine (1978). He died on June 4, 2009 in Nice, Alpes-Maritimes, France.&#39;
          },
          {
            name: &#39;Roger Hanin&#39;,
            role: &#39;Carl Zubart&#39;,
            born: &#39;1925&#39;,
            bio: &#39;Roger Hanin was born on October 20, 1925 in Algiers, Alger, France as Roger Jacob Lévy. He was an actor and writer, known for Breathless (1960), Commissario Navarro (1989) and Il protettore (1974). He was married to Christine Gouze-Rénal and Lisette Barucq. He died on February 11, 2015 in Paris, France.&#39;
          },
        ],
      },
      {
        name: &#39;My Night at Maud\&#39;s&#39;,
        year: &#39;1969&#39;,
        director: &#39;Éric Rohmer&#39;,
        content: &#39;Jean-Louis, a solitary and serious engineer, has taken a job in Clermont-Ferrand where he knows nobody. Attending a Catholic church, he sees a young blonde woman and without knowing anything about her is convinced that she will become his wife. In the street he sees Vidal, an old Marxist friend now a university lecturer, who invites him to a concert the next evening. After the event, Vidal tells Jean-Louis he is going to see a friend and persuades him to come as well.\n\nThey arrive at the flat of Maud, a paediatrician who is recently divorced. The three talk and drink, until Maud suggests that falling snow has made the drive to Jean-Louis\&#39; mountain village unsafe and he should stay. Vidal, who had hoped to stay, leaves. After further drink and talk, Maud reveals that there is only the one bed, which she gets into naked, and suggests that Jean-Louis join her. He eventually does, keeping his clothes on, but resists her advances. Initially hurt, she gets over the rejection and in the morning invites him to join her later for a walk in the snow.&#39;,
        cover: &#39;https://m.media-amazon.com/images/M/MV5BNzgwNmFkOGEtY2U2MC00MTUxLTgxYmItYmQ2NDBkNmExYWVjXkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_SY1000_CR0,0,654,1000_AL_.jpg&#39;,
        actors: [
          {
            name: &#39;Jean-Louis Trintignant&#39;,
            role: &#39;Jean-Louis&#39;,
            born: &#39;1930&#39;,
            bio: &#39;Born 1930 in Piolenc in south France as son of a wealthy industrialist. Studied law in Aix-en-Provence. Started theatrical acting in 1950, but was regarded untalented at first, until Roger Vadim discovered him for the movies. When the press stalked him 1956 because of rumors of an affair with Brigitte Bardot his partner in ...And God Created Woman (1956), he fled into the army. Ten years later he had his first big success with A Man and a Woman (1966). Since then he has starred in more than 100 movies, with a special talent for the dark characters like murderers or jealous husbands. Today he prefers theater to movies.&#39;
          },
          {
            name: &#39;Françoise Fabian&#39;,
            role: &#39;Maud&#39;,
            born: &#39;1933&#39;,
            bio: &#39;Françoise Fabian was born on May 10, 1933 in Algiers, Alger, France as Michele Cortes De Leon y Fabianera. She is an actress, known for My Night at Maud\&#39;s (1969), Belle de Jour (1967) and Happy New Year (1973). She was previously married to Marcel Bozzuffi and Jacques Becker.&#39;
          },
          {
            name: &#39;Marie-Christine Barrault&#39;,
            role: &#39;Françoise&#39;,
            born: &#39;1944&#39;,
            bio: &#39;Marie-Christine Barrault was born on March 21, 1944 in Paris, France. She is an actress and writer, known for Marie Curie, une femme honorable (1991), My Night at Maud\&#39;s (1969) and Cugino cugina (1975).&#39;
          },
          {
            name: &#39;Antoine Vitez&#39;,
            role: &#39;Vidal&#39;,
            born: &#39;1930&#39;,
            bio: &#39;Antoine Vitez was born on December 20, 1930 in Paris, France. He is known for his work on My Night at Maud\&#39;s (1969), Les Thibault (1972) and Apri bene le orecchie (1979). He died on April 30, 1990 in Paris.&#39;
          },
          {
            name: &#39;Léonide Kogan&#39;,
            role: &#39;Concert Violinist&#39;,
            born: &#39;1924&#39;,
            bio: &#39;Léonide Kogan was born on November 14, 1924 in Dnepropetrovsk, Russia as Leonid Borisovich Kogan. He was an actor, known for My Night at Maud\&#39;s (1969) and Nicolo Paganini (1982). He died on December 17, 1982 in Moscow, Russia.&#39;
          },
        ],
      },
      {
        name: &#39;Le Beau Serge&#39;,
        year: &#39;1958&#39;,
        director: &#39;Claude Chabrol&#39;,
        content: &#39;François (Jean-Claude Brialy), a successful yet sickly young man, returns to his home town Sardent after a long absence. He finds his friend Serge (Gérard Blain) who has become a wretched alcoholic, unsatisfied with his life in the village. Serge had hoped to leave the village to study, but had to stay to marry Yvonne after she was pregnant. The death of their stillborn child did not help. (Serge has become an angry, bitter figure not unlike the roles of James Dean, refusing to face reality and adulthood.) At the time of arrival of François, Yvonne is again pregnant. François finds himself on the one hand at odds with the provincial village life and on the other hand compelled to help Serge. The fact that they are both entangled in affairs with Marie (Bernadette Lafont) makes things more complicated. At the end, the birth of Serge and Yvonne\&#39;s second child seems to provide a slight possibility of success.&#39;,
        cover: &#39;https://m.media-amazon.com/images/M/MV5BYzVhYmU5MWUtMjU5Yy00YTdhLThjNzQtMDU3MTk4N2U3NTNlXkEyXkFqcGdeQXVyMDI3OTIzOA@@._V1_.jpg&#39;,
        actors: [
          {
            name: &#39;Gérard Blain&#39;,
            role: &#39;Serge&#39;,
            born: &#39;1930&#39;,
            bio: &#39;Gérard Blain was born on October 23, 1930 in Paris, France. He was an actor and director, known for Hatari! (1962), The Friends (1971) and The Pelican (1974). He was married to Monique Sobieski, Bernadette Lafont and Estella Blain. He died on December 17, 2000 in Paris.&#39;
          },
          {
            name: &#39;Jean-Claude Brialy&#39;,
            role: &#39;François Baillou&#39;,
            born: &#39;1933&#39;,
            bio: &#39;One of the most popular and respected actors to come from the French &quot;New Wave&quot; film movement, Jean-Claude Brialy was born to a military family, which included one brother, in French colonial Algeria on March 30, 1933. Residing in various places while his father, a colonel with the French Army, went through the paces of his career, Brialy attended military school in 1946 and also worked in the theatre as a youth. He studied dramatics at a conservatory in Strasbourg, France, the Saint-Etienne Episcopal College.&#39;
          },
          {
            name: &#39;Michèle Méritz&#39;,
            role: &#39;Yvonne&#39;,
            born: &#39;1923&#39;,
            bio: &#39;Michèle Méritz was born on September 24, 1923 in Paris, France as Micheline Rosa Mitz. She was an actress, known for War of the Buttons (1962), Les Cousins (1959) and Classe Tous Risques (1960). She died on May 28, 1998 in Carcassonne, Aude, France.&#39;
          },
          {
            name: &#39;Bernadette Lafont&#39;,
            role: &#39;Marie&#39;,
            born: &#39;1938&#39;,
            bio: &#39;Bernadette Lafont was born at the Protestant Health Home of Nîmes in Gard, the only child of a pharmacist and a housewife from the Cévennes. Her mother always wanted a boy to name Bernard and, once she gave birth to a girl, she enjoyed to hold this against all the catholics she knew as the proof that their God either was blind or didn\&#39;t exist.\n\nOften dressed as a boy and nicknamed Bernard, Bernadette nevertheless had a great relationship with her parents. Having spent part of her childhood in Saint-Geniès-de-Malgoirès, she returned to Nîmes where she took ballet lessons at the local Opera House. She proved to be a gifted student and she did three little tours and about twenty galas there. An extroverted girl with a fervent imagination, she used to spend her holidays at the Cévennes family mansion playing dress-up with her friend Annie, along whom she used to pretend to be an actress from an imaginary West End Club, working in Italian cinema: doing this started to win her a lot of male attention. She also began to develop a passion for film from an early age, adopting Brigitte Bardot and Marina Vlady as role models.&#39;
          },
          {
            name: &#39;Claude Cerval&#39;,
            role: &#39;The priest&#39;,
            born: &#39;1921&#39;,
            bio: &#39;Claude Cerval was born on February 21, 1921 in Paris, France as André Marcel Gabriel Leloup. He was an actor, known for Belle de Jour (1967), Classe Tous Risques (1960) and Jacquou le croquant (1969). He died on July 25, 1972 in Paris.&#39;
          },
        ],
      },
      {
        name: &#39;Paris Belongs to Us&#39;,
        year: &#39;1961&#39;,
        director: &#39;Jacques Rivette&#39;,
        content: &#39;The film opens with the literature student Anne, who is reading Shakespeare when she hears sounds of distress in the next room. There she finds a Spanish girl who says her brother has just been killed by dark forces. Anne then meets up with her own brother Pierre, who takes her to a party held by some of his friends.\n\nInitially bored and knowing nobody, she gradually becomes fascinated by mysterious interactions around her. Juan, an anti-Franco refugee from Spain, has recently died from a knife wound, some think suicide. Philip, an unsteady American refugee from McCarthyism, gets drunk and slaps a smartly-dressed woman called Terry, accusing her of causing Juan\&#39;s death by breaking up with him.&#39;,
        cover: &#39;https://m.media-amazon.com/images/M/MV5BNWM4ODJjYzctMDQ5OS00MTcyLWJhZDYtMzZhNWRhNmFkOTJjXkEyXkFqcGdeQXVyNzc1MjM1ODM@._V1_.jpg&#39;,
        actors: [
          {
            name: &#39;Betty Schneider&#39;,
            role: &#39;Anne Goupil&#39;,
            born: &#39;1934&#39;,
            bio: &#39;Betty Schneider was born in 1934 in Lens, France as Elisabeth Amsterdamer. She is an actress, known for Classe Tous Risques (1960), Paris Belongs to Us (1961) and A Bomb for a Dictator (1957).&#39;
          },
          {
            name: &#39;Giani Esposito&#39;,
            role: &#39;Gerard Lenz&#39;,
            born: &#39;1930&#39;,
            bio: &#39;Giani Esposito was born on August 22, 1930 in Etterbeek, Belgium. He was an actor, known for Le chevalier Tempête (1967), I miserabili (1958) and The Sea Pirate (1966). He was married to Pascale Petit. He died on January 1, 1974 in Neuilly-sur-Seine, Hauts-de-Seine, France.&#39;
          },
          {
            name: &#39;Françoise Prévost&#39;,
            role: &#39;Terry Yordan&#39;,
            born: &#39;1929&#39;,
            bio: &#39;Françoise Prévost was born on January 13, 1929 in Paris, France. She was an actress and writer, known for The Three Musketeers (1953), I Promised to Pay (1961) and I sequestrati di Altona (1962). She died on November 30, 1997 in Paris.&#39;
          },
          {
            name: &#39;Daniel Crohem&#39;,
            role: &#39;Philip Kaufman&#39;,
            born: &#39;1925&#39;,
            bio: &#39;Daniel Crohem was born on December 11, 1925 in Heuringhem, France. He was an actor, known for Le Doulos (1962), Le brigate del tigre (1974) and Ballad for a Hoodlum (1963). He died on July 23, 2016 in Paris, France.&#39;
          },
          {
            name: &#39;François Maistre&#39;,
            role: &#39;Pierre Goupil&#39;,
            born: &#39;1925&#39;,
            bio: &#39;François Maistre was born on May 14, 1925 in Demigny, Saône-et-Loire, France as François Charles Maistre. He was an actor, known for The Phantom of Liberty (1974), Le brigate del tigre (1974) and The Discreet Charm of the Bourgeoisie (1972). He was married to Aurore Chabrol and Anne-Marie Coffinet. He died on May 16, 2016 in Sevran, Seine-Saint-Denis, France.&#39;
          },
        ],
      },
    ],
    selectedProject: null,
    doShowProjectDetails: false,
    doShowMoreMenu: false,
    isInSidebarMode: true,
    // secondLevel
    selectedActor: null,
    doShowActorDetails: false,
    doShowMoreMenuActors: false,
    isInSidebarModeActors: false,
    doShowFullScreenActors: false,
  },
  methods: {
    // PROJECTS
    openPressed (index) {
      this.selectedProject = index
      this.doShowProjectDetails = true
    },
    rowPressed (index) {
      if (this.isInSidebarMode) {
        this.selectedProject = index
        this.doShowProjectDetails = true
        this.doShowActorDetails = false
        this.selectedActor = null
      }
    },
    // ACTORS
    openPressedActors (index) {
      this.selectedActor = index
      this.doShowActorDetails = true
    },
    rowPressedActors (index) {
      if (this.isInSidebarModeActors) {
        this.selectedActor = index
        this.doShowActorDetails = true
        if (!this.doShowFullScreenActors) {
          this.doShowProjectDetails = false
        }
      }
    },
    backPressedActors () {
      if (this.doShowFullScreenActors) {
        this.doShowActorDetails = false
        this.doShowProjectDetails = false
        this.doShowFullScreenActors = false
        this.selectedProject = null
      }
      this.selectedActor = null
    },
    // ACTOR
    backPressedActorDetails () {
      if (!this.doShowFullScreenActors) {
        this.doShowActorDetails = false
        this.doShowProjectDetails = true
        this.selectedActor = null
      }
    }
  }
})
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
							src="https://cdpn.io/andgordy/fullpage/zQXagN"
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
<use xlink:href="/svg_sprite?v=bbd832a9#x"></use>
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
					Save As Private <span class="badge badge-pro">PRO</span>
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
				Trying <a href="https://codepen.io/andgordy/debug/zQXagN">viewing
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
		value="{&quot;__browser&quot;:{&quot;device&quot;:&quot;unknown&quot;,&quot;mobile&quot;:null,&quot;name&quot;:&quot;chrome&quot;,&quot;platform&quot;:&quot;pc&quot;,&quot;version&quot;:&quot;83&quot;},&quot;__analytics&quot;:{&quot;controllerActionName&quot;:&quot;show&quot;,&quot;controllerName&quot;:&quot;pen&quot;,&quot;enabled&quot;:true},&quot;__CPDATA&quot;:{&quot;domain_iframe&quot;:&quot;https://cdpn.io&quot;,&quot;host&quot;:&quot;codepen.io&quot;,&quot;iframe_allow&quot;:&quot;accelerometer; ambient-light-sensor; camera; encrypted-media; geolocation; gyroscope; microphone; midi; payment; vr&quot;,&quot;iframe_sandbox&quot;:&quot;allow-downloads allow-forms allow-modals allow-pointer-lock allow-popups allow-presentation allow-same-origin allow-scripts allow-top-navigation-by-user-activation&quot;},&quot;__turnOffJS&quot;:false,&quot;__constants&quot;:{&quot;grid_iframe_sandbox_attributes&quot;:&quot;allow-scripts allow-pointer-lock allow-same-origin&quot;},&quot;__svg_sprite&quot;:&quot;/svg_sprite?v=bbd832a9&quot;,&quot;__stream_analytics&quot;:{&quot;api_key&quot;:&quot;64puhuch8n2j&quot;,&quot;token&quot;:&quot;eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyZXNvdXJjZSI6ImFuYWx5dGljcyIsImFjdGlvbiI6IioiLCJ1c2VyX2lkIjoiKiJ9.K-TP9-k-_ZnktGVf_CxDVZyUXKzGMFVJ--dNJ-20_t4&quot;},&quot;__user&quot;:{&quot;anon&quot;:true,&quot;base_url&quot;:&quot;/anon/&quot;,&quot;current_team_id&quot;:0,&quot;current_team_hashid&quot;:&quot;YdEzGn&quot;,&quot;hashid&quot;:&quot;VoDkNZ&quot;,&quot;id&quot;:1,&quot;itemType&quot;:&quot;user&quot;,&quot;name&quot;:&quot;Captain Anonymous&quot;,&quot;owner_id&quot;:&quot;VoDkNZYdEzGn&quot;,&quot;paid&quot;:false,&quot;tier&quot;:0,&quot;username&quot;:&quot;anon&quot;,&quot;created_at&quot;:null,&quot;email_verified&quot;:null,&quot;collections_count&quot;:0,&quot;collections_private_count&quot;:0,&quot;followers_count&quot;:0,&quot;followings_count&quot;:0,&quot;pens_count&quot;:0,&quot;pens_private_count&quot;:0,&quot;projects_count&quot;:0,&quot;projects_private_count&quot;:0},&quot;__firebase&quot;:{&quot;config&quot;:{&quot;apiKey&quot;:&quot;AIzaSyBgLAe7N_MdFpuVofMkcQLGwwhUu5tuxls&quot;,&quot;authDomain&quot;:&quot;codepen-store-production.firebaseapp.com&quot;,&quot;databaseURL&quot;:&quot;https://codepen-store-production.firebaseio.com&quot;,&quot;disabled&quot;:false,&quot;projectId&quot;:&quot;codepen-store-production&quot;},&quot;token&quot;:&quot;eyJhbGciOiJSUzI1NiJ9.eyJhdWQiOiJodHRwczovL2lkZW50aXR5dG9vbGtpdC5nb29nbGVhcGlzLmNvbS9nb29nbGUuaWRlbnRpdHkuaWRlbnRpdHl0b29sa2l0LnYxLklkZW50aXR5VG9vbGtpdCIsImNsYWltcyI6eyJvd25lcklkIjoiVm9Ea05aWWRFekduIiwiYWRtaW4iOmZhbHNlfSwiZXhwIjoxNTk1MDk2NDk1LCJpYXQiOjE1OTUwOTI4OTUsImlzcyI6ImZpcmViYXNlLWFkbWluc2RrLThva3lsQGNvZGVwZW4tc3RvcmUtcHJvZHVjdGlvbi5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsInN1YiI6ImZpcmViYXNlLWFkbWluc2RrLThva3lsQGNvZGVwZW4tc3RvcmUtcHJvZHVjdGlvbi5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsInVpZCI6IlZvRGtOWiJ9.rf-3AJJGZWPbM9dl6b5-aeejiTX9WYNMwtOxalucp6y1fTpdTkiNJuwq4XgEBRSIHrKPtOX7ISbGaBFwIAVLiH6jry-zWKyAUCDPvIX4Yrf02CSjgzA0eZ6hRDQ6Rv4nOTF64TPsNZd4NK2eqj_xVWZ5FHMtwblW6kP5FDln-BV2Y5YrJJeQ59f1p6FnVogL-WXIE9_If_7zOxLr8rL9YJspReQeEKm3yGcuxpEeTvXwT-gXFj9c8oyGjdNL8pweVU92fjc8e1zIxoHlF3u1-qaRuTG2akBzu7qoBqgP0hDFuU_gG-W3jXa2dDer1whdWUNW7kc3wA2hkpk4pKf6uQ&quot;},&quot;__graphql&quot;:{&quot;data&quot;:{&quot;sessionUser&quot;:{&quot;id&quot;:&quot;VoDkNZ&quot;,&quot;name&quot;:&quot;Captain Anonymous&quot;,&quot;avatar80&quot;:&quot;https://gravatar.com/avatar/b15e0cf27861794b6faa31065e8f9950?d=https%3A%2F%2Fassets.codepen.io%2Finternal%2Favatars%2Fusers%2Fdefault.png&amp;format=auto&amp;height=80&amp;version=0&amp;width=80&quot;,&quot;avatar512&quot;:&quot;https://gravatar.com/avatar/b15e0cf27861794b6faa31065e8f9950?d=https%3A%2F%2Fassets.codepen.io%2Finternal%2Favatars%2Fusers%2Fdefault.png&amp;format=auto&amp;height=512&amp;version=0&amp;width=512&quot;,&quot;canCreatePosts&quot;:false,&quot;currentContext&quot;:{&quot;id&quot;:&quot;VoDkNZ&quot;,&quot;baseUrl&quot;:&quot;/anon&quot;,&quot;title&quot;:&quot;Captain Anonymous&quot;,&quot;name&quot;:&quot;Captain Anonymous&quot;,&quot;avatar80&quot;:&quot;https://gravatar.com/avatar/b15e0cf27861794b6faa31065e8f9950?d=https%3A%2F%2Fassets.codepen.io%2Finternal%2Favatars%2Fusers%2Fdefault.png&amp;format=auto&amp;height=80&amp;version=0&amp;width=80&quot;,&quot;avatar512&quot;:&quot;https://gravatar.com/avatar/b15e0cf27861794b6faa31065e8f9950?d=https%3A%2F%2Fassets.codepen.io%2Finternal%2Favatars%2Fusers%2Fdefault.png&amp;format=auto&amp;height=512&amp;version=0&amp;width=512&quot;,&quot;username&quot;:&quot;anon&quot;,&quot;contextType&quot;:&quot;USER&quot;,&quot;projectLimitations&quot;:{&quot;projects&quot;:0,&quot;usedProjects&quot;:0,&quot;__typename&quot;:&quot;ProjectLimitations&quot;},&quot;privateByDefault&quot;:false,&quot;__typename&quot;:&quot;User&quot;},&quot;currentTeamId&quot;:null,&quot;baseUrl&quot;:&quot;/anon&quot;,&quot;username&quot;:&quot;anon&quot;,&quot;admin&quot;:false,&quot;anon&quot;:true,&quot;pro&quot;:false,&quot;verified&quot;:null,&quot;teams&quot;:[],&quot;permissions&quot;:{&quot;canCreatePrivate&quot;:false,&quot;canUploadAssets&quot;:false,&quot;__typename&quot;:&quot;UserPermissions&quot;},&quot;__typename&quot;:&quot;User&quot;}}},&quot;__boomboom&quot;:{&quot;serve_url&quot;:&quot;https://cdpn.io/boomboom/v2/index.html&quot;,&quot;store_url&quot;:&quot;https://cdpn.io/boomboom/v2/store&quot;},&quot;__editor_config&quot;:{&quot;id&quot;:&quot;classic&quot;,&quot;editors&quot;:[{&quot;id&quot;:&quot;html&quot;,&quot;type&quot;:&quot;html&quot;,&quot;name&quot;:&quot;HTML&quot;,&quot;showEditor&quot;:true,&quot;showSettings&quot;:true,&quot;showProcessors&quot;:true,&quot;embeds&quot;:{&quot;showViewCompiled&quot;:true},&quot;settings&quot;:[{&quot;id&quot;:&quot;processor&quot;,&quot;name&quot;:&quot;HTML Preprocessor&quot;,&quot;type&quot;:&quot;select&quot;,&quot;visible&quot;:true,&quot;values&quot;:[{&quot;id&quot;:&quot;none&quot;,&quot;name&quot;:&quot;None&quot;,&quot;value&quot;:&quot;none&quot;,&quot;default&quot;:true},{&quot;id&quot;:&quot;haml&quot;,&quot;name&quot;:&quot;Haml&quot;,&quot;value&quot;:&quot;haml&quot;},{&quot;id&quot;:&quot;markdown&quot;,&quot;name&quot;:&quot;Markdown&quot;,&quot;value&quot;:&quot;markdown&quot;},{&quot;id&quot;:&quot;slim&quot;,&quot;name&quot;:&quot;Slim&quot;,&quot;value&quot;:&quot;slim&quot;},{&quot;id&quot;:&quot;pug&quot;,&quot;name&quot;:&quot;Pug&quot;,&quot;value&quot;:&quot;pug&quot;}]},{&quot;id&quot;:&quot;html_classes&quot;,&quot;name&quot;:&quot;Add Class(es) to &lt;html&gt;&quot;,&quot;type&quot;:&quot;input&quot;,&quot;placeholder&quot;:&quot;e.g. single post post-1234&quot;,&quot;visible&quot;:true},{&quot;id&quot;:&quot;head&quot;,&quot;name&quot;:&quot;Stuff for &lt;head&gt;&quot;,&quot;type&quot;:&quot;textarea&quot;,&quot;placeholder&quot;:&quot;e.g. &lt;meta&gt;, &lt;link&gt;, &lt;script&gt;&quot;,&quot;visible&quot;:true}],&quot;actions&quot;:[{&quot;id&quot;:&quot;tidy_html&quot;,&quot;type&quot;:&quot;tidy_code&quot;,&quot;name&quot;:&quot;Format HTML&quot;,&quot;disabled_processors&quot;:[&quot;haml&quot;,&quot;slim&quot;]},{&quot;id&quot;:&quot;view_compiled_html&quot;,&quot;type&quot;:&quot;view_compiled&quot;,&quot;name&quot;:&quot;View Compiled HTML&quot;,&quot;disabled_processors&quot;:[&quot;none&quot;],&quot;showInEmbeds&quot;:true},{&quot;id&quot;:&quot;analyze_html&quot;,&quot;type&quot;:&quot;analyze&quot;,&quot;name&quot;:&quot;Analyze HTML&quot;},{&quot;id&quot;:&quot;maximize_html_editor&quot;,&quot;type&quot;:&quot;maximize&quot;,&quot;name&quot;:&quot;Maximize HTML Editor&quot;},{&quot;id&quot;:&quot;minimize_html_editor&quot;,&quot;type&quot;:&quot;minimize&quot;,&quot;name&quot;:&quot;Minimize HTML Editor&quot;},{&quot;id&quot;:&quot;fold_all_html&quot;,&quot;type&quot;:&quot;fold_all&quot;,&quot;name&quot;:&quot;Fold All&quot;},{&quot;id&quot;:&quot;unfold_all_html&quot;,&quot;type&quot;:&quot;unfold_all&quot;,&quot;name&quot;:&quot;Unfold All&quot;}],&quot;processors&quot;:[{&quot;id&quot;:&quot;none&quot;,&quot;name&quot;:&quot;None&quot;},{&quot;id&quot;:&quot;haml&quot;,&quot;name&quot;:&quot;Haml&quot;},{&quot;id&quot;:&quot;markdown&quot;,&quot;name&quot;:&quot;Markdown&quot;},{&quot;id&quot;:&quot;slim&quot;,&quot;name&quot;:&quot;Slim&quot;},{&quot;id&quot;:&quot;pug&quot;,&quot;name&quot;:&quot;Pug&quot;}]},{&quot;id&quot;:&quot;css&quot;,&quot;type&quot;:&quot;css&quot;,&quot;name&quot;:&quot;CSS&quot;,&quot;showEditor&quot;:true,&quot;showSettings&quot;:true,&quot;showProcessors&quot;:true,&quot;showVendorPrefixing&quot;:true,&quot;embeds&quot;:{&quot;showViewCompiled&quot;:true},&quot;actions&quot;:[{&quot;id&quot;:&quot;tidy_css&quot;,&quot;type&quot;:&quot;tidy_code&quot;,&quot;name&quot;:&quot;Format CSS&quot;,&quot;disabled_processors&quot;:[&quot;sass&quot;,&quot;stylus&quot;]},{&quot;id&quot;:&quot;view_compiled_css&quot;,&quot;type&quot;:&quot;view_compiled&quot;,&quot;name&quot;:&quot;View Compiled CSS&quot;,&quot;disabled_processors&quot;:[&quot;none&quot;],&quot;disabled_prefixes&quot;:[&quot;neither&quot;,&quot;prefixfree&quot;]},{&quot;id&quot;:&quot;analyze_css&quot;,&quot;type&quot;:&quot;analyze&quot;,&quot;name&quot;:&quot;Analyze CSS&quot;},{&quot;id&quot;:&quot;maximize_css_editor&quot;,&quot;type&quot;:&quot;maximize&quot;,&quot;name&quot;:&quot;Maximize CSS Editor&quot;},{&quot;id&quot;:&quot;minimize_css_editor&quot;,&quot;type&quot;:&quot;minimize&quot;,&quot;name&quot;:&quot;Minimize CSS Editor&quot;},{&quot;id&quot;:&quot;fold_all_css&quot;,&quot;type&quot;:&quot;fold_all&quot;,&quot;name&quot;:&quot;Fold All&quot;,&quot;disabled_processors&quot;:[&quot;sass&quot;]},{&quot;id&quot;:&quot;unfold_all_css&quot;,&quot;type&quot;:&quot;unfold_all&quot;,&quot;name&quot;:&quot;Unfold All&quot;,&quot;disabled_processors&quot;:[&quot;sass&quot;]}],&quot;processors&quot;:[{&quot;id&quot;:&quot;none&quot;,&quot;name&quot;:&quot;None&quot;},{&quot;id&quot;:&quot;less&quot;,&quot;name&quot;:&quot;Less&quot;},{&quot;id&quot;:&quot;scss&quot;,&quot;name&quot;:&quot;SCSS&quot;},{&quot;id&quot;:&quot;sass&quot;,&quot;name&quot;:&quot;Sass&quot;},{&quot;id&quot;:&quot;stylus&quot;,&quot;name&quot;:&quot;Stylus&quot;},{&quot;id&quot;:&quot;postcss&quot;,&quot;name&quot;:&quot;PostCSS&quot;}],&quot;parSuffixes&quot;:[&quot;less&quot;,&quot;scss&quot;,&quot;sass&quot;,&quot;styl&quot;]},{&quot;id&quot;:&quot;js&quot;,&quot;type&quot;:&quot;js&quot;,&quot;name&quot;:&quot;JS&quot;,&quot;showEditor&quot;:true,&quot;showSettings&quot;:true,&quot;showProcessors&quot;:true,&quot;externalResourcesHidden&quot;:false,&quot;embeds&quot;:{&quot;showViewCompiled&quot;:true},&quot;actions&quot;:[{&quot;id&quot;:&quot;tidy_js&quot;,&quot;type&quot;:&quot;tidy_code&quot;,&quot;name&quot;:&quot;Format JavaScript&quot;,&quot;disabled_processors&quot;:[&quot;coffeescript, livescript&quot;]},{&quot;id&quot;:&quot;view_compiled_js&quot;,&quot;type&quot;:&quot;view_compiled&quot;,&quot;name&quot;:&quot;View Compiled JavaScript&quot;,&quot;disabled_processors&quot;:[&quot;none&quot;]},{&quot;id&quot;:&quot;analyze_js&quot;,&quot;type&quot;:&quot;analyze&quot;,&quot;name&quot;:&quot;Analyze JavaScript&quot;},{&quot;id&quot;:&quot;maximize_js_editor&quot;,&quot;type&quot;:&quot;maximize&quot;,&quot;name&quot;:&quot;Maximize JavaScript Editor&quot;},{&quot;id&quot;:&quot;minimize_js_editor&quot;,&quot;type&quot;:&quot;minimize&quot;,&quot;name&quot;:&quot;Minimize JavaScript Editor&quot;},{&quot;id&quot;:&quot;fold_all_js&quot;,&quot;type&quot;:&quot;fold_all&quot;,&quot;name&quot;:&quot;Fold All&quot;},{&quot;id&quot;:&quot;unfold_all_js&quot;,&quot;type&quot;:&quot;unfold_all&quot;,&quot;name&quot;:&quot;Unfold All&quot;}],&quot;processors&quot;:[{&quot;id&quot;:&quot;none&quot;,&quot;name&quot;:&quot;None&quot;},{&quot;id&quot;:&quot;babel&quot;,&quot;name&quot;:&quot;Babel&quot;},{&quot;id&quot;:&quot;typescript&quot;,&quot;name&quot;:&quot;TypeScript&quot;},{&quot;id&quot;:&quot;coffeescript&quot;,&quot;name&quot;:&quot;CoffeeScript&quot;},{&quot;id&quot;:&quot;livescript&quot;,&quot;name&quot;:&quot;LiveScript&quot;}]}],&quot;formatters&quot;:[{&quot;id&quot;:&quot;classic&quot;,&quot;name&quot;:&quot;Classic&quot;,&quot;runOn&quot;:[{&quot;eventType&quot;:&quot;demand&quot;}],&quot;url&quot;:&quot;https://fi593g2v2a.execute-api.us-west-2.amazonaws.com/production/format&quot;}],&quot;layout&quot;:{&quot;default&quot;:&quot;top&quot;},&quot;linters&quot;:[{&quot;id&quot;:&quot;classic&quot;,&quot;name&quot;:&quot;Classic&quot;,&quot;runOn&quot;:[{&quot;eventType&quot;:&quot;demand&quot;}],&quot;url&quot;:&quot;https://fi593g2v2a.execute-api.us-west-2.amazonaws.com/production/lint&quot;}],&quot;preview&quot;:{&quot;intervalMaxWaitMS&quot;:3500,&quot;intervalMS&quot;:1200},&quot;settings&quot;:[{&quot;id&quot;:&quot;behavior&quot;,&quot;name&quot;:&quot;Behavior&quot;,&quot;type&quot;:&quot;setting&quot;},{&quot;id&quot;:&quot;editor&quot;,&quot;name&quot;:&quot;Editor&quot;,&quot;type&quot;:&quot;setting&quot;}]},&quot;__export_service_url&quot;:&quot;https://codepen.io/api/export&quot;,&quot;__item&quot;:&quot;{\&quot;dependencies\&quot;:{},\&quot;editor_settings\&quot;:{\&quot;auto_run\&quot;:true,\&quot;autocomplete\&quot;:false,\&quot;code_folding\&quot;:true,\&quot;css_pre_processor\&quot;:\&quot;none\&quot;,\&quot;css_prefix\&quot;:\&quot;neither\&quot;,\&quot;css_starter\&quot;:\&quot;neither\&quot;,\&quot;emmet_active\&quot;:true,\&quot;font_size\&quot;:\&quot;14\&quot;,\&quot;font_type\&quot;:\&quot;monaco\&quot;,\&quot;format_on_save\&quot;:false,\&quot;html_pre_processor\&quot;:\&quot;none\&quot;,\&quot;indent_with\&quot;:\&quot;spaces\&quot;,\&quot;js_pre_processor\&quot;:\&quot;none\&quot;,\&quot;key_bindings\&quot;:\&quot;normal\&quot;,\&quot;line_numbers\&quot;:true,\&quot;line_wrapping\&quot;:true,\&quot;match_brackets\&quot;:true,\&quot;snippets\&quot;:{\&quot;markupSnippets\&quot;:{},\&quot;stylesheetSnippets\&quot;:{}},\&quot;tab_size\&quot;:\&quot;2\&quot;,\&quot;theme\&quot;:\&quot;twilight\&quot;,\&quot;id\&quot;:\&quot;zQXagN\&quot;,\&quot;auto_save\&quot;:true},\&quot;hashid\&quot;:\&quot;zQXagN\&quot;,\&quot;itemType\&quot;:\&quot;pen\&quot;,\&quot;owner_id\&quot;:\&quot;EjvmqNYdEzGn\&quot;,\&quot;resources\&quot;:[{\&quot;url\&quot;:\&quot;https://cdn.jsdelivr.net/npm/tailwindcss@next/dist/tailwind.min.css\&quot;,\&quot;order\&quot;:0,\&quot;resource_type\&quot;:\&quot;css\&quot;,\&quot;par_content\&quot;:\&quot;\&quot;},{\&quot;url\&quot;:\&quot;https://cdn.jsdelivr.net/npm/vue/dist/vue.js\&quot;,\&quot;order\&quot;:0,\&quot;resource_type\&quot;:\&quot;js\&quot;,\&quot;par_content\&quot;:\&quot;\&quot;},{\&quot;url\&quot;:\&quot;https://unpkg.com/ionicons@4.5.5/dist/css/ionicons.min.css\&quot;,\&quot;order\&quot;:1,\&quot;resource_type\&quot;:\&quot;css\&quot;,\&quot;par_content\&quot;:\&quot;\&quot;}],\&quot;tags\&quot;:[],\&quot;id\&quot;:36643738,\&quot;user_id\&quot;:1703172,\&quot;html\&quot;:\&quot;&lt;div id=\\\&quot;app\\\&quot; class=\\\&quot;text-black antialiased\\\&quot;&gt;\\n  &lt;div class=\\\&quot;flex w-screen\\\&quot; style=\\\&quot;max-width: 100vw;\\\&quot;&gt;\\n    &lt;!-- MAIN CONTENT --&gt;\\n    &lt;div class=\\\&quot;h-screen flex flex-col flex-1 overflow-scroll\\\&quot;\\n         v-if=\\\&quot;!doShowFullScreenActors\\\&quot;&gt;\\n      &lt;!-- Header --&gt;\\n      &lt;div class=\\\&quot;h-10 flex px-3 items-center\\\&quot;&gt;\\n        &lt;div class=\\\&quot;w-3 h-3 mr-1 bg-gray-300 rounded-full\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;w-3 h-3 mr-1 bg-gray-300 rounded-full\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;w-3 h-3 mr-2 bg-gray-300 rounded-full\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;mx-1 px-1 w-5 h-5 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n        &lt;button class=\\\&quot;px-2 ion-md-arrow-back text-xl rounded text-gray-400\\\&quot;&gt;&lt;/button&gt;\\n        &lt;button class=\\\&quot;px-2 ion-md-arrow-forward text-xl rounded text-gray-400\\\&quot;&gt;&lt;/button&gt;\\n        &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;text-gray-400\\\&quot;&gt;/&lt;/div&gt;\\n        &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;flex-1\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;mx-1 px-1 w-5 h-5 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n      &lt;/div&gt;\\n      &lt;!-- Content --&gt;\\n      &lt;div class=\\\&quot;flex-1 flex\\\&quot;&gt;\\n        &lt;div class=\\\&quot;flex-1 px-8\\\&quot; :class=\\\&quot;{&#39;px-16&#39;: !doShowProjectDetails &amp;&amp; !doShowActorDetails}\\\&quot;&gt;\\n          &lt;div class=\\\&quot;h-16\\\&quot;&gt;&lt;/div&gt;\\n          &lt;div class=\\\&quot;text-3xl font-bold\\\&quot;&gt;The Camera-Stylo&lt;/div&gt;\\n          &lt;!-- Table --&gt;\\n          &lt;div&gt;\\n            &lt;!-- table controls --&gt;\\n            &lt;div class=\\\&quot;flex items-center border-b py-2 mt-3\\\&quot;&gt;\\n              &lt;div class=\\\&quot;text-lg font-semibold mr-2\\\&quot;&gt;Films&lt;/div&gt;\\n              &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n              &lt;div class=\\\&quot;flex-1\\\&quot;&gt;&lt;/div&gt;\\n              &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n              &lt;div class=\\\&quot;mx-1 px-1 w-5 h-5 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n              &lt;button class=\\\&quot;ion-ios-more text-xl text-gray-600 mx-1 px-2 hover:bg-gray-200 rounded\\\&quot; @click=\\\&quot;doShowMoreMenu = true\\\&quot;&gt;&lt;/button&gt;\\n              &lt;!-- more menu --&gt;\\n              &lt;div class=\\\&quot;relative\\\&quot;&gt;\\n                &lt;div class=\\\&quot;fixed top-0 left-0 h-screen w-screen bg-white\\\&quot; style=\\\&quot;opacity: 0.01\\\&quot; v-if=\\\&quot;doShowMoreMenu\\\&quot; @click=\\\&quot;doShowMoreMenu = false\\\&quot;&gt;&lt;/div&gt;\\n                &lt;div v-if=\\\&quot;doShowMoreMenu\\\&quot;\\n                     class=\\\&quot;absolute bg-white w-48 shadow rounded text-sm\\\&quot;\\n                     style=\\\&quot;right: -12px; top: -32px;\\\&quot;&gt;\\n                  &lt;div class=\\\&quot;mx-3 px-1 my-3 w-24 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n                  &lt;div class=\\\&quot;mx-3 px-1 my-3 w-16 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n                  &lt;div class=\\\&quot;mx-3 px-1 my-3 w-16 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n                  &lt;div class=\\\&quot;mx-3 px-1 my-3 w-24 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n                  &lt;div class=\\\&quot;flex items-center px-3 py-1 border-t border-b hover:bg-gray-200 cursor-pointer\\\&quot; @click=\\\&quot;isInSidebarMode = !isInSidebarMode\\\&quot;&gt;\\n                    &lt;div&gt;Split-screen&lt;/div&gt;\\n                    &lt;div class=\\\&quot;flex-1\\\&quot;&gt;&lt;/div&gt;\\n                    &lt;div class=\\\&quot;w-8 h-5 bg-gray-400 rounded-full flex\\\&quot; :class=\\\&quot;{&#39;justify-end bg-blue-500&#39;: isInSidebarMode}\\\&quot;&gt;\\n                      &lt;div class=\\\&quot;h-5 w-5 rounded-full bg-white border-2 border-gray-400\\\&quot; :class=\\\&quot;{&#39;border-blue-500&#39;: isInSidebarMode}\\\&quot;&gt;&lt;/div&gt;\\n                    &lt;/div&gt;\\n                  &lt;/div&gt;\\n                  &lt;div class=\\\&quot;mx-3 px-1 my-3 w-16 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n                  &lt;div class=\\\&quot;mx-3 px-1 my-3 w-24 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n                &lt;/div&gt;\\n              &lt;/div&gt;\\n              &lt;div class=\\\&quot;mx-1 px-1 w-12 h-6 bg-blue-400 rounded\\\&quot;&gt;&lt;/div&gt;\\n            &lt;/div&gt;\\n            &lt;!-- table header --&gt;\\n            &lt;div class=\\\&quot;flex border-b text-sm\\\&quot;&gt;\\n              &lt;div class=\\\&quot;flex-1 px-2 border-r py-3\\\&quot;&gt;\\n                &lt;div class=\\\&quot;w-16 h-2 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n              &lt;/div&gt;\\n              &lt;div class=\\\&quot;flex-1 px-2 border-r py-3\\\&quot;&gt;\\n                &lt;div class=\\\&quot;w-16 h-2 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n              &lt;/div&gt;\\n              &lt;div class=\\\&quot;flex-1 px-2 py-3\\\&quot;&gt;\\n                &lt;div class=\\\&quot;w-16 h-2 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n              &lt;/div&gt;\\n              &lt;div class=\\\&quot;w-4\\\&quot;&gt;&lt;/div&gt;\\n            &lt;/div&gt;\\n            &lt;!-- table content --&gt;\\n            &lt;div v-for=\\\&quot;project, i in projects\\\&quot;\\n                 class=\\\&quot;flex border-b text-sm group items-center\\\&quot;\\n                 :class=\\\&quot;{&#39;hover:bg-gray-200 cursor-pointer&#39;: isInSidebarMode, &#39;bg-gray-200&#39;: selectedProject === i}\\\&quot;\\n                 @click=\\\&quot;rowPressed(i)\\\&quot;&gt;\\n                &lt;div class=\\\&quot;flex-1 px-2 border-r py-2 flex item-center group \\\&quot;&gt;\\n                  &lt;div class=\\\&quot;flex-1\\\&quot;&gt;{{project.name}}&lt;/div&gt;\\n                  &lt;button class=\\\&quot;uppercase text-xs border rounded px-1 hidden group-hover-block\\\&quot; @click=\\\&quot;openPressed(i)\\\&quot; v-if=\\\&quot;!isInSidebarMode\\\&quot;&gt;Open&lt;/button&gt;\\n                &lt;/div&gt;\\n                &lt;div class=\\\&quot;flex-1 px-2 border-r py-2\\\&quot;\\n                     :class=\\\&quot;{&#39;hover:bg-gray-200 cursor-pointer&#39;: !isInSidebarMode}\\\&quot;&gt;{{project.year}}&lt;/div&gt;\\n                &lt;div class=\\\&quot;flex-1 px-2 py-2\\\&quot;\\n                     :class=\\\&quot;{&#39;hover:bg-gray-200 cursor-pointer&#39;: !isInSidebarMode}\\\&quot;&gt;{{project.director}}&lt;/div&gt;\\n                &lt;div class=\\\&quot;w-4\\\&quot;&gt;\\n                  &lt;div class=\\\&quot;ion-ios-arrow-forward text-gray-700 hidden group-hover-block pl-1\\\&quot; v-if=\\\&quot;isInSidebarMode\\\&quot;&gt;&lt;/div&gt;\\n                &lt;/div&gt;\\n              &lt;/div&gt;\\n          &lt;/div&gt;\\n        &lt;/div&gt;\\n      &lt;/div&gt;\\n    &lt;/div&gt;\\n    &lt;!-- SIDEBAR 1 --&gt;\\n    &lt;div class=\\\&quot;h-screen flex flex-col flex-1 overflow-scroll\\\&quot;\\n         :class=\\\&quot;{&#39;border-l&#39;: !doShowFullScreenActors}\\\&quot;\\n         v-if=\\\&quot;doShowProjectDetails &amp;&amp; isInSidebarMode\\\&quot;&gt;\\n      &lt;!-- Header --&gt;\\n      &lt;div class=\\\&quot;h-10 flex px-3 items-center\\\&quot;&gt;\\n        &lt;button class=\\\&quot;ion-md-close text-xl px-2 text-gray-700 hover:bg-gray-200 rounded\\\&quot; \\n                @click=\\\&quot;doShowProjectDetails = false; selectedProject = null;\\\&quot;\\n                v-if=\\\&quot;!doShowFullScreenActors\\\&quot;&gt;&lt;/button&gt;\\n        &lt;button class=\\\&quot;ion-md-expand text-xl px-2 text-gray-700 hover:bg-gray-200 rounded mx-2\\\&quot;\\n                @click=\\\&quot;doShowFullScreenActors = true\\\&quot;\\n                v-if=\\\&quot;!doShowFullScreenActors\\\&quot;&gt;\\n        &lt;/button&gt;\\n        &lt;div class=\\\&quot;flex items-center\\\&quot;\\n             v-if=\\\&quot;doShowFullScreenActors\\\&quot;&gt;\\n          &lt;div class=\\\&quot;w-3 h-3 mr-1 bg-gray-300 rounded-full\\\&quot;&gt;&lt;/div&gt;\\n          &lt;div class=\\\&quot;w-3 h-3 mr-1 bg-gray-300 rounded-full\\\&quot;&gt;&lt;/div&gt;\\n          &lt;div class=\\\&quot;w-3 h-3 mr-2 bg-gray-300 rounded-full\\\&quot;&gt;&lt;/div&gt;\\n          &lt;div class=\\\&quot;mx-1 px-1 w-5 h-5 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n        &lt;/div&gt;\\n        &lt;button class=\\\&quot;px-2 ion-md-arrow-back text-xl rounded text-gray-400\\\&quot;\\n                :class=\\\&quot;{&#39;text-gray-700&#39;: doShowFullScreenActors, &#39;hover:bg-gray-200&#39;: doShowFullScreenActors}\\\&quot;\\n                @click=\\\&quot;backPressedActors()\\\&quot;&gt;&lt;/button&gt;\\n        &lt;button class=\\\&quot;px-2 ion-md-arrow-forward text-xl rounded text-gray-400\\\&quot;&gt;&lt;/button&gt;\\n        &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;text-gray-400\\\&quot;&gt;/&lt;/div&gt;\\n        &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;flex-1\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;mx-1 px-1 w-5 h-5 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n      &lt;/div&gt;\\n      &lt;!-- Sidebar content --&gt;\\n      &lt;div class=\\\&quot;flex-1 overflow-scroll\\\&quot;&gt;\\n        &lt;div class=\\\&quot;h-56 bg-cover bg-center\\\&quot; :style=\\\&quot;{backgroundImage: &#39;url(&#39;+ projects[selectedProject].cover + &#39;)&#39;}\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;px-8\\\&quot; :class=\\\&quot;{&#39;px-16&#39;: doShowFullScreenActors &amp;&amp; !doShowActorDetails}\\\&quot;&gt;\\n          &lt;div class=\\\&quot;text-3xl font-bold mb-3 mt-5\\\&quot;&gt;{{projects[selectedProject].name}}&lt;/div&gt;\\n          &lt;!-- properties --&gt;\\n          &lt;div class=\\\&quot;border-b pb-4 mb-4\\\&quot;&gt;\\n            &lt;div class=\\\&quot;flex items-center\\\&quot;&gt;\\n              &lt;div class=\\\&quot;w-24\\\&quot;&gt;\\n                &lt;div class=\\\&quot;mx-1 px-1 w-16 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n              &lt;/div&gt;\\n              &lt;div&gt;\\n                {{projects[selectedProject].year}}\\n              &lt;/div&gt;\\n            &lt;/div&gt;\\n            &lt;div class=\\\&quot;flex items-center\\\&quot;&gt;\\n              &lt;div class=\\\&quot;w-24\\\&quot;&gt;\\n                &lt;div class=\\\&quot;mx-1 px-1 w-16 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n              &lt;/div&gt;\\n              &lt;div&gt;\\n                {{projects[selectedProject].director}}\\n              &lt;/div&gt;\\n            &lt;/div&gt;\\n          &lt;/div&gt;\\n          &lt;!-- content --&gt;\\n          &lt;!-- Table --&gt;\\n          &lt;div class=\\\&quot;pb-8\\\&quot;&gt;\\n            &lt;!-- table controls --&gt;\\n            &lt;div class=\\\&quot;flex items-center border-b py-2 mt-3\\\&quot;&gt;\\n              &lt;div class=\\\&quot;text-lg font-semibold mr-2\\\&quot;&gt;Cast&lt;/div&gt;\\n              &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n              &lt;div class=\\\&quot;flex-1\\\&quot;&gt;&lt;/div&gt;\\n              &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n              &lt;div class=\\\&quot;mx-1 px-1 w-5 h-5 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n              &lt;button class=\\\&quot;ion-ios-more text-xl text-gray-600 mx-1 px-2 hover:bg-gray-200 rounded\\\&quot; @click=\\\&quot;doShowMoreMenuActors = true\\\&quot;&gt;&lt;/button&gt;\\n              &lt;!-- more menu --&gt;\\n              &lt;div class=\\\&quot;relative\\\&quot;&gt;\\n                &lt;div class=\\\&quot;fixed top-0 left-0 h-screen w-screen bg-white\\\&quot; style=\\\&quot;opacity: 0.01\\\&quot; v-if=\\\&quot;doShowMoreMenuActors\\\&quot; @click=\\\&quot;doShowMoreMenuActors = false\\\&quot;&gt;&lt;/div&gt;\\n                &lt;div v-if=\\\&quot;doShowMoreMenuActors\\\&quot;\\n                     class=\\\&quot;absolute bg-white w-48 shadow rounded text-sm\\\&quot;\\n                     style=\\\&quot;right: -12px; top: -32px;\\\&quot;&gt;\\n                  &lt;div class=\\\&quot;mx-3 px-1 my-3 w-24 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n                  &lt;div class=\\\&quot;mx-3 px-1 my-3 w-16 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n                  &lt;div class=\\\&quot;mx-3 px-1 my-3 w-16 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n                  &lt;div class=\\\&quot;mx-3 px-1 my-3 w-24 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n                  &lt;div class=\\\&quot;flex items-center px-3 py-1 border-t border-b hover:bg-gray-200 cursor-pointer\\\&quot; @click=\\\&quot;isInSidebarModeActors = !isInSidebarModeActors\\\&quot;&gt;\\n                    &lt;div&gt;Split-screen&lt;/div&gt;\\n                    &lt;div class=\\\&quot;flex-1\\\&quot;&gt;&lt;/div&gt;\\n                    &lt;div class=\\\&quot;w-8 h-5 bg-gray-400 rounded-full flex\\\&quot; :class=\\\&quot;{&#39;justify-end bg-blue-500&#39;: isInSidebarModeActors}\\\&quot;&gt;\\n                      &lt;div class=\\\&quot;h-5 w-5 rounded-full bg-white border-2 border-gray-400\\\&quot; :class=\\\&quot;{&#39;border-blue-500&#39;: isInSidebarModeActors}\\\&quot;&gt;&lt;/div&gt;\\n                    &lt;/div&gt;\\n                  &lt;/div&gt;\\n                  &lt;div class=\\\&quot;mx-3 px-1 my-3 w-16 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n                  &lt;div class=\\\&quot;mx-3 px-1 my-3 w-24 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n                &lt;/div&gt;\\n              &lt;/div&gt;\\n              &lt;div class=\\\&quot;mx-1 px-1 w-12 h-6 bg-blue-400 rounded\\\&quot;&gt;&lt;/div&gt;\\n            &lt;/div&gt;\\n            &lt;!-- table header --&gt;\\n            &lt;div class=\\\&quot;flex border-b text-sm\\\&quot;&gt;\\n              &lt;div class=\\\&quot;flex-1 px-2 border-r py-3\\\&quot;&gt;\\n                &lt;div class=\\\&quot;w-16 h-2 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n              &lt;/div&gt;\\n              &lt;div class=\\\&quot;flex-1 px-2 border-r py-3\\\&quot;&gt;\\n                &lt;div class=\\\&quot;w-16 h-2 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n              &lt;/div&gt;\\n              &lt;div class=\\\&quot;flex-1 px-2 py-3\\\&quot;&gt;\\n                &lt;div class=\\\&quot;w-16 h-2 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n              &lt;/div&gt;\\n              &lt;div class=\\\&quot;w-4\\\&quot;&gt;&lt;/div&gt;\\n            &lt;/div&gt;\\n            &lt;!-- table content --&gt;\\n            &lt;div v-for=\\\&quot;actor, i in projects[selectedProject].actors\\\&quot;\\n                 class=\\\&quot;flex border-b text-sm group items-center\\\&quot;\\n                 :class=\\\&quot;{&#39;hover:bg-gray-200 cursor-pointer&#39;: isInSidebarModeActors, &#39;bg-gray-200&#39;: selectedActor === i}\\\&quot;\\n                 @click=\\\&quot;rowPressedActors(i)\\\&quot;&gt;\\n              &lt;div class=\\\&quot;flex-1 px-2 border-r py-2 flex item-center group \\\&quot;&gt;\\n                &lt;div class=\\\&quot;flex-1\\\&quot;&gt;{{actor.name}}&lt;/div&gt;\\n                &lt;button class=\\\&quot;uppercase text-xs border rounded px-1 hidden group-hover-block\\\&quot; @click=\\\&quot;openPressedActors(i)\\\&quot; v-if=\\\&quot;!isInSidebarModeActors\\\&quot;&gt;Open&lt;/button&gt;\\n              &lt;/div&gt;\\n              &lt;div class=\\\&quot;flex-1 px-2 border-r py-2\\\&quot;\\n                   :class=\\\&quot;{&#39;hover:bg-gray-200 cursor-pointer&#39;: !isInSidebarModeActors}\\\&quot;&gt;{{actor.role}}&lt;/div&gt;\\n              &lt;div class=\\\&quot;flex-1 px-2 py-2\\\&quot;\\n                   :class=\\\&quot;{&#39;hover:bg-gray-200 cursor-pointer&#39;: !isInSidebarModeActors}\\\&quot;&gt;{{actor.born}}&lt;/div&gt;\\n              &lt;div class=\\\&quot;w-4\\\&quot;&gt;\\n                &lt;div class=\\\&quot;ion-ios-arrow-forward text-gray-700 hidden group-hover-block pl-1\\\&quot; v-if=\\\&quot;isInSidebarModeActors\\\&quot;&gt;&lt;/div&gt;\\n              &lt;/div&gt;\\n            &lt;/div&gt;\\n          &lt;/div&gt;\\n          &lt;div class=\\\&quot;text-2xl font-bold pb-2\\\&quot;&gt;Plot&lt;/div&gt;\\n          &lt;textarea class=\\\&quot;w-full\\\&quot; style=\\\&quot;height: 700px;\\\&quot; v-model=\\\&quot;projects[selectedProject].content\\\&quot;&gt;&lt;/textarea&gt;\\n        &lt;/div&gt;\\n      &lt;/div&gt;\\n    &lt;/div&gt;\\n    &lt;!-- SIDEBAR 2 --&gt;\\n    &lt;div class=\\\&quot;h-screen flex flex-col flex-1 overflow-scroll border-l\\\&quot;\\n         v-if=\\\&quot;doShowActorDetails &amp;&amp; isInSidebarModeActors\\\&quot;&gt;\\n      &lt;!-- Header --&gt;\\n      &lt;div class=\\\&quot;h-10 flex px-3 items-center\\\&quot;&gt;\\n        &lt;button class=\\\&quot;ion-md-close text-xl px-2 text-gray-700 hover:bg-gray-200 rounded\\\&quot; \\n                @click=\\\&quot;doShowActorDetails = false; selectedActor = null;\\\&quot;&gt;&lt;/button&gt;\\n        &lt;div class=\\\&quot;px-2 w-5 h-5 bg-gray-300 rounded\\\&quot; style=\\\&quot;margin-left: .83rem; margin-right: .83rem;\\\&quot;&gt;&lt;/div&gt;\\n        &lt;button class=\\\&quot;px-2 ion-md-arrow-back text-xl rounded text-gray-400\\\&quot;\\n                :class=\\\&quot;{&#39;text-gray-700&#39;: !doShowFullScreenActors, &#39;hover:bg-gray-200&#39;: !doShowFullScreenActors}\\\&quot;\\n                @click=\\\&quot;backPressedActorDetails()\\\&quot;&gt;&lt;/button&gt;\\n        &lt;button class=\\\&quot;px-2 ion-md-arrow-forward text-xl rounded text-gray-400\\\&quot;&gt;&lt;/button&gt;\\n        &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;text-gray-400\\\&quot;&gt;/&lt;/div&gt;\\n        &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;flex-1\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;mx-1 px-1 w-5 h-5 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n      &lt;/div&gt;\\n      &lt;!-- Sidebar content --&gt;\\n      &lt;div class=\\\&quot;flex-1 px-8 overflow-scroll\\\&quot;&gt;\\n        &lt;div class=\\\&quot;h-16\\\&quot;&gt;&lt;/div&gt;\\n        &lt;div class=\\\&quot;text-3xl font-bold mb-3\\\&quot;&gt;{{projects[selectedProject].actors[selectedActor].name}}&lt;/div&gt;\\n        &lt;!-- properties --&gt;\\n        &lt;div class=\\\&quot;border-b pb-4 mb-4\\\&quot;&gt;\\n          &lt;div class=\\\&quot;flex items-center\\\&quot;&gt;\\n            &lt;div class=\\\&quot;w-24\\\&quot;&gt;\\n              &lt;div class=\\\&quot;mx-1 px-1 w-16 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n            &lt;/div&gt;\\n            &lt;div&gt;\\n              {{projects[selectedProject].actors[selectedActor].role}}\\n            &lt;/div&gt;\\n          &lt;/div&gt;\\n          &lt;div class=\\\&quot;flex items-center\\\&quot;&gt;\\n            &lt;div class=\\\&quot;w-24\\\&quot;&gt;\\n              &lt;div class=\\\&quot;mx-1 px-1 w-16 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n            &lt;/div&gt;\\n            &lt;div&gt;\\n              {{projects[selectedProject].actors[selectedActor].born}}\\n            &lt;/div&gt;\\n          &lt;/div&gt;\\n        &lt;/div&gt;\\n        &lt;!-- content --&gt;\\n        &lt;div class=\\\&quot;text-2xl font-bold pb-2\\\&quot;&gt;Bio&lt;/div&gt;\\n        &lt;textarea class=\\\&quot;w-full\\\&quot; style=\\\&quot;height: 700px;\\\&quot; v-model=\\\&quot;projects[selectedProject].actors[selectedActor].bio\\\&quot;&gt;&lt;/textarea&gt;\\n      &lt;/div&gt;\\n    &lt;/div&gt;\\n  &lt;/div&gt;\\n  &lt;!-- OVERLAY 1 --&gt;\\n  &lt;div v-if=\\\&quot;doShowProjectDetails &amp;&amp; !isInSidebarMode\\\&quot;&gt;\\n    &lt;div class=\\\&quot;fixed top-0 left-0 h-screen w-screen bg-black opacity-50\\\&quot;&gt;&lt;/div&gt;\\n    &lt;div class=\\\&quot;fixed top-0 left-0 h-screen w-screen flex items-center justify-center pt-12 pb-16 px-4\\\&quot; @click=\\\&quot;doShowProjectDetails = false; selectedProject = null\\\&quot;&gt;\\n      &lt;div class=\\\&quot;bg-white rounded w-full max-w-3xl shadow-lg h-full flex flex-col\\\&quot; @click.stop=\\\&quot;\\\&quot;&gt;\\n        &lt;!-- Overlay header --&gt;\\n        &lt;div class=\\\&quot;h-10 flex px-3 items-center border-b border-gray-200\\\&quot;&gt;\\n          &lt;div class=\\\&quot;mx-1 px-1 w-5 h-5 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n          &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n          &lt;div class=\\\&quot;flex-1\\\&quot;&gt;&lt;/div&gt;\\n          &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n          &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n          &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n          &lt;div class=\\\&quot;mx-1 px-1 w-5 h-5 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n        &lt;/div&gt;\\n        &lt;!-- Overlay content --&gt;\\n        &lt;div class=\\\&quot;flex-1 overflow-scroll\\\&quot;&gt;\\n          &lt;div class=\\\&quot;h-56 bg-cover bg-center\\\&quot; :style=\\\&quot;{backgroundImage: &#39;url(&#39;+ projects[selectedProject].cover + &#39;)&#39;}\\\&quot;&gt;&lt;/div&gt;\\n          &lt;div class=\\\&quot;px-12\\\&quot;&gt;\\n            &lt;div class=\\\&quot;text-3xl font-bold mt-5 mb-3\\\&quot;&gt;{{projects[selectedProject].name}}&lt;/div&gt;\\n            &lt;!-- properties --&gt;\\n            &lt;div class=\\\&quot;border-b pb-4 mb-4\\\&quot;&gt;\\n              &lt;div class=\\\&quot;flex items-center\\\&quot;&gt;\\n                &lt;div class=\\\&quot;w-24\\\&quot;&gt;\\n                  &lt;div class=\\\&quot;mx-1 px-1 w-16 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n                &lt;/div&gt;\\n                &lt;div&gt;\\n                  {{projects[selectedProject].year}}\\n                &lt;/div&gt;\\n              &lt;/div&gt;\\n              &lt;div class=\\\&quot;flex items-center\\\&quot;&gt;\\n              &lt;div class=\\\&quot;w-24\\\&quot;&gt;\\n                &lt;div class=\\\&quot;mx-1 px-1 w-16 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n              &lt;/div&gt;\\n              &lt;div&gt;\\n                {{projects[selectedProject].director}}\\n              &lt;/div&gt;\\n            &lt;/div&gt;\\n            &lt;/div&gt;\\n            &lt;!-- content --&gt;\\n            &lt;textarea class=\\\&quot;w-full\\\&quot; style=\\\&quot;height: 700px;\\\&quot; v-model=\\\&quot;projects[selectedProject].content\\\&quot;&gt;&lt;/textarea&gt;\\n          &lt;/div&gt;\\n        &lt;/div&gt;\\n      &lt;/div&gt;\\n    &lt;/div&gt;\\n  &lt;/div&gt;\\n  &lt;!-- OVERLAY 2 --&gt;\\n  &lt;div v-if=\\\&quot;doShowActorDetails &amp;&amp; !isInSidebarModeActors\\\&quot;&gt;\\n    &lt;div class=\\\&quot;fixed top-0 left-0 h-screen w-screen bg-black opacity-50\\\&quot;&gt;&lt;/div&gt;\\n    &lt;div class=\\\&quot;fixed top-0 left-0 h-screen w-screen flex items-center justify-center pt-12 pb-16 px-4\\\&quot; @click=\\\&quot;doShowActorDetails = false; selectedActor = null\\\&quot;&gt;\\n      &lt;div class=\\\&quot;bg-white rounded w-full max-w-3xl shadow-lg h-full flex flex-col\\\&quot; @click.stop=\\\&quot;\\\&quot;&gt;\\n        &lt;!-- Overlay header --&gt;\\n        &lt;div class=\\\&quot;h-10 flex px-3 items-center border-b border-gray-200\\\&quot;&gt;\\n          &lt;div class=\\\&quot;mx-1 px-1 w-5 h-5 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n          &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n          &lt;div class=\\\&quot;flex-1\\\&quot;&gt;&lt;/div&gt;\\n          &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n          &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n          &lt;div class=\\\&quot;mx-1 px-1 w-12 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n          &lt;div class=\\\&quot;mx-1 px-1 w-5 h-5 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n        &lt;/div&gt;\\n        &lt;!-- Overlay content --&gt;\\n        &lt;div class=\\\&quot;flex-1 px-12 overflow-scroll\\\&quot;&gt;\\n          &lt;div class=\\\&quot;h-16\\\&quot;&gt;&lt;/div&gt;\\n          &lt;div class=\\\&quot;text-3xl font-bold mb-3\\\&quot;&gt;{{projects[selectedProject].actors[selectedActor].name}}&lt;/div&gt;\\n          &lt;!-- properties --&gt;\\n          &lt;div class=\\\&quot;border-b pb-4 mb-4\\\&quot;&gt;\\n            &lt;div class=\\\&quot;flex items-center\\\&quot;&gt;\\n              &lt;div class=\\\&quot;w-24\\\&quot;&gt;\\n                &lt;div class=\\\&quot;mx-1 px-1 w-16 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n              &lt;/div&gt;\\n              &lt;div&gt;\\n                {{projects[selectedProject].actors[selectedActor].role}}\\n              &lt;/div&gt;\\n            &lt;/div&gt;\\n            &lt;div class=\\\&quot;flex items-center\\\&quot;&gt;\\n              &lt;div class=\\\&quot;w-24\\\&quot;&gt;\\n                &lt;div class=\\\&quot;mx-1 px-1 w-16 h-3 bg-gray-300 rounded\\\&quot;&gt;&lt;/div&gt;\\n              &lt;/div&gt;\\n              &lt;div&gt;\\n                {{projects[selectedProject].actors[selectedActor].born}}\\n              &lt;/div&gt;\\n            &lt;/div&gt;\\n          &lt;/div&gt;\\n          &lt;!-- content --&gt;\\n          &lt;div class=\\\&quot;text-2xl font-bold pb-2\\\&quot;&gt;Bio&lt;/div&gt;\\n          &lt;textarea class=\\\&quot;w-full\\\&quot; style=\\\&quot;height: 700px;\\\&quot; v-model=\\\&quot;projects[selectedProject].actors[selectedActor].bio\\\&quot;&gt;&lt;/textarea&gt;\\n        &lt;/div&gt;\\n      &lt;/div&gt;\\n    &lt;/div&gt;\\n  &lt;/div&gt;\\n&lt;/div&gt;\&quot;,\&quot;css\&quot;:\&quot;input, textarea, button:focus, select {\\n  outline: none;\\n  resize: none;\\n}\\n\\ninput::placeholder, textarea::placeholder {\\n  color: #A0AEC0;\\n  opacity: 1;\\n}\\n\\nselect {\\n  -webkit-appearance: none;\\n  background: center right 12px / 12px url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/1703172/shevron.png) no-repeat;\\n}\\n\\n.group:hover .group-hover-block {\\n  display: block !important;\\n}\&quot;,\&quot;parent\&quot;:36396029,\&quot;js\&quot;:\&quot;var app = new Vue({\\n  el: &#39;#app&#39;,\\n  data: {\\n    projects: [\\n      {\\n        name: &#39;Jules and Jim&#39;,\\n        year: &#39;1962&#39;,\\n        director: &#39;François Truffaut&#39;,\\n        content: &#39;The film is set before, during, and after the Great War in several different parts of France, Austria, and Germany. Jules (Oskar Werner) is a shy writer from Austria who forges a friendship with the more extroverted Frenchman, Jim (Henri Serre). They share an interest in the world of the arts and the Bohemian lifestyle. At a slide show, they become entranced with a bust of a goddess and her serene smile and travel to see the ancient statue on an island in the Adriatic Sea. After encounters with several women, they meet the free-spirited, capricious Catherine (Jeanne Moreau), a doppelgänger for the statue with the serene smile. The three hang out together. Although she begins a relationship with Jules, both men are affected by her presence and her attitude toward life. Jim continues to be involved with Gilberte, usually seeing her apart from the others. A few days before war is declared, Jules and Catherine move to Austria to get married. Both men serve during the war, on opposing sides; each fears throughout the conflict the potential for facing the other or learning that he might have killed his friend.&#39;,\\n        cover: &#39;https://m.media-amazon.com/images/M/MV5BNDFkNGI1Y2EtMzM5My00NDhkLTkzN2EtZTE1NDgzOGM5MzM5XkEyXkFqcGdeQXVyMzY1MzQyOTY@._V1_.jpg&#39;,\\n        actors: [\\n          {\\n            name: &#39;Jeanne Moreau&#39;,\\n            role: &#39;Catherine&#39;,\\n            born: &#39;1928&#39;,\\n            bio: &#39;When people gave Louis Malle credit for making a star of Jeanne Moreau in Elevator to the Gallows (1958) immediately followed by The Lovers (1958), he would point out that Moreau by that time had already been \\\&quot;recognized as the prime stage actress of her generation.\\\&quot; She had made it to the Comédie Française in her 20s. She had appeared in B-movie thrillers with Jean Gabin and Ascenseur was in that genre. The technicians at the film lab went to the producer after seeing the first week of dailies for Ascenseur and said: \\\&quot;You must not let Malle destroy Jeanne Moreau\\\&quot;. Malle explained: \\\&quot;She was lit only by the windows of the Champs Elysées. That had never been done. Cameramen would have forced her to wear a lot of make-up and they would put a lot of light on her, because, supposedly, her face was not photogenic\\\&quot;. This lack of artifice revealed Moreau\\\\&#39;s \\\&quot;essential qualities: she could be almost ugly and then ten seconds later she would turn her face and would be incredibly attractive. But she would be herself\\\&quot;.&#39;\\n          },\\n          {\\n            name: &#39;Oskar Werner&#39;,\\n            role: &#39;Jules&#39;,\\n            born: &#39;1922&#39;,\\n            bio: &#39;Remote, somewhat morose and, as a result, intriguing, Viennese talent Oskar Werner was born in 1922, not far from the birthplace of \\\&quot;Waltz King\\\&quot; Johann Strauss, and christened Oskar Josef Bschließmayer. His parents divorced when he was fairly young.\\\\n\\\\nWhile growing up, Oskar found performing in school plays helped draw out a deep yearning to act. As a teenager, Oskar was further tempted when his uncle managed to find him some un-credited roles in a couple of German and Austrian war-era films.&#39;\\n          },\\n          {\\n            name: &#39;Henri Serre&#39;,\\n            role: &#39;Jim&#39;,\\n            born: &#39;1931&#39;,\\n            bio: &#39;Henri Serre was born on February 26, 1931 in Sete, Hérault, France as Henri Jean René Serre. He is an actor and writer, known for Jules and Jim (1962), Ces flics étranges venus d\\\\&#39;ailleurs (1979) and The Fire Within (1963).&#39;\\n          },\\n          {\\n            name: &#39;Vanna Urbino&#39;,\\n            role: &#39;Gilberte&#39;,\\n            born: &#39;1929&#39;,\\n            bio: &#39;Vanna Urbino was born on March 18, 1929 in Florence, Tuscany, Italy. She is an actress, known for Jules and Jim (1962), La gatta (1958) and The Story of Dr. Louise (1949).&#39;\\n          },\\n          {\\n            name: &#39;Serge Rezvani&#39;,\\n            role: &#39;Albert&#39;,\\n            born: &#39;1928&#39;,\\n            bio: &#39;Serge Rezvani was born in 1928 in France. He has been married to Marie-José Nat since September 30, 2005.&#39;\\n          },\\n        ],\\n      },\\n      {\\n        name: &#39;Breathless&#39;,\\n        year: &#39;1960&#39;,\\n        director: &#39;Jean-Luc Godard&#39;,\\n        content: &#39;Michel (Jean-Paul Belmondo) is a youthful dangerous criminal who models himself on the film persona of Humphrey Bogart. After stealing a car in Marseille, Michel shoots and kills a policeman who has followed him onto a country road. Penniless and on the run from the police, he turns to an American love interest Patricia (Jean Seberg), a student and aspiring journalist, who sells the New York Herald Tribune on the boulevards of Paris. The ambivalent Patricia unwittingly hides him in her apartment as he simultaneously tries to seduce her and call in a loan to fund their escape to Italy. Patricia says she is pregnant, probably with Michel\\\\&#39;s child. She learns that Michel is on the run when questioned by the police. Eventually she betrays him, but before the police arrive she tells Michel what she has done. He is somewhat resigned to a life in prison, and does not try to escape at first. The police shoot him in the street and, after a prolonged death run, he dies “à bout de souffle” (out of breath).&#39;,\\n        cover: &#39;https://m.media-amazon.com/images/M/MV5BYmU4YWY0NDUtY2I2OC00YzY5LWJlY2ItMTk4NWY2M2M1ZDljXkEyXkFqcGdeQXVyNjUwMzI2NzU@._V1_SY1000_CR0,0,1454,1000_AL_.jpg&#39;,\\n        actors: [\\n          {\\n            name: &#39;Jean Seberg&#39;,\\n            role: &#39;Patricia Franchini&#39;,\\n            born: &#39;1938&#39;,\\n            bio: &#39;Jean Dorothy Seberg was born in Marshalltown, Iowa, to Dorothy Arline (Benson), a substitute teacher, and Edward Waldemar Seberg, a pharmacist. Her father was of Swedish descent and her mother was of English and German ancestry.\\\\n\\\\nOne month before her eighteenth birthday, Jean landed the title role in Otto Preminger\\\\&#39;s Saint Joan (1957) after a much-publicized contest involving some 18,000 hopefuls. The failure of that film and the only moderate success of her next, Bonjour Tristesse (1958), combined to stall Seberg\\\\&#39;s career, until her role in Jean-Luc Godard\\\\&#39;s landmark feature, Breathless (1960), brought her renewed international attention. Seberg gave a memorable performance as a schizophrenic in the title role of Robert Rossen\\\\&#39;s Lilith (1964) opposite Warren Beatty and went on to appear in over 30 films in Hollywood and Europe.&#39;\\n          },\\n          {\\n            name: &#39;Jean-Paul Belmondo&#39;,\\n            role: &#39;Michel Poiccard / Laszlo Kovacs&#39;,\\n            born: &#39;1933&#39;,\\n            bio: &#39;The son of the renowned French sculptor Paul Belmondo, he studied at Conservatoire National Superieur d\\\\&#39;Art Dramatique (CNSAD); after the minor stage performances he made his screen debut in A piedi... a cavallo... in automobile (1957) but the episodes with his participation were cut before release. However, the breakthrough role in Jean-Luc Godard\\\\&#39;s Breathless (1960) made him one of the key figures in the French New Wave. Since mid-60s he completely switched to commercial mainstream pictures and became a big comedy and action star in France. Following the example of Alain Delon he founded his own production company Cerito named after his grandmother\\\\&#39;s maiden name. In 1989 he was awarded Cesar for his performance in Una vita non basta (1988) . Recently he returned to stage performing in the Theatre Marigny in Paris. He still appears in the movies but not so often as before preferring mostly dramatic roles. The president of France distinguished him with order of Legion of Honour. Belmondo has daughter Florence and son Paul. His elder daughter Patricia died in a fire in 1993. None of his children became actors though you could have seen his son Paul in the episodic role in Una vita non basta (1988).&#39;\\n          },\\n          {\\n            name: &#39;Daniel Boulanger&#39;,\\n            role: &#39;Police Inspector Vital&#39;,\\n            born: &#39;1922&#39;,\\n            bio: &#39;Daniel Boulanger was born on January 24, 1922 in Compiègne, Oise, France as Daniel Michel Auguste Boulanger. He was a writer and actor, known for That Man from Rio (1964), The Joker (1960) and Breathless (1960). He died on September 27, 2014 in Paris, France.&#39;\\n          },\\n          {\\n            name: &#39;Henri-Jacques Huet&#39;,\\n            role: &#39;Antonio Berrutti&#39;,\\n            born: &#39;1930&#39;,\\n            bio: &#39;Henri-Jacques Huet was born on March 27, 1930 in Paris, France as Henri Jacques Charles Paul Huet. He was an actor, known for Breathless (1960), Au théâtre ce soir (1966) and Claudine (1978). He died on June 4, 2009 in Nice, Alpes-Maritimes, France.&#39;\\n          },\\n          {\\n            name: &#39;Roger Hanin&#39;,\\n            role: &#39;Carl Zubart&#39;,\\n            born: &#39;1925&#39;,\\n            bio: &#39;Roger Hanin was born on October 20, 1925 in Algiers, Alger, France as Roger Jacob Lévy. He was an actor and writer, known for Breathless (1960), Commissario Navarro (1989) and Il protettore (1974). He was married to Christine Gouze-Rénal and Lisette Barucq. He died on February 11, 2015 in Paris, France.&#39;\\n          },\\n        ],\\n      },\\n      {\\n        name: &#39;My Night at Maud\\\\&#39;s&#39;,\\n        year: &#39;1969&#39;,\\n        director: &#39;Éric Rohmer&#39;,\\n        content: &#39;Jean-Louis, a solitary and serious engineer, has taken a job in Clermont-Ferrand where he knows nobody. Attending a Catholic church, he sees a young blonde woman and without knowing anything about her is convinced that she will become his wife. In the street he sees Vidal, an old Marxist friend now a university lecturer, who invites him to a concert the next evening. After the event, Vidal tells Jean-Louis he is going to see a friend and persuades him to come as well.\\\\n\\\\nThey arrive at the flat of Maud, a paediatrician who is recently divorced. The three talk and drink, until Maud suggests that falling snow has made the drive to Jean-Louis\\\\&#39; mountain village unsafe and he should stay. Vidal, who had hoped to stay, leaves. After further drink and talk, Maud reveals that there is only the one bed, which she gets into naked, and suggests that Jean-Louis join her. He eventually does, keeping his clothes on, but resists her advances. Initially hurt, she gets over the rejection and in the morning invites him to join her later for a walk in the snow.&#39;,\\n        cover: &#39;https://m.media-amazon.com/images/M/MV5BNzgwNmFkOGEtY2U2MC00MTUxLTgxYmItYmQ2NDBkNmExYWVjXkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_SY1000_CR0,0,654,1000_AL_.jpg&#39;,\\n        actors: [\\n          {\\n            name: &#39;Jean-Louis Trintignant&#39;,\\n            role: &#39;Jean-Louis&#39;,\\n            born: &#39;1930&#39;,\\n            bio: &#39;Born 1930 in Piolenc in south France as son of a wealthy industrialist. Studied law in Aix-en-Provence. Started theatrical acting in 1950, but was regarded untalented at first, until Roger Vadim discovered him for the movies. When the press stalked him 1956 because of rumors of an affair with Brigitte Bardot his partner in ...And God Created Woman (1956), he fled into the army. Ten years later he had his first big success with A Man and a Woman (1966). Since then he has starred in more than 100 movies, with a special talent for the dark characters like murderers or jealous husbands. Today he prefers theater to movies.&#39;\\n          },\\n          {\\n            name: &#39;Françoise Fabian&#39;,\\n            role: &#39;Maud&#39;,\\n            born: &#39;1933&#39;,\\n            bio: &#39;Françoise Fabian was born on May 10, 1933 in Algiers, Alger, France as Michele Cortes De Leon y Fabianera. She is an actress, known for My Night at Maud\\\\&#39;s (1969), Belle de Jour (1967) and Happy New Year (1973). She was previously married to Marcel Bozzuffi and Jacques Becker.&#39;\\n          },\\n          {\\n            name: &#39;Marie-Christine Barrault&#39;,\\n            role: &#39;Françoise&#39;,\\n            born: &#39;1944&#39;,\\n            bio: &#39;Marie-Christine Barrault was born on March 21, 1944 in Paris, France. She is an actress and writer, known for Marie Curie, une femme honorable (1991), My Night at Maud\\\\&#39;s (1969) and Cugino cugina (1975).&#39;\\n          },\\n          {\\n            name: &#39;Antoine Vitez&#39;,\\n            role: &#39;Vidal&#39;,\\n            born: &#39;1930&#39;,\\n            bio: &#39;Antoine Vitez was born on December 20, 1930 in Paris, France. He is known for his work on My Night at Maud\\\\&#39;s (1969), Les Thibault (1972) and Apri bene le orecchie (1979). He died on April 30, 1990 in Paris.&#39;\\n          },\\n          {\\n            name: &#39;Léonide Kogan&#39;,\\n            role: &#39;Concert Violinist&#39;,\\n            born: &#39;1924&#39;,\\n            bio: &#39;Léonide Kogan was born on November 14, 1924 in Dnepropetrovsk, Russia as Leonid Borisovich Kogan. He was an actor, known for My Night at Maud\\\\&#39;s (1969) and Nicolo Paganini (1982). He died on December 17, 1982 in Moscow, Russia.&#39;\\n          },\\n        ],\\n      },\\n      {\\n        name: &#39;Le Beau Serge&#39;,\\n        year: &#39;1958&#39;,\\n        director: &#39;Claude Chabrol&#39;,\\n        content: &#39;François (Jean-Claude Brialy), a successful yet sickly young man, returns to his home town Sardent after a long absence. He finds his friend Serge (Gérard Blain) who has become a wretched alcoholic, unsatisfied with his life in the village. Serge had hoped to leave the village to study, but had to stay to marry Yvonne after she was pregnant. The death of their stillborn child did not help. (Serge has become an angry, bitter figure not unlike the roles of James Dean, refusing to face reality and adulthood.) At the time of arrival of François, Yvonne is again pregnant. François finds himself on the one hand at odds with the provincial village life and on the other hand compelled to help Serge. The fact that they are both entangled in affairs with Marie (Bernadette Lafont) makes things more complicated. At the end, the birth of Serge and Yvonne\\\\&#39;s second child seems to provide a slight possibility of success.&#39;,\\n        cover: &#39;https://m.media-amazon.com/images/M/MV5BYzVhYmU5MWUtMjU5Yy00YTdhLThjNzQtMDU3MTk4N2U3NTNlXkEyXkFqcGdeQXVyMDI3OTIzOA@@._V1_.jpg&#39;,\\n        actors: [\\n          {\\n            name: &#39;Gérard Blain&#39;,\\n            role: &#39;Serge&#39;,\\n            born: &#39;1930&#39;,\\n            bio: &#39;Gérard Blain was born on October 23, 1930 in Paris, France. He was an actor and director, known for Hatari! (1962), The Friends (1971) and The Pelican (1974). He was married to Monique Sobieski, Bernadette Lafont and Estella Blain. He died on December 17, 2000 in Paris.&#39;\\n          },\\n          {\\n            name: &#39;Jean-Claude Brialy&#39;,\\n            role: &#39;François Baillou&#39;,\\n            born: &#39;1933&#39;,\\n            bio: &#39;One of the most popular and respected actors to come from the French \\\&quot;New Wave\\\&quot; film movement, Jean-Claude Brialy was born to a military family, which included one brother, in French colonial Algeria on March 30, 1933. Residing in various places while his father, a colonel with the French Army, went through the paces of his career, Brialy attended military school in 1946 and also worked in the theatre as a youth. He studied dramatics at a conservatory in Strasbourg, France, the Saint-Etienne Episcopal College.&#39;\\n          },\\n          {\\n            name: &#39;Michèle Méritz&#39;,\\n            role: &#39;Yvonne&#39;,\\n            born: &#39;1923&#39;,\\n            bio: &#39;Michèle Méritz was born on September 24, 1923 in Paris, France as Micheline Rosa Mitz. She was an actress, known for War of the Buttons (1962), Les Cousins (1959) and Classe Tous Risques (1960). She died on May 28, 1998 in Carcassonne, Aude, France.&#39;\\n          },\\n          {\\n            name: &#39;Bernadette Lafont&#39;,\\n            role: &#39;Marie&#39;,\\n            born: &#39;1938&#39;,\\n            bio: &#39;Bernadette Lafont was born at the Protestant Health Home of Nîmes in Gard, the only child of a pharmacist and a housewife from the Cévennes. Her mother always wanted a boy to name Bernard and, once she gave birth to a girl, she enjoyed to hold this against all the catholics she knew as the proof that their God either was blind or didn\\\\&#39;t exist.\\\\n\\\\nOften dressed as a boy and nicknamed Bernard, Bernadette nevertheless had a great relationship with her parents. Having spent part of her childhood in Saint-Geniès-de-Malgoirès, she returned to Nîmes where she took ballet lessons at the local Opera House. She proved to be a gifted student and she did three little tours and about twenty galas there. An extroverted girl with a fervent imagination, she used to spend her holidays at the Cévennes family mansion playing dress-up with her friend Annie, along whom she used to pretend to be an actress from an imaginary West End Club, working in Italian cinema: doing this started to win her a lot of male attention. She also began to develop a passion for film from an early age, adopting Brigitte Bardot and Marina Vlady as role models.&#39;\\n          },\\n          {\\n            name: &#39;Claude Cerval&#39;,\\n            role: &#39;The priest&#39;,\\n            born: &#39;1921&#39;,\\n            bio: &#39;Claude Cerval was born on February 21, 1921 in Paris, France as André Marcel Gabriel Leloup. He was an actor, known for Belle de Jour (1967), Classe Tous Risques (1960) and Jacquou le croquant (1969). He died on July 25, 1972 in Paris.&#39;\\n          },\\n        ],\\n      },\\n      {\\n        name: &#39;Paris Belongs to Us&#39;,\\n        year: &#39;1961&#39;,\\n        director: &#39;Jacques Rivette&#39;,\\n        content: &#39;The film opens with the literature student Anne, who is reading Shakespeare when she hears sounds of distress in the next room. There she finds a Spanish girl who says her brother has just been killed by dark forces. Anne then meets up with her own brother Pierre, who takes her to a party held by some of his friends.\\\\n\\\\nInitially bored and knowing nobody, she gradually becomes fascinated by mysterious interactions around her. Juan, an anti-Franco refugee from Spain, has recently died from a knife wound, some think suicide. Philip, an unsteady American refugee from McCarthyism, gets drunk and slaps a smartly-dressed woman called Terry, accusing her of causing Juan\\\\&#39;s death by breaking up with him.&#39;,\\n        cover: &#39;https://m.media-amazon.com/images/M/MV5BNWM4ODJjYzctMDQ5OS00MTcyLWJhZDYtMzZhNWRhNmFkOTJjXkEyXkFqcGdeQXVyNzc1MjM1ODM@._V1_.jpg&#39;,\\n        actors: [\\n          {\\n            name: &#39;Betty Schneider&#39;,\\n            role: &#39;Anne Goupil&#39;,\\n            born: &#39;1934&#39;,\\n            bio: &#39;Betty Schneider was born in 1934 in Lens, France as Elisabeth Amsterdamer. She is an actress, known for Classe Tous Risques (1960), Paris Belongs to Us (1961) and A Bomb for a Dictator (1957).&#39;\\n          },\\n          {\\n            name: &#39;Giani Esposito&#39;,\\n            role: &#39;Gerard Lenz&#39;,\\n            born: &#39;1930&#39;,\\n            bio: &#39;Giani Esposito was born on August 22, 1930 in Etterbeek, Belgium. He was an actor, known for Le chevalier Tempête (1967), I miserabili (1958) and The Sea Pirate (1966). He was married to Pascale Petit. He died on January 1, 1974 in Neuilly-sur-Seine, Hauts-de-Seine, France.&#39;\\n          },\\n          {\\n            name: &#39;Françoise Prévost&#39;,\\n            role: &#39;Terry Yordan&#39;,\\n            born: &#39;1929&#39;,\\n            bio: &#39;Françoise Prévost was born on January 13, 1929 in Paris, France. She was an actress and writer, known for The Three Musketeers (1953), I Promised to Pay (1961) and I sequestrati di Altona (1962). She died on November 30, 1997 in Paris.&#39;\\n          },\\n          {\\n            name: &#39;Daniel Crohem&#39;,\\n            role: &#39;Philip Kaufman&#39;,\\n            born: &#39;1925&#39;,\\n            bio: &#39;Daniel Crohem was born on December 11, 1925 in Heuringhem, France. He was an actor, known for Le Doulos (1962), Le brigate del tigre (1974) and Ballad for a Hoodlum (1963). He died on July 23, 2016 in Paris, France.&#39;\\n          },\\n          {\\n            name: &#39;François Maistre&#39;,\\n            role: &#39;Pierre Goupil&#39;,\\n            born: &#39;1925&#39;,\\n            bio: &#39;François Maistre was born on May 14, 1925 in Demigny, Saône-et-Loire, France as François Charles Maistre. He was an actor, known for The Phantom of Liberty (1974), Le brigate del tigre (1974) and The Discreet Charm of the Bourgeoisie (1972). He was married to Aurore Chabrol and Anne-Marie Coffinet. He died on May 16, 2016 in Sevran, Seine-Saint-Denis, France.&#39;\\n          },\\n        ],\\n      },\\n    ],\\n    selectedProject: null,\\n    doShowProjectDetails: false,\\n    doShowMoreMenu: false,\\n    isInSidebarMode: true,\\n    // secondLevel\\n    selectedActor: null,\\n    doShowActorDetails: false,\\n    doShowMoreMenuActors: false,\\n    isInSidebarModeActors: false,\\n    doShowFullScreenActors: false,\\n  },\\n  methods: {\\n    // PROJECTS\\n    openPressed (index) {\\n      this.selectedProject = index\\n      this.doShowProjectDetails = true\\n    },\\n    rowPressed (index) {\\n      if (this.isInSidebarMode) {\\n        this.selectedProject = index\\n        this.doShowProjectDetails = true\\n        this.doShowActorDetails = false\\n        this.selectedActor = null\\n      }\\n    },\\n    // ACTORS\\n    openPressedActors (index) {\\n      this.selectedActor = index\\n      this.doShowActorDetails = true\\n    },\\n    rowPressedActors (index) {\\n      if (this.isInSidebarModeActors) {\\n        this.selectedActor = index\\n        this.doShowActorDetails = true\\n        if (!this.doShowFullScreenActors) {\\n          this.doShowProjectDetails = false\\n        }\\n      }\\n    },\\n    backPressedActors () {\\n      if (this.doShowFullScreenActors) {\\n        this.doShowActorDetails = false\\n        this.doShowProjectDetails = false\\n        this.doShowFullScreenActors = false\\n        this.selectedProject = null\\n      }\\n      this.selectedActor = null\\n    },\\n    // ACTOR\\n    backPressedActorDetails () {\\n      if (!this.doShowFullScreenActors) {\\n        this.doShowActorDetails = false\\n        this.doShowProjectDetails = true\\n        this.selectedActor = null\\n      }\\n    }\\n  }\\n})\&quot;,\&quot;html_pre_processor\&quot;:\&quot;none\&quot;,\&quot;css_pre_processor\&quot;:\&quot;none\&quot;,\&quot;js_pre_processor\&quot;:\&quot;none\&quot;,\&quot;html_classes\&quot;:\&quot;\&quot;,\&quot;css_starter\&quot;:\&quot;neither\&quot;,\&quot;css_prefix_free\&quot;:null,\&quot;css_external\&quot;:null,\&quot;js_library\&quot;:null,\&quot;js_modernizr\&quot;:null,\&quot;js_external\&quot;:null,\&quot;created_at\&quot;:\&quot;2019-06-05T09:21:48.000Z\&quot;,\&quot;updated_at\&quot;:\&quot;2019-07-24T16:15:16.000Z\&quot;,\&quot;session_hash\&quot;:\&quot;5a1195432588aaa2e5ae186e016471f9\&quot;,\&quot;title\&quot;:\&quot;Notion split screen\&quot;,\&quot;description\&quot;:\&quot;Turn on “Split screen”  in database settings to open child pages side by side with their parent, not in modal views. Full case: https://twitter.com/andgordy/status/1141710299764051968\&quot;,\&quot;slug_hash\&quot;:\&quot;zQXagN\&quot;,\&quot;head\&quot;:\&quot;\&quot;,\&quot;private\&quot;:false,\&quot;has_animation\&quot;:false,\&quot;css_pre_processor_lib\&quot;:\&quot;\&quot;,\&quot;checksum\&quot;:0,\&quot;screenshot_uuid\&quot;:\&quot;ab9281f4-35ae-4938-a092-5ec7c5b1d66d\&quot;,\&quot;team_id\&quot;:0,\&quot;css_prefix\&quot;:\&quot;neither\&quot;,\&quot;template\&quot;:false,\&quot;js_module\&quot;:null,\&quot;pen_hash\&quot;:null}&quot;,&quot;__jwt&quot;:&quot;eyJhbGciOiJIUzI1NiJ9.eyJkYXRhIjp7InBhaWQiOmZhbHNlLCJ0ZWFtX2lkIjoiWWRFekduIiwidXNlcl9pZCI6IlZvRGtOWiIsInVzZXJuYW1lIjoiYW5vbiJ9LCJleHAiOjE1OTUxNzkyOTV9.l-xbi9PUrJOj9_4Q12ZK4AGS1vVHeqcIgti1-qFn0OU&quot;,&quot;__layoutType&quot;:null,&quot;__packages_domain&quot;:&quot;https://bundles-development.cdpn.io&quot;,&quot;__packages_enabled&quot;:false,&quot;__pageType&quot;:&quot;pen&quot;,&quot;__preprocessors_url&quot;:&quot;https://wfwf9k3tn7.execute-api.us-west-2.amazonaws.com/production&quot;,&quot;__profiled&quot;:{&quot;base_url&quot;:&quot;/andgordy&quot;,&quot;hashid&quot;:&quot;EjvmqN&quot;,&quot;id&quot;:1703172,&quot;name&quot;:&quot;And Gordy&quot;,&quot;type&quot;:&quot;user&quot;,&quot;username&quot;:&quot;andgordy&quot;},&quot;__rtData&quot;:&quot;{\&quot;maxMembers\&quot;:0,\&quot;roomID\&quot;:\&quot;zQXagN/live\&quot;,\&quot;roomType\&quot;:\&quot;live\&quot;,\&quot;updatedAt\&quot;:1563984916,\&quot;user\&quot;:{\&quot;id\&quot;:\&quot;VoDkNZ\&quot;,\&quot;hashid\&quot;:\&quot;VoDkNZ\&quot;,\&quot;name\&quot;:\&quot;Captain Anonymous\&quot;,\&quot;username\&quot;:\&quot;anon\&quot;,\&quot;role\&quot;:\&quot;editor\&quot;}}&quot;,&quot;__embed_modal_script&quot;:&quot;https://static.codepen.io/assets/embed/modal/embed_modal-707400f485648c102f2a410a60705b4996f3ab4bc2338b88c83dcfa330f944c9.js&quot;,&quot;__run_mode_script&quot;:&quot;https://static.codepen.io/assets/libs/codemirror/addon/runmode/runmode-bfc439c2e56cc8aa5b0ed0c95c742d64b92d6ec36eb562d881bfefcb020bf614.js&quot;,&quot;__runtime_js&quot;:&quot;https://static.codepen.io/assets/common/runtime-78f7737f2b92b1b279253c92344b93db2bdf0e3193c90dae7d462d102b33c722.js&quot;,&quot;__standalone_run_mode_script&quot;:&quot;https://static.codepen.io/assets/libs/codemirror/addon/runmode/runmode-standalone-86ed18f2f4ca933889b656c3dcd4135af20477c88c764ae92dd139b682a0ab98.js&quot;,&quot;__syntax_highlighting_script&quot;:&quot;https://static.codepen.io/assets/comments/syntax_highlight_comments.js&quot;,&quot;__eijs&quot;:&quot;https://static.codepen.io/assets/embed/ei.js&quot;,&quot;__favicon_mask_icon&quot;:&quot;https://static.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg&quot;,&quot;__favicon_shortcut_icon&quot;:&quot;https://static.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico&quot;,&quot;__path_to_iframe_console_runner&quot;:&quot;https://static.codepen.io/assets/editor/iframe/iframeConsoleRunner-dc0d50e60903d6825042d06159a8d5ac69a6c0e9bcef91e3380b17617061ce0f.js&quot;,&quot;__path_to_iframe_refresh_css&quot;:&quot;https://static.codepen.io/assets/editor/iframe/iframeRefreshCSS-e03f509ba0a671350b4b363ff105b2eb009850f34a2b4deaadaa63ed5d970b37.js&quot;,&quot;__path_to_iframe_runtime_errors&quot;:&quot;https://static.codepen.io/assets/editor/iframe/iframeRuntimeErrors-29f059e28a3c6d3878960591ef98b1e303c1fe1935197dae7797c017a3ca1e82.js&quot;,&quot;__path_to_processor_worker&quot;:&quot;https://static.codepen.io/assets/packs/router.js&quot;,&quot;__path_to_stop_execution_on_timeout&quot;:&quot;https://static.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js&quot;,&quot;__path_to_webpack_runtime&quot;:&quot;https://static.codepen.io/assets/common/runtime-78f7737f2b92b1b279253c92344b93db2bdf0e3193c90dae7d462d102b33c722.js&quot;,&quot;__pen_normalize_css_url&quot;:&quot;https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css&quot;,&quot;__pen_prefix_free_url&quot;:&quot;https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js&quot;,&quot;__pen_reset_css_url&quot;:&quot;https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css&quot;,&quot;__cdn_css_url&quot;:&quot;https://static.codepen.io/assets/editor/other/cdn/cdncss_data-3920a09dad6d4fc8f26388543dd6e897701bb9eb7adad7644001579fa97c3bcc.json&quot;,&quot;__cdn_js_url&quot;:&quot;https://static.codepen.io/assets/editor/other/cdn/cdnjs_data-d48ecfb6f69488f4fd036843964b79819dab4f33a0ef800d8e3362688252e672.json&quot;,&quot;__theme_url_twilight&quot;:&quot;https://static.codepen.io/assets/editor/themes/twilight-bbb3d58f8024c27567f788f3990f2dce8754c2b67246bf12ad766768fe51955b.css&quot;,&quot;__theme_url_solarized_dark&quot;:&quot;https://static.codepen.io/assets/editor/themes/solarized-dark-74aa4885fce5e2654a252ce5d046a231528fa7d0bab4a6da9335f61f75641a24.css&quot;,&quot;__theme_url_tomorrow_night&quot;:&quot;https://static.codepen.io/assets/editor/themes/tomorrow-night-d40615974321d1e903d870a0feb427a925a3aaa6710a856a012cb5feb317de06.css&quot;,&quot;__theme_url_oceanic_dark&quot;:&quot;https://static.codepen.io/assets/editor/themes/oceanic-dark-6819a04bdb142273008450549c44fae26e7e75bc5e8ca6d8a78d3bdca2e14057.css&quot;,&quot;__theme_url_panda&quot;:&quot;https://static.codepen.io/assets/editor/themes/panda-00401281f2fb82904fcc5bdf9ccdade7866b7674181a06b0f26ee6fc591aed29.css&quot;,&quot;__theme_url_duotone_dark&quot;:&quot;https://static.codepen.io/assets/editor/themes/duotone-dark-6f36080c52f085d1c4b7aa50e7eeb8e9bae96206fa22c6aa4e536db129ed7f47.css&quot;,&quot;__theme_url_highcontrast_dark&quot;:&quot;https://static.codepen.io/assets/editor/themes/highcontrast-dark-6fac7534892153b41a69be61dcfbd27dacbe6f3359e73912fea94614a283be8e.css&quot;,&quot;__theme_url_classic&quot;:&quot;https://static.codepen.io/assets/editor/themes/classic-d7cab86e6d3da60d8cc880622136b2b12354fcb6d74dbf8fa7344b4e2c8c7a07.css&quot;,&quot;__theme_url_solarized_light&quot;:&quot;https://static.codepen.io/assets/editor/themes/solarized-light-5e319a816752c9f0b7caed1d6d7ef1c46dd9b4a6c880aae4330e995a66da8740.css&quot;,&quot;__theme_url_xq_light&quot;:&quot;https://static.codepen.io/assets/editor/themes/xq-light-ff587a13ad3689cf47ce4efaeef9ba5a4693ca8f8b7cdc795207f5cbcefa93fc.css&quot;,&quot;__theme_url_oceanic_light&quot;:&quot;https://static.codepen.io/assets/editor/themes/oceanic-light-7bc150e27e7d7bd775ee1f1a6ee5a77e6fbe19cbeacf078ccb4023ae81c0f834.css&quot;,&quot;__theme_url_mdn_like&quot;:&quot;https://static.codepen.io/assets/editor/themes/mdn-like-b6d8af50e237d6feac2a7c152f479999705d5a33e6a9512f6ce366cc77979855.css&quot;,&quot;__theme_url_duotone_light&quot;:&quot;https://static.codepen.io/assets/editor/themes/duotone-light-3c888339133e6ccf10476b8000003491cc4cf6d09c84a49ba1d60b678544e358.css&quot;,&quot;__theme_url_highcontrast_light&quot;:&quot;https://static.codepen.io/assets/editor/themes/highcontrast-light-48ad69bb14f1618e8908352ea7101f66afecd53f3fd15002116f1e232ce43125.css&quot;,&quot;__theme_url_scoped_twilight&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/twilight-440b9df51ecbe6257384600a5ea09c8ac33a9d860e15d950190a11d4f82f7909.css&quot;,&quot;__theme_url_scoped_solarized_dark&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/solarized-dark-4b456e5e71195d8d9c8e5f060722d5f9fb908be40147ff5159851a72051f3747.css&quot;,&quot;__theme_url_scoped_tomorrow_night&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/tomorrow-night-8b26461b91055f2cd4c7bebebb26b97807e33048c46f80d53d4ade465fe11c71.css&quot;,&quot;__theme_url_scoped_oceanic_dark&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/oceanic-dark-a36b8ac5408ac81f9dea080ce5fb9ddd71537448b2c20f46e5145fb96ed1db62.css&quot;,&quot;__theme_url_scoped_panda&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/panda-16542061ba4c8158eef01aaa0bc82eda10310b37aa85985e27eb6d49f44b34ea.css&quot;,&quot;__theme_url_scoped_duotone_dark&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/duotone-dark-f8ac6d0ba133460720598e2476004dae25eb6dc631e181b558555ed4a1c62b9e.css&quot;,&quot;__theme_url_scoped_highcontrast_dark&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/highcontrast-dark-1f760b46f811648ea7a58a89f7d3b174b3c2733fa00ab78dc56b81fcd27ae137.css&quot;,&quot;__theme_url_scoped_classic&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/classic-e4128896151af1d515c6553eaeb67043bb53a354c2e49a25ed2b25de526710da.css&quot;,&quot;__theme_url_scoped_solarized_light&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/solarized-light-2527ff5d4dbff7c38a474d4dfab0a39a303cddb0fb64daccb85303533c5f99fc.css&quot;,&quot;__theme_url_scoped_xq_light&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/xq-light-5d0c8647757fcd697ee1c1f5d39edb372193e87bb402d0d4a9866d87cdc089ab.css&quot;,&quot;__theme_url_scoped_oceanic_light&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/oceanic-light-df8f48b79b5c783af47cf585b78a9b06801b89754ddfd18ed48e0af50fb09d80.css&quot;,&quot;__theme_url_scoped_mdn_like&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/mdn-like-e3435649da66454bfb7a84146034426aee6a1ed661170537eb120108125109b4.css&quot;,&quot;__theme_url_scoped_duotone_light&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/duotone-light-44c77e7ad84a7326ec3c070c6a2e30bc81677da2cb8752683499eb9ae659073b.css&quot;,&quot;__theme_url_scoped_highcontrast_light&quot;:&quot;https://static.codepen.io/assets/editor/themes/scoped/highcontrast-light-001750c2a4a8eaba783e4bd98b0df57d07a9ca269377ce161d1c54e12a5a66ff.css&quot;}">
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
		src="https://static.codepen.io/assets/packs/js/vendor-3b26f22ec8afce90b81c.chunk.js"></script>
	<script
		src="https://static.codepen.io/assets/packs/js/2-c881c1051f426d5f1ab7.chunk.js"></script>
	<script
		src="https://static.codepen.io/assets/packs/js/everypage-1fac9cddc9f8dbfefd9d.js"></script>
	<script
		src="https://static.codepen.io/assets/packs/js/vendor-3b26f22ec8afce90b81c.chunk.js"></script>
	<script
		src="https://static.codepen.io/assets/packs/js/firebaseConnectLibs-3333fc4082fdd34d85e4.js"></script>
	<script
		src="https://static.codepen.io/assets/packs/js/processorRouter-8f92eed2b0d1338ced34.js"></script>
	<script
		src="https://static.filestackapi.com/filestack-js/3.x.x/filestack.min.js"></script>
	<script
		src="https://static.codepen.io/assets/editor/global/commonLibs-9baf61da2f0b1adbfdbda1a98aa009379eddc23641e45edf6d5c41f98fe361d0.js"></script>
	<script
		src="https://static.codepen.io/assets/editor/global/codemirror-c4c6f5379377e67f3e79161513066c5c491a47a393cd3e5669c9d3f40cee44fe.js"></script>
	<script
		src="https://static.codepen.io/assets/libs/emmet-codemirror-plugin-4eb895d546572aaa83c328e8766ad12bff808dc4115466de4baab2f025c13b6a.js"></script>
	<script
		src="https://static.codepen.io/assets/editor/pen/index-747c5747ea4f8c0179861a63034ac10462f3868b993a50eecd2dfd71ce823e56.js"></script>
</body>
</html>
