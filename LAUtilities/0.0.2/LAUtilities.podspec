Pod::Spec.new do |s|
  s.prefix_header_file = 'Project/LAUtilities/LAUtilities-Prefix.pch'
  s.name         = "LAUtilities"
  s.version      = "0.0.2"
  s.summary      = "Useful iOS utility functions developed over the years."
  s.homepage     = "https://bitbucket.org/larromba/lautilities"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Lee Arromba" => "larromba@gmail.com" }
  s.source       = { :git => "https://larromba@bitbucket.org/larromba/lautilities.git", :tag => "v#{s.version}" }
  s.platform     = :ios, '6.0'
  s.ios.deployment_target = '6.0'
  s.ios.framework = 'QuartzCore'
  s.ios.framework = 'CoreData'
  s.ios.dependency 'hpple', '~> 0.2.0'
  s.ios.dependency 'Reachability', '~> 3.1.1'
  s.ios.dependency 'OCMock', '~> 2.2.2'
  s.ios.dependency 'AFNetworking', '~> 2.2.0'
  s.resources = 'Resources/*'
  s.subspec 'arc' do |sp|
    sp.source_files = 'Classes/ios/**/*.{h,m}'
    sp.requires_arc = true
  end
end
