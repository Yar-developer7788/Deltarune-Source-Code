.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 4
pop.v.i self.mode
pushi.e 0
pop.v.i self.count
pushi.e 0
pop.v.i self.input_memorizer
push.s "bulletpattern.txt"@26675
conv.s.v
call.i file_text_open_read(argc=1)
pop.v.v self.file
pushi.e 0
pop.v.i self.n
pushi.e 0
pop.v.i self.finished

:[1]
push.v self.finished
pushi.e 0
cmp.i.v EQ
bf [19]

:[2]
push.v self.file
call.i file_text_read_string(argc=1)
pop.v.v self.linestring
push.v self.linestring
push.s "x"@50
cmp.s.v EQ
bf [4]

:[3]
b [19]

:[4]
pushi.e 0
pop.v.i self.found
pushi.e 1
pop.v.i self.j
pushi.e 0
pop.v.i self.b
push.i 165747
setowner.e
push.s ""@157
conv.s.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.mystring
push.s ""@157
conv.s.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.mystring
push.s ""@157
conv.s.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.mystring

:[5]
push.v self.found
pushi.e 0
cmp.i.v EQ
bf [16]

:[6]
push.v self.j
push.v self.linestring
call.i string_char_at(argc=2)
pop.v.v self.foundchar
push.v self.foundchar
push.s " "@353
cmp.s.v NEQ
bf [8]

:[7]
push.v self.foundchar
push.s ","@6157
cmp.s.v NEQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e -1
push.v self.b
conv.v.i
dup.i 1
push.v [array]self.mystring
push.v self.foundchar
add.v.v
pop.i.v [array]self.mystring

:[11]
push.v self.foundchar
push.s ","@6157
cmp.s.v EQ
bf [13]

:[12]
push.v self.b
push.e 1
add.i.v
pop.v.v self.b

:[13]
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
push.v self.foundchar
push.s ""@157
cmp.s.v EQ
bf [15]

:[14]
pushi.e 1
pop.v.i self.found

:[15]
b [5]

:[16]
push.i 171787
setowner.e
pushi.e -1
pushi.e 0
push.v [array]self.mystring
call.i real(argc=1)
pushi.e 150
sub.i.v
pushi.e -1
push.v self.n
conv.v.i
pop.v.v [array]self.bullet_frame
push.i 171788
setowner.e
pushi.e -1
pushi.e 1
push.v [array]self.mystring
call.i real(argc=1)
pushi.e -1
push.v self.n
conv.v.i
pop.v.v [array]self.bullet_pos
push.i 171789
setowner.e
pushi.e -1
pushi.e 2
push.v [array]self.mystring
call.i real(argc=1)
pushi.e -1
push.v self.n
conv.v.i
pop.v.v [array]self.bullet_height
push.v self.file
call.i file_text_readln(argc=1)
popz.v
push.v self.n
push.e 1
add.i.v
pop.v.v self.n
push.v self.n
pushi.e 2000
cmp.i.v GTE
bf [18]

:[17]
pushi.e 1
pop.v.i self.finished

:[18]
b [1]

:[19]
push.v self.file
call.i file_text_close(argc=1)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.bullet_frame
pop.v.v self.remframe
pushi.e 0
pop.v.i self.bulletcount
push.v self.n
pushi.e 1
sub.i.v
pop.v.v self.bulletmax
pushi.e 0
pop.v.i self.mframecount

:[end]