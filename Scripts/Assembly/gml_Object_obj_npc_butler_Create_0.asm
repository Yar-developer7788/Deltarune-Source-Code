.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.closetimer
pushi.e 2
pop.v.i self.image_yscale
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
pop.v.v self.current_pal
push.v self.swatch_color
push.s ""@157
cmp.s.v NEQ
bf [13]

:[1]
push.v self.swatch_color
dup.v 0
push.s "blue"@17738
cmp.s.v EQ
bt [7]

:[2]
dup.v 0
push.s "green"@17739
cmp.s.v EQ
bt [8]

:[3]
dup.v 0
push.s "yellow"@10317
cmp.s.v EQ
bt [9]

:[4]
dup.v 0
push.s "orange"@17740
cmp.s.v EQ
bt [10]

:[5]
dup.v 0
push.s "red"@7911
cmp.s.v EQ
bt [11]

:[6]
b [12]

:[7]
push.v self.blue
pop.v.v self.current_pal
b [12]

:[8]
push.v self.green
pop.v.v self.current_pal
b [12]

:[9]
push.v self.yellow
pop.v.v self.current_pal
b [12]

:[10]
push.v self.orange
pop.v.v self.current_pal
b [12]

:[11]
push.v self.red
pop.v.v self.current_pal
b [12]

:[12]
popz.v

:[13]
pushi.e 1818
pop.v.i self.sprite_palette
pushi.e 0
pop.v.b self.color_init
pushi.e 0
pop.v.i self.new_color
push.i 168476
setowner.e
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

:[end]