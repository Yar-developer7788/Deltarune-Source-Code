.localvar 2 arguments

:[0]
push.v self.hastarget
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.target
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[2]
push.v self.x
push.v self.target
pushi.e -9
push.v [stacktop]self.x
push.v self.target
pushi.e -9
push.v [stacktop]self.xprevious
sub.v.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.target
pushi.e -9
push.v [stacktop]self.y
push.v self.target
pushi.e -9
push.v [stacktop]self.yprevious
sub.v.v
add.v.v
pop.v.v self.y

:[end]