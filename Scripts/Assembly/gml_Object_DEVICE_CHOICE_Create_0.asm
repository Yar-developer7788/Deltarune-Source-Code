.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.CURX
pushi.e 0
pop.v.i self.CURY
pushi.e 0
pop.v.i self.XMAX
pushi.e 0
pop.v.i self.YMAX
push.i 167420
setowner.e
push.s "DEVICE_CHOICE_slash_Create_0_gml_7_0"@28915
conv.s.v
push.s "EGG"@28916
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 0
popaf.e
push.i 167421
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEX
pushi.e 0
popaf.e
push.i 167422
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEY
pushi.e 0
popaf.e
pushi.e 40
pop.v.i self.PLAYERNAMEY
pushi.e 0
pop.v.i self.TYPE
push.s ""@157
pop.v.s self.NAMESTRING
pushi.e 12
pop.v.i self.STRINGMAX
pushi.e 0
pop.v.i self.xoff
pushi.e 0
pop.v.i self.yoff
pushi.e 0
pop.v.i self.LANGSUBTYPE
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.LANGSUBTYPE

:[2]
pushi.e -1
pop.v.i global.choice
push.v self.TYPE
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.i 167420
setowner.e
push.s "DEVICE_CHOICE_slash_Create_0_gml_28_0"@28919
conv.s.v
push.s "NO"@28920
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 0
popaf.e
push.s "DEVICE_CHOICE_slash_Create_0_gml_29_0"@28921
conv.s.v
push.s "YES"@28922
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.NAME
pushi.e 0
popaf.e
push.i 167421
setowner.e
pushi.e 110
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEX
pushi.e 0
popaf.e
pushi.e 190
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.NAMEX
pushi.e 0
popaf.e
push.i 167422
setowner.e
pushi.e 180
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEY
pushi.e 0
popaf.e
pushi.e 180
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.NAMEY
pushi.e 0
popaf.e
pushi.e 1
pop.v.i self.XMAX
pushi.e -1
pop.v.i self.CURX
pushi.e 150
pop.v.i self.IDEALX
pushi.e 180
pop.v.i self.IDEALY

:[4]
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [9]

:[5]
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
pushi.e 7
cmp.i.v LTE
bf [8]

:[7]
push.i 167420
setowner.e
pushi.e 1
push.v self.i
add.v.i
call.i string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.NAME
pushi.e 0
popaf.e
push.i 167421
setowner.e
pushi.e 80
push.v self.i
pushi.e 20
mul.i.v
add.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.NAMEX
pushi.e 0
popaf.e
push.i 167422
setowner.e
pushi.e 180
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.NAMEY
pushi.e 0
popaf.e
push.v self.XMAX
pushi.e 1
add.i.v
pop.v.v self.XMAX
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [6]

:[8]
pushi.e 180
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEY
pushi.e 0
popaf.e
pushi.e 180
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.NAMEY
pushi.e 0
popaf.e
pushi.e 7
pop.v.i self.XMAX
pushi.e -7
pop.v.i self.xoff

:[9]
push.v self.TYPE
pushi.e 2
cmp.i.v EQ
bf [14]

:[10]
pushi.e 0
pop.v.i self.i

:[11]
push.v self.i
pushi.e 6
cmp.i.v LTE
bf [13]

:[12]
push.i 167420
setowner.e
pushi.e 1
push.v self.i
add.v.i
call.i string(argc=1)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
push.v self.i
conv.v.i
popaf.e
push.i 167421
setowner.e
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEX
push.v self.i
conv.v.i
popaf.e
push.i 167422
setowner.e
pushi.e 100
push.v self.i
pushi.e 20
mul.i.v
add.v.i
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEY
push.v self.i
conv.v.i
popaf.e
push.v self.YMAX
pushi.e 1
add.i.v
pop.v.v self.YMAX
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [11]

:[13]
push.i 167420
setowner.e
push.s "DEVICE_CHOICE_slash_Create_0_gml_64_0"@28925
conv.s.v
push.s "GRAINS"@28926
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 0
popaf.e
push.s "DEVICE_CHOICE_slash_Create_0_gml_65_0"@28927
conv.s.v
push.s "MEAT"@28928
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 1
popaf.e
push.s "DEVICE_CHOICE_slash_Create_0_gml_66_0"@28929
conv.s.v
push.s "DAIRY"@28930
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 2
popaf.e
push.s "DEVICE_CHOICE_slash_Create_0_gml_67_0"@28931
conv.s.v
push.s "SWEETS"@28932
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 3
popaf.e
push.s "DEVICE_CHOICE_slash_Create_0_gml_68_0"@28933
conv.s.v
push.s "FRUIT"@28934
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 4
popaf.e
push.s "DEVICE_CHOICE_slash_Create_0_gml_69_0"@28935
conv.s.v
push.s "VEGETABLE"@28936
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 5
popaf.e
push.s "DEVICE_CHOICE_slash_Create_0_gml_70_0"@28937
conv.s.v
push.s "EGG"@28916
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 6
popaf.e
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.NAMEX
pushi.e 0
pushaf.e
pushi.e 20
sub.i.v
pop.v.v self.HEARTX
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.NAMEY
pushi.e 0
pushaf.e
pop.v.v self.HEARTY
pushi.e 0
pop.v.i self.XMAX
pushi.e 6
pop.v.i self.YMAX
pushi.e -20
pop.v.i self.xoff

:[14]
push.v self.TYPE
pushi.e 3
cmp.i.v EQ
bf [16]

:[15]
call.i gml_Script_scr_84_name_input_setup(argc=0)
popz.v

:[16]
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.NAMEX
pushi.e 0
pushaf.e
pop.v.v self.HEARTX
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.NAMEY
pushi.e 0
pushaf.e
pop.v.v self.HEARTY
push.v self.TYPE
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushi.e 150
pop.v.i self.HEARTX

:[18]
pushi.e 1
pop.v.i self.DRAWHEART
pushi.e 0
pop.v.i self.ONEBUFFER
pushi.e 0
pop.v.i self.TWOBUFFER
pushi.e 0
pop.v.i self.FINISH
pushi.e 10
pop.v.i self.fadebuffer
pushi.e 0
pop.v.i self.PANASHIR
pushi.e 0
pop.v.i self.PANASHIU
pushi.e 0
pop.v.i self.PANASHID
pushi.e 0
pop.v.i self.PANASHIL
pushi.e 0
pop.v.i self.ERASE
pushi.e 0
pop.v.i self.backout

:[end]