Pod::Spec.new do |s|
    s.name             = 'Yodo1WeiboSDK'
    s.version          = '1.0.1'
    s.summary          = 'A short description of Yodo1WeiboSDK.'
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
                       DESC
    tags               = 'Yodo1WeiboSDK_1_0_1'                   
    s.homepage         = 'http://git.yodo1.cn/'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => tags + '/LICENSE' }
    s.author           = { 'yixian huang' => 'huangyixian@yodo1.com' }
    s.source           = { :http => 'http://download.sdk.yodo1.cn/iOSLib/'+ tags + '.zip' }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.ios.deployment_target = '7.0'


    s.source_files = tags + '/Classes/*.h'
    s.public_header_files = tags + '/Classes/*.h'
    s.vendored_libraries = tags + '/Classes/*.a'
    s.resources = tags + '/Classes/*.bundle'
    s.xcconfig = {
        "OTHER_LDFLAGS" => "-ObjC",
        "ENABLE_BITCODE" => "NO",
        "ONLY_ACTIVE_ARCH" => "NO"
    }
    s.requires_arc = true
    s.frameworks = 'UIKit', 'Foundation','ImageIO','SystemConfiguration','CoreText','QuartzCore','Security','CoreGraphics','CoreTelephony'

    s.libraries = 'sqlite3','z'

end
