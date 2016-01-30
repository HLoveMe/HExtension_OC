Pod::Spec.new do |s|
s.name         = 'HExtension_OC'
s.version      = '1.01'
s.summary      = 'Dictionary to model'
s.homepage     = 'https://github.com/HLoveMe'
s.license      = 'MIT'
s.authors      = {'zhuZiHao' => '2436422656@qq.com'}
s.platform     = :ios, '7.0'
s.source       = {:git => 'https://github.com/HLoveMe/HExtension_OC.git', :tag => s.version}
s.source_files = 'HExtension/HExtension/**/*.{h,m}'
s.requires_arc = true
end