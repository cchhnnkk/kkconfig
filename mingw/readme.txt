ԭ����cygwin���޸ķ���һ�£��ٶ�MingGW��װ·��ΪD:\MinGW�����ļ����Ҽ��˵������MinGWֱ��ת�����ļ���·���������£�
1.����D:\MinGW\msys\1.0\msys.bat�ļ���D:\MinGW\msys\1.0\msys2.bat��Ȼ���msys2.bat��:EOF�����������һ��exit ��Ϊ�˽��һ�����۵�bug��
2.�޸�D:\MinGW\msys\1.0\etc\profile�ļ�����cd ��$HOME�������滻Ϊ��������
#cd "$HOME"if [ ! -z "${MHERE_INVOKING}" ]; then
  unset MHERE_INVOKING
else
  cd "${HOME}" || echo "WARNING: Failed attempt to cd into ${HOME}!"fi
  
3.�޸�ע���regedit�����������ݴ�Ϊa.reg���򿪵��뵽ע���
----------------------------------------------------------
Windows Registry Editor Version 5.00

[HKEY_CLASSES_ROOT\Directory\shell\MinGW]
@="MSYS"

[HKEY_CLASSES_ROOT\Directory\shell\MinGW\command]
@="cmd.exe /k cd /d \"%1\" & set MHERE_INVOKING=1 & D:\\MinGW\\msys\\1.0\\msys2.bat"
----------------------------------------------------------

�����ֶ��޸ģ���HKEY_CLASSES_ROOT\Directory\shell\�����MinGW�����ֲ���Ҫ����Ĭ��ֵΪ�˵�����ʾ���ı�MSYS���ڴ��������command�Ĭ��ֵΪcmd.exe /k cd /d "%1" & set MHERE_INVOKING=1 & D:\MinGW\msys\1.0\msys2.bat
�˷����и�ȱ�㣬��MSYS���ڹ����л������и�cmd������һ�¡�
