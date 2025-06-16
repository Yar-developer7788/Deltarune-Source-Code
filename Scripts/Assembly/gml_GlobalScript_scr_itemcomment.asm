.localvar 2 arguments

:[0]
b [6]

> gml_Script_scr_itemcomment (locals=0, argc=2)
:[1]
push.v arg.argument0
call.i gml_Script_scr_charbox_x(argc=1)
pop.v.v self.talkx
pushi.e 279
conv.i.v
push.v self.yy
pushi.e 460
add.i.v
push.v self.talkx
push.v self.xx
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.itemcomment
push.v arg.argument1
push.v self.itemcomment
pushi.e -9
pop.v.v [stacktop]self.msg
push.v arg.argument0
push.v self.itemcomment
pushi.e -9
pop.v.v [stacktop]self.who
pushi.e -5
pushi.e 32
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [5]

:[2]
push.v self.itemcomment
pushi.e -9
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]

:[5]
exit.i

:[6]
push.i [function]gml_Script_scr_itemcomment
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_itemcomment
popz.v

:[end]