.localvar 2 arguments

:[0]
call.i gml_Script_scr_enemy_object_init(argc=0)
popz.v
pushi.e 90
pop.v.i self.talkmax
push.d 0.5
pop.v.d self.image_speed
pushi.e 2087
pop.v.i self.idlesprite
pushi.e 2087
pop.v.i self.hurtsprite
pushi.e 2087
pop.v.i self.sparedsprite
pushi.e 1
pop.v.i self.firstturn
pushi.e 0
pop.v.b self.trappingX
pushi.e 0
pop.v.b self.remove
pushi.e 0
pop.v.b self.trappedText
pushi.e -4
pop.v.i self.basket
pushi.e 0
pop.v.b self.trapped
pushi.e 0
pop.v.b self.tasque_joined
pushi.e 0
pop.v.i self.nact_count
pushi.e 3
pop.v.i self.total_cursors
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.total_cursors
cmp.v.v LT
bf [3]

:[2]
push.i 171899
setowner.e
pushi.e 762
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.cursor_memory
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.cursor_count
pushi.e 0
pop.v.i self.recording_cursor
pushi.e 1
pop.v.i self.basket_size
pushi.e 1
pop.v.i self.tasque_manager_recruited

:[end]