package = JSON.parse(File.read('package.json'))

Pod::Spec.new do |spec|
  spec.name = package['name']
  spec.version = package['version']
  spec.summary = package['description']
  spec.license = package['license']
  spec.platform = :ios, '9.0'
  spec.source_files = 'ios/*.{h,m}'
  spec.dependency 'React-Core'
end
