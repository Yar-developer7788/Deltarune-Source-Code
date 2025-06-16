.localvar 2 arguments

:[0]
push.v self.text_finish
conv.v.b
not.b
bf [4]

:[1]
push.v self.text_alpha
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
push.v self.text_alpha
push.d 0.05
add.d.v
pop.v.v self.text_alpha
b [4]

:[3]
pushi.e 1
pop.v.b self.text_finish
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[4]
push.v self.text_fade
conv.v.b
bf [end]

:[5]
push.v self.text_alpha
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
push.v self.text_alpha
push.d 0.05
sub.d.v
pop.v.v self.text_alpha
b [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]