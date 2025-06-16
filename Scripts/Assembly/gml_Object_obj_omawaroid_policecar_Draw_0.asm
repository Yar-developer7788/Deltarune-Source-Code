.localvar 2 arguments
.localvar 23099 oob 10303

:[0]
pushi.e 0
pop.v.b local.oob
push.v self.y
push.v self.boxTop
pushi.e 18
add.i.v
cmp.v.v LT
bt [2]

:[1]
push.v self.y
push.v self.boxBottom
pushi.e 18
sub.i.v
cmp.v.v GT
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.b local.oob
call.i gml_Script_scr_draw_in_box_begin(argc=0)
popz.v

:[5]
call.i draw_self(argc=0)
popz.v
pushloc.v local.oob
conv.v.b
bf [end]

:[6]
call.i gml_Script_scr_draw_in_box_end(argc=0)
popz.v

:[end]