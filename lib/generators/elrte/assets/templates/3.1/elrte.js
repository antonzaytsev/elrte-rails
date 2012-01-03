//= require elrte/base

/**
 * You can easily create own toolbar,
 * read how to: http://elrte.org/redmine/projects/elrte/wiki/Docs_EN#Toolbar
 */

jQuery(function($){
  var opts = {
    absoluteURLs: false,
    cssClass : 'el-rte elrte-editor',
    lang     : 'en',
    height   : 420,
    toolbar  : 'ruby_elrte',
    fmOpen : function(callback) {
      $('<div id="my_elfinder" />').elfinder({
        url : '/elfinder',
        lang : 'en',
        dialog : { width : 900, modal : true, title : 'elFinder - file manager for web', resizable: true },
        closeOnEditorCallback : true,
        editorCallback : callback
      });
    }
  };
  $('.editor').elrte(opts);
});