.localvar 2 arguments

:[0]
b [101]

> gml_Script_scr_monstersetup_ch1 (locals=0, argc=0)
:[1]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_4_0"@13118
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 130
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 130
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 7
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_16_0"@13119
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_18_0"@13120
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_20_0"@13121
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_22_0"@13122
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 4
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_24_0"@13123
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 4
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 5
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_26_0"@13124
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 5
popaf.e
push.i 118327793
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_27_0"@13125
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[3]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_32_0"@13126
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 540
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 540
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 20
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_44_0"@13127
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_47_0"@13128
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_50_0"@7132
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327793
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_51_0"@13129
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[5]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_59_0"@13130
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 450
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 450
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_71_0"@13131
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_73_0"@13132
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_75_0"@13133
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 118327793
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_78_0"@13134
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[7]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 4
cmp.i.v EQ
bf [9]

:[8]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_83_0"@13135
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_95_0"@13136
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_97_0"@13137
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327793
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_98_0"@13138
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[9]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 5
cmp.i.v EQ
bf [15]

:[10]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_103_0"@13139
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 30
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_115_0"@7153
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_117_0"@13140
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_119_0"@13141
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [12]

:[11]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_123_0"@13142
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e

:[15]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 6
cmp.i.v EQ
bf [29]

:[16]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_132_0"@7156
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 150
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 150
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 28
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_144_0"@13143
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_146_0"@13144
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_148_0"@13145
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
pushglb.v global.encounterno
pushi.e 7
cmp.i.v EQ
bf [19]

:[17]
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
pushglb.v global.plot
pushi.e 40
cmp.i.v LT
bf [19]

:[18]
pushi.e 40
pop.v.i global.plot

:[19]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [21]

:[20]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_154_0"@13146
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e

:[24]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [26]

:[25]
pushglb.v global.plot
pushi.e 150
cmp.i.v GTE
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_160_0"@13147
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 118327794
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e

:[29]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 7
cmp.i.v EQ
bf [38]

:[30]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_170_0"@13148
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 270
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 270
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 43
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_184_0"@13149
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.myact
push.v self.myact
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_190_0"@13150
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_192_0"@13151
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_194_0"@13152
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e

:[32]
push.v self.myact
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_199_0"@13153
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_201_0"@7173
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_203_0"@13154
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e

:[34]
push.v self.myact
pushi.e 2
cmp.i.v EQ
bf [36]

:[35]
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_208_0"@13155
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_210_0"@13156
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_212_0"@13157
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e

:[36]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [38]

:[37]
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 4
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_218_0"@7183
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 4
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 4
popaf.e

:[38]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 8
cmp.i.v EQ
bf [40]

:[39]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_226_0"@13158
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 170
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 170
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 50
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_238_0"@13159
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_240_0"@13160
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_242_0"@13161
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e

:[40]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 9
cmp.i.v EQ
bf [46]

:[41]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_251_0"@13162
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_263_0"@13163
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
pushglb.v global.encounterno
pushi.e 7
cmp.i.v EQ
bf [44]

:[42]
pushglb.v global.plot
pushi.e 40
cmp.i.v LT
bf [44]

:[43]
pushi.e 40
pop.v.i global.plot

:[44]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [46]

:[45]
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327794
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_271_0"@13164
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_274_0"@13165
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e

:[46]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 10
cmp.i.v EQ
bf [49]

:[47]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_282_0"@13166
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 1300
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 1300
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
push.d 7.5
conv.d.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_294_0"@13167
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_296_0"@13168
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_298_0"@13169
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [49]

:[48]
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_307_0"@13170
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e

:[49]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 11
cmp.i.v EQ
bf [55]

:[50]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_315_0"@7212
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 140
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 140
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 7
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 23
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_327_0"@13171
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_329_0"@13172
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_331_0"@13173
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [52]

:[51]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_337_0"@13174
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e

:[55]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 12
cmp.i.v EQ
bf [57]

:[56]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_346_0"@7218
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 2400
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 2400
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e -40
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_358_0"@13175
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e

:[57]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 13
cmp.i.v EQ
bf [63]

:[58]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_365_0"@13176
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 38
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_377_0"@13177
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_379_0"@13178
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_381_0"@13179
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [60]

:[59]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_386_0"@13180
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e

:[63]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 14
cmp.i.v EQ
bf [69]

:[64]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_394_0"@7227
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 130
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 130
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 9
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 38
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_406_0"@13181
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_408_0"@13182
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [66]

:[65]
pushglb.v global.plot
pushi.e 150
cmp.i.v GTE
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_412_0"@7233
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327794
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e

:[69]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 15
cmp.i.v EQ
bf [75]

:[70]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_420_0"@13183
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 20
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_432_0"@13184
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_434_0"@13185
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [72]

:[71]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
b [73]

:[72]
push.e 0

:[73]
bf [75]

:[74]
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_440_0"@13186
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e

:[75]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 16
cmp.i.v EQ
bf [77]

:[76]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_449_0"@7242
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 270
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 270
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 80
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_463_0"@13187
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_465_0"@13188
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_467_0"@13189
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_470_0"@13190
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_473_0"@13191
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 4
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 4
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_475_0"@13192
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 5
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 5
popaf.e
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.myact

:[77]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 17
cmp.i.v EQ
bf [79]

:[78]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_484_0"@7250
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 700
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 700
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_496_0"@13193
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_498_0"@13194
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 1
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_501_0"@7258
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_504_0"@13195
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 4
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_506_0"@13196
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 4
popaf.e

:[79]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 18
cmp.i.v EQ
bf [81]

:[80]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_512_0"@13197
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 800
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 800
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_524_0"@13198
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_527_0"@13199
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_530_0"@7267
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e

:[81]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 19
cmp.i.v EQ
bf [83]

:[82]
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.itemdf
pushi.e 0
pushaf.e
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.itemdf
pushi.e 1
pushaf.e
add.v.v
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.itemdf
pushi.e 2
pushaf.e
add.v.v
pop.v.v self._armordf
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_538_0"@13200
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 120
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 7
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e -5
push.v self._armordf
add.v.i
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_550_0"@13201
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_553_0"@13202
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_556_0"@7273
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e

:[83]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 20
cmp.i.v EQ
bf [85]

:[84]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_562_0"@13203
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 3500
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 3500
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_574_0"@13204
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327794
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_579_0"@13205
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327797
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_580_0"@7278
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 1
popaf.e
push.i 118327705
setowner.e
pushi.e 50
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 1
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327794
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_585_0"@13206
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327797
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_586_0"@13207
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 118327705
setowner.e
pushi.e 125
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e

:[85]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 21
cmp.i.v EQ
bf [89]

:[86]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_594_0"@13208
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 1300
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 1300
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_606_0"@13209
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
pushi.e -5
pushi.e 246
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [88]

:[87]
push.s "scr_monstersetup_slash_scr_monstersetup_gml_607_0"@13210
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e

:[88]
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_609_0"@13211
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_611_0"@13212
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327794
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e

:[89]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 22
cmp.i.v EQ
bf [91]

:[90]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_619_0"@13213
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 170
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 170
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 45
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 25
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_631_0"@13214
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_633_0"@13215
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_635_0"@13216
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327794
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e

:[91]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 23
cmp.i.v EQ
bf [93]

:[92]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_643_0"@13217
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 190
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 190
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 40
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_655_0"@13218
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_657_0"@13219
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_659_0"@13220
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327794
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e

:[93]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 25
cmp.i.v EQ
bf [100]

:[94]
push.i 118327779
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_665_0"@13221
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstername
push.i 118327780
setowner.e
pushi.e 2800
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstermaxhp
push.i 118327734
setowner.e
pushi.e 2800
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterhp
push.i 118327781
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat
push.i 118327782
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterdf
push.i 118327757
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterexp
push.i 118327756
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstergold
push.i 118327783
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.sparepoint
push.i 118327398
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 118327784
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymax
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 0
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_677_0"@13222
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327794
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_682_0"@13223
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327797
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 1
popaf.e
push.i 118327705
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 1
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327794
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_688_0"@13224
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327797
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 118327705
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_694_0"@7311
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 118327797
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 3
popaf.e
push.i 118327705
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 3
popaf.e
pushi.e -5
pushi.e 5
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [96]

:[95]
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 1
popaf.e
push.i 118327794
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 1
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_704_0"@13225
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 1
popaf.e
push.i 118327797
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_705_0"@7314
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 1
popaf.e
push.i 118327705
setowner.e
pushi.e 62
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 1
popaf.e

:[96]
pushi.e -5
pushi.e 6
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [98]

:[97]
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 118327794
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_714_0"@13226
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 118327797
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_715_0"@13227
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 2
popaf.e
push.i 118327705
setowner.e
pushi.e 150
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e

:[98]
pushi.e -5
pushi.e 7
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [100]

:[99]
push.i 118327785
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 3
popaf.e
push.i 118327794
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 3
popaf.e
push.i 118327709
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_724_0"@13228
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 3
popaf.e
push.i 118327797
setowner.e
push.s "scr_monstersetup_slash_scr_monstersetup_gml_725_0"@13229
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actdesc
pushi.e 3
popaf.e
push.i 118327705
setowner.e
pushi.e 125
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 3
popaf.e

:[100]
exit.i

:[101]
push.i [function]gml_Script_scr_monstersetup_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_monstersetup_ch1
popz.v

:[end]