#############################################################################
# Generated by PAGE version 7.3
#  in conjunction with Tcl version 8.6
#  Jun 10, 2022 02:01:52 PM +0700  platform: Windows NT
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    ::vTcl::MessageBox -title Error -message  "You must open project files from within PAGE."
    exit}


set image_list { 
}
vTcl:create_project_images $image_list   ;# In image.tcl

if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_font_dft_desc)  TkDefaultFont
set vTcl(actual_gui_font_dft_name)  TkDefaultFont
set vTcl(actual_gui_font_text_desc)  TkTextFont
set vTcl(actual_gui_font_text_name)  TkTextFont
set vTcl(actual_gui_font_fixed_desc)  TkFixedFont
set vTcl(actual_gui_font_fixed_name)  TkFixedFont
set vTcl(actual_gui_font_menu_desc)  TkMenuFont
set vTcl(actual_gui_font_menu_name)  TkMenuFont
set vTcl(actual_gui_font_tooltip_desc)  TkDefaultFont
set vTcl(actual_gui_font_tooltip_name)  TkDefaultFont
set vTcl(actual_gui_font_treeview_desc)  TkDefaultFont
set vTcl(actual_gui_font_treeview_name)  TkDefaultFont
set vTcl(actual_gui_bg) #E9EBEE
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #E9EBEE
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #E9EBEE
set vTcl(analog_color_p) #E9EBEE
set vTcl(analog_color_m) #ececec
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(actual_gui_menu_active_fg)  #000000
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 1
set vTcl(mode) Relative
}




proc vTclWindow.top1 {base} {
    global vTcl
    if {$base == ""} {
        set base .top1
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    set target $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -menu "$top.m46" -background $vTcl(actual_gui_bg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 835x399+243+178
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1924 1061
    wm minsize $top 120 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    set toptitle "Gmaill Changer"
    wm title $top $toptitle
    namespace eval ::widgets::${top}::ClassOption {}
    set ::widgets::${top}::ClassOption(-toptitle) $toptitle
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    checkbutton $top.che47 \
        -activebackground $vTcl(analog_color_m) -activeforeground red \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Check link youtube} \
        -variable checkCheckLinkYoutube 
    vTcl:DefineAlias "$top.che47" "adad" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che47 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Kiểm tra thông tin youtube}
    }
    menu $top.m46 \
        -activebackground $vTcl(actual_gui_menu_analog) -activeforeground red \
        -background $vTcl(actual_gui_menu_bg) -font TkMenuFont \
        -foreground $vTcl(actual_gui_menu_fg) -tearoff 0 
    
set site_3_0 $top.m46
    $top.m46 add cascade \
        -menu "$top.m46.men47" -command {{}} -label SETTINGS 
    menu $site_3_0.men47 \
        -activebackground $vTcl(actual_gui_menu_analog) -activeforeground red \
        -background $vTcl(actual_gui_menu_bg) -font TkMenuFont \
        -foreground $vTcl(actual_gui_menu_fg) -tearoff 0 
    
set site_4_0 $site_3_0.men47
    $site_3_0.men47 add cascade \
        -menu "$site_3_0.men47.men48" -activebackground {} \
        -activeforeground {} -background {} -command {{}} -font {} \
        -foreground {} -label {RESTORE DISABLE} 
    menu $site_4_0.men48 \
        -activebackground $vTcl(actual_gui_menu_analog) -activeforeground red \
        -background $vTcl(actual_gui_menu_bg) -font TkMenuFont \
        -foreground $vTcl(actual_gui_menu_fg) -tearoff 0 
    $site_4_0.men48 add command \
        -command {#} -label {content (list)} 
    $site_4_0.men48 add command \
        -command {#} -label {mail (list)} 
    $site_4_0.men48 add command \
        -command {#} -label {domain (list)} 
    $site_3_0.men47 add command \
        -activebackground {} -activeforeground {} -background {} -command {#} \
        -font {} -foreground {} -label {EMAIL RECOVERY (LIST)} 
    $site_3_0.men47 add command \
        -activebackground {} -activeforeground {} -background {} -command {#} \
        -font {} -foreground {} -label {API KEY CAPTCHA (1 KEY)} 
    
set site_4_0 $site_3_0.men47
    $site_3_0.men47 add cascade \
        -menu "$site_3_0.men47.men49" -activebackground {} \
        -activeforeground {} -background {} -command {{}} -font {} \
        -foreground {} -label PROXY 
    menu $site_4_0.men49 \
        -activebackground $vTcl(actual_gui_menu_analog) -activeforeground red \
        -background $vTcl(actual_gui_menu_bg) -font TkMenuFont \
        -foreground $vTcl(actual_gui_menu_fg) -tearoff 0 
    $site_4_0.men49 add command \
        -command {#} -label {CYBER GHOST (LIST COUNTRY)} 
    $site_4_0.men49 add command \
        -command {#} -label {VYPR (LIST COUNTRY)} 
    $site_4_0.men49 add command \
        -command {#} -label {TMPROXY (1 KEY)} 
    $site_4_0.men49 add command \
        -command {#} -label {LIST PROXY (LIST IP:PORT)} 
    $site_4_0.men49 add command \
        -command {#} -label {IPVANISH (LIST COUNTRY)} 
    $site_4_0.men49 add command \
        -command {#} -label {EXPRESS (LIST COUNTRY)} 
    $site_4_0.men49 add command \
        -command {#} -label {DCOM (NAME)} 
    $site_4_0.men49 add command \
        -command {#} -label {SSH (LIST IP|USER|PASS)} 
    $site_4_0.men49 add command \
        -command {#} -label {HMA NEW (LIST COUNTRY)} 
    $site_4_0.men49 add command \
        -command {#} -label {911 (LIST COUNTRY)} 
    $site_3_0.men47 add command \
        -activebackground {} -activeforeground {} -background {} -command {#} \
        -font {} -foreground {} -label {PASSWORD (LIST)} 
    $site_3_0.men47 add command \
        -activebackground {} -activeforeground {} -background {} -command {#} \
        -font {} -foreground {} -label {EMAIL RECOVERY DOMAIN (1 DOMAIN)} 
    $site_3_0.men47 add command \
        -activebackground {} -activeforeground {} -background {} -command {#} \
        -font {} -foreground {} -label {PASSWORD KEY (1 KEY)} 
    $site_3_0.men47 add command \
        -activebackground {} -activeforeground {} -background {} -command {#} \
        -font {} -foreground {} -label {KEY ACTIVE} 
    $site_3_0.men47 add command \
        -activebackground {} -activeforeground {} -background {} -command {#} \
        -font {} -foreground {} -label {VERIFY PHONE} 
    $site_3_0.men47 add command \
        -activebackground {} -activeforeground {} -background {} -command {#} \
        -font {} -foreground {} -label {USER AGENT (LIST)} 
    
set site_3_0 $top.m46
    $top.m46 add cascade \
        -menu "$top.m46.men46" -command {{}} -label WEBMAIL 
    menu $site_3_0.men46 \
        -activebackground $vTcl(actual_gui_menu_analog) -activeforeground red \
        -background $vTcl(actual_gui_menu_bg) -font TkMenuFont \
        -foreground $vTcl(actual_gui_menu_fg) -tearoff 0 
    $site_3_0.men46 add command \
        -command {#} -label {ADD MAIL} 
    $site_3_0.men46 add command \
        -command {#} -label {DELETE MAIL} 
    $site_3_0.men46 add command \
        -command {#} -label {OPEN WEB MAIL} 
    $site_3_0.men46 add command \
        -command {#} -label {VPS ONLINE SETUP} 
    $site_3_0.men46 add command \
        -command {#} -label {LÔ MAIL} 
    
set site_3_0 $top.m46
    $top.m46 add cascade \
        -menu "$top.m46.men56" -command {{}} -label HELP 
    menu $site_3_0.men56 \
        -activebackground $vTcl(actual_gui_menu_analog) -activeforeground red \
        -background $vTcl(actual_gui_menu_bg) -font TkMenuFont \
        -foreground $vTcl(actual_gui_menu_fg) -tearoff 0 
    $site_3_0.men56 add command \
        -command {#} -label GUIDE 
    $site_3_0.men56 add command \
        -command {#} -label {UPDATE NEW VERSION} 
    $site_3_0.men56 add command \
        -command {#} -label {OPEN FOLDER TOOL} 
    $site_3_0.men56 add command \
        -command {#} -label {OPEN HCONFIG} 
    checkbutton $top.che46 \
        -activebackground $vTcl(analog_color_m) -activeforeground red \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Check date create} -variable checkCheckDate 
    vTcl:DefineAlias "$top.che46" "adad_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che46 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Kiểm tra ngày tạo mail}
    }
    checkbutton $top.che48 \
        -activebackground $vTcl(analog_color_m) -activeforeground red \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Change pass} -variable checkChangePass 
    vTcl:DefineAlias "$top.che48" "adad_1_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che48 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Thay đổi mật khẩu}
    }
    checkbutton $top.che49 \
        -activebackground $vTcl(analog_color_m) -activeforeground red \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Change email recovery} \
        -variable checkChangeEmailRecovery 
    vTcl:DefineAlias "$top.che49" "adad_1_1_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che49 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Thay đổi email khôi phục}
    }
    checkbutton $top.che50 \
        -activebackground $vTcl(analog_color_m) -activeforeground red \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Delete phone recovery} \
        -variable checkDeletePhoneRecovery 
    vTcl:DefineAlias "$top.che50" "adad_1_1_1_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che50 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Xóa tất cả số điện thoại}
    }
    label $top.lab53 \
        -activebackground #f9f9f9 -activeforeground black -anchor w \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text Thread 
    vTcl:DefineAlias "$top.lab53" "Label1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.lab53 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Số luồng}
    }
    ttk::spinbox $top.tSp54 \
        -from 1 -to 100 -font TkTextFont -foreground {} -background white \
        -takefocus {} 
    vTcl:DefineAlias "$top.tSp54" "spinThread" vTcl:WidgetProc "Toplevel1" 1
    text $top.tex58 \
        -background white -font TkTextFont -foreground black -height 154 \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -insertbackground black -selectbackground blue \
        -selectforeground white -width 798 -wrap word 
    $top.tex58 configure -font "TkTextFont"
    $top.tex58 insert end text
    vTcl:DefineAlias "$top.tex58" "txtLog" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab59 \
        -activebackground #f9f9f9 -activeforeground red -anchor w \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont -foreground #ff0000 \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor #000000 \
        -text ... 
    vTcl:DefineAlias "$top.lab59" "lbStatus" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab61 \
        -activebackground #f9f9f9 -activeforeground red -anchor w \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont -foreground #0000ff \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor #000000 \
        -text ... 
    vTcl:DefineAlias "$top.lab61" "lbHsd" vTcl:WidgetProc "Toplevel1" 1
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu48 \
        -takefocus {} -text {Open Mail} -compound left 
    vTcl:DefineAlias "$top.tBu48" "btnOpenMail" vTcl:WidgetProc "Toplevel1" 1
    bind $top.tBu48 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Mở web mail}
    }
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu50 \
        -takefocus {} -text Run -compound left 
    vTcl:DefineAlias "$top.tBu50" "btnRun" vTcl:WidgetProc "Toplevel1" 1
    bind $top.tBu50 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Chạy}
    }
    ttk::combobox $top.tCo46 \
        -font TkTextFont -textvariable combobox -foreground {} -background {} \
        -takefocus {} 
    vTcl:DefineAlias "$top.tCo46" "comboProxy" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab47 \
        -activebackground #f9f9f9 -activeforeground black -anchor w \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text Proxy 
    vTcl:DefineAlias "$top.lab47" "Label1_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.lab47 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Số luồng}
    }
    checkbutton $top.che51 \
        -activebackground $vTcl(analog_color_m) -activeforeground red \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text Pause -variable checkPause 
    vTcl:DefineAlias "$top.che51" "adad_2" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che51 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Tạm dừng}
    }
    checkbutton $top.che52 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Restore disable} -variable checkRestoreDisable 
    vTcl:DefineAlias "$top.che52" "Checkbutton1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che52 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Kháng mail}
    }
    checkbutton $top.che53 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Restore disable web} \
        -variable checkRestoreDisableNoLogin 
    vTcl:DefineAlias "$top.che53" "Checkbutton2" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che53 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Kháng mail web}
    }
    checkbutton $top.che54 \
        -activebackground $vTcl(analog_color_m) -activeforeground red \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Check email @gmail.com} \
        -variable checkEmailGmailCom 
    vTcl:DefineAlias "$top.che54" "adad_1_1_1_1_1" vTcl:WidgetProc "Toplevel1" 1
    checkbutton $top.che55 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Change language en} \
        -variable checkChangeLanguageEN 
    vTcl:DefineAlias "$top.che55" "Checkbutton2_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che55 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Đổi ngôn ngữ sang tiếng anh}
    }
    checkbutton $top.che56 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Check google adw} -variable checkCheckGoogleAdw 
    vTcl:DefineAlias "$top.che56" "Checkbutton2_1_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che56 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Kiểm tra tài khoản google adw}
    }
    checkbutton $top.che57 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Check phone recovery} \
        -variable checkCheckPhoneRecovery 
    vTcl:DefineAlias "$top.che57" "Checkbutton2_1_1_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che57 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Kiểm tra số điện thoại khôi phục}
    }
    checkbutton $top.che58 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Check country} -variable checkCheckCountry 
    vTcl:DefineAlias "$top.che58" "Checkbutton2_1_1_1_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che58 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Kiểm tra quốc gia}
    }
    checkbutton $top.che59 \
        -activebackground $vTcl(analog_color_m) -activeforeground red \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Check ch play} -variable checkCHPlay 
    vTcl:DefineAlias "$top.che59" "adad_1_1_1_1_1_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che59 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Kiểm tra gói mua ch play}
    }
    checkbutton $top.che60 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Check google adsense} \
        -variable checkGoogleAdsense 
    vTcl:DefineAlias "$top.che60" "Checkbutton2_1_1_1_1_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che60 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Kiểm tra tài khoản google adsense}
    }
    checkbutton $top.che61 \
        -activebackground $vTcl(analog_color_m) -activeforeground red \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Check google voice} -variable checkGoogleVoice 
    vTcl:DefineAlias "$top.che61" "adad_1_1_1_1_1_1_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che61 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Kiểm tra tài khoản google voice}
    }
    checkbutton $top.che62 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Device logout} -variable checkDeviceLogout 
    vTcl:DefineAlias "$top.che62" "Checkbutton2_1_1_1_1_1_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che62 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Đăng xuất thiết bị}
    }
    checkbutton $top.che63 \
        -activebackground $vTcl(analog_color_m) -activeforeground red \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Check payment methods} \
        -variable checkPaymentMethods 
    vTcl:DefineAlias "$top.che63" "adad_1_1_1_1_1_1_1_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che63 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Kiểm tra phương thức thanh toán}
    }
    checkbutton $top.che64 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Close payment methods} \
        -variable checkClosePaymentMethods 
    vTcl:DefineAlias "$top.che64" "Checkbutton2_1_1_1_1_1_1_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che64 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Đóng phương thức thanh toán}
    }
    checkbutton $top.che65 \
        -activebackground $vTcl(analog_color_m) -activeforeground red \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Delete payment methods} \
        -variable checkDeletePaymentMethods 
    vTcl:DefineAlias "$top.che65" "adad_1_1_1_1_1_1_1_1_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che65 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Xóa phương thức thanh toán}
    }
    checkbutton $top.che66 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Create channel youtube} \
        -variable checkCreateChannelYoutube 
    vTcl:DefineAlias "$top.che66" "Checkbutton2_1_1_1_1_1_1_1_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che66 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Tạo kênh youtube}
    }
    checkbutton $top.che67 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Confirm security activity} \
        -variable checkConfirmSecurityActivity 
    vTcl:DefineAlias "$top.che67" "Checkbutton2_1_1_1_1_1_1_1_1_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che67 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Xác nhận cảnh báo đăng nhập}
    }
    checkbutton $top.che68 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Check live die} -variable checkCheckLiveDie 
    vTcl:DefineAlias "$top.che68" "Checkbutton2_1_1_1_1_1_1_1_1_1_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che68 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Kiểm tra mail tồn tại không}
    }
    checkbutton $top.che69 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Tắt hình ảnh chrome} -variable checkTatHinhAnh 
    vTcl:DefineAlias "$top.che69" "Checkbutton1_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che69 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Disable Image}
    }
    checkbutton $top.che70 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -justify left -text {Verify phone} -variable checkVerifyphone 
    vTcl:DefineAlias "$top.che70" "Checkbutton1_1_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.che70 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Verify phone}
    }
    label $top.lab48 \
        -activebackground #f9f9f9 -activeforeground black -anchor w \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text {Change proxy after} 
    vTcl:DefineAlias "$top.lab48" "Label1_1_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.lab48 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Thay proxy sau}
    }
    label $top.lab50 \
        -activebackground #f9f9f9 -activeforeground black -anchor w \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text turn 
    vTcl:DefineAlias "$top.lab50" "Label1_1_1_1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.lab50 <<SetBalloon>> {
        set ::vTcl::balloon::%W {lượt}
    }
    ttk::spinbox $top.tSp51 \
        -from 1 -to 100 -font TkTextFont -foreground {} -background white \
        -takefocus {} 
    vTcl:DefineAlias "$top.tSp51" "spinChangeProxy" vTcl:WidgetProc "Toplevel1" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.che47 \
        -in $top -x 0 -relx 0.012 -y 0 -width 0 -relwidth 0.23 -height 0 \
        -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.che46 \
        -in $top -x 0 -relx 0.012 -y 0 -rely 0.045 -width 0 -relwidth 0.183 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.che48 \
        -in $top -x 0 -relx 0.012 -y 0 -rely 0.09 -width 0 -relwidth 0.182 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.che49 \
        -in $top -x 0 -relx 0.012 -y 0 -rely 0.135 -width 0 -relwidth 0.181 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.che50 \
        -in $top -x 0 -relx 0.012 -y 0 -rely 0.181 -width 0 -relwidth 0.204 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.lab53 \
        -in $top -x 0 -relx 0.686 -y 0 -rely 0.175 -width 0 -relwidth 0.079 \
        -height 0 -relheight 0.048 -anchor nw -bordermode ignore 
    place $top.tSp54 \
        -in $top -x 0 -relx 0.746 -y 0 -rely 0.175 -width 0 -relwidth 0.103 \
        -height 0 -relheight 0.048 -anchor nw -bordermode ignore 
    place $top.tex58 \
        -in $top -x 0 -relx 0.012 -y 0 -rely 0.518 -width 0 -relwidth 0.957 \
        -height 0 -relheight 0.333 -anchor nw -bordermode ignore 
    place $top.lab59 \
        -in $top -x 0 -relx 0.012 -y 0 -rely 0.864 -width 0 -relwidth 0.951 \
        -height 0 -relheight 0.056 -anchor nw -bordermode ignore 
    place $top.lab61 \
        -in $top -x 0 -relx 0.012 -y 0 -rely 0.907 -width 0 -relwidth 0.947 \
        -height 0 -relheight 0.056 -anchor nw -bordermode ignore 
    place $top.tBu48 \
        -in $top -x 0 -relx 0.686 -y 0 -rely 0.251 -width 233 -relwidth 0 \
        -height 30 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tBu50 \
        -in $top -x 0 -relx 0.686 -y 0 -rely 0.351 -width 233 -relwidth 0 \
        -height 30 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tCo46 \
        -in $top -x 0 -relx 0.746 -y 0 -rely 0.025 -width 0 -relwidth 0.212 \
        -height 0 -relheight 0.048 -anchor nw -bordermode ignore 
    place $top.lab47 \
        -in $top -x 0 -relx 0.686 -y 0 -rely 0.025 -width 0 -relwidth 0.054 \
        -height 0 -relheight 0.048 -anchor nw -bordermode ignore 
    place $top.che51 \
        -in $top -x 0 -relx 0.89 -y 0 -rely 0.175 -width 0 -relwidth 0.075 \
        -height 0 -relheight 0.058 -anchor nw -bordermode ignore 
    place $top.che52 \
        -in $top -x 0 -relx 0.252 -y 0 -width 0 -relwidth 0.144 -height 0 \
        -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.che53 \
        -in $top -x 0 -relx 0.252 -y 0 -rely 0.045 -width 0 -relwidth 0.182 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.che54 \
        -in $top -x 0 -relx 0.012 -y 0 -rely 0.226 -width 0 -relwidth 0.209 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.che55 \
        -in $top -x 0 -relx 0.252 -y 0 -rely 0.09 -width 0 -relwidth 0.23 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.che56 \
        -in $top -x 0 -relx 0.252 -y 0 -rely 0.135 -width 0 -relwidth 0.23 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.che57 \
        -in $top -x 0 -relx 0.252 -y 0 -rely 0.181 -width 0 -relwidth 0.247 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.che58 \
        -in $top -x 0 -relx 0.252 -y 0 -rely 0.226 -width 0 -relwidth 0.247 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.che59 \
        -in $top -x 0 -relx 0.012 -y 0 -rely 0.271 -width 0 -relwidth 0.173 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.che60 \
        -in $top -x 0 -relx 0.252 -y 0 -rely 0.271 -width 0 -relwidth 0.264 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.che61 \
        -in $top -x 0 -relx 0.012 -y 0 -rely 0.316 -width 0 -relwidth 0.185 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.che62 \
        -in $top -x 0 -relx 0.252 -y 0 -rely 0.316 -width 0 -relwidth 0.264 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.che63 \
        -in $top -x 0 -relx 0.012 -y 0 -rely 0.361 -width 0 -relwidth 0.197 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.che64 \
        -in $top -x 0 -relx 0.252 -y 0 -rely 0.361 -width 0 -relwidth 0.264 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.che65 \
        -in $top -x 0 -relx 0.012 -y 0 -rely 0.406 -width 0 -relwidth 0.209 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.che66 \
        -in $top -x 0 -relx 0.252 -y 0 -rely 0.406 -width 0 -relwidth 0.264 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.che67 \
        -in $top -x 0 -relx 0.252 -y 0 -rely 0.451 -width 0 -relwidth 0.264 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.che68 \
        -in $top -x 0 -relx 0.012 -y 0 -rely 0.451 -width 0 -relwidth 0.204 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.che69 \
        -in $top -x 0 -relx 0.468 -y 0 -width 0 -relwidth 0.168 -height 0 \
        -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.che70 \
        -in $top -x 0 -relx 0.468 -y 0 -rely 0.05 -width 0 -relwidth 0.168 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.lab48 \
        -in $top -x 0 -relx 0.686 -y 0 -rely 0.1 -width 0 -relwidth 0.138 \
        -height 0 -relheight 0.048 -anchor nw -bordermode ignore 
    place $top.lab50 \
        -in $top -x 0 -relx 0.927 -y 0 -rely 0.1 -width 0 -relwidth 0.053 \
        -height 0 -relheight 0.048 -anchor nw -bordermode ignore 
    place $top.tSp51 \
        -in $top -x 0 -relx 0.83 -y 0 -rely 0.1 -width 0 -relwidth 0.084 \
        -height 0 -relheight 0.048 -anchor nw -bordermode ignore 
    } ;# end vTcl:withBusyCursor 

    vTcl:FireEvent $base <<Ready>>
}

proc 36 {args} {return 1}


Window show .
set btop1 ""
if {$vTcl(borrow)} {
    set btop1 .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop1 $vTcl(tops)] != -1} {
        set btop1 .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop1
Window show .top1 $btop1
if {$vTcl(borrow)} {
    $btop1 configure -background plum
}

