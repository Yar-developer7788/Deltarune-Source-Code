.localvar 2 arguments

:[0]
b [13]

> gml_Script_scr_shopmorearrow_ch1 (locals=0, argc=0)
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
pushi.e 3740
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[3]
pushi.e 5
push.v self.pagemax
add.v.i
pushi.e 12
cmp.i.v LT
bf [12]

:[4]
push.v self.menu
pushi.e 11
cmp.i.v EQ
bt [6]

:[5]
push.v self.menu
pushi.e 15
cmp.i.v EQ
b [7]

:[6]
push.e 1

:[7]
bf [11]

:[8]
pushi.e -5
pushi.e 5
push.v self.pagemax
add.v.i
conv.v.i
push.v [array]self.item
pushi.e 0
cmp.i.v NEQ
bf [10]

:[9]
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
pushi.e 3740
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[10]
b [12]

:[11]
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
pushi.e 3740
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[12]
exit.i

:[13]
push.i [function]gml_Script_scr_shopmorearrow_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_shopmorearrow_ch1
popz.v

:[end]