.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.files_exist
conv.v.b
not.b
bf [5]

:[2]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 75
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.con

:[4]
b [end]

:[5]
push.v self.show_queen
conv.v.b
not.b
bf [7]

:[6]
pushi.e 1
pop.v.b self.show_queen

:[7]
push.v self.show_queen
conv.v.b
bf [end]

:[8]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [10]

:[9]
pushi.e 3354
pop.v.i self.queen_sprite
push.s "out"@14331
conv.s.v
pushi.e -1
conv.i.v
pushi.e 15
conv.i.v
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
pushi.e 4
conv.i.d
div.d.v
pushi.e -150
conv.i.v
push.s "queen_y_pos"@14329
conv.s.v
call.i gml_Script_scr_lerpvar(argc=6)
popz.v
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "queen_alpha"@14330
conv.s.v
call.i gml_Script_scr_lerpvar(argc=4)
popz.v

:[10]
push.v self.timer
pushi.e 50
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1925
pop.v.i self.queen_sprite
pushi.e 0
pop.v.b self.queen_animate

:[12]
push.v self.timer
pushi.e 80
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1941
pop.v.i self.queen_sprite
pushi.e 1
pop.v.b self.queen_animate
pushi.e 194
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[14]
push.v self.timer
pushi.e 130
cmp.i.v EQ
bf [16]

:[15]
pushi.e 134
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1942
pop.v.i self.queen_sprite

:[16]
push.v self.timer
pushi.e 170
cmp.i.v EQ
bf [18]

:[17]
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "queen_alpha"@14330
conv.s.v
call.i gml_Script_scr_lerpvar(argc=4)
popz.v

:[18]
push.v self.timer
pushi.e 200
cmp.i.v EQ
bf [end]

:[19]
pushi.e 99
pop.v.i self.con
pushi.e 244
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]