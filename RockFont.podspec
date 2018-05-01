Pod::Spec.new do |s|

  s.name = "RockFont"
  s.version = "0.0.1"
  s.license = 'MIT'
  s.summary = "RockFont is a framework written in swift to change easier and fast all fonts in your app"
  s.homepage = "https://github.com/andresilvagomez/RockFont"
  s.author = { "Andres Silva" => "andresilvagomez@gmail.com" }
  s.source = { :git => "https://github.com/andresilvagomez/RockFont.git", :tag => "0.0.1" }

  s.ios.deployment_target = '9.0'
  s.source_files = "Source/*.swift"

  s.test_spec 'RockFont' do |test_spec|
    test_spec.source_files = 'Tests/*.swift'
  end 

end
