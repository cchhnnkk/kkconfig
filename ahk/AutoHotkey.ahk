; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one .ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.

; #z::Run www.autohotkey.com
; 
; ^!n::
; If WinExist Untitled - Notepad
; 	WinActivate
; else
; 	Run Notepad
; return

Capslock::Ctrl

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;快速命令;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:://s::
Run D:\Program Files (x86)\Everything\Everything.exe
return

:://cmd::
Run cmd
return

:://tty::
Run C:\MinGW\msys\1.0\msys2.bat --mintty
return

:://sbl::
Run sublime_text
return

:://vi::
Run gvim
return

:://pdf::
Run D:\Program Files (x86)\Foxit Software\Foxit Reader\Foxit Reader.exe
return

:://gg::
Run http://www.google.com
return

:://zh::
Run http://www.zhihu.com
return

; :://e::
; Run explorer
; return

;打开任务管理器
:://t::
if WinExist Windows 任务管理器
    WinActivate
else
    Run taskmgr.exe
return

;打开系统属性
:://sys::
Run control sysdm.cpl
return

;;;;;;;;;;快速打开程序(快捷键);;;;;;;;;;;;;;;;;;;;;;;;;

;用google搜索
!g::
Send ^c
Run http://www.google.com/search?q=%clipboard%
return

;用百度搜索
!b::
Send ^c
Run http://www.bing.com/s?wd=%clipboard%
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;通用键的映射;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;鼠标的左右键实现任务切换,对thinkpad trackpoint 特别有用
~LButton & RButton::AltTab
~LButton & MButton::MsgBox,hello

;上页翻页键映射
!p::Send {PgUp}
!n::Send {PgDn}
;HOME END键映射
!u:: Send {Home} ;
!o:: Send {End} ;
;Alt + jkli 实现对方向键的映射,写代码的时候灰常有用
!h:: Send {left}
!l:: Send {right}
!k:: Send {up}
!j:: Send {down}
;Ctrl + hl实现切换tab
^h::Send gT
^l::Send gt

RAlt & j::AltTab
RAlt & k::ShiftAltTab

;Delete Backspace的映射
;!f::Send {Backspace}
;!d::Send {Delete}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;通用键的映射;(结束);;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.
