.localvar 2 arguments

:[0]
push.v self.creatednewalls
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.v self.topwall
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.bottomwall
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
push.v self.x
pushi.e 20
sub.i.v
push.v self.topwall
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.x
pushi.e 20
sub.i.v
push.v self.bottomwall
pushi.e -9
pop.v.v [stacktop]self.x

:[end]