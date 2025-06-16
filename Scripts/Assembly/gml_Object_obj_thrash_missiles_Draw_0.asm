.localvar 2 arguments

:[0]
push.v self.vspeed
pushi.e 0
cmp.i.v LTE
bf [6]

:[1]
push.v self.ystart
pushi.e 26
sub.i.v
push.v self.x
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.x
pushi.e 15
sub.i.v
call.i gml_Script_scr_drawpart_crop(argc=4)
popz.v
push.v self.y
push.v self.ystart
pushi.e 16
sub.i.v
cmp.v.v GT
bf [3]

:[2]
pushi.e -4
pop.v.i self.hspeed
b [5]

:[3]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [5]

:[4]
push.v self.hspeed
push.d 0.5
add.d.v
pop.v.v self.hspeed

:[5]
b [end]

:[6]
call.i draw_self(argc=0)
popz.v

:[end]