.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
push.v self.smallrocks
conv.v.b
bf [3]

:[2]
push.s "BG_Rocks_Small"@33073
pop.v.s self.sourcelayer
pushi.e 255
conv.i.v
pushi.e 183
conv.i.v
pushi.e 163
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.image_blend

:[3]
push.v self.sourcelayer
call.i layer_get_depth(argc=1)
pop.v.v self.depth

:[4]
push.v self.smallrocks
conv.v.b
bf [6]

:[5]
push.v self.y
pushi.e 2
sub.i.v
pop.v.v self.y
b [7]

:[6]
push.v self.y
pushi.e 5
sub.i.v
pop.v.v self.y

:[7]
push.v self.y
call.i gml_Script_cameray(argc=0)
cmp.v.v LTE
bf [end]

:[8]
pushi.e 1
conv.i.v
push.v self.sourcelayer
call.i layer_set_visible(argc=2)
popz.v
push.v self.y
push.v self.sourcelayer
call.i layer_y(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]