.localvar 2 arguments

:[0]
pushi.e 0
conv.i.v
push.s "TILES_BATTLEBORDER"@14732
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e -1
pop.v.i self.surf
pushi.e -1
pop.v.i self.spr_battleborder
pushi.e 0
pop.v.i self.myalpha
pushi.e 0
pop.v.i self.state
pushbltn.v builtin.room
pushi.e 191
cmp.i.v EQ
bf [end]

:[1]
pushi.e -1
pop.v.i self.spr_border_none
pushi.e -1
pop.v.i self.spr_border_left
pushi.e -1
pop.v.i self.spr_border_right
pushi.e -1
pop.v.i self.spr_border_both
pushi.e 10
pop.v.i self.state

:[end]