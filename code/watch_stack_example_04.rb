require 'listen'

def reload!
  prepare_watcher!
  load_files
  mark_constants_as_unloadable!
end

def watch_filepaths(filepaths)
  listener = Listen.to(*filepaths)
  listener.change(Proc.new { |mod,add,rem| reload! })
  listener.start
end

Thread.new { watch_filepaths(watched_filepaths) }
