class Module
  def rake_extension(method)
    if instance_methods.include?(method)
      $stderr.puts "WARNING: Possible conflict with Rake extension: #{self}##{method} already exists"
    else
      yield
    end
  end
end