# Utilio #

A general collection of application utilities for dealing with paths and active_record.

## Installation ##

Use rubygems, like a good boy should.

	install gem utilio
	
## Usage ##

### Path Utilities ###

Path utilities mainly for root and app. Also a simple helper for loading yaml files from the root of your app.

	# file: /code/myapp/myapp.rb
	require 'utilio'
	
Set root to an absolute or relative location. If you choose not to set the root path, Utilio assumes' it's the directory of the running ruby file (e.g. `File.dirname($0)`).

	Utilio::Path.root = File.dirname(__FILE__)
	Utilio::Path.root = '/some/random/dir'

Read the root path:

	Utilio::Path.root
	
Concatenating paths onto root path (ala File#join). Note that this doesn't modify subsequent calls to `Utilio::Path.root`.

	Utilio::Path.root 'db', 'migrate' #=> /code/myapp/myapp/db/migrate
	
App folder shortcut (equivalent to doing `Utilio::Path.root 'app', ...`):

	Utilio::Path.app 'models' #=> /code/myapp/myapp/app/models
	
Loading yaml file contents (see YAML#load_file):

	Utilio::Path.yaml_file 'config', 'settings.yml'
	
### Database Utilities ###

Database utilities for simple config loading. Note that this depends on Utilio::Path.root, so set that if you need to.

	# file /code/myapp/myapp.rb
	require 'utilio'
	
Load the configuration file from it's default location ({ROOT}/config/database.yml). Note this gives you the full file contents (all env's).

	Utilio::Database.config
	
You can specify the specific env to use as well as the location of the file for all you misfits out there who just happen to call your config directory `conf`. Creepy.

	Utilio::Database.config :environment => ENV['RACK_ENV'], :file => 'some_random_directory/database.yml'

## Note on Patches/Pull Requests ##

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright ##

Copyright (c) 2010 BJ Neilsen. See LICENSE for details.
