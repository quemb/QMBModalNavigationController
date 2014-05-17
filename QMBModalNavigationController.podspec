Pod::Spec.new do |s|
  s.name             = "QMBModalNavigationController"
  s.version          = '1.0.0'
  s.summary          = ""
  s.license          = 'MIT'
  s.author           = { "Toni Moeckel" => "tonimoeckel@gmail.com" }
  s.homepage         = 'https://github.com/quemb/QMBModalNavigationController'
  s.source           = { :git => 'https://github.com/quemb/QMBModalNavigationController.git', :tag => '1.0.0' }
  s.platform         = :ios, '7.0'
  s.source_files     = 'QMBModalNavigationController/*.{h,m}'
  s.requires_arc     = true
  s.dependency       'FontAwesomeIconFactory', '~> 1'
end
