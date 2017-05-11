Pod::Spec.new do |s|


  s.name                    = "MyMainProj"
  s.version                 = "0.0.1"
  s.summary                 = "A short description of MyMainProj."
  s.homepage                = "https://github.com/Keanyuan/MyMainProj"
  s.license                 = "MIT"
  s.platform                = :ios
  s.author                  = { "qizhiyuan" => "617293977@qq.com" }
  s.ios.deployment_target  = "8.0"

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/Keanyuan/MyMainProj.git", :tag => s.version }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = "Classes", "MyMainProj/MyMainProj/Classes/LDCategory/*.{h,m}"

  
end
