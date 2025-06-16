.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.lettersiner
push.d 0.2
add.d.v
pop.v.v self.lettersiner
push.v self.lettersiner
pushi.e 2
cmp.i.v GTE
bf [2]

:[1]
pushi.e 0
pop.v.i self.lettersiner

:[2]
push.v self.y
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [5]

:[4]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.i
pushi.e 7
mul.i.v
sub.v.v
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.i
pushi.e 2
conv.i.d
div.d.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
add.v.v
call.i sin(argc=1)
add.v.v
push.v self.x
push.v self.i
pushi.e 20
mul.i.v
add.v.v
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.letter
pushi.e 2
mul.i.v
push.v self.lettersiner
add.v.v
push.s "spr_werewire_zzt_text"@12024
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [3]

:[5]
push.v self.canDestroyTimer
push.e 1
add.i.v
pop.v.v self.canDestroyTimer
push.v self.canDestroyTimer
pushi.e 15
cmp.i.v GTE
bf [8]

:[6]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
push.v self.canDestroyTimer
pushi.e 120
cmp.i.v GTE
bt [10]

:[9]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
not.b
b [11]

:[10]
push.e 1

:[11]
bf [end]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[end]