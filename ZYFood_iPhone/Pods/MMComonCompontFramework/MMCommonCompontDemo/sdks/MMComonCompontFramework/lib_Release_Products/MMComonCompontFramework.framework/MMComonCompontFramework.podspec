
#  关键命令
#  pod repo push DWPrivateSpec MMComonCompontFramework.podspec --verbose --allow-warnings
#  pod spec lint MMComonCompontFramework.podspec --verbose --allow-warnings

#  私有库引用私有库
#  pod spec lint --sources='#私有库b的远程仓库地址(如：http://xxxxxx.git)#,https://github.com/CocoaPods/Specs'
#　pod repo push #本地Repo名字# #.podspec名# --sources='[私有库b的远程仓库地址(如：http://xxxxxx.git)],https://github.com/CocoaPods/Specs'

# demo：
#　pod spec lint --sources='http://xxxxxx/iOSRepos.git,https://github.com/CocoaPods/Specs'

#　pod repo push iOSTest iOSTest.podspec --sources='http://git.yinqiyun.com/xfx/iOSRepos.git,https://github.com/CocoaPods/Specs'


#  Be sure to run `pod spec lint MMComonCompontFramework.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "MMComonCompontFramework"
  s.version      = "2.0.1"
  s.summary      = "毛毛家私房菜共同组件库"

  s.description  = <<-DESC
                   毛毛家私房菜共同组件库,，存放一些公共配置
                   DESC

  s.homepage     = "https://gitee.com/zxfmpy/MMFoodCommonComponent"
  s.author             = { "左晓峰" => "zxfmpy@163.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://gitee.com/zxfmpy/MMFoodCommonComponent.git", :tag => "#{s.version}" }
#s.source_files  = "MMCommonCompontDemo/sdks/MMComonCompontFramework/MMComonCompontFramework/DBManager/**/*.{h,m}"

  s.resource  = "MMCommonCompontDemo/sdks/MMComonCompontFramework/MMComonCompontFramework/resources/MMCommonBundle.bundle"

  s.frameworks = "Masonry", "FMDB","MBProgressHUD","IQKeyboardManager","MJRefresh","SDWebImage","Masonry","tinyxml","CTMediator"
  s.vendored_frameworks  = ['MMCommonCompontDemo/sdks/MMComonCompontFramework/lib_Release_Products/MMComonCompontFramework.framework']

s.dependency "Masonry", "~> 1.1.0"
s.dependency "FMDB", "~> 2.7.2"
s.dependency "MBProgressHUD", "~> 1.1.0"
s.dependency "IQKeyboardManager", "~> 6.0.3"
s.dependency "MJRefresh", "3.1.15.7"
s.dependency "SDWebImage", "~> 4.3.3"
s.dependency "PromisesObjC", "~> 1.2.2"
s.dependency "tinyxml", "~> 2.1.0"
s.dependency "CTMediator", "~> 25"

end














