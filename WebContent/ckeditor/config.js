/**
 * @license Copyright (c) 2003-2017, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here.
	// For complete reference see:
	// http://docs.ckeditor.com/#!/api/CKEDITOR.config

	// The toolbar groups arrangement, optimized for two toolbar rows.
	config.toolbarGroups = [
		{ name: 'clipboard',   groups: [ 'clipboard', 'undo' ] },
		{ name: 'editing',     groups: [ 'find', 'selection', 'spellchecker' ] },
		{ name: 'links' },
		{ name: 'insert' },
		{ name: 'forms' },
		{ name: 'tools' },
		{ name: 'document',	   groups: [ 'mode', 'document', 'doctools' ] },
		{ name: 'others' },
		'/',
		{ name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
		{ name: 'paragraph',   groups: [ 'list', 'indent', 'blocks', 'align', 'bidi' ] },
		{ name: 'styles' },
		{ name: 'colors' },
		{ name: 'about' }
	];
	
	config.toolbar_ImgUpdate =     
        [                
        	{ name: 'clipboard',   groups: [ 'clipboard', 'undo' ] } 
        ]; 
	config.toolbar_Announce = 
		[
			{ name: 'clipboard',   groups: [ 'clipboard', 'undo' ] },
			{ name: 'editing',     groups: [ 'find', 'selection', 'spellchecker' ] },
			{ name: 'links' },
			{ name: 'insert' },
			{ name: 'forms' },
			{ name: 'tools' },
			{ name: 'document',	   groups: [ 'mode', 'document', 'doctools' ] },
			{ name: 'others' },
			'/',
			{ name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
			{ name: 'paragraph',   groups: [ 'list', 'indent', 'blocks', 'align', 'bidi' ] },
			{ name: 'styles' },
			{ name: 'colors' },
			
		];

	// Remove some buttons provided by the standard plugins, which are
	// not needed in the Standard(s) toolbar.
	config.removeButtons = 'Underline,Subscript,Superscript';

	// Set the most common block elements.
	config.format_tags = 'p;h1;h2;h3;pre';

	// Simplify the dialog windows.
	config.removeDialogTabs = 'image:advanced;link:advanced';
	
	// 上传文件时浏览服务文件夹                                                                                                       
	config.filebrowserBrowseUrl ='http://localhost:8080/HelloWorld/ckfinder/ckfinder.html';                                                           
	// 上传图片时浏览服务文件夹                                                                                                        
	config.filebrowserImageBrowseUrl ='http://localhost:8080/HelloWorld/ckfinder/ckfinder.html?Type=Images';                                          
	// 上传Flash时浏览服务文件夹                                                                                                     
	config.filebrowserFlashBrowseUrl ='http://localhost:8080/HelloWorld/ckfinder/ckfinder.html?Type=Flash';                                           
	// 上传文件按钮(标签)                                                                                                         
	config.filebrowserUploadUrl ='http://localhost:8080/HelloWorld/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files';       
	// 上传图片按钮(标签)                                                                                                         
	config.filebrowserImageUploadUrl ='http://localhost:8080/HelloWorld/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images';  
	// 上传Flash按钮(标签)                                                                                                      
	config.filebrowserFlashUploadUrl ='http://localhost:8080/HelloWorld/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash';  
	
    config.filebrowserWindowHeight='50%';//CKFinder浏览窗口高度,默认值70%
    config.filebrowserWindowWidth='70%';//CKFinder浏览窗口宽度,默认值80%

};
