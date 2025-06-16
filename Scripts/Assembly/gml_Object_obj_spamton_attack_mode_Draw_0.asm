.localvar 2 arguments
.localvar 14286 ease 12258

:[0]
push.v self.state
pushi.e 0
cmp.i.v EQ
bt [2]

:[1]
push.v self.state
pushi.e 4
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 0
push.v self.headtop
pushi.e -9
pop.v.i [stacktop]self.image_alpha
call.i draw_self(argc=0)
popz.v
b [end]

:[5]
push.v self.state
pushi.e 1
cmp.i.v EQ
bt [7]

:[6]
push.v self.state
pushi.e 3
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [10]

:[9]
pushi.e 1
push.v self.headtop
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 1
conv.i.v
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
call.i gml_Script_scr_ease_out(argc=2)
pop.v.v local.ease
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
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1839
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
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
pushloc.v local.ease
push.v self.y
push.v self.y
pushi.e 10
sub.i.v
call.i lerp(argc=3)
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1838
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushloc.v local.ease
push.v self.y
pushi.e 4
sub.i.v
push.v self.y
pushi.e 20
add.i.v
call.i lerp(argc=3)
push.v self.headtop
pushi.e -9
pop.v.v [stacktop]self.y
b [end]

:[10]
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
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1839
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
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
push.v self.timer
call.i cos(argc=1)
pushi.e 4
mul.i.v
add.v.v
pushi.e 10
sub.i.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1838
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.y
push.v self.timer
call.i cos(argc=1)
pushi.e 4
mul.i.v
sub.v.v
push.v self.headtop
pushi.e -9
pop.v.v [stacktop]self.y

:[end]