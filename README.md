Elrte Rails
===========

Requirments
-----------

* Rails 3.1+ (need asset pipline, feel free to help me add 3.0 support)
* Gem [el_finder](https://github.com/phallstrom/el_finder) (in gem dependencies)

Installation
------------

Include gem into to your Gemfile

     gem 'elrte'

Install gems from gemfile

    $ bundle install

Generate gem files

    $ rails generate elrte:install

Require javascript file (in application.js or may be in active_admin.js)

    //= require elrte

Also if include jquery if you need

    //= require jquery
    //= require jquery-ui

Require stylesheet file (in application.css or may be in active_admin.css)

    @import 'elrte';

Add class 'editor' to needed fields and you will see WYSIWYG elfinder editor instead of textareas

Help
== 

Need your feasible help. Feel free to add issue about found bugs, send me pull request with fixes.

Related projects
== 

* [Elrte demo](http://elrte.org/demo)
* [Elfinder demo](http://elfinder.org/)
* [elRTE on Github](https://github.com/Studio-42/elRTE)
* [https://github.com/phallstrom/el_finder](https://github.com/phallstrom/el_finder) by [phallstrom](https://github.com/phallstrom)

Contributing
== 

1. Fork it.
2. Create a branch (git checkout -b critical_bug)
3. Commit your changes (git commit -am "Fixed critical bug")
4. Push to the branch (git push origin critical_bug)
5. Create an Issue with a link to your branch
6. Wait