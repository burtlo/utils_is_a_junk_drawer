require './busy'

def open_connection ; @connected = true ; end
def connected ; @connected ; end
def execute(cmd) ; puts "$$ #{cmd}" ; end

close_connection = lambda do
  puts "Closing Connection!"
  @connected = false
end

Vagrant::Util::Busy.busy(close_connection) do

  open_connection!
  while connected
    print "> "
    input = STDIN.gets
    execute(input)
  end
end
