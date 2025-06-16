.localvar 2 arguments

:[0]
push.i 231204
setowner.e
pushi.e -1
conv.i.v
pushi.e -5
pushi.e 220
pop.v.v [array]self.flag
pushi.e -1
conv.i.v
pushi.e -5
pushi.e 221
pop.v.v [array]self.flag
pushi.e -1
conv.i.v
pushi.e -5
pushi.e 222
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 223
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 224
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 225
pop.v.v [array]self.flag
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 32
cmp.i.v LT
bf [3]

:[2]
push.i 175272
setowner.e
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
push.v self.i
pushi.e 8
mul.i.v
call.i make_color_hsv(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.precolor
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.i 175273
setowner.e
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 65280
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.statcolor
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 65535
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.statcolor
push.d 0.6
conv.d.v
push.i 16777215
conv.i.v
push.i 16711935
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.statcolor
push.d 0.3
conv.d.v
push.i 16777215
conv.i.v
pushi.e 255
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.statcolor
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 16711680
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 4
pop.v.v [array]self.statcolor
push.d 0.4
conv.d.v
push.i 16777215
conv.i.v
push.i 8388736
conv.i.v
call.i merge_color(argc=3)
pushi.e -1
pushi.e 5
pop.v.v [array]self.statcolor
pushi.e 1
pop.v.i self.logocon
pushi.e 0
pop.v.i self.logoalpha
pushi.e 0
pop.v.i self.introtimer
pushi.e 0
pop.v.i self.textalpha1
pushi.e 0
pop.v.i self.textalpha2
pushi.e 0
pop.v.i self.malpha
pushi.e 0
pop.v.i self.buffer1
pushi.e 0
pop.v.i self.buffer2
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.menu
pushi.e 0
pop.v.i self.ended
pushi.e 0
pop.v.i self.colorchange
pushi.e 0
pop.v.i self.colorbuffer
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [6]

:[5]
push.i 171827
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.stat
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
push.i 175281
setowner.e
push.s "obj_thrashcontroller_slash_Create_0_gml_49_0"@38836
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menutext1
pushi.e 0
popaf.e
push.s "obj_thrashcontroller_slash_Create_0_gml_50_0"@38838
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menutext1
pushi.e 1
popaf.e
push.s "obj_thrashcontroller_slash_Create_0_gml_51_0"@38839
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menutext1
pushi.e 2
popaf.e
push.s "obj_thrashcontroller_slash_Create_0_gml_52_0"@38840
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menutext1
pushi.e 3
popaf.e
push.s "obj_thrashcontroller_slash_Create_0_gml_53_0"@38841
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.menutext1
pushi.e 0
popaf.e
push.s "obj_thrashcontroller_slash_Create_0_gml_54_0"@38842
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.menutext1
pushi.e 1
popaf.e
push.s "obj_thrashcontroller_slash_Create_0_gml_55_0"@38843
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.menutext1
pushi.e 2
popaf.e
push.s " "@353
conv.s.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.menutext1
pushi.e 3
popaf.e
push.i 175282
setowner.e
push.s "obj_thrashcontroller_slash_Create_0_gml_59_0"@38844
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menutext2
pushi.e 0
popaf.e
push.i 171825
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.stat1
pushi.e 0
popaf.e
push.i 171826
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.stat2
pushi.e 0
popaf.e
push.i 175282
setowner.e
push.s "obj_thrashcontroller_slash_Create_0_gml_61_0"@38846
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menutext2
pushi.e 1
popaf.e
push.i 171825
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.stat1
pushi.e 1
popaf.e
push.i 171826
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.stat2
pushi.e 1
popaf.e
push.i 175282
setowner.e
push.s "obj_thrashcontroller_slash_Create_0_gml_63_0"@38847
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menutext2
pushi.e 2
popaf.e
push.i 171825
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.stat1
pushi.e 2
popaf.e
push.i 171826
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.stat2
pushi.e 2
popaf.e
push.i 175282
setowner.e
push.s "obj_thrashcontroller_slash_Create_0_gml_65_0"@38848
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.menutext2
pushi.e 3
popaf.e
push.i 171825
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.stat1
pushi.e 3
popaf.e
push.i 171826
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.stat2
pushi.e 3
popaf.e
push.i 175282
setowner.e
push.s "obj_thrashcontroller_slash_Create_0_gml_68_0"@38849
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.menutext2
pushi.e 0
popaf.e
push.i 171825
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.stat1
pushi.e 0
popaf.e
push.i 171826
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.stat2
pushi.e 0
popaf.e
push.i 175282
setowner.e
push.s "obj_thrashcontroller_slash_Create_0_gml_70_0"@38850
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.menutext2
pushi.e 1
popaf.e
push.i 171825
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.stat1
pushi.e 1
popaf.e
push.i 171826
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.stat2
pushi.e 1
popaf.e
push.i 175282
setowner.e
push.s "obj_thrashcontroller_slash_Create_0_gml_72_0"@38851
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.menutext2
pushi.e 2
popaf.e
push.i 171825
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.stat1
pushi.e 2
popaf.e
push.i 171826
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.stat2
pushi.e 2
popaf.e
push.i 175282
setowner.e
push.s "obj_thrashcontroller_slash_Create_0_gml_74_0"@38852
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.menutext2
pushi.e 3
popaf.e
push.i 171825
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.stat1
pushi.e 3
popaf.e
push.i 171826
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.stat2
pushi.e 3
popaf.e
push.i 175282
setowner.e
push.s "obj_thrashcontroller_slash_Create_0_gml_77_0"@38853
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.menutext2
pushi.e 0
popaf.e
push.i 171825
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.stat1
pushi.e 0
popaf.e
push.i 171826
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.stat2
pushi.e 0
popaf.e
push.i 175282
setowner.e
push.s "obj_thrashcontroller_slash_Create_0_gml_79_0"@38854
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.menutext2
pushi.e 1
popaf.e
push.i 171825
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.stat1
pushi.e 1
popaf.e
push.i 171826
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.stat2
pushi.e 1
popaf.e
push.i 175282
setowner.e
push.s "obj_thrashcontroller_slash_Create_0_gml_81_0"@38855
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.menutext2
pushi.e 2
popaf.e
push.i 171825
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.stat1
pushi.e 2
popaf.e
push.i 171826
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.stat2
pushi.e 2
popaf.e
push.i 175282
setowner.e
push.s "obj_thrashcontroller_slash_Create_0_gml_83_0"@38856
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.menutext2
pushi.e 3
popaf.e
push.i 171825
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.stat1
pushi.e 3
popaf.e
push.i 171826
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.stat2
pushi.e 3
popaf.e
push.i 175283
setowner.e
push.s "obj_thrashcontroller_slash_Create_0_gml_88_0"@38857
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.assetdesc
pushi.e 0
popaf.e
push.s "obj_thrashcontroller_slash_Create_0_gml_89_0"@38859
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.assetdesc
pushi.e 1
popaf.e
push.s "obj_thrashcontroller_slash_Create_0_gml_90_0"@38860
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.assetdesc
pushi.e 2
popaf.e
push.s "obj_thrashcontroller_slash_Create_0_gml_91_0"@38861
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.assetdesc
pushi.e 3
popaf.e
push.s "obj_thrashcontroller_slash_Create_0_gml_93_0"@38862
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.assetdesc
pushi.e 0
popaf.e
push.s "obj_thrashcontroller_slash_Create_0_gml_94_0"@38863
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.assetdesc
pushi.e 1
popaf.e
push.s "obj_thrashcontroller_slash_Create_0_gml_95_0"@38864
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.assetdesc
pushi.e 2
popaf.e
push.s "obj_thrashcontroller_slash_Create_0_gml_96_0"@38865
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.assetdesc
pushi.e 3
popaf.e
push.s "obj_thrashcontroller_slash_Create_0_gml_99_0"@38866
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.assetdesc
pushi.e 0
popaf.e
push.s "obj_thrashcontroller_slash_Create_0_gml_100_0"@38867
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.assetdesc
pushi.e 1
popaf.e
push.s "obj_thrashcontroller_slash_Create_0_gml_101_0"@38868
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.assetdesc
pushi.e 2
popaf.e
push.s "obj_thrashcontroller_slash_Create_0_gml_102_0"@38869
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.assetdesc
pushi.e 3
popaf.e
pushi.e 0
pop.v.i self.menucoord1y
pushi.e 0
pop.v.i self.menucoord1x
push.i 175286
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menucoord2
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menucoord2
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.menucoord2
pushi.e 0
pop.v.i self.endcoord
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.ww
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.hh
pushi.e 1368
conv.i.v
push.v self.yy
push.v self.hh
pushi.e 3
conv.i.d
div.d.v
add.v.v
push.v self.xx
push.v self.ww
push.d 2.5
div.d.v
add.v.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.thrash
push.v self.thrash
pushi.e -9
pushenv [8]

:[7]
pushi.e 0
pop.v.i self.a

:[8]
popenv [7]

:[end]