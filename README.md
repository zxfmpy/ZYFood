组件化实战项目

毛毛家私房菜组件化总结

1. 组件拆分

   -> 共同组件
      
      -> 常用第三个库
      
        -> AFNetworking
        
        -> SDWebImage
        
        -> YYModel
        
        -> 自己维护的路由库(路由组件)

      -> 基本的宏定义
      
      -> 工具类
      
      -> 跳转方式(nav、present)

   -> 业务组件
   
      -> 模块组件
      
      -> 模块组件的划分，涉及到具体的业务

2. 组件集成形式

   -> FrameWork静态库通过cocoaPods打包集成
   
   -> FrameWork静态库开发遇到的问题
   
     -> 资源文件以bundle形式打包,注意访问方式
     
     -> FrameWork使用到了分类需要在主工程里面buildSetting下面的other-link添加-ObjC和-all_load
     
     -> 编译文件需要在模拟器和真机上同时运行
     
     -> FrameWork合并通用文件的脚本(Agregate)编写
     
     -> 库版本的Tag,推送到私有仓库，gitlab

3. 各业务组件之间不能相互引用，统一通过路由(RunTime形式使用Target、Action)调用

4. 壳工程集成
   导入库使用@import XXXCompent
   

4. 私有组件库的搭建及维护
   
   后期问题:
          共同组件库版本的升级，需要同步到所有业务组件维护人员
