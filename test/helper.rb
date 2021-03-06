ENV["environment"] = "test"

require 'bundler/setup'
Bundler.require(:default, :test)
require 'shoulda'


class Test::Unit::TestCase

  def setup
    super
    MagickTitle.options[:root] = File.expand_path("../dummy", __FILE__)
    MagickTitle.options[:log_command] = false
    FileUtils.rm_r MagickTitle.options.destination if Dir.exists?(MagickTitle.options.destination)
  end
  
  def teardown
    # nada
  end

end