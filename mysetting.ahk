#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#InstallKeybdHook
; #UseHook

SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

SetKeyDelay, -1

F13 & j::Send, {Blind}{Left}
F13 & l::Send, {Blind}{Right}
F13 & i::Send, {Blind}{Up}
F13 & k::Send, {Blind}{Down}

F13 & u::Send, {Blind}^{Left}
F13 & o::Send, {Blind}^{Right}

F13 & `;::Send, {BackSpace}
F13 & p::Send, ^{BackSpace}

F13 & `::Send, {vkF3sc029} ; 全角半角切り替え
F13 & n::Send, {vkF3sc029} ; 全角半角切り替え

F13 & s::Send, #{Left}
F13 & f::Send, #{Right}
F13 & e::Send, #{Up}
F13 & d::Send, #{Down}

F13 & m::RunActivateMinimize("wt.exe", "WindowsTerminal.exe")

RunActivateMinimize(exePass, exeName, exeOption="") {
    Process, Exist, %exeName%
    Sleep, 200
    If (ErrorLevel != 0)
        IfWinNotActive, ahk_pid %ErrorLevel%
        WinActivate, ahk_pid %ErrorLevel%
    else
        WinMinimize, ahk_pid %ErrorLevel%
    else
        Run, %exePass% %exeOption%
}
