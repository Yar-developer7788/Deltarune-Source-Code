.localvar 2 arguments

:[0]
b [11]

> gml_Script_scr_onscreen (locals=0, argc=1)
:[1]
push.v arg.argument0
pop.v.v self.obj
pushi.e 0
pop.v.i self.spacer
push.v self.obj
pushi.e -9
push.v [stacktop]self.x
push.v self.obj
pushi.e -9
push.v [stacktop]self.sprite_width
add.v.v
push.v self.spacer
add.v.v
call.i gml_Script_camerax(argc=0)
cmp.v.v LT
bt [5]

:[2]
push.v self.obj
pushi.e -9
push.v [stacktop]self.x
push.v self.spacer
sub.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
cmp.v.v GT
bt [5]

:[3]
push.v self.obj
pushi.e -9
push.v [stacktop]self.y
push.v self.obj
pushi.e -9
push.v [stacktop]self.sprite_height
add.v.v
push.v self.spacer
add.v.v
call.i gml_Script_cameray(argc=0)
cmp.v.v LT
bt [5]

:[4]
push.v self.obj
pushi.e -9
push.v [stacktop]self.y
push.v self.spacer
sub.v.v
call.i gml_Script_cameray(argc=0)
pushi.e 480
add.i.v
cmp.v.v GT
b [6]

:[5]
push.e 1

:[6]
bf [9]

:[7]
pushi.e 0
conv.b.v
ret.v

:[8]
b [10]

:[9]
pushi.e 1
conv.b.v
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script_scr_onscreen
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_onscreen
popz.v

:[end]