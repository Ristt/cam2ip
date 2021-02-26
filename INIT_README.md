一、解决 vsCode 无摄像头权限： #https://github.com/microsoft/vscode/issues/95062#issuecomment-751241372
1、进入 “安全性与隐私” 配置文件夹：
cd ~/Library/Application\ Support/com.apple.TCC
2、备份 “安全性与隐私”配置文件 TCC.db
cp TCC.db TCC.db_backup （无命令行操作权限可用图形界面操作）
3、使用 sqlite3 编辑“安全性与隐私”配置文件，添加 "摄像头" 和 "麦克风" 权限
sqlite3 TCC.db
①INSERT into access (service, client, client_type, auth_value, auth_reason, auth_version) VALUES ("kTCCServiceCamera","com.microsoft.VSCode",0,2,0,1);
②INSERT into access (service, client, client_type, auth_value, auth_reason, auth_version) VALUES ("kTCCServiceMicrophone","com.microsoft.VSCode",0,2,0,1);
③.exit
4、重新登录或者重新开机
