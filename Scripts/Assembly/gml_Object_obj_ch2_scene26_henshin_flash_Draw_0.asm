.localvar 2 arguments
.localvar 14295 _duration 6038
.localvar 14296 _beam_final_dir 6039

:[0]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
call.i sin(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.orb_sin
pushi.e 75
pop.v.i local._duration
push.v self.siner
pushloc.v local._duration
cmp.v.v LTE
bf [2]

:[1]
pushi.e 5
conv.i.v
push.v self.siner
pushloc.v local._duration
div.v.v
call.i gml_Script_scr_ease_out(argc=2)
pushi.e 20
conv.i.v
pushi.e 2
conv.i.v
call.i lerp(argc=3)
pop.v.v self.beam_size
pushi.e 4
conv.i.v
push.v self.siner
pushloc.v local._duration
div.v.v
call.i gml_Script_scr_ease_out(argc=2)
pushi.e 550
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.beam_speed
pushi.e 5
conv.i.v
push.v self.siner
pushloc.v local._duration
div.v.v
call.i gml_Script_scr_ease_out(argc=2)
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.orb_size
b [3]

:[2]
push.v self.orb_size
push.d 0.5
add.d.v
pop.v.v self.orb_size

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [6]

:[5]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.beam_dir
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.beam_rot
push.v self.beam_speed
mul.v.v
add.v.v
pop.v.v local._beam_final_dir
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushloc.v local._beam_final_dir
push.v self.beam_size
pushi.e 600
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_draw_beam(argc=8)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
pushi.e 0
conv.i.v
push.v self.orb_size
push.v self.orb_sin
add.v.v
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v

:[end]