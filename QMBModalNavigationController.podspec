Pod::Spec.new do |s|
  s.name         = 'QMBModalNavigationController'
  s.version      = '1.0'
  s.license      =  :type => 'MIT'
  s.homepage         = 'https://github.com/quemb/QMBModalNavigationController'
  s.authors      =  'Toni Moeckel' => 'tonimoeckel@gmail.com'
  s.summary      = ''

# Source Info
  s.platform     =  :ios, '6.0'
  s.source       =  :git => 'https://github.com/quemb/QMBModalNavigationController.git', :tag => '1.0'
  s.source_files = 'QMBModalNavigationController/*.{h,m}'
  s.requires_arc = true
  
# Pod Dependencies
  s.dependency       'FontAwesomeIconFactory', '~> 1'

end