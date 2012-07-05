; --------------------------------
; WebBuild makefile
; --------------------------------
  
; Core version
; ------------
; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.
  
core = 7.x
  
; API version
; ------------
; Every makefile needs to declare its Drush Make API version. This version of
; drush make uses API version `2`.
  
api = 2
  
; Core project
; ------------
; In order for your makefile to generate a full Drupal site, you must include
; a core project. This is usually Drupal core, but you can also specify
; alternative core projects like Pressflow. Note that makefiles included with
; install profiles *should not* include a core project.

includes[] = "https://raw.github.com/makara/buildkit_plus_v7/master/core.make"



; Modules
projects[libraries][version] = 2.0-alpha2
projects[libraries][subdir] = "contrib"
projects[libraries][type] = "module"

projects[twitter_bootstrap_ui][type] = "module"
projects[twitter_bootstrap_ui][subdir] = "contrib"
projects[twitter_bootstrap_ui][version] = "2.x-dev"

; Themes
projects[twitter_bootstrap][type] = "theme"
projects[twitter_bootstrap][version]= "2.x-dev"

projects[omega][type] = "theme"
projects[omega][version] = "3.1"

; Libraries
libraries[bootstrap][download][type] = "file"
libraries[bootstrap][download][url] = "http://twitter.github.com/bootstrap/assets/bootstrap.zip"