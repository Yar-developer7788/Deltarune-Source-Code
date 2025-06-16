.localvar 2 arguments

:[0]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[1]
pushglb.v global.turntimer
pushi.e 0
cmp.i.v LT
bt [3]

:[2]
push.v self.spawntimer
pushi.e 15
cmp.i.v LT
b [4]

:[3]
push.e 1

:[4]
bf [8]

:[5]
push.v self.spawntimer
push.e 1
add.i.v
pop.v.v self.spawntimer
push.v self.spawntimer
pushi.e 15
cmp.i.v EQ
bf [7]

:[6]
push.v 631.x
push.v self.x
push.v self.xhome
sub.v.v
add.v.v
pop.v.v 631.x
push.v 631.y
push.v self.y
push.v self.yhome
sub.v.v
add.v.v
pop.v.v 631.y
push.v self.xhome
pop.v.v self.x
push.v self.yhome
pop.v.v self.y

:[7]
pushi.e 5
conv.i.v
push.v self.x
push.v 872.x
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v 872.x
pushi.e 5
conv.i.v
push.v self.y
push.v 872.y
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v 872.y

:[8]
b [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]