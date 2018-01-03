Pod::Spec.new do |s|
    s.name             = 'Yodo1Commons'
    s.version          = '1.0.0'
    s.summary          = '2018.1.3第一版sdk'

    s.description      = <<-DESC
    TODO: Add long description of the pod here.
                       DESC

    tags               = 'Yodo1Commons'

    s.homepage         = 'https://github.com'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'yixian huang' => 'huangyixian@yodo1.com' }
    s.source           = { :git => "https://github.com/8AGame/Yodo1Libs.git", :tag => "#{s.name}" +"#{s.version}" }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.ios.deployment_target = '7.0'

    s.source_files = "#{s.name}" + "/*.{h,m,mm}"
    
    s.public_header_files = "#{s.name}" + '/*.h'

    s.resources = "#{s.name}" + '/Yodo1SDKStrings.bundle'
    
    s.vendored_libraries = "#{s.name}" + '/*.a'

    s.libraries = 'sqlite3', 'z', 'stdc++'
    s.compiler_flags = '-Dunix'
    s.requires_arc = true
    
    s.xcconfig = {
        "OTHER_LDFLAGS" => "-ObjC",
        "ENABLE_BITCODE" => "NO",
        "ONLY_ACTIVE_ARCH" => "NO"
    }

    s.frameworks = 'Accounts', 'AssetsLibrary','AVFoundation', 'CoreTelephony','CoreLocation', 'CoreMotion' ,'CoreMedia', 'EventKit','EventKitUI', 'iAd', 'ImageIO','MobileCoreServices', 'MediaPlayer' ,'MessageUI','MapKit','Social','StoreKit','Twitter','WebKit','SystemConfiguration','AudioToolbox','Security','CoreBluetooth'

    s.weak_frameworks = 'AdSupport','SafariServices','ReplayKit','CloudKit','GameKit','CoreFoundation'

end
