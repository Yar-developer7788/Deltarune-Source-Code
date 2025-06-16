.localvar 2 arguments

:[0]
b [10]

> gml_Script_scr_shopmorearrow (locals=0, argc=1)
:[1]
push.v self.pagemax
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 280
push.v self.cur_jewel
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
sub.v.i
pushi.e 370
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1316
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[3]
pushi.e 5
push.v self.pagemax
add.v.i
push.v arg.argument0
cmp.v.v LT
bf [9]

:[4]
push.v self.menu
pushi.e 11
cmp.i.v EQ
bf [8]

:[5]
pushi.e -1
pushi.e 5
push.v self.pagemax
add.v.i
conv.v.i
push.v [array]self.itemsellname
push.s " "@353
cmp.s.v NEQ
bf [7]

:[6]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 440
push.v self.cur_jewel
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.i
pushi.e 370
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1316
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[7]
b [9]

:[8]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 440
push.v self.cur_jewel
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.i
pushi.e 370
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1316
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_scr_shopmorearrow
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_shopmorearrow
popz.v

:[end]