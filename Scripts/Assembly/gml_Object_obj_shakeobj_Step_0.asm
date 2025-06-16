.localvar 2 arguments

:[0]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
push.v self.target
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [7]

:[4]
push.v self.shakeamt
push.v self.shakereduct
sub.v.v
pop.v.v self.shakeamt
push.v self.on
pushi.e -1
mul.i.v
pop.v.v self.on
push.v self.nowx
push.v self.shakeamt
push.v self.on
mul.v.v
add.v.v
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.shakeamt
pushi.e 0
cmp.i.v LTE
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
b [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]