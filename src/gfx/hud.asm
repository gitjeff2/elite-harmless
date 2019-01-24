; Elite C64 disassembly / Elite : Harmless, cc-by-nc-sa 2018-2019,
; see LICENSE.txt. "Elite" is copyright / trademark David Braben & Ian Bell,
; All Rights Reserved. <github.com/Kroc/elite-harmless>
;===============================================================================

; this is the multi-colour bitmap data for the HUD
; TODO: save this to a bitmap and convert during build

.segment        "GFX_HUD"

; in what is probably one of the most egregious cases of wasted CPU time and
; space in Elite C64, the backup HUD bitmap actually contains all the blank
; space on the left and right from where the C64's screen is 320px wide,
; rather than 256px like on the BBC

; ROW 1                                                                 ;$EF90
;-------------------------------------------------------------------------------
.ifdef  OPTION_ORIGINAL
        .byte   $00, $00, $00, $00, $00, $00, $00, $00                  
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $02, $02, $02, $02, $02, $02, $02, $02
.endif
        .byte   $aa, $00, $15, $10, $15, $10, $10, $00
        .byte   $aa, $00, $14, $10, $14, $04, $14, $00
        .byte   $55, $00, $00, $00, $00, $00, $00, $ff
        .byte   $55, $00, $00, $00, $00, $00, $00, $ff
        .byte   $55, $00, $00, $00, $00, $00, $00, $ff
        .byte   $55, $00, $00, $00, $00, $00, $00, $ff
        .byte   $aa, $96, $98, $a0, $80, $80, $80, $80
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00
        .byte   $aa, $00, $00, $00, $00, $00, $00, $00
        .byte   $aa, $96, $98, $a0, $a0, $a0, $a0, $80
        .byte   $aa, $04, $00, $14, $00, $14, $00, $14
        .byte   $aa, $96, $26, $2a, $0a, $0a, $02, $02
        .byte   $aa, $00, $00, $00, $00, $00, $33, $ff
        .byte   $aa, $00, $00, $00, $00, $00, $33, $ff
        .byte   $aa, $00, $00, $00, $00, $00, $33, $ff
        .byte   $aa, $00, $00, $00, $00, $00, $33, $ff
        .byte   $aa, $00, $14, $10, $14, $04, $14, $00
        .byte   $aa, $00, $54, $44, $54, $40, $40, $00

.ifdef  OPTION_ORIGINAL
        .byte   $80, $80, $80, $80, $80, $80, $80, $80
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00

; ROW 2
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $02, $02, $02, $02, $02, $02, $02, $02
.endif
        .byte   $00, $15, $11, $11, $15, $11, $00, $00
        .byte   $00, $14, $10, $14, $04, $14, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff
        .byte   $80, $80, $80, $80, $80, $80, $80, $80
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $01, $14
        .byte   $00, $00, $00, $00, $00, $00, $14, $00
        .byte   $00, $00, $00, $00, $01, $50, $04, $00
        .byte   $00, $00, $00, $00, $14, $c0, $00, $00
        .byte   $00, $00, $00, $00, $45, $00, $00, $00
        .byte   $00, $00, $00, $00, $15, $00, $04, $00
        .byte   $00, $00, $00, $00, $44, $00, $00, $00
        .byte   $00, $00, $00, $00, $51, $00, $00, $00
        .byte   $00, $00, $00, $00, $10, $c4, $04, $00
        .byte   $00, $00, $00, $00, $00, $50, $01, $00
        .byte   $00, $00, $00, $00, $00, $00, $40, $05
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $80, $80, $84, $80, $80, $80, $80, $a0
        .byte   $00, $00, $41, $00, $00, $14, $00, $14
        .byte   $02, $02, $12, $02, $02, $02, $02, $02
        .byte   $00, $00, $00, $00, $00, $00, $0c, $ff
        .byte   $00, $00, $00, $00, $00, $00, $cc, $ff
        .byte   $c0, $c0, $00, $00, $00, $c0, $cc, $ff
        .byte   $00, $00, $00, $00, $00, $00, $cc, $ff
        .byte   $00, $00, $14, $11, $15, $14, $11, $00
        .byte   $00, $00, $10, $10, $10, $10, $14, $00

.ifdef  OPTION_ORIGINAL
        .byte   $80, $80, $80, $80, $80, $80, $80, $80
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00

; ROW 3
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $02, $02, $02, $02, $02, $02, $02, $02
.endif
        .byte   $00, $14, $10, $14, $10, $10, $00, $00
        .byte   $00, $44, $44, $44, $44, $10, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $c3, $ff
        .byte   $00, $00, $00, $00, $00, $00, $0c, $ff
        .byte   $00, $00, $00, $00, $00, $00, $30, $ff
        .byte   $00, $00, $00, $00, $00, $00, $c3, $ff
        .byte   $80, $80, $80, $80, $80, $80, $80, $80
        .byte   $00, $00, $00, $00, $00, $00, $01, $04
        .byte   $00, $00, $00, $05, $10, $40, $00, $00
        .byte   $01, $14, $40, $04, $00, $00, $00, $00
        .byte   $00, $00, $00, $44, $00, $00, $00, $00
        .byte   $00, $00, $00, $44, $01, $00, $04, $00
        .byte   $10, $00, $40, $44, $00, $00, $00, $00
        .byte   $0c, $00, $00, $44, $00, $00, $00, $00
        .byte   $00, $00, $00, $c4, $00, $00, $0c, $00
        .byte   $04, $00, $04, $40, $04, $00, $04, $00
        .byte   $00, $00, $00, $44, $00, $00, $0c, $00
        .byte   $0c, $00, $00, $c4, $00, $00, $00, $00
        .byte   $01, $00, $00, $44, $00, $00, $00, $00
        .byte   $00, $00, $40, $04, $10, $00, $04, $00
        .byte   $00, $00, $00, $44, $00, $00, $00, $00
        .byte   $40, $05, $00, $44, $00, $00, $00, $00
        .byte   $00, $00, $40, $14, $01, $00, $00, $00
        .byte   $20, $20, $28, $08, $0a, $42, $10, $04
        .byte   $00, $14, $00, $14, $00, $aa, $00, $00
        .byte   $0a, $0a, $26, $26, $96, $aa, $02, $02
        .byte   $00, $00, $00, $00, $00, $00, $0c, $ff
        .byte   $00, $00, $00, $00, $00, $00, $30, $ff
        .byte   $c0, $c0, $00, $00, $00, $c0, $c3, $ff
        .byte   $00, $00, $00, $00, $00, $00, $0c, $ff
        .byte   $00, $14, $11, $11, $11, $14, $00, $00
        .byte   $00, $14, $10, $10, $10, $14, $00, $00

.ifdef  OPTION_ORIGINAL
        .byte   $80, $80, $80, $80, $80, $80, $80, $80
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00

; ROW 4
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $02, $02, $02, $02, $02, $02, $02, $02
.endif
        .byte   $00, $14, $10, $10, $10, $14, $00, $00
        .byte   $00, $54, $10, $10, $10, $10, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $c0, $ff
        .byte   $00, $00, $00, $00, $00, $00, $c0, $ff
        .byte   $00, $00, $00, $00, $00, $00, $c0, $ff
        .byte   $00, $00, $00, $00, $00, $00, $c0, $ff
        .byte   $80, $80, $80, $80, $80, $80, $80, $80
        .byte   $00, $10, $10, $40, $44, $00, $40, $00
        .byte   $00, $00, $00, $00, $44, $00, $00, $00
        .byte   $00, $00, $00, $00, $44, $00, $00, $00
        .byte   $00, $00, $00, $00, $44, $00, $04, $00
        .byte   $10, $00, $40, $00, $44, $00, $00, $00
        .byte   $00, $00, $00, $00, $44, $00, $00, $00
        .byte   $00, $00, $00, $00, $44, $00, $00, $00
        .byte   $00, $00, $00, $00, $44, $00, $00, $00
        .byte   $04, $c0, $04, $00, $48, $2a, $04, $00
        .byte   $00, $c0, $00, $00, $44, $00, $00, $00
        .byte   $00, $00, $00, $00, $44, $00, $00, $00
        .byte   $00, $00, $00, $00, $44, $00, $00, $00
        .byte   $01, $00, $00, $00, $44, $00, $00, $00
        .byte   $00, $00, $40, $00, $44, $00, $04, $00
        .byte   $00, $00, $00, $00, $44, $00, $00, $00
        .byte   $00, $00, $00, $00, $44, $00, $00, $00
        .byte   $04, $01, $01, $00, $44, $00, $00, $00
        .byte   $00, $00, $00, $40, $00, $40, $00, $40
        .byte   $02, $02, $02, $02, $02, $02, $02, $02
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff
        .byte   $00, $01, $05, $01, $01, $05, $00, $00
        .byte   $00, $00, $00, $00, $00, $40, $00, $00

.ifdef  OPTION_ORIGINAL
        .byte   $80, $80, $80, $80, $80, $80, $80, $80
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00

; ROW 5
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $02, $02, $02, $02, $02, $02, $02, $02
.endif
        .byte   $00, $10, $10, $10, $10, $14, $00, $00
        .byte   $00, $54, $10, $10, $10, $10, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $c3, $ff
        .byte   $00, $00, $00, $00, $00, $00, $0c, $ff
        .byte   $00, $00, $00, $00, $00, $00, $30, $ff
        .byte   $00, $00, $00, $00, $00, $00, $c0, $ff
        .byte   $80, $80, $80, $80, $80, $80, $80, $80
        .byte   $40, $10, $10, $04, $04, $01, $00, $00
        .byte   $00, $00, $00, $00, $00, $40, $44, $10
        .byte   $00, $00, $00, $00, $01, $00, $44, $00
        .byte   $10, $00, $40, $00, $00, $00, $44, $00
        .byte   $00, $00, $00, $00, $00, $00, $44, $00
        .byte   $00, $00, $00, $00, $00, $00, $44, $00
        .byte   $00, $00, $00, $00, $00, $00, $44, $00
        .byte   $00, $00, $00, $00, $00, $00, $44, $00
        .byte   $04, $00, $04, $00, $04, $00, $44, $00
        .byte   $00, $00, $00, $00, $00, $00, $44, $00
        .byte   $00, $00, $00, $00, $00, $00, $44, $00
        .byte   $00, $00, $00, $00, $00, $00, $44, $00
        .byte   $00, $00, $00, $00, $00, $00, $44, $00
        .byte   $01, $00, $00, $00, $00, $00, $44, $00
        .byte   $00, $00, $40, $00, $10, $00, $44, $00
        .byte   $00, $00, $00, $00, $00, $00, $44, $01
        .byte   $00, $01, $01, $05, $04, $10, $40, $00
        .byte   $40, $00, $00, $00, $00, $00, $00, $00
        .byte   $02, $02, $02, $02, $02, $02, $02, $02
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff
        .byte   $05, $00, $05, $04, $05, $00, $00, $00
        .byte   $40, $40, $40, $00, $40, $00, $00, $00

.ifdef  OPTION_ORIGINAL
        .byte   $80, $80, $80, $80, $80, $80, $80, $80
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00

; ROW 6
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $02, $02, $02, $02, $02, $02, $02, $02
.endif
        .byte   $00, $15, $11, $15, $11, $11, $00, $00
        .byte   $00, $10, $10, $10, $10, $14, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $c3, $ff
        .byte   $00, $00, $00, $00, $00, $00, $03, $ff
        .byte   $00, $00, $00, $00, $00, $00, $03, $ff
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff
        .byte   $80, $80, $80, $80, $80, $80, $80, $80
        .byte   $55, $55, $50, $50, $55, $55, $50, $50
        .byte   $04, $01, $00, $00, $00, $00, $00, $00
        .byte   $10, $40, $10, $01, $00, $00, $00, $00
        .byte   $00, $00, $00, $40, $14, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $50, $01, $00
        .byte   $00, $00, $00, $00, $00, $00, $44, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $51
        .byte   $00, $00, $00, $00, $00, $00, $00, $14
        .byte   $04, $00, $04, $00, $04, $00, $04, $45
        .byte   $00, $00, $00, $00, $00, $00, $00, $11
        .byte   $00, $00, $00, $00, $00, $00, $00, $44
        .byte   $00, $00, $00, $00, $00, $00, $11, $40
        .byte   $00, $00, $00, $00, $00, $05, $40, $00
        .byte   $00, $00, $00, $00, $14, $00, $00, $00
        .byte   $01, $00, $05, $50, $00, $00, $00, $00
        .byte   $04, $40, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $55, $55, $40, $40, $55, $55, $01, $01
        .byte   $02, $02, $02, $02, $02, $02, $02, $02
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff
        .byte   $05, $00, $05, $00, $05, $00, $00, $04
        .byte   $40, $40, $40, $40, $40, $00, $00, $00

.ifdef  OPTION_ORIGINAL
        .byte   $80, $80, $80, $80, $80, $80, $80, $80
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00

; ROW 7
;-------------------------------------------------------------------------------
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $02, $02, $02, $02, $02, $02, $02, $02
.endif
        .byte   $00, $00, $33, $15, $11, $00, $00, $aa
        .byte   $00, $00, $f0, $5c, $50, $00, $00, $aa
        .byte   $00, $54, $54, $54, $54, $54, $00, $aa
        .byte   $00, $54, $54, $54, $54, $54, $00, $aa
        .byte   $00, $54, $54, $54, $54, $54, $00, $aa
        .byte   $00, $54, $54, $54, $54, $54, $00, $aa
        .byte   $80, $80, $80, $80, $a0, $98, $96, $aa
        .byte   $55, $55, $00, $00, $00, $00, $00, $aa
        .byte   $00, $00, $00, $00, $00, $00, $00, $aa
        .byte   $00, $00, $00, $00, $00, $00, $00, $aa
        .byte   $00, $00, $00, $00, $00, $00, $00, $aa
        .byte   $00, $00, $00, $00, $00, $00, $00, $aa
        .byte   $00, $00, $00, $00, $00, $00, $00, $aa
        .byte   $00, $0f, $0c, $0f, $0c, $0f, $00, $aa
        .byte   $00, $cc, $0c, $0c, $0c, $cf, $00, $aa
        .byte   $00, $0c, $0c, $0c, $0c, $cc, $00, $aa
        .byte   $00, $fc, $30, $30, $30, $30, $00, $aa
        .byte   $00, $fc, $c0, $f0, $c0, $fc, $00, $aa
        .byte   $00, $00, $00, $00, $00, $00, $00, $aa
        .byte   $00, $00, $00, $00, $00, $00, $00, $aa
        .byte   $00, $00, $00, $00, $00, $00, $00, $aa
        .byte   $00, $00, $00, $00, $00, $00, $00, $aa
        .byte   $00, $00, $00, $00, $00, $00, $00, $aa
        .byte   $00, $00, $00, $00, $00, $00, $00, $aa
        .byte   $55, $55, $00, $00, $00, $00, $00, $aa
        .byte   $02, $02, $02, $02, $0a, $26, $96, $aa
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff
        .byte   $00, $00, $00, $00, $00, $00, $00, $ff
        .byte   $04, $04, $04, $05, $00, $00, $00, $aa
        .byte   $00, $40, $40, $40, $40, $00, $00, $aa

.ifdef  OPTION_ORIGINAL

        .byte   $80, $80, $80, $80, $80, $80, $80, $80
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $00, $00, $00, $00

        ; who are you, and what are
        ; you doing in my house!?
        .byte   $f5
.endif

;$F870:

;===============================================================================

.segment        "HUD_SCRCOLOR"

        ; screen RAM colour

_783a:
        .byte   $00, $00, $00, $07, $17, $17, $74, $74
        .byte   $74, $74, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $67, $27, $27, $27
        .byte   $27, $27, $37, $37, $07, $00, $00, $00
        .byte   $00, $00, $00, $07, $17, $17, $24, $24
        .byte   $24, $24, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $67, $67, $67, $67, $23, $23
        .byte   $23, $23, $37, $37, $07, $00, $00, $00
        .byte   $00, $00, $00, $07, $37, $37, $29, $29
        .byte   $29, $29, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $67, $27, $23, $23
        .byte   $23, $23, $37, $37, $07, $00, $00, $00
        .byte   $00, $00, $00, $07, $37, $37, $28, $28
        .byte   $28, $28, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $27, $27, $24, $24
        .byte   $24, $24, $17, $17, $07, $00, $00, $00
        .byte   $00, $00, $00, $07, $37, $37, $2a, $2a
        .byte   $2a, $2a, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $27, $27, $24, $24
        .byte   $24, $24, $17, $17, $07, $00, $00, $00
        .byte   $00, $00, $00, $07, $37, $37, $2d, $2d
        .byte   $2d, $2d, $27, $07, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $07, $27, $24, $24
        .byte   $24, $24, $17, $17, $07, $00, $00, $00
        .byte   $00, $00, $00, $07, $c7, $c7, $07, $07
        .byte   $07, $07, $27, $07, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $27, $27, $27, $27
        .byte   $27, $27, $27, $27, $07, $27, $24, $24
        .byte   $24, $24, $17, $17, $07, $00, $00, $00
        .byte   $60, $d3, $66, $1d, $a0, $40, $b3, $d3


.segment        "HUD_COLORRAM"

        ; colour RAM ($D800..) nybbles

_795a:
        .byte   $00, $00, $00, $00, $05, $05, $05, $05
        .byte   $05, $05, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $05, $05, $05, $05, $05, $05
        .byte   $05, $05, $05, $05, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $05, $05, $05, $05
        .byte   $05, $05, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $05, $05, $05, $05, $05, $05
        .byte   $05, $05, $05, $05, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $05, $05, $05, $05
        .byte   $05, $05, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $05, $05, $05, $05, $05, $05
        .byte   $05, $05, $05, $05, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $05, $05, $05, $05
        .byte   $05, $05, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $0d, $05, $05, $05, $05, $05
        .byte   $05, $05, $05, $05, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $05, $05, $05, $05
        .byte   $05, $05, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $0d, $0d, $0d, $0d, $05, $05
        .byte   $05, $05, $05, $05, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $05, $05, $05, $05
        .byte   $05, $05, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $0d, $0d, $0d, $0d, $0d, $05, $05
        .byte   $05, $05, $05, $05, $00, $00, $00, $00
        .byte   $00, $00, $00, $00, $0f, $0f, $07, $07
        .byte   $07, $07, $0d, $0d, $0d, $0d, $0d, $0d
        .byte   $0d, $03, $03, $03, $03, $03, $0d, $0d
        .byte   $0d, $0d, $0d, $0d, $0d, $0d, $07, $07
        .byte   $07, $07, $05, $05, $00, $00, $00, $00
        .byte   $8d, $18, $8f, $50, $46, $7e, $a4, $f4
