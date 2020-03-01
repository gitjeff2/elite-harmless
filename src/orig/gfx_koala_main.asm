; Elite C64 disassembly / Elite : Harmless, cc-by-nc-sa 2018-2020,
; see LICENSE.txt. "Elite" is copyright / trademark David Braben & Ian Bell,
; All Rights Reserved. <github.com/Kroc/elite-harmless>
;===============================================================================
;
; this file can be used to assemble a Koala-painter image file,
; containing Elite's default screen (viewport + HUD)
;
; a Koala format is essentially a memory-dump of the
; separate graphics/colour components the VIC-II uses:
;
;          2 bytes - PRG header (deafult "$6000")
;       8000 bytes - bitmap data
;       1000 bytes - screen RAM
;       1000 bytes - colour RAM
;          1 byte  - background colour
;
; even though Elite doesn't store its bitmap at $6000, Koala files
; are often recognised by this header, so for compatibility with
; image editors, we stick to $6000
;
        .word   $6000

; bitmap data                                                     original-addr
;===============================================================================
; ROW 0                                                                 ;$4000
;-------------------------------------------------------------------------------
        .byte   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; COL  0
        .byte   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; COL  1
        .byte   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; COL  2
        .byte   $03, $03, $03, $03, $03, $03, $03, $03  ; COL  3
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL  4
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL  5
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL  6
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL  7
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL  8
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL  9
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 10
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 11
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 12
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 13
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 14
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 15
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 16
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 17
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 18
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 19
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 20
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 21
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 22
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 23
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 24
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 25
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 26
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 27
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 28
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 29
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 30
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 31
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 32
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 33
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 34
        .byte   $ff, $00, $00, $00, $00, $00, $00, $00  ; COL 35
        .byte   $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0  ; COL 36
        .byte   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; COL 37
        .byte   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; COL 38
        .byte   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; COL 39
;-------------------------------------------------------------------------------
; ROWS 1-17
;-------------------------------------------------------------------------------
.repeat 17
        .byte   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; COL  0
        .byte   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; COL  1
        .byte   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; COL  2
        .byte   $03, $03, $03, $03, $03, $03, $03, $03  ; COL  3
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  4
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  5
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  6
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  7
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  8
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  9
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 10
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 11
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 12
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 13
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 14
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 15
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 16
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 17
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 18
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 19
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 20
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 21
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 22
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 23
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 24
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 25
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 26
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 27
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 28
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 29
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 30
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 31
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 32
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 33
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 34
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 35
        .byte   $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0  ; COL 36
        .byte   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; COL 37
        .byte   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; COL 38
        .byte   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; COL 39
.endrep
;-------------------------------------------------------------------------------
; ROW 18
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  0        ;$5680
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  1
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  2
        .byte   $02, $02, $02, $02, $02, $02, $02, $02  ; COL  3
        .byte   $aa, $00, $15, $10, $15, $10, $10, $00  ; COL  4
        .byte   $aa, $00, $14, $10, $14, $04, $14, $00  ; COL  5
        .byte   $55, $00, $00, $00, $00, $00, $00, $ff  ; COL  6
        .byte   $55, $00, $00, $00, $00, $00, $00, $ff  ; COL  7
        .byte   $55, $00, $00, $00, $00, $00, $00, $ff  ; COL  8
        .byte   $55, $00, $00, $00, $00, $00, $00, $ff  ; COL  9
        .byte   $aa, $96, $98, $a0, $80, $80, $80, $80  ; COL 10
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00  ; COL 11
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00  ; COL 12
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00  ; COL 13
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00  ; COL 14
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00  ; COL 15
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00  ; COL 16
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00  ; COL 17
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00  ; COL 18
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00  ; COL 19
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00  ; COL 20
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00  ; COL 21
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00  ; COL 22
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00  ; COL 23
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00  ; COL 24
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00  ; COL 25
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00  ; COL 26
        .byte   $aa, $96, $98, $a0, $a0, $a0, $a0, $80  ; COL 27
        .byte   $aa, $04, $00, $14, $00, $14, $00, $14  ; COL 28
        .byte   $aa, $96, $26, $2a, $0a, $0a, $02, $02  ; COL 29
        .byte   $aa, $00, $00, $00, $00, $00, $33, $ff  ; COL 30
        .byte   $aa, $00, $00, $00, $00, $00, $33, $ff  ; COL 31
        .byte   $aa, $00, $00, $00, $00, $00, $33, $ff  ; COL 32
        .byte   $aa, $00, $00, $00, $00, $00, $33, $ff  ; COL 33
        .byte   $aa, $00, $14, $10, $14, $04, $14, $00  ; COL 34
        .byte   $aa, $00, $54, $44, $54, $40, $40, $00  ; COL 35
        .byte   $80, $80, $80, $80, $80, $80, $80, $80  ; COL 36
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 37
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 38
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 39
;-------------------------------------------------------------------------------
; ROW 19
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  0
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  1
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  2
        .byte   $02, $02, $02, $02, $02, $02, $02, $02  ; COL  3
        .byte   $00, $15, $11, $11, $15, $11, $00, $00  ; COL  4
        .byte   $00, $14, $10, $14, $04, $14, $00, $00  ; COL  5
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff  ; COL  6
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff  ; COL  7
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff  ; COL  8
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff  ; COL  9
        .byte   $80, $80, $80, $80, $80, $80, $80, $80  ; COL 10
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 11
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 12
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 13
        .byte   $00, $00, $00, $00, $00, $00, $01, $14  ; COL 14
        .byte   $00, $00, $00, $00, $00, $00, $14, $00  ; COL 15
        .byte   $00, $00, $00, $00, $01, $50, $04, $00  ; COL 16
        .byte   $00, $00, $00, $00, $14, $c0, $00, $00  ; COL 17
        .byte   $00, $00, $00, $00, $45, $00, $00, $00  ; COL 18
        .byte   $00, $00, $00, $00, $15, $00, $04, $00  ; COL 19
        .byte   $00, $00, $00, $00, $44, $00, $00, $00  ; COL 20
        .byte   $00, $00, $00, $00, $51, $00, $00, $00  ; COL 21
        .byte   $00, $00, $00, $00, $10, $c4, $04, $00  ; COL 22
        .byte   $00, $00, $00, $00, $00, $50, $01, $00  ; COL 23
        .byte   $00, $00, $00, $00, $00, $00, $40, $05  ; COL 24
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 25
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 26
        .byte   $80, $80, $84, $80, $80, $80, $80, $a0  ; COL 27
        .byte   $00, $00, $41, $00, $00, $14, $00, $14  ; COL 28
        .byte   $02, $02, $12, $02, $02, $02, $02, $02  ; COL 29
        .byte   $00, $00, $00, $00, $00, $00, $0c, $ff  ; COL 30
        .byte   $00, $00, $00, $00, $00, $00, $cc, $ff  ; COL 31
        .byte   $c0, $c0, $00, $00, $00, $c0, $cc, $ff  ; COL 32
        .byte   $00, $00, $00, $00, $00, $00, $cc, $ff  ; COL 33
        .byte   $00, $00, $14, $11, $15, $14, $11, $00  ; COL 34
        .byte   $00, $00, $10, $10, $10, $10, $14, $00  ; COL 35
        .byte   $80, $80, $80, $80, $80, $80, $80, $80  ; COL 36
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 37
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 38
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 39
;-------------------------------------------------------------------------------
; ROW 20
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  0
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  1
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  2
        .byte   $02, $02, $02, $02, $02, $02, $02, $02  ; COL  3
        .byte   $00, $14, $10, $14, $10, $10, $00, $00  ; COL  4
        .byte   $00, $44, $44, $44, $44, $10, $00, $00  ; COL  5
        .byte   $00, $00, $00, $00, $00, $00, $c3, $ff  ; COL  6
        .byte   $00, $00, $00, $00, $00, $00, $0c, $ff  ; COL  7
        .byte   $00, $00, $00, $00, $00, $00, $30, $ff  ; COL  8
        .byte   $00, $00, $00, $00, $00, $00, $c3, $ff  ; COL  9
        .byte   $80, $80, $80, $80, $80, $80, $80, $80  ; COL 10
        .byte   $00, $00, $00, $00, $00, $00, $01, $04  ; COL 11
        .byte   $00, $00, $00, $05, $10, $40, $00, $00  ; COL 12
        .byte   $01, $14, $40, $04, $00, $00, $00, $00  ; COL 13
        .byte   $00, $00, $00, $44, $00, $00, $00, $00  ; COL 14
        .byte   $00, $00, $00, $44, $01, $00, $04, $00  ; COL 15
        .byte   $10, $00, $40, $44, $00, $00, $00, $00  ; COL 16
        .byte   $0c, $00, $00, $44, $00, $00, $00, $00  ; COL 17
        .byte   $00, $00, $00, $c4, $00, $00, $0c, $00  ; COL 18
        .byte   $04, $00, $04, $40, $04, $00, $04, $00  ; COL 19
        .byte   $00, $00, $00, $44, $00, $00, $0c, $00  ; COL 20
        .byte   $0c, $00, $00, $c4, $00, $00, $00, $00  ; COL 21
        .byte   $01, $00, $00, $44, $00, $00, $00, $00  ; COL 22
        .byte   $00, $00, $40, $04, $10, $00, $04, $00  ; COL 23
        .byte   $00, $00, $00, $44, $00, $00, $00, $00  ; COL 24
        .byte   $40, $05, $00, $44, $00, $00, $00, $00  ; COL 25
        .byte   $00, $00, $40, $14, $01, $00, $00, $00  ; COL 26
        .byte   $20, $20, $28, $08, $0a, $42, $10, $04  ; COL 27
        .byte   $00, $14, $00, $14, $00, $aa, $00, $00  ; COL 28
        .byte   $0a, $0a, $26, $26, $96, $aa, $02, $02  ; COL 29
        .byte   $00, $00, $00, $00, $00, $00, $0c, $ff  ; COL 30
        .byte   $00, $00, $00, $00, $00, $00, $30, $ff  ; COL 31
        .byte   $c0, $c0, $00, $00, $00, $c0, $c3, $ff  ; COL 32
        .byte   $00, $00, $00, $00, $00, $00, $0c, $ff  ; COL 33
        .byte   $00, $14, $11, $11, $11, $14, $00, $00  ; COL 34
        .byte   $00, $14, $10, $10, $10, $14, $00, $00  ; COL 35
        .byte   $80, $80, $80, $80, $80, $80, $80, $80  ; COL 36
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 37
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 38
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 39
;-------------------------------------------------------------------------------
; ROW 21
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  0
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  1
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  2
        .byte   $02, $02, $02, $02, $02, $02, $02, $02  ; COL  3
        .byte   $00, $14, $10, $10, $10, $14, $00, $00  ; COL  4
        .byte   $00, $54, $10, $10, $10, $10, $00, $00  ; COL  5
        .byte   $00, $00, $00, $00, $00, $00, $c0, $ff  ; COL  6
        .byte   $00, $00, $00, $00, $00, $00, $c0, $ff  ; COL  7
        .byte   $00, $00, $00, $00, $00, $00, $c0, $ff  ; COL  8
        .byte   $00, $00, $00, $00, $00, $00, $c0, $ff  ; COL  9
        .byte   $80, $80, $80, $80, $80, $80, $80, $80  ; COL 10
        .byte   $00, $10, $10, $40, $44, $00, $40, $00  ; COL 11
        .byte   $00, $00, $00, $00, $44, $00, $00, $00  ; COL 12
        .byte   $00, $00, $00, $00, $44, $00, $00, $00  ; COL 13
        .byte   $00, $00, $00, $00, $44, $00, $04, $00  ; COL 14
        .byte   $10, $00, $40, $00, $44, $00, $00, $00  ; COL 15
        .byte   $00, $00, $00, $00, $44, $00, $00, $00  ; COL 16
        .byte   $00, $00, $00, $00, $44, $00, $00, $00  ; COL 17
        .byte   $00, $00, $00, $00, $44, $00, $00, $00  ; COL 18
        .byte   $04, $c0, $04, $00, $48, $2a, $04, $00  ; COL 19
        .byte   $00, $c0, $00, $00, $44, $00, $00, $00  ; COL 20
        .byte   $00, $00, $00, $00, $44, $00, $00, $00  ; COL 21
        .byte   $00, $00, $00, $00, $44, $00, $00, $00  ; COL 22
        .byte   $01, $00, $00, $00, $44, $00, $00, $00  ; COL 23
        .byte   $00, $00, $40, $00, $44, $00, $04, $00  ; COL 24
        .byte   $00, $00, $00, $00, $44, $00, $00, $00  ; COL 25
        .byte   $00, $00, $00, $00, $44, $00, $00, $00  ; COL 26
        .byte   $04, $01, $01, $00, $44, $00, $00, $00  ; COL 27
        .byte   $00, $00, $00, $40, $00, $40, $00, $40  ; COL 28
        .byte   $02, $02, $02, $02, $02, $02, $02, $02  ; COL 29
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff  ; COL 30
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff  ; COL 31
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff  ; COL 32
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff  ; COL 33
        .byte   $00, $01, $05, $01, $01, $05, $00, $00  ; COL 34
        .byte   $00, $00, $00, $00, $00, $40, $00, $00  ; COL 35
        .byte   $80, $80, $80, $80, $80, $80, $80, $80  ; COL 36
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 37
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 38
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 39
;-------------------------------------------------------------------------------
; ROW 22
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  0
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  1
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  2
        .byte   $02, $02, $02, $02, $02, $02, $02, $02  ; COL  3
        .byte   $00, $10, $10, $10, $10, $14, $00, $00  ; COL  4
        .byte   $00, $54, $10, $10, $10, $10, $00, $00  ; COL  5
        .byte   $00, $00, $00, $00, $00, $00, $c3, $ff  ; COL  6
        .byte   $00, $00, $00, $00, $00, $00, $0c, $ff  ; COL  7
        .byte   $00, $00, $00, $00, $00, $00, $30, $ff  ; COL  8
        .byte   $00, $00, $00, $00, $00, $00, $c0, $ff  ; COL  9
        .byte   $80, $80, $80, $80, $80, $80, $80, $80  ; COL 10
        .byte   $40, $10, $10, $04, $04, $01, $00, $00  ; COL 11
        .byte   $00, $00, $00, $00, $00, $40, $44, $10  ; COL 12
        .byte   $00, $00, $00, $00, $01, $00, $44, $00  ; COL 13
        .byte   $10, $00, $40, $00, $00, $00, $44, $00  ; COL 14
        .byte   $00, $00, $00, $00, $00, $00, $44, $00  ; COL 15
        .byte   $00, $00, $00, $00, $00, $00, $44, $00  ; COL 16
        .byte   $00, $00, $00, $00, $00, $00, $44, $00  ; COL 17
        .byte   $00, $00, $00, $00, $00, $00, $44, $00  ; COL 18
        .byte   $04, $00, $04, $00, $04, $00, $44, $00  ; COL 19
        .byte   $00, $00, $00, $00, $00, $00, $44, $00  ; COL 20
        .byte   $00, $00, $00, $00, $00, $00, $44, $00  ; COL 21
        .byte   $00, $00, $00, $00, $00, $00, $44, $00  ; COL 22
        .byte   $00, $00, $00, $00, $00, $00, $44, $00  ; COL 23
        .byte   $01, $00, $00, $00, $00, $00, $44, $00  ; COL 24
        .byte   $00, $00, $40, $00, $10, $00, $44, $00  ; COL 25
        .byte   $00, $00, $00, $00, $00, $00, $44, $01  ; COL 26
        .byte   $00, $01, $01, $05, $04, $10, $40, $00  ; COL 27
        .byte   $40, $00, $00, $00, $00, $00, $00, $00  ; COL 28
        .byte   $02, $02, $02, $02, $02, $02, $02, $02  ; COL 29
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff  ; COL 30
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff  ; COL 31
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff  ; COL 32
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff  ; COL 33
        .byte   $05, $00, $05, $04, $05, $00, $00, $00  ; COL 34
        .byte   $40, $40, $40, $00, $40, $00, $00, $00  ; COL 35
        .byte   $80, $80, $80, $80, $80, $80, $80, $80  ; COL 36
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 37
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 38
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 39
;-------------------------------------------------------------------------------
; ROW 23
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  0
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  1
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  2
        .byte   $02, $02, $02, $02, $02, $02, $02, $02  ; COL  3
        .byte   $00, $15, $11, $15, $11, $11, $00, $00  ; COL  4
        .byte   $00, $10, $10, $10, $10, $14, $00, $00  ; COL  5
        .byte   $00, $00, $00, $00, $00, $00, $c3, $ff  ; COL  6
        .byte   $00, $00, $00, $00, $00, $00, $03, $ff  ; COL  7
        .byte   $00, $00, $00, $00, $00, $00, $03, $ff  ; COL  8
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff  ; COL  9
        .byte   $80, $80, $80, $80, $80, $80, $80, $80  ; COL 10
        .byte   $55, $55, $50, $50, $55, $55, $50, $50  ; COL 11
        .byte   $04, $01, $00, $00, $00, $00, $00, $00  ; COL 12
        .byte   $10, $40, $10, $01, $00, $00, $00, $00  ; COL 13
        .byte   $00, $00, $00, $40, $14, $00, $00, $00  ; COL 14
        .byte   $00, $00, $00, $00, $00, $50, $01, $00  ; COL 15
        .byte   $00, $00, $00, $00, $00, $00, $44, $00  ; COL 16
        .byte   $00, $00, $00, $00, $00, $00, $00, $51  ; COL 17
        .byte   $00, $00, $00, $00, $00, $00, $00, $14  ; COL 18
        .byte   $04, $00, $04, $00, $04, $00, $04, $45  ; COL 19
        .byte   $00, $00, $00, $00, $00, $00, $00, $11  ; COL 20
        .byte   $00, $00, $00, $00, $00, $00, $00, $44  ; COL 21
        .byte   $00, $00, $00, $00, $00, $00, $11, $40  ; COL 22
        .byte   $00, $00, $00, $00, $00, $05, $40, $00  ; COL 23
        .byte   $00, $00, $00, $00, $14, $00, $00, $00  ; COL 24
        .byte   $01, $00, $05, $50, $00, $00, $00, $00  ; COL 25
        .byte   $04, $40, $00, $00, $00, $00, $00, $00  ; COL 26
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 27
        .byte   $55, $55, $40, $40, $55, $55, $01, $01  ; COL 28
        .byte   $02, $02, $02, $02, $02, $02, $02, $02  ; COL 29
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff  ; COL 30
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff  ; COL 31
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff  ; COL 32
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff  ; COL 33
        .byte   $05, $00, $05, $00, $05, $00, $00, $04  ; COL 34
        .byte   $40, $40, $40, $40, $40, $00, $00, $00  ; COL 35
        .byte   $80, $80, $80, $80, $80, $80, $80, $80  ; COL 36
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 37
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 38
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 39
;-------------------------------------------------------------------------------
; ROW 24
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  0
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  1
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL  2
        .byte   $02, $02, $02, $02, $02, $02, $02, $02  ; COL  3
        .byte   $00, $00, $33, $15, $11, $00, $00, $aa  ; COL  4
        .byte   $00, $00, $f0, $5c, $50, $00, $00, $aa  ; COL  5
        .byte   $00, $54, $54, $54, $54, $54, $00, $aa  ; COL  6
        .byte   $00, $54, $54, $54, $54, $54, $00, $aa  ; COL  7
        .byte   $00, $54, $54, $54, $54, $54, $00, $aa  ; COL  8
        .byte   $00, $54, $54, $54, $54, $54, $00, $aa  ; COL  9
        .byte   $80, $80, $80, $80, $a0, $98, $96, $aa  ; COL 10
        .byte   $55, $55, $00, $00, $00, $00, $00, $aa  ; COL 11
        .byte   $00, $00, $00, $00, $00, $00, $00, $aa  ; COL 12
        .byte   $00, $00, $00, $00, $00, $00, $00, $aa  ; COL 13
        .byte   $00, $00, $00, $00, $00, $00, $00, $aa  ; COL 14
        .byte   $00, $00, $00, $00, $00, $00, $00, $aa  ; COL 15
        .byte   $00, $00, $00, $00, $00, $00, $00, $aa  ; COL 16
        .byte   $00, $0f, $0c, $0f, $0c, $0f, $00, $aa  ; COL 17
        .byte   $00, $cc, $0c, $0c, $0c, $cf, $00, $aa  ; COL 18
        .byte   $00, $0c, $0c, $0c, $0c, $cc, $00, $aa  ; COL 19
        .byte   $00, $fc, $30, $30, $30, $30, $00, $aa  ; COL 20
        .byte   $00, $fc, $c0, $f0, $c0, $fc, $00, $aa  ; COL 21
        .byte   $00, $00, $00, $00, $00, $00, $00, $aa  ; COL 22
        .byte   $00, $00, $00, $00, $00, $00, $00, $aa  ; COL 23
        .byte   $00, $00, $00, $00, $00, $00, $00, $aa  ; COL 24
        .byte   $00, $00, $00, $00, $00, $00, $00, $aa  ; COL 25
        .byte   $00, $00, $00, $00, $00, $00, $00, $aa  ; COL 26
        .byte   $00, $00, $00, $00, $00, $00, $00, $aa  ; COL 27
        .byte   $55, $55, $00, $00, $00, $00, $00, $aa  ; COL 28
        .byte   $02, $02, $02, $02, $0a, $26, $96, $aa  ; COL 29
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff  ; COL 30
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff  ; COL 31
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff  ; COL 32
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff  ; COL 33
        .byte   $04, $04, $04, $05, $00, $00, $00, $aa  ; COL 34
        .byte   $00, $40, $40, $40, $40, $00, $00, $aa  ; COL 35
        .byte   $80, $80, $80, $80, $80, $80, $80, $80  ; COL 36
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 37
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 38
        .byte   $00, $00, $00, $00, $00, $00, $00, $00  ; COL 39
;===============================================================================
; screen RAM                                                            ;$6400
;===============================================================================
; ROWS 0-17
;-------------------------------------------------------------------------------
.repeat 18
        .byte   $00, $00, $00, $70, $10, $10, $10, $10
        .byte   $10, $10, $10, $10, $10, $10, $10, $10
        .byte   $10, $10, $10, $10, $10, $10, $10, $10
        .byte   $10, $10, $10, $10, $10, $10, $10, $10
        .byte   $10, $10, $10, $10, $70, $00, $00, $00
.endrep
;-------------------------------------------------------------------------------
; ROW 18
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $07, $17, $17, $74, $74
        .byte   $74, $74, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $67, $27, $27, $27
        .byte   $27, $27, $37, $37, $07, $00, $00, $00
;-------------------------------------------------------------------------------
; ROW 19
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $07, $17, $17, $24, $24
        .byte   $24, $24, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $67, $67, $67, $67, $23, $23
        .byte   $23, $23, $37, $37, $07, $00, $00, $00
;-------------------------------------------------------------------------------
; ROW 20
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $07, $37, $37, $29, $29
        .byte   $29, $29, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $67, $27, $23, $23
        .byte   $23, $23, $37, $37, $07, $00, $00, $00
;-------------------------------------------------------------------------------
; ROW 21
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $07, $37, $37, $28, $28
        .byte   $28, $28, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $27, $27, $24, $24
        .byte   $24, $24, $17, $17, $07, $00, $00, $00
;-------------------------------------------------------------------------------
; ROW 22
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $07, $37, $37, $2a, $2a
        .byte   $2a, $2a, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $27, $27, $24, $24
        .byte   $24, $24, $17, $17, $07, $00, $00, $00
;-------------------------------------------------------------------------------
; ROW 23
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $07, $37, $37, $2d, $2d
        .byte   $2d, $2d, $27, $07, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $07, $27, $24, $24
        .byte   $24, $24, $17, $17, $07, $00, $00, $00
;-------------------------------------------------------------------------------
; ROW 24
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $07, $c7, $c7, $07, $07
        .byte   $07, $07, $27, $07, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $07, $27, $24, $24
        .byte   $24, $24, $17, $17, $07, $00, $00, $00
;===============================================================================
; color RAM                                                             ;$D800
;===============================================================================
; ROW 0
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $07, $07, $07, $07, $07
        .byte   $07, $07, $07, $07, $07, $07, $07, $07
        .byte   $07, $07, $07, $07, $07, $07, $07, $07
        .byte   $07, $07, $07, $07, $07, $07, $07, $07
        .byte   $07, $07, $07, $07, $07, $00, $00, $00
;-------------------------------------------------------------------------------
; ROWS 1-17
;-------------------------------------------------------------------------------
.repeat 17
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
.endrep
;-------------------------------------------------------------------------------
; ROW 18
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $00, $05, $05, $05, $05
        .byte   $05, $05, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $05, $05, $05, $05, $05, $05
        .byte   $05, $05, $05, $05, $00, $00, $00, $00
;-------------------------------------------------------------------------------
; ROW 19
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $00, $05, $05, $05, $05
        .byte   $05, $05, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $05, $05, $05, $05, $05, $05
        .byte   $05, $05, $05, $05, $00, $00, $00, $00
;-------------------------------------------------------------------------------
; ROW 20
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $00, $05, $05, $05, $05
        .byte   $05, $05, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $05, $05, $05, $05, $05, $05
        .byte   $05, $05, $05, $05, $00, $00, $00, $00
;-------------------------------------------------------------------------------
; ROW 21
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $00, $05, $05, $05, $05
        .byte   $05, $05, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $0d, $05, $05, $05, $05, $05
        .byte   $05, $05, $05, $05, $00, $00, $00, $00
;-------------------------------------------------------------------------------
; ROW 22
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $00, $05, $05, $05, $05
        .byte   $05, $05, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $0d, $0d, $0d, $0d, $05, $05
        .byte   $05, $05, $05, $05, $00, $00, $00, $00
;-------------------------------------------------------------------------------
; ROW 23
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $00, $05, $05, $05, $05
        .byte   $05, $05, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $0d, $0d, $0d, $0d, $05, $05
        .byte   $05, $05, $05, $05, $00, $00, $00, $00
;-------------------------------------------------------------------------------
; ROW 24
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $00, $0f, $0f, $07, $07
        .byte   $07, $07, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $03, $03, $03, $03, $03, $0d, $0d
        .byte   $0d, $0d, $0d, $0d, $0d, $0d, $07, $07
        .byte   $07, $07, $05, $05, $00, $00, $00, $00
;===============================================================================
; background colour:
;===============================================================================
        .byte   $00     ;=black