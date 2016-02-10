require 'test_helper'
require 'rake'


class RackCache16DragonflyTest < ActionDispatch::IntegrationTest
  def setup
    setup_cache_context
  end
  
  test "Test Dragonfly with rack cache" do
    Rake.application.invoke_task "tmp:clear"
    
    url = Dragonfly.app.fetch_file('files/Black-Sabbath-In-The-70s-Hd-Wallpaper.jpg').thumb("100x100#").url
     
    puts "Get URL #{url}"
   
    get url
  end
end
