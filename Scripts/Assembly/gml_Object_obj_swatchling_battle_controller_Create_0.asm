.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.init
push.i 169885
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.red_damage
push.i 169884
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.red_target
pushi.e 255
pop.v.i self.shockwave_color
pushi.e 0
pop.v.i self.red_count
pushi.e 0
pop.v.i self.blue_count
pushi.e 0
pop.v.i self.yellow_count
pushi.e 1
pop.v.b self.allowAll
pushi.e -999
pop.v.i self.shockwave_x_1
pushi.e -999
pop.v.i self.shockwave_x_2
pushi.e 0
pop.v.i self.bird_count
push.i 169883
setowner.e
pushi.e 255
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.bird_color
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pop.v.v self.platter_side
pushi.e 29
conv.i.v
call.i irandom(argc=1)
pop.v.v self.platter_offset

:[end]