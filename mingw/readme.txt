原理与cygwin的修改方法一致，假定MingGW安装路径为D:\MinGW，在文件夹右键菜单里添加MinGW直接转到该文件夹路径方法如下：
1.复制D:\MinGW\msys\1.0\msys.bat文件到D:\MinGW\msys\1.0\msys2.bat，然后把msys2.bat里:EOF那行下面加上一个exit （为了解决一个蛋疼的bug）
2.修改D:\MinGW\msys\1.0\etc\profile文件，将cd “$HOME”那行替换为下面内容
#cd "$HOME"if [ ! -z "${MHERE_INVOKING}" ]; then
  unset MHERE_INVOKING
else
  cd "${HOME}" || echo "WARNING: Failed attempt to cd into ${HOME}!"fi
  
3.修改注册表regedit，将下面内容存为a.reg并打开导入到注册表：
----------------------------------------------------------
Windows Registry Editor Version 5.00

[HKEY_CLASSES_ROOT\Directory\shell\MinGW]
@="MSYS"

[HKEY_CLASSES_ROOT\Directory\shell\MinGW\command]
@="cmd.exe /k cd /d \"%1\" & set MHERE_INVOKING=1 & D:\\MinGW\\msys\\1.0\\msys2.bat"
----------------------------------------------------------

或者手动修改：在HKEY_CLASSES_ROOT\Directory\shell\添加项MinGW（名字不重要），默认值为菜单里显示的文本MSYS，在此项里添加command项，默认值为cmd.exe /k cd /d "%1" & set MHERE_INVOKING=1 & D:\MinGW\msys\1.0\msys2.bat
此方法有个缺点，打开MSYS窗口过程中会另外有个cmd窗口闪一下。
