platform :ios, '8.0'

inhibit_all_warnings!

xcodeproj 'MovieWebService'
link_with 'MovieWebService', 'MovieWebServiceTests'

target 'MovieWebService' do
	pod 'ReactiveCocoa', '~> 2.4.7'
	pod 'Mantle', '~> 2.0.4'
end

target 'MovieWebServiceTests' do
	pod 'Specta', '~> 1.0.4'
  	pod 'Expecta', '~> 1.0.3'
end
