.localvar 2 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v NEQ
bt [5]

:[1]
push.v self.intro_timer
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.heart_recoil
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
exit.i

:[8]
push.v self.intro_timer
pushi.e -1
cmp.i.v EQ
bf [12]

:[9]
push.v 631.x
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 4
add.i.v
cmp.v.v LTE
bf [11]

:[10]
pushi.e 10
pop.v.i self.heart_recoil

:[11]
pushi.e 0
pop.v.i self.intro_timer
b [19]

:[12]
push.v self.intro_timer
pushi.e 0
cmp.i.v GT
bf [19]

:[13]
push.v self.heart_recoil
pushi.e 0
cmp.i.v EQ
bf [16]

:[14]
push.v self.intro_timer
pushi.e 7
cmp.i.v GT
bf [16]

:[15]
push.v 631.x
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 24
sub.i.v
cmp.v.v GTE
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e -10
conv.i.v
pushi.e 0
conv.i.v
push.v self.intro_timer
pushi.e 15
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_remapvalue(argc=5)
pop.v.v self.heart_recoil

:[19]
push.v self.heart_recoil
pushi.e 0
cmp.i.v NEQ
bf [21]

:[20]
push.v 631.x
push.v self.heart_recoil
add.v.v
pop.v.v 631.x
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.heart_recoil
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.heart_recoil

:[21]
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 24
sub.i.v
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 2
add.i.v
push.v 631.x
call.i clamp(argc=3)
pop.v.v 631.x

:[end]