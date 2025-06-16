.localvar 2 arguments

:[0]
push.v self.border_fade_out
conv.v.b
bf [5]

:[1]
push.v self.border_alpha
pushi.e 0
cmp.i.v GT
bf [4]

:[2]
push.v self.border_alpha
push.v self.border_fade_value
sub.v.v
pop.v.v self.border_alpha
push.v self.border_alpha
pushi.e 0
cmp.i.v LTE
bf [4]

:[3]
pushi.e 0
pop.v.i self.border_alpha

:[4]
b [end]

:[5]
push.v self.border_fade_in
conv.v.b
bf [end]

:[6]
push.v self.border_alpha
pushi.e 1
cmp.i.v LTE
bf [end]

:[7]
push.v self.border_alpha
push.v self.border_fade_value
add.v.v
pop.v.v self.border_alpha
push.v self.border_alpha
pushi.e 1
cmp.i.v GTE
bf [end]

:[8]
pushi.e 1
pop.v.i self.border_alpha

:[end]