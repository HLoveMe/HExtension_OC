Pod::Spec.new do |s|
s.name         = 'HExtension'
s.version      = '1.0.2'
s.summary      = 'Dictionary to model'
s.homepage     = 'https://github.com/HLoveMe'
s.license      = 'MIT'
s.authors      = {'zhuZiHao' => '2436422656@qq.com'}
s.platform     = :ios, 
s.source       = {:git => 'https://github.com/HLoveMe/HExtension_OC.git', :tag => s.version}
s.source_files = 'source/HExtension/**/*.{h,m}'
s.requires_arc = true
end