.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_smallface_reset (locals=0, argc=1)
:[1]
push.i 9930733
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smalarm
push.i 9930734
setowner.e
pushi.e 70
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smyy
push.i 9930735
setowner.e
pushi.e 170
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smxx
push.i 9930736
setowner.e
pushi.e 180
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smdir
push.i 9930737
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smspeed
push.i 9930738
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smtype
push.i 9930739
setowner.e
pushglb.v global.fe
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smimage
push.i 9930740
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smimagespeed
push.i 9930741
setowner.e
pushi.e 572
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smsprite
push.i 9930742
setowner.e
push.i 16777215
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smcolor
push.i 9930743
setowner.e
push.s "scr_smallface_reset_slash_scr_smallface_reset_gml_12_0"@6212
conv.s.v
push.s "* ... what?"@6213
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smstring
exit.i

:[2]
push.i [function]gml_Script_scr_smallface_reset
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_smallface_reset
popz.v

:[end]