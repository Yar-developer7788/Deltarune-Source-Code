.localvar 2 arguments

:[0]
push.v self.auto_scroll_start
conv.v.b
bf [4]

:[1]
pushi.e 0
pop.v.b self.auto_scroll_start
push.v self.looping_bg
pushi.e -9
pushenv [3]

:[2]
pushi.e -2
pop.v.i self.x_speed

:[3]
popenv [2]

:[4]
push.v self.auto_scroll_stop
conv.v.b
bf [end]

:[5]
push.v self.looping_bg
pushi.e -9
push.v [stacktop]self.x_pos
pushi.e 40
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [end]

:[6]
pushi.e 0
pop.v.b self.auto_scroll_stop
push.v self.looping_bg
pushi.e -9
pushenv [8]

:[7]
pushi.e 0
pop.v.i self.x_speed

:[8]
popenv [7]

:[end]