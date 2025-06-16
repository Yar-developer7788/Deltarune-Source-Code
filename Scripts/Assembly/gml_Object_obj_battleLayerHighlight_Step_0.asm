.localvar 2 arguments

:[0]
pushi.e 82
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [5]

:[1]
push.v 82.battlemode
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.d 0.25
conv.d.v
pushi.e 1
conv.i.v
push.v self.myalpha
call.i lerp(argc=3)
pop.v.v self.myalpha
b [4]

:[3]
push.d 0.35
conv.d.v
pushi.e 0
conv.i.v
push.v self.myalpha
call.i lerp(argc=3)
pop.v.v self.myalpha

:[4]
b [end]

:[5]
push.d 0.35
conv.d.v
pushi.e 0
conv.i.v
push.v self.myalpha
call.i lerp(argc=3)
pop.v.v self.myalpha

:[end]