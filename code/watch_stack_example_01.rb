require 'active_support'

# Prepare Watcher

def watcher
  @watcher ||= ActiveSupport::Dependencies::WatchStack.new
end

def prepare_watcher!
  ActiveSupport::Dependencies.clear
  watcher.watch_namespaces([ Object ])
end