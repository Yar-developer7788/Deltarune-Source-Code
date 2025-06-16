.localvar 2 arguments

:[0]
call.i gml_Script_scr_enemy_object_init(argc=0)
popz.v
pushi.e 300
pop.v.i self.talkmax
push.d 0.16666666666666666
pop.v.d self.image_speed
pushi.e 1810
pop.v.i self.idlesprite
pushi.e 1812
pop.v.i self.hurtsprite
pushi.e 1813
pop.v.i self.sparedsprite
pushi.e 0
pop.v.i self.randomMessage
pushi.e 1
pop.v.i self.blue
pushi.e 2
pop.v.i self.green
pushi.e 3
pop.v.i self.yellow
pushi.e 4
pop.v.i self.orange
pushi.e 5
pop.v.i self.red
push.v self.red
pop.v.v self.currentcolor
push.v self.red
pop.v.v self.previouscolor
push.v self.red
pop.v.v self.current_pal
pushi.e 1818
pop.v.i self.sprite_palette
pushi.e 0
pop.v.b self.color_init
pushi.e 0
pop.v.i self.new_color
pushi.e 0
pop.v.b self.loaded_color
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.b self.setmessage
pushi.e 0
pop.v.b self.coordinated
pushi.e 0
pop.v.i self.becameAlone
push.i 168476
setowner.e
push.v self.red
pushi.e -1
pushi.e 0
pop.v.v [array]self.base_colors
push.v self.blue
pushi.e -1
pushi.e 1
pop.v.v [array]self.base_colors
push.v self.yellow
pushi.e -1
pushi.e 2
pop.v.v [array]self.base_colors
push.s "global.flag[426]="@23418
pushi.e -5
pushi.e 426
push.v [array]self.flag
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
pushi.e -5
pushi.e 426
push.v [array]self.flag
dup.v 0
pushi.e -1
cmp.i.v EQ
bt [11]

:[1]
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [12]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [13]

:[3]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [14]

:[4]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [15]

:[5]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [16]

:[6]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [17]

:[7]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [18]

:[8]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [19]

:[9]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [20]

:[10]
b [21]

:[11]
push.v self.red
pushi.e -1
pushi.e 0
pop.v.v [array]self.base_colors
push.v self.red
pushi.e -1
pushi.e 1
pop.v.v [array]self.base_colors
push.v self.blue
pushi.e -1
pushi.e 2
pop.v.v [array]self.base_colors
b [21]

:[12]
push.v self.red
pushi.e -1
pushi.e 0
pop.v.v [array]self.base_colors
push.v self.orange
pushi.e -1
pushi.e 1
pop.v.v [array]self.base_colors
push.v self.blue
pushi.e -1
pushi.e 2
pop.v.v [array]self.base_colors
b [21]

:[13]
push.v self.blue
pushi.e -1
pushi.e 0
pop.v.v [array]self.base_colors
push.v self.green
pushi.e -1
pushi.e 1
pop.v.v [array]self.base_colors
push.v self.yellow
pushi.e -1
pushi.e 2
pop.v.v [array]self.base_colors
b [21]

:[14]
push.v self.red
pushi.e -1
pushi.e 0
pop.v.v [array]self.base_colors
push.v self.orange
pushi.e -1
pushi.e 1
pop.v.v [array]self.base_colors
push.v self.yellow
pushi.e -1
pushi.e 2
pop.v.v [array]self.base_colors
b [21]

:[15]
push.v self.blue
pushi.e -1
pushi.e 0
pop.v.v [array]self.base_colors
push.v self.yellow
pushi.e -1
pushi.e 1
pop.v.v [array]self.base_colors
push.v self.red
pushi.e -1
pushi.e 2
pop.v.v [array]self.base_colors
b [21]

:[16]
push.v self.red
pushi.e -1
pushi.e 0
pop.v.v [array]self.base_colors
push.v self.blue
pushi.e -1
pushi.e 1
pop.v.v [array]self.base_colors
push.v self.yellow
pushi.e -1
pushi.e 2
pop.v.v [array]self.base_colors
b [21]

:[17]
push.v self.blue
pushi.e -1
pushi.e 0
pop.v.v [array]self.base_colors
push.v self.yellow
pushi.e -1
pushi.e 1
pop.v.v [array]self.base_colors
push.v self.green
pushi.e -1
pushi.e 2
pop.v.v [array]self.base_colors
b [21]

:[18]
push.v self.red
pushi.e -1
pushi.e 0
pop.v.v [array]self.base_colors
push.v self.yellow
pushi.e -1
pushi.e 1
pop.v.v [array]self.base_colors
push.v self.blue
pushi.e -1
pushi.e 2
pop.v.v [array]self.base_colors
b [21]

:[19]
push.v self.blue
pushi.e -1
pushi.e 0
pop.v.v [array]self.base_colors
push.v self.red
pushi.e -1
pushi.e 1
pop.v.v [array]self.base_colors
push.v self.yellow
pushi.e -1
pushi.e 2
pop.v.v [array]self.base_colors
b [21]

:[20]
push.v self.yellow
pushi.e -1
pushi.e 0
pop.v.v [array]self.base_colors
push.v self.green
pushi.e -1
pushi.e 1
pop.v.v [array]self.base_colors
push.v self.orange
pushi.e -1
pushi.e 2
pop.v.v [array]self.base_colors
b [21]

:[21]
popz.v

:[end]