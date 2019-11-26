Pod::Spec.new do |s|
   s.name = 'ReactiveCollectionsKit'
   s.version = '0.1.0'
   s.license = 'MIT'

   s.summary = 'TODO'
   s.homepage = 'https://github.com/jessesquires/ReactiveCollectionsKit'
   s.documentation_url = 'https://jessesquires.github.io/ReactiveCollectionsKit'
   s.social_media_url = 'https://twitter.com/jesse_squires'
   s.author = 'Jesse Squires'

   s.source = { :git => 'https://github.com/jessesquires/ReactiveCollectionsKit.git', :tag => s.version }
   s.source_files = 'Sources/*.swift'

   s.swift_version = '5.1'

   s.ios.deployment_target = '13.0'

   s.requires_arc = true
end