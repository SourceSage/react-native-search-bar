require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                = 'ReactNativeSearchBar'
  s.version             = package['version']
  s.summary             = package['description']
  s.description         = package['description']
  s.homepage            = package['homepage']
  s.license             = package['license']
  s.author              = package['author']
  s.source              = { :git => 'https://github.com/hanquochan/react-native-search-bar.git'}
  s.platform              = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  s.dependency 'React'
  s.preserve_paths      =  'LICENSE', 'package.json'
  s.source_files        = '**/*.{h,m}'
  s.exclude_files       = 'SearchBarExample, SearchBar.png'
end
