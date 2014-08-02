require 'active_support'

# Prepare Watcher
def watcher
  @watcher ||= ActiveSupport::Dependencies::WatchStack.new
end

def prepare_watcher!
  ActiveSupport::Dependencies.clear
  watcher.watch_namespaces([ Object ])
end

# Load the files

def load_files
  $LOAD_PATH.unshift(Dir.pwd) unless $LOAD_PATH.include?(Dir.pwd)
  load_path 'lib'
end

def load_path(path,options = {})
  files = Dir["#{path}/**/*.rb"]
  files.each {|file| require_or_load file }
end

# Mark Constants As Unloadable

def mark_constants_as_unloadable!
  watcher.new_constants.each { |constant| unloadable constant }
end

