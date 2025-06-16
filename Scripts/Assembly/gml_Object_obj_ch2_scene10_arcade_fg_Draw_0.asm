.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 9999
conv.i.v
pushi.e 9999
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle_color(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.timer
pushi.e 12
cmp.i.v EQ
bf [4]

:[1]
pushi.e 789
pushenv [3]

:[2]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pause(argc=1)
popz.v
push.s "boxing_game.ogg"@21450
conv.s.v
call.i gml_Script_snd_init(argc=1)
pop.v.v self.boxing_game_music
push.v self.boxing_game_music
call.i gml_Script_mus_loop(argc=1)
popz.v

:[3]
popenv [2]

:[4]
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]