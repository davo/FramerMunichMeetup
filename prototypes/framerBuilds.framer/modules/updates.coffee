exports.updates = [
	{
		version: 'Framer 116'
		shortDescription: 'This release brings improvements to our Sketch Plugin and Image Fill Mode.'
		date: 'March 16, 2018'
		added: 'Copy and paste layers with Image Fill from Sketch.'
		improved: 'Pasting of Symbols from Sketch.\nPasting of nested Symbols from Sketch.\nPasting of open Paths from Sketch.'
		fixed: 'Copying of Frames with Image Fills.'
		deprecated: ''
	}
	{
		version: 'Framer 115'
		shortDescription: 'This release introduces the Image Fill Mode and improvements to our Sketch Plugin.'
		date: 'March 13, 2018'
		added: 'Image Fill Mode.'
		improved: 'Copy and paste Symbols from Sketch.\nCopy and paste Symbol Instances from Sketch.\nSupport of Boolean Operations from Sketch.'
		fixed: ''
		deprecated: ''
	}
	{
		version: 'Framer 114'
		shortDescription: 'This release introduces the ability to copy and paste layers from Sketch to Framer.'
		date: 'March 8, 2018'
		added: 'Copy and paste Artboards from Sketch.\nCopy and paste Groups from Sketch.\nCopy and paste Shapes from Sketch.\nCopy and paste Text Layers from Sketch.\nCopy and paste Paths from Sketch.'
		improved: ''
		fixed: ''
		deprecated: ''
	}
	{
		version: 'Framer 113'
		shortDescription: 'This release contains bug fixes and improvements in Design and Code.'
		date: 'March 6, 2018'
		added: ''
		improved: 'Guess alignment based on placement of text layer.\nCopy Style works from border to stroke and vice versa.\nAdjusted Pixel 2 device pixel ratio to match physical device.'
		fixed: 'Copying text layers in Code.\nDecimal radius support in Code.\nMouse-up behavior when dragging over layer panel.\nCrashes when adding a Frame or Group while editing paths.'
		deprecated: ''
	}
	{
		version: 'Framer 112'
		shortDescription: 'This release brings an updated main menu and various fixes and improvements.'
		date: 'February 21, 2018'
		added: 'New main menu with all Design and Code shortcuts.\nHint to explain the difference between Frames and Shapes.\nZoom to selection (⌘9).'
		improved: 'Group Shapes and Path together in the tools menu.\nLower memory usage after using Framer over a longer period.\nUndo of slider value changes in design will be only one step.\nWhen scrolling, tap events will not trigger.\nAuto-sizing text labels behavior when used in Code.'
		fixed: 'Stroke width differences of grouped paths in Design and Code.\nProjects in Google Drive File Stream would upload to Framer Cloud.\nA crash that could happen when creating a target.\nUnused images imported in the design will be removed on close.\nWhen reverting from disk, both Design and Code will revert.\nEnsure all empty shape groups are deleted automatically.'
		deprecated: ''
	}
	{
		version: 'Framer 110'
		shortDescription: 'This release introduces a new API for path animation and manipulation.'
		date: 'February 1, 2018'
		added: 'Framer Library APIs for path animation and manipulation. Using copy() on layers that contain paths.'
		improved: 'Snapping is disabled during quick mouse movement. After pasting, constraints will automatically be guessed. \nSimplified stroke properties panel. \nSimplified text properties panel, moved size control. \nSupport for macOS 10.13.4 betas.'
		fixed: 'Invalid constraints after editing a text layer. Invalid constraints when pasting an image in a Frame. \nInvalid constraints after enabling the aspect ratio lock. \nInclude artboard Frames in hierarchy guessing when wrapping in a Frame. \nImported images will only be pixelated when scaling up.'
		deprecated: ''
	}
	{
		version: 'Framer 109'
		shortDescription: 'This release introduces shape targeting, a new beginner tutorial, and four new UI kits.'
		date: 'January 23, 2018'
		added: 'New Welcome Window \nNew Beginner Tutorial \nNew UI Kits (iOS, Android, Web, Wireframe) \nTargeting of all elements, including shapes'
		improved: 'Stroke UI Alignment Options \nPath editing experience \nPixel rounding of centered shapes \nColor picking behavior \nRendering of 1px paths \nBackup filing functionality \nSelection of stroked shapes \nLoading, zooming, and panning performance'
		fixed: 'Copy CSS for Text\nMissing sidebar labels\nSVG Importing issues\nOpacity of shapes within Groups\nSVG rendering in Code\nSVG pasting in Design\nAspect ratio icon click target\nRepeated save dialogs with iCloud\nHidden tool labels\nSelection of small, imported SVGs\nRendering of inside strokes in Code'
		deprecated: ''
	}
	{
		version: 'Framer 108'
		shortDescription: 'This release contains bug fixes and improvements in Design and Code.'
		date: 'December 21, 2017'
		added: 'Rendering of SVG in Code depending on system language Positioning and rotation of Shapes in Code Rounding of number ticker values Rendering of multiple corner radii in Code Blurry shape outline on hover on @1x'
		improved: 'Prefer SVG over images when pasting SVG import of shapes with relative sizes'
		fixed: ''
		deprecated: ''
	}
	{
		version: 'Framer 107'
		shortDescription: 'Introducing a brand new design feature set, including Frames, Shapes, Vectors, Path Editing, and much more.'
		date: 'December 20, 2017'
		added: 'Frame Tool\nShape Tools\nPen Tool\nPath Editing\nBoolean Operations\nPolygon Tool\nStar Tool\nStroke Property\nSVG Groups\nSVG Exporting\nShape Flipping\nSVG Layer in Code\nSelect methods \nPath Animation Support'
		improved: ' Allow collapsing in Layer PanelCanvas zooming performanceCanvas panning performancePasting code from Docs'
		fixed: 'Toggle Device in full-screen\nDraggable Touch Events \nMissing Text styles from Design'
		deprecated: ''
	}
	{
		version: 'Framer 106'
		shortDescription: 'This release includes refreshed Framer Preview apps for iOS and Android.'
		date: 'November 15, 2017'
		added: 'USB support for iOS devices\nUSB support for Android devices\nBuilt-in support for native sensors, including compass, motion, and orientation \niPhone X support'
		improved: 'Overall design of iOS app \nCompletely redesigned Android app \nDownloading of projects to the device'
		fixed: 'Artboard picker collapsing behaviour'
		deprecated: ''
	}
	{
		version: 'Framer 105'
		shortDescription: 'This release includes a set of new devices courtesy of the design team at Facebook.'
		date: 'November 8, 2017'
		added: 'Sony Smartwatch \nApple iPhone SE \nApple iPhone X \nApple iPhone 8 \nApple iPhone 8 Plus \nGoogle Pixel 2 \nGoogle Pixel 2 XL \nSamsung Galaxy S8 \nMicrosoft Surface 3 \nMicrosoft Surface Pro 4 \nMicrosoft Surface Book'
		improved: 'keyboard shortcuts to code folding context menu \nSpeed improvements to Sketch importing Artboard picker styling'
		fixed: 'Auto-code animation edit mode bug'
		deprecated: ''
	}
	{
		version: 'Framer 104'
		shortDescription: 'This release contains bug fixes and improvements.'
		date: 'October 26, 2017'
		added: 'Compatibility with Framer Cloud.'
		improved: 'Some text layers glitched when moved.'
		fixed: ''
		deprecated: ''
	}
	{
		version: 'Framer 103'
		shortDescription: 'Introducing Export, the easiest way to share mockups, visual assets, and CSS code.'
		date: 'October 18, 2017'
		added: 'Export to PNG JPG PDF and WEBP.\nIndividual layer exporting.\nArtboard exporting.\nFull canvas exporting.\nAccurate copying of CSS value and formatting.\niOS and Android exporting presets.\nQuick exporting.\nExport all option.\nAutomatic exporting to folders.\nExporting prefixes and suffixes.WEBP Image dropping.\nConfigure JPG and WEBP export quality.\nCMD+R shortcut to rename layers.\nSupport for the SF Pro typefaces.'
		improved: 'Color Picker stays open if possible.\nSupport for usage of 05 or 55 for incremental alpha changes.\nRight-click context menus for all property panel headers.\nText uses alignment for anchoring when editing.\nMulti-select editing behavior.\nAdd separators between devices.\nFigma importer supports Google login.\nEnabling shadowSpread now re-activates row.\nWelcome Window example files.'
		fixed: 'Usage of San Francisco fonts on all macOS versions.\nDisabled state for filters.\nCMD+Z when caps-lock is enabled.\nMirroring access code starting with zero bug.\nWelcome window rounded corners and shadow.\nAuto-Code for imported layers.\nmacOS 10.13 fixes.'
		deprecated: ''
	}
	{
		version: 'Framer 102'
		shortDescription: 'This release introduces Framer Effects, including multiple shadows, filters, blurs, blending modes and much more.'
		date: 'September 19, 2017'
		added: 'Support for Blending Modes in Design and Code.\nSupport for Object Blur in Design and Code.\nSupport for Background Blur in Design and Code (Beta).\nSupport for Multiple Shadows in Design and Code.\nSupport for Filters in Design.\nSupport for Border Styles in Design and Code.'
		improved: 'Streamlined properties panel.\nSimplified color panel.\nStreamlined text panel.\nImporting files with special character naming.\nSVG color styling.'
		fixed: 'Using the Auto-Code properties panel required two clicks.\nSome numeric inputs would reset when moving the cursor.\nLoading San Francisco fonts on High Sierra.\nPasting text retains styles.\nCopy-pasting multiple objects would not retain layout.\nZooming Preview in full-screen.\nIncorrect missing font placeholder.'
		deprecated: ''
	}
	{
		version: 'Framer 101'
		shortDescription: 'This release contains bug fixes and improvements.'
		date: 'September 11, 2017'
		added: ''
		improved: ''
		fixed: '\nLogin window when there is no internet connection.'
		deprecated: ''
	}
	{
		version: 'Framer 100'
		shortDescription: 'This release contains major performance improvements for editing, loading and downloading in Framer and Framer Preview.'
		date: 'September 6, 2017'
		added: ''
		improved: ' All projects now load faster.\nCode layer panel updates synchronously.\nFramer Preview app downloads projects faster.\nFramer Library offers increased performance levels.\nPreview window syncs better between Design and Code.'
		fixed: ' Importing is enabled in the Design tab.\nClick interaction within input field arrows.\nArrow controls show the correct cursor.\nCode recognizes all characters in Design text layers.'
		deprecated: ''
	}
	{
		version: 'Framer 99'
		shortDescription: 'This release contains bug fixes and improvements.'
		date: 'August 25, 2017'
		added: ''
		improved: ''
		fixed: 'Crash on launch on 10.11. Reverted fix for images on external drives in design.'
		deprecated: ''
	}
	{
		version: 'Framer 98'
		shortDescription: 'This release contains bug fixes and improvements.'
		date: 'August 25, 2017'
		added: 'Easily change numeric inputs in Design by clicking or dragging the new stepper control.\nZoom with +/- using the keypad.'
		improved: 'Behavior of custom devices when saving.\nInitial loading times for designs.\nReliability of color presets across multiple projects.\nRendering of SVG strokes when zooming out.\nCopying of layers from Design in Code.'
		fixed: 'Broken images when designs are saved on an external or network drive.\nUnintended movement when selecting layers in Design.\nSF font previews in font selection box.\nSelection boxes appearing at an offset.\nIncorrect case of truncating of text layers.\nText size reset after deleting the first character.\nCrashes that happened on macOS 10.13 High Sierra.\nIncorrect fonts in labels on macOS 10.13 High Sierra.'
		deprecated: ''
	}
	{
		version: 'Framer 97'
		shortDescription: 'This release introduces Dynamic Type with templates and an improved font panel.'
		date: 'July 27, 2017'
		added: 'Full support for TextLayer in Design and Code.\nTemplates for manipulating and animating text — See docs. Feather Icons to icon panel.'
		improved: 'Loading speed of Design tab.\nKeyboard control of property panel.\nFont panel now has a search option.\nFont panel now shows font previews.\nPositioning of artboards when duplicating.\nLayer panel scrolls to selected layer on canvas.\nTextLayers update when a font finishes loading.\\'
		fixed: 'Distribute layers with different sizes evenly.\nBug where setting border color would reset gradient fill.\nBug where Canvas would jump when selecting gradient.\nBug where hue would change when dragging color panel.\nText selection in Design when dragging outside of the text frame.\nBug where first TextLayer would not be positioned at 0,0 by default.\nBug where z-position would not take device-pixel-ratio into account.'
		deprecated: ''
	}
	{
		version: 'Framer 96'
		shortDescription: 'This release introduces Gradients and a new way to manage your color presets.'
		date: 'July 5, 2017'
		added: 'Support for Gradients in Design and Code.\nColor preset management.\nAnimation support for backgroundColor (fill) of SVG Icons.\nAnimation support for borderWidth of layers created in Design.\nAnimation support for borderRadius of layers created in Design.\nSound files can be dropped on Framer.'
		improved: 'Color sampler now shows hex value.\nPerformance when copying and pasting large objects.\nBehavior when zooming the canvas in Design mode.\nAudio autocompletions.'
		fixed: 'Incorrectly showed snapping distance in some cases.\nColor picker did not reset when invalid values were entered.\nFramer Library upgrade caused data loss.'
		deprecated: ''
	}
	{
		version: 'Framer 95'
		shortDescription: 'This release brings Facebook Sound Kit integration to Framer.'
		date: 'June 27, 2017'
		added: 'Facebook Sound Kit to the Snippets menu.'
		improved: 'Rotation behavior on mobile devices.'
		fixed: 'Preview window snapping to app window when minimized.\nPotential data loss when saving during quit.'
		deprecated: ''
	}
	{
		version: 'Framer 94'
		shortDescription: 'This release brings various fixes and refinements to Design and Code.'
		date: 'June 23, 2017'
		added: 'Ability to cancel Cloud uploads.'
		improved: 'In-app Mirror and Cloud popovers.\nScaling of device content in the preview.\nPerformance of direct manipulation in Design.'
		fixed: 'Apple Watch device preference not stored.\nCopy and pasting of layer names with context menu.\nSelection state of 1px layers when zoomed in.\nPasted layers not taking hierarchy into account.\nLayers pasted on Canvas being placed in an artboard.'
		deprecated: ''
	}
	{
		version: 'Framer 93'
		shortDescription: 'This release brings various fixes to copy and pasting, text layers in code and more.'
		date: 'June 15, 2017'
		added: 'Support for web font replacements of missing fonts.\nContext menu to artboard title.'
		improved: 'Apple Watch 42mm device compression.\nIcon search case insensitivity.'
		fixed: 'Images missing after pasting into new files.\nCut, copy and paste on macOS 10.11.\nText layers being upscaled in preview.\nSVG icons (10) imported as images.\nAntialiasing of hidden layers in Layer Panel.\nBlurry selection controls of pasted layers.\nPasting of values within the color picker.\nContext menu for highlighted element.\nMIDIComponent compatibility with Cloud. Thanks to Marc Krenn.\nRounding bug of draggable layers. Thanks to Daniel Eden.\nRemoved empty image from Utils.randomImage selection.\nSetting scroll: true in a Layer constructor.\nIn-app support for first time users.\nPotential crash on open.'
		deprecated: ''
	}
	{
		version: 'Framer 92'
		shortDescription: 'This release brings various fixes and refinements to Framer Design.'
		date: 'June 8, 2017'
		added: ''
		improved: ''
		fixed: 'Context menu for layers. Escape to exit full screen Preview.'
		deprecated: ''
	}
	{
		version: 'Framer 91'
		shortDescription: 'This release brings various fixes and refinements to Framer Design.'
		date: 'June 7, 2017'
		added: 'A context menu to the Canvas.'
		improved: 'Preview window resizing with custom devices.\nDistance visualization of overlapping layers.\nPosition of updates badge in toolbar.\nFile size of preview images.\nDevice Snippets in Code.'
		fixed: ' Layers pasted on canvas having a different size.\nApple Watch screen resolution to points.\nPasted images not showing in Chrome.\nCrashes when pasting Vector files.\nSize of upscaled SVGs.'
		deprecated: ''
	}
	{
		version: 'Framer 90'
		shortDescription: 'Introducing Framer Design, a graphics tool engineered specifically for interaction work. Draw on artboards directly in Framer, then switch over to Code to animate.'
		date: 'May 31, 2017'
		added: 'A new Design tab with a canvas and full-featured toolkit.\nAbility to target layers in Design for animating in Code.\nNew account setup and onboarding flow for all users.\nAn all-new Beginner Tutorial with multi-screen example.\nLinks to Get Started guides in sidebar menus.\nSupport for separate border styles per side.\nSupport for a separate border radius per corner.\nIn-app Intercom support chat.'
		improved: 'Updated Welcome window with more examples.\nFlowComponent with auto-guessing of header and footer.Changed from pixel to point design. \nCollapseable sidebar in both Design and Code.\nSnapping behavior of Preview window.'
		fixed: 'Handling of fullscreen behavior of Preview window.\nCMD+W to close a document when Preview window is active.\nBetter handling for Auto-Code when editing states.'
		deprecated: ''
	}
	{
		version: 'Framer 89'
		shortDescription: 'This release brings you a completely redesigned interface, detaching code from canvas for a smarter but simpler workflow.'
		date: 'April 26, 2017'
		added: 'New sidebar with instant access to layers, states, animations and more.\nAll-new detachable preview window.\nNew preview modes without devices.\nNew welcome window with examples and resources.'
		improved: 'Device switching with quick access to various platforms.\nCleaner, more concise snippets.\nWelcome window examples.'
		fixed: 'Fixed errors when editing states within events.\nFixed right-click in properties panel.'
		deprecated: ''
	}
	{
		version: 'Framer 87'
		shortDescription: 'This release introduces Framer Type, allowing you to design and animate text.'
		date: 'March 23, 2017'
		added: 'The TextLayer to the library. See Docs.\nInsert Menu item for the TextLayer.\nIn-App Docs & Auto-Complete for the TextLayer.\nA utility to load web fonts to the library.'
		improved: 'In-app Cloud integration.'
		fixed: ''
		deprecated: ''
	}
	{
		version: 'Framer 86'
		shortDescription: 'This release brings the ability to create Range Sliders to the Framer Library.'
		date: 'March 3, 2017'
		added: 'The RangeSliderComponent to the library. See Docs.\nSnippet for the RangeSliderComponent.\nAuto-Completion for the SliderComponent.\nAuto-Completion for the RangeSliderComponent.\nAuto-Completion for Value Change Events.\nIn-app documentation of the RangeSliderComponent.'
		improved: 'In-app documentation of Value Change Events.\nIn-app documentation of the SliderComponent.'
		fixed: ''
		deprecated: ''
	}
	{
		version: 'Framer 85'
		shortDescription: 'This update fixes minor issues in the app.'
		date: 'February 21, 2017'
		added: ''
		improved: ''
		fixed: ' \nWelcome window projects would show an update dialog.'
		deprecated: ''
	}
	{
		version: 'Framer 84'
		shortDescription: 'This update brings fixes and improvements to Handoff, a new way to define and re-use your spring animations.'
		date: 'February 18, 2017'
		added: ''
		improved: ''
		fixed: 'Update Library window would not show.\nPreview would show indefinite spinner on some Macs.\nEditing index.html in the project folder would cause a reload without unsaved changes.'
		deprecated: ''
	}
	{
		version: 'Framer 83'
		shortDescription: 'This update introduces Handoff, a new way to define and re-use your spring animations.'
		date: 'February 15, 2017'
		added: 'A new Spring curve syntax, using damping. See Docs.\nThe ability to time your Spring animations.\nAuto-Code support for the new Spring syntax.\nRight-click to copy layer animation values.\nCMD + Click on a layer in the panel to edit its state.'
		improved: 'Syntax of Easing animation curves.\nSyntax of Bezier animation curves.\nFlowComponent Auto-Complete.'
		fixed: 'Scrolling to top when reopening in-app docs.\nRemoved deprecated syntax from Auto-Complete.'
		deprecated: ''
	}
	{
		version: 'Framer 82'
		shortDescription: 'This update fixes minor issues in the app.'
		date: 'January 30, 2017'
		added: ''
		improved: ''
		fixed: 'Saving a project caused a short hang.\nContext menu of layer panel did not show with ctrl-click.'
		deprecated: ''
	}
	{
		version: 'Framer 81'
		shortDescription: 'This update adds handy new shortcuts that speed up your workflow.'
		date: 'January 26, 2017'
		added: 'Directly add animations, states and events for layers from the layer panel.\nHold cmd and click on a layer in the viewer to jump into edit mode.'
		improved: ''
		fixed: '‘Update Framer Library’ not working correctly.\nFramer not relaunching after ‘Move to Applications folder’.'
		deprecated: ''
	}
	{
		version: 'Framer 80'
		shortDescription: 'This update fixes minor issues and features improvements to the app.'
		date: 'January 10, 2017'
		added: ''
		improved: 'Always save to disk before saving to Cloud.\nUpdate Node.js version used for module builder.\nUpdated the Present toolbar icon.'
		fixed: 'Saving could be slow on some Macs.\nDevice Launcher becoming blurry or cropped.\nUse sRGB color space in Auto Code color picker.'
		deprecated: ''
	}
	{
		version: 'Framer 79'
		shortDescription: 'This release brings fixes and improvements to the Framer Cloud integration.'
		date: 'December 23, 2016'
		added: ''
		improved: 'Undo when editing Auto Code properties.'
		fixed: 'Crash when closing documents on macOS 10.11.\nProject documents not opening on some computers.'
		deprecated: ''
	}
	{
		version: 'Framer 78'
		shortDescription: 'This release brings various fixes and refinements to the Framer Cloud integration.'
		date: 'December 22, 2016'
		added: 'Save to Cloud with ⌃ ⌘ S.'
		improved: 'Handle special characters in filenames when opening from Cloud.'
		fixed: 'Longer timeout for upload to Cloud.\nHandling of line breaks when pasting code.\nVarious crashes.'
		deprecated: ''
	}
	{
		version: 'Framer 77'
		shortDescription: 'This release brings Framer Cloud, a workflow that connects to a personal dashboard for rapid iteration and collaboration.'
		date: 'December 20, 2016'
		added: 'Framer Cloud integration.\nFramer Cloud uploading experience.\nFramer Cloud toolbar icon and popover.'
		improved: 'JP2 compatibility for different versions of macOS.\nOverall stability.'
		fixed: 'Highlighting bug of multiline comments.\nHighlighting bug of folds.\nA possible crash when updating modules.'
		deprecated: ''
	}
	{
		version: 'Framer 76'
		shortDescription: 'This release introduces the FlowComponent, making it easier to quickly navigate and transition between multiple screens.'
		date: 'December 1, 2016'
		added: 'The FlowComponent — see full documentation. \nNew FlowComponent snippets.\nNew FlowComponent auto-completion.'
		improved: 'JPEG2000 rendering of device resources.'
		fixed: 'Utils.labelLayer font size rendering.'
		deprecated: ''
	}
	{
		version: 'Framer 75'
		shortDescription: 'This release brings huge performance improvements and a visual refresh.'
		date: 'November 24, 2016'
		added: 'New syntax coloring theme.\nRefreshed toolbar icons.\nLight Layer & Properties Panel Design.\nGoogle Pixel Devices.\nModules can be put in subdirectories of the modules folder.\nLimited support for while loops.'
		improved: 'Performance of the editor and the app in general.\nAlignment of line numbers and edit button deepblue s.\nContrast of multiline strings and comments.\nError indications in code editor.\nConverted codebase to Swift 3.'
		fixed: 'Issue when commenting multiple lines around a code fold.\nCrash when commenting multiple lines of code.\nSketch importing for text layers with newlines.\nSketch importing for flipped layers.\nSyntax highlighting issues, including multiline highlights.\nAnimating to point, size and frame.'
		deprecated: ''
	}
	{
		version: 'Framer 73'
		shortDescription: 'This release introduces a brand new way to design animations with Auto-Code Animation.'
		date: 'October 13, 2016'
		added: 'Layer and State animation editing abilities.\nNew AutoCode Animation Panel for properties and options.\nA way to edit multiple animations (in loops) simultaneously.\nNew Layer and state animation insert options.\nNew playback controls to loop, play and slowdown animations.\nKeyboard shortcuts for Properties and Options panels.\nClose button deepblue to print console.'
		improved: 'Auto-Code detection of layers in event handlers.\nAuto-Code detection of layers in do-blocks.\nAuto-hiding of print console in edit mode.\nLookup of delayed animations in Framer.Context.\nWelcome Window Examples and Snippets to new syntax.'
		fixed: 'Import sheet transparency bug on Sierra.\nBorder-radius of input fields in AutoCode Panels.\nBug when sharing projects with deep subdirectories.\nBug in stateCycle() and states.next() without options.\nProject showing warnings in the console when sharing.\nError in console when opening new documents.'
		deprecated: ''
	}
	{
		version: 'Framer 72'
		shortDescription: 'This release improves Framer Library’s stability and resolves issues from v71.'
		date: 'October 4, 2016'
		added: 'animation.finish() to directly jump to a layer’s final state.'
		improved: 'Support for inline base64 images with Utils.isLocalAssetUrl().'
		fixed: 'The default animation options of PageComponents.\nLayer names of "0" to correctly show up in the layer panel.stateCycle() to keep using the set animation options.\nState animations to correctly listen to options.start.\nAnimations to not be executed when no properties were changed.'
		deprecated: ''
	}
	{
		version: 'Framer 71'
		shortDescription: 'This release introduces Inline Reporting — a smart feature that helps you quickly find, correct and understand code errors.'
		date: 'September 29, 2016'
		added: 'Inline reporting of errors.\nAutocomplete suggestions for code errors.\niPhone 7 Devices.\niPhone 7 Plus Devices.\nApple Watch Series 2 Devices.\nApple Watch Nike+ Devices.'
		improved: 'Handling of expired licenses.\nAdditional Autocomplete suggestions.\nClear errors when mixing spaces and tabs.\nJump to error when clicking the error message.\nChanges to modules automatically trigger a reload.\nAlways render device when embedded in an iframe.'
		fixed: 'Line numbers at large font sizes.\nDesktop and TV devices could be rotated.\nBetter module debugging in the inspector using source maps.\nVideoLayer for iOS 10 (thanks George Kedenburg III).'
		deprecated: ''
	}
	{
		version: 'Framer 70'
		shortDescription: 'This release adds all-new desktop devices, a detachable canvas, intuitive device selection and a functional Welcome window.'
		date: 'September 8, 2016'
		added: 'Detachable canvas for dual-screen prototyping.\nDevice Launcher for a quick start.\nApple Macbook Pro Device.\nApple Macbook Air Device.\nApple Macbook Device.\nApple iMac Device.\nDell XPS Device.\nSony TV Device.'
		improved: 'Welcome window experience with community search.\nWelcome window examples.\nDevice menu organization.\nAllow hints color to be set.'
		fixed: 'Touch emulation disabled on desktop devices.\nCustom cursor bugs in edit mode.\nZooming on custom devices.\nImported Sketch filenames with special characters.\nLayer Panel scrolling issues.\nCopied layer names in Layer Panel.\nInsert Menu not working after first import.'
		deprecated: ''
	}
	{
		version: 'Framer 69'
		shortDescription: 'This release introduces Figma importing.'
		date: 'August 23, 2016'
		added: 'Import your designs from Figma, the online graphics editor.Screen.midX and Screen.midY to return align-center values of the screen.\nSnippets for hints and sharing chrome.'
		improved: 'Now firing Move events when scrolling with mouse wheel.\nNow firing Scroll events when animating ScrollComponent.\nImproved loading state when generating project preview images.\n10 second timeout when generating project preview images.'
		fixed: 'Keep imports above the Project Info fold.\nCrash on ⌘]︎'
		deprecated: ''
	}
	{
		version: 'Framer 68'
		shortDescription: 'This release introduces a new and better way to share your Framer projects.'
		date: 'August 4, 2016'
		added: 'A preloader for images and media before displaying the design.\nHints to indicate interactive areas.\nSharing Component that displays project information when shared.\nAnimation option for looping: looping: true.\nAnimation option to run instantly: instant: true.\nA Framer.Info snippet in a fold by default for new projects.\nAutomatic snapshot creation to give a rich project sharing preview.\nOption to place snippets in folders for better organization.\nA warning when sharing projects with long filenames.'
		improved: 'Point conversion APIs between Layer, Canvas and Screen.\nCursor images to be overridable. Find the images in framer/images/.\nGesture event points to be screen based.\nImage scaling in Chrome on retina devices.\nDevices on Chrome to use .webp compression for faster loading.\nSliderComponent to work vertically.midX and midY to return x and y when there\'s no width or height.\nScrollComponent naming in layer panel.layer.copy now also copy over layer styles.\nSnippet organisation, naming and content.\nSnippet editability with a shortcut (Hold Option when opening).\nSharing by increasing the maximum file size to 32MB.\nThe looks for errors that occur in external scripts.\nURLs to be clickable when holding down CMD.'
		fixed: 'An issue where EdgeSwipe gestures didn’t work.\nAn issue with Framer.Defaults not being saved.\nAn issue where Layer names would differ in the browser.\nA reference error introduced when working with States.'
		deprecated: 'BackgroundLayer as Screen.backgroundColor is preferred.'
	}
	{
		version: 'Framer 67'
		shortDescription: 'This release brings Framer Preview, a new way to preview designs across all iOS devices.'
		date: 'July 21, 2016'
		added: 'Mirror security with an access code per project.\nMirror menu to contain a link to the new Framer for iOS.\nSupport for submenus in the snippet menu by creating folders.'
		improved: 'Import paths to be clickable when pressing cmd (opens Finder).\nImages to be added by dragging straight from Sketch.\nGesture Events to be device screen based rather then Canvas based.'
		fixed: 'Syntax highlighting for numbers starting with a ..\nA scroll lag in the editor when clicking layers in the layer panel.\nThe ordering of user added snippets.\nIssues with Sketch 39.\nFont rendering issues in folds on resize.\nInteractions with arrow keys in folds.\nIssues with special characters in document name.\nPositioning issues with Sketch Importer.\nIssues with image loading.\nAn issue with scrolling nested ScrollComponents.\nAn issue with BackgroundLayer when no device is present.\nAn issue where the normal and multi-touch cursors looked different.'
		deprecated: ''
	}
	{
		version: 'Framer 66'
		shortDescription: 'This release adds support for MIDI and contains other small fixes.'
		date: 'June 30, 2016'
		added: 'Support Shift + Tab for outdenting.'
		improved: 'Change MIDIControl to MIDIComponent.\nSaving of projects for third-party tools.\nOverwrite existing projects by moving them to trash.\nA proxy no longer disables Framer projects.\nDevice rotation support.'
		fixed: 'Several issues on macOS Sierra.\nAn issue where the last PageComponent page was hidden.\nAn issue where PageComponent.wrap() added sublayers.\nAn issue where code highlighting would disappear.'
		deprecated: ''
	}
	{
		version: 'Framer 64'
		shortDescription: 'This release introduces Code Folds to help you easily organize big projects.'
		date: 'June 9, 2016'
		added: 'Code Folds to help you manage big projects.\nMIDI support with the MIDIControl component.\nImporter support for Sketch 3.9.'
		improved: 'Local preview URL stays the same across launches.\nAuto refresh setting by moving it to the menu.\nRecent files are now keyboard selectable.\nReloading when framer.debug.js changes.'
		fixed: 'An issue that sent an email after a crash.\nAn issue where the layer panel wouldn’t show all code.\nA hard crash when errors occur with a cyclic data structure.'
		deprecated: ''
	}
	{
		version: 'Framer 63'
		shortDescription: 'This release focuses on quality control, speed and overall stability.'
		date: 'May 11, 2016'
		added: 'Support for PDF and SVG image dropping\nA file manifest for future offline caching\nThe build number when you click the version in the about window\nMost common error tracking with the goal to learn about and eventually improve error messagesUtils.randomImage(size) to quickly get a random unsplash imageContext.destroy() to destroy contextsColor.grey(value) to quickly create grey values\nOn/off shortcuts for Events.wrap() \nVisual feedback on JavaScript issues in the browser or on mobile\nA pdf image placeholder for browsers that don’t support inline pdf’s'
		improved: 'Upload error messaging if unsuccessful\nLooks for auto complete window\nSpeed by updating to latest V8\nThe way files are saved\nThe way auto code works with default values for objects\nDefault .gitignore file for projects to exclude updated files\nThe size of the error button deepblue \nThe looks of the update framer.js and download project windows\nBehavior of lines numbers when changing the editor font sizeUtils.round(value) to take increments, min and max valuesAlign to directly work with pointlayer.point to optionally take a single numberCanvas to emit “change:x” for width, height, size and frame\nStates to optionally take parents'
		fixed: 'An issue where undo adding a layer state didn’t remove .states.add \nAn issue where text inserted by auto code got garbled\nMultiple undo issues with the editor\nAn issue with uploading unneeded files (like “Icon\\r”)\nAn issue with uploading errors due to ssl\nAn issue where Framer would quit before saving changes\nAn issue where documents couldn’t be closed, or the app couldn’t quit\nAn issue with file backups in /framer/backups \nAn issue with the trial button deepblue being cut off\nAn issue where beta would show the stable icon in the about window\nAn issue where resizing ScrollComponent changes the scroll position\nMultiple issues when point, size and frame used Align\nAn issue with gestures on Android\nAn issue in the touch emulator where you clicked option before you moved your mouse\nIssues setting constructor options for layer.props, layer.copy() \nAn issue where tablets would identify as a phone\nA retina image subsampling issue on Chrome and future Safari\nAn issue where an invalid context index would be set'
		deprecated: ''
	}
	{
		version: 'Framer 62'
		shortDescription: 'This release fixes a lot of issues that version 57 introduced and adds support to do calculations in the Property Panel.'
		date: 'April 25, 2016'
		added: ' \nSupport for simple calculations in the Property Panel\nBasic metadata like style and string for Sketch imports'
		improved: 'Visual error state with a new color\nThe default font of the Property Panel to San Francisco\nSketch Symbol Artboards are now ignored'
		fixed: 'An issue where visually editing layers could lead to broken code\nA set of issues caused by "undo"\nRare crashes with the type inferencer\nIssues that made files to go into an unsaved state when already saved\nA crash that occurred when using while loops\nAn issue where modifying colors modified the color instances\nAn issue where setting HTML would change the background\nAn issue where symbol overrides were ignored\nImport issues caused by fragile output parsing with Sketch\nImport issue where Framer picked the wrong version of Sketch\nIssue that occurred when properties were set to NaN'
		deprecated: ''
	}
	{
		version: 'Framer 61'
		shortDescription: 'This release introduces the Align class to make positioning Layers a lot easier.'
		date: 'April 12, 2016'
		added: ' \nThe Align class, full documentation here '
		improved: 'The default Layer size to 200 by 200\nThe default Layer color to neutral grey\nHow detection for click versus drag works\nThe default spring curve to a more subtle spring\nThe way images fill if a Layer is too small, this now centers it\nGeneral animation performance\nThe application name to Framer.app, dropping Studio\nThe default variable name for images and videos is now the file name\nThe document upgrade dialog'
		fixed: 'Issues between draggable Layers and several components'
		deprecated: ''
	}
	{
		version: 'Framer 57'
		shortDescription: 'In this release we completely rewrote Sketch import from the ground up.'
		date: 'March 24, 2016'
		added: 'Use a minus after the layer name to ignore a layer group\nMake layers a .png by adding .png to the layer name'
		improved: 'Artboard backgrounds are white by default\nExporting non-transparent bitmap layer groups as .jpg \nEvent callbacks by removing the draggable parameter'
		fixed: 'Issues with nested masking\nArtboard positioning bugs\nImport issue which removed _ in layer names\nImport issue which removed - in layer names\nMinor issues with the Photoshop importer\nEnlarged retina cursor\nNon-retina toolbar in the welcome window'
		deprecated: ''
	}
]