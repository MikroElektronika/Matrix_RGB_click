_matrixrgb_init:
;matrixrgb_hw.c,75 :: 		void matrixrgb_init( uint8_t width, uint8_t height )
SUB	SP, SP, #12
STR	LR, [SP, #0]
STRB	R0, [SP, #4]
STRB	R1, [SP, #8]
;matrixrgb_hw.c,77 :: 		matrixrgb_hal_init();
BL	_matrixrgb_hal_init+0
;matrixrgb_hw.c,78 :: 		Delay_ms(300);
MOVW	R7, #61055
MOVT	R7, #54
NOP
NOP
L_matrixrgb_init0:
SUBS	R7, R7, #1
BNE	L_matrixrgb_init0
NOP
NOP
NOP
;matrixrgb_hw.c,80 :: 		spi_buffer[0] = SETUP_CMD;
MOVS	R3, #1
MOVW	R2, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R2, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R3, [R2, #0]
;matrixrgb_hw.c,81 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,82 :: 		spi_buffer[0] = width;
LDRB	R3, [SP, #4]
MOVW	R2, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R2, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R3, [R2, #0]
;matrixrgb_hw.c,83 :: 		spi_buffer[1] = height;
LDRB	R3, [SP, #8]
MOVW	R2, #lo_addr(matrixrgb_hw_spi_buffer+1)
MOVT	R2, #hi_addr(matrixrgb_hw_spi_buffer+1)
STRB	R3, [R2, #0]
;matrixrgb_hw.c,84 :: 		matrixrgb_hal_write( &spi_buffer, 2 );
MOVS	R1, #2
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,86 :: 		}
L_end_matrixrgb_init:
LDR	LR, [SP, #0]
ADD	SP, SP, #12
BX	LR
; end of _matrixrgb_init
_matrixrgb_write_text:
;matrixrgb_hw.c,88 :: 		void matrixrgb_write_text( char *text, color_t color, uint8_t text_size, uint16_t start_row, uint16_t start_col )
; start_col start address is: 12 (R3)
; start_row start address is: 8 (R2)
; text start address is: 0 (R0)
SUB	SP, SP, #36
STR	LR, [SP, #0]
STRB	R1, [SP, #16]
MOV	R1, R0
UXTH	R0, R2
; start_col end address is: 12 (R3)
; start_row end address is: 8 (R2)
; text end address is: 0 (R0)
; text start address is: 4 (R1)
; start_row start address is: 0 (R0)
; start_col start address is: 12 (R3)
;matrixrgb_hw.c,90 :: 		uint8_t i = 0;
;matrixrgb_hw.c,91 :: 		uint8_t *ptr = text;
STR	R1, [SP, #4]
; text end address is: 4 (R1)
;matrixrgb_hw.c,95 :: 		row_lo = start_row & 0xFF;
AND	R4, R0, #255
STRB	R4, [SP, #10]
;matrixrgb_hw.c,96 :: 		row_hi = ( start_row >> 8 ) & 0xFF;
LSRS	R4, R0, #8
UXTH	R4, R4
; start_row end address is: 0 (R0)
AND	R4, R4, #255
STRB	R4, [SP, #11]
;matrixrgb_hw.c,97 :: 		col_lo = start_col & 0xFF;
AND	R4, R3, #255
STRB	R4, [SP, #8]
;matrixrgb_hw.c,98 :: 		col_hi = ( start_col >> 8 ) & 0xFF;
LSRS	R4, R3, #8
UXTH	R4, R4
; start_col end address is: 12 (R3)
AND	R4, R4, #255
STRB	R4, [SP, #9]
;matrixrgb_hw.c,100 :: 		spi_buffer[0] = WRITE_TEXT_CMD;
MOVS	R5, #20
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,101 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,102 :: 		spi_buffer[0] = text_size;
LDRB	R5, [SP, #16]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,103 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,104 :: 		spi_buffer[0] = color.red;
LDRB	R5, [SP, #36]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,105 :: 		spi_buffer[1] = color.green;
LDRB	R5, [SP, #37]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+1)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+1)
STR	R4, [SP, #32]
STRB	R5, [R4, #0]
;matrixrgb_hw.c,106 :: 		spi_buffer[2] = color.blue;
LDRB	R5, [SP, #38]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+2)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+2)
STR	R4, [SP, #28]
STRB	R5, [R4, #0]
;matrixrgb_hw.c,107 :: 		matrixrgb_hal_write( &spi_buffer, 3 );
MOVS	R1, #3
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,108 :: 		spi_buffer[0] = col_lo;
LDRB	R5, [SP, #8]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,109 :: 		spi_buffer[1] = col_hi;
LDRB	R5, [SP, #9]
LDR	R4, [SP, #32]
STRB	R5, [R4, #0]
;matrixrgb_hw.c,110 :: 		spi_buffer[2] = row_lo;
LDRB	R5, [SP, #10]
LDR	R4, [SP, #28]
STRB	R5, [R4, #0]
;matrixrgb_hw.c,111 :: 		spi_buffer[3] = row_hi;
LDRB	R5, [SP, #11]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+3)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+3)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,112 :: 		matrixrgb_hal_write( &spi_buffer, 4 );
MOVS	R1, #4
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,114 :: 		for( i = 0; i < text_size; i++ )
MOVS	R4, #0
STRB	R4, [SP, #12]
L_matrixrgb_write_text2:
LDRB	R5, [SP, #16]
LDRB	R4, [SP, #12]
CMP	R4, R5
IT	CS
BCS	L_matrixrgb_write_text3
;matrixrgb_hw.c,116 :: 		spi_buffer[0] = *ptr++;
LDR	R4, [SP, #4]
LDRB	R5, [R4, #0]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R5, [R4, #0]
LDR	R4, [SP, #4]
ADDS	R4, R4, #1
STR	R4, [SP, #4]
;matrixrgb_hw.c,117 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,114 :: 		for( i = 0; i < text_size; i++ )
LDRB	R4, [SP, #12]
ADDS	R4, R4, #1
STRB	R4, [SP, #12]
;matrixrgb_hw.c,118 :: 		}
IT	AL
BAL	L_matrixrgb_write_text2
L_matrixrgb_write_text3:
;matrixrgb_hw.c,119 :: 		}
L_end_matrixrgb_write_text:
LDR	LR, [SP, #0]
ADD	SP, SP, #36
BX	LR
; end of _matrixrgb_write_text
_matrixrgb_image_load:
;matrixrgb_hw.c,121 :: 		void matrixrgb_image_load( uint8_t *bmp, uint16_t width, uint16_t height )
; bmp start address is: 0 (R0)
SUB	SP, SP, #24
STR	LR, [SP, #0]
STRH	R1, [SP, #16]
STRH	R2, [SP, #20]
; bmp end address is: 0 (R0)
; bmp start address is: 0 (R0)
;matrixrgb_hw.c,124 :: 		uint8_t *ptr = bmp;
STR	R0, [SP, #8]
; bmp end address is: 0 (R0)
;matrixrgb_hw.c,128 :: 		w_lo = width & 0xFF;
LDRH	R3, [SP, #16]
AND	R3, R3, #255
STRB	R3, [SP, #12]
;matrixrgb_hw.c,129 :: 		w_hi = ( width >> 8 ) & 0xFF;
LDRH	R3, [SP, #16]
LSRS	R3, R3, #8
UXTH	R3, R3
AND	R3, R3, #255
STRB	R3, [SP, #13]
;matrixrgb_hw.c,130 :: 		h_lo = height & 0xFF;
LDRH	R3, [SP, #20]
AND	R3, R3, #255
STRB	R3, [SP, #14]
;matrixrgb_hw.c,131 :: 		h_hi = ( height >> 8 ) & 0xFF;
LDRH	R3, [SP, #20]
LSRS	R3, R3, #8
UXTH	R3, R3
AND	R3, R3, #255
STRB	R3, [SP, #15]
;matrixrgb_hw.c,133 :: 		spi_buffer[0] = IMAGE_LOAD_CMD;             // Send command for Image Load
MOVS	R4, #2
MOVW	R3, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R3, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R4, [R3, #0]
;matrixrgb_hw.c,134 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,135 :: 		spi_buffer[0] = w_lo;                       // Send Low and High bytes for width and height
LDRB	R4, [SP, #12]
MOVW	R3, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R3, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R4, [R3, #0]
;matrixrgb_hw.c,136 :: 		spi_buffer[1] = w_hi;
LDRB	R4, [SP, #13]
MOVW	R3, #lo_addr(matrixrgb_hw_spi_buffer+1)
MOVT	R3, #hi_addr(matrixrgb_hw_spi_buffer+1)
STRB	R4, [R3, #0]
;matrixrgb_hw.c,137 :: 		spi_buffer[2] = h_lo;
LDRB	R4, [SP, #14]
MOVW	R3, #lo_addr(matrixrgb_hw_spi_buffer+2)
MOVT	R3, #hi_addr(matrixrgb_hw_spi_buffer+2)
STRB	R4, [R3, #0]
;matrixrgb_hw.c,138 :: 		spi_buffer[3] = h_hi;
LDRB	R4, [SP, #15]
MOVW	R3, #lo_addr(matrixrgb_hw_spi_buffer+3)
MOVT	R3, #hi_addr(matrixrgb_hw_spi_buffer+3)
STRB	R4, [R3, #0]
;matrixrgb_hw.c,139 :: 		matrixrgb_hal_write( &spi_buffer, 4 );
MOVS	R1, #4
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,144 :: 		for( i = 0; i < height; i++ )
; i start address is: 24 (R6)
MOVS	R6, #0
; i end address is: 24 (R6)
L_matrixrgb_image_load5:
; i start address is: 24 (R6)
LDRH	R3, [SP, #20]
CMP	R6, R3
IT	CS
BCS	L_matrixrgb_image_load6
;matrixrgb_hw.c,145 :: 		for( j = 0; j < width; j++ )
; j start address is: 28 (R7)
MOVS	R7, #0
; j end address is: 28 (R7)
; i end address is: 24 (R6)
UXTH	R1, R6
UXTH	R0, R7
L_matrixrgb_image_load8:
; j start address is: 0 (R0)
; i start address is: 4 (R1)
LDRH	R3, [SP, #16]
CMP	R0, R3
IT	CS
BCS	L_matrixrgb_image_load9
;matrixrgb_hw.c,147 :: 		spi_buffer[0] = ptr[ 2 * ( i * width + j ) ];
LDRH	R3, [SP, #16]
MULS	R3, R1, R3
UXTH	R3, R3
ADDS	R3, R3, R0
UXTH	R3, R3
LSLS	R5, R3, #1
UXTH	R5, R5
LDR	R3, [SP, #8]
ADDS	R3, R3, R5
LDRB	R4, [R3, #0]
MOVW	R3, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R3, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R4, [R3, #0]
;matrixrgb_hw.c,148 :: 		spi_buffer[1] = ptr[ 2 * ( i * width + j ) + 1 ];
ADDS	R4, R5, #1
UXTH	R4, R4
LDR	R3, [SP, #8]
ADDS	R3, R3, R4
LDRB	R4, [R3, #0]
MOVW	R3, #lo_addr(matrixrgb_hw_spi_buffer+1)
MOVT	R3, #hi_addr(matrixrgb_hw_spi_buffer+1)
STRB	R4, [R3, #0]
;matrixrgb_hw.c,149 :: 		matrixrgb_hal_write( &spi_buffer, 2 );
STRH	R1, [SP, #4]
STRH	R0, [SP, #6]
MOVS	R1, #2
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
LDRH	R0, [SP, #6]
LDRH	R1, [SP, #4]
;matrixrgb_hw.c,145 :: 		for( j = 0; j < width; j++ )
ADDS	R3, R0, #1
; j end address is: 0 (R0)
; j start address is: 28 (R7)
UXTH	R7, R3
;matrixrgb_hw.c,150 :: 		}
; j end address is: 28 (R7)
UXTH	R0, R7
IT	AL
BAL	L_matrixrgb_image_load8
L_matrixrgb_image_load9:
;matrixrgb_hw.c,144 :: 		for( i = 0; i < height; i++ )
ADDS	R3, R1, #1
; i end address is: 4 (R1)
; i start address is: 24 (R6)
UXTH	R6, R3
;matrixrgb_hw.c,150 :: 		}
; i end address is: 24 (R6)
IT	AL
BAL	L_matrixrgb_image_load5
L_matrixrgb_image_load6:
;matrixrgb_hw.c,151 :: 		}
L_end_matrixrgb_image_load:
LDR	LR, [SP, #0]
ADD	SP, SP, #24
BX	LR
; end of _matrixrgb_image_load
_matrixrgb_scroll_img_left:
;matrixrgb_hw.c,153 :: 		void matrixrgb_scroll_img_left( uint8_t *bmp, uint16_t width, uint16_t height, uint8_t speed )
; bmp start address is: 0 (R0)
SUB	SP, SP, #28
STR	LR, [SP, #0]
STRH	R1, [SP, #16]
STRH	R2, [SP, #20]
STRB	R3, [SP, #24]
; bmp end address is: 0 (R0)
; bmp start address is: 0 (R0)
;matrixrgb_hw.c,156 :: 		uint8_t *ptr = bmp;
STR	R0, [SP, #8]
; bmp end address is: 0 (R0)
;matrixrgb_hw.c,160 :: 		w_lo = width & 0xFF;
LDRH	R4, [SP, #16]
AND	R4, R4, #255
STRB	R4, [SP, #12]
;matrixrgb_hw.c,161 :: 		w_hi = ( width >> 8 ) & 0xFF;
LDRH	R4, [SP, #16]
LSRS	R4, R4, #8
UXTH	R4, R4
AND	R4, R4, #255
STRB	R4, [SP, #13]
;matrixrgb_hw.c,162 :: 		h_lo = height & 0xFF;
LDRH	R4, [SP, #20]
AND	R4, R4, #255
STRB	R4, [SP, #14]
;matrixrgb_hw.c,163 :: 		h_hi = ( height >> 8 ) & 0xFF;
LDRH	R4, [SP, #20]
LSRS	R4, R4, #8
UXTH	R4, R4
AND	R4, R4, #255
STRB	R4, [SP, #15]
;matrixrgb_hw.c,165 :: 		spi_buffer[0] = SCROLL_IMG_LEFT_CMD;
MOVS	R5, #3
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,166 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,167 :: 		spi_buffer[0] = w_lo;                       // Send Low and High bytes for width and height
LDRB	R5, [SP, #12]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,168 :: 		spi_buffer[1] = w_hi;
LDRB	R5, [SP, #13]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+1)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+1)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,169 :: 		spi_buffer[2] = h_lo;
LDRB	R5, [SP, #14]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+2)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+2)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,170 :: 		spi_buffer[3] = h_hi;
LDRB	R5, [SP, #15]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+3)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+3)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,171 :: 		matrixrgb_hal_write( &spi_buffer, 4 );
MOVS	R1, #4
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,175 :: 		spi_buffer[0] = speed;
LDRB	R5, [SP, #24]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,176 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,178 :: 		for( i = 0; i < height; i++ )
; i start address is: 12 (R3)
MOVS	R3, #0
; i end address is: 12 (R3)
L_matrixrgb_scroll_img_left11:
; i start address is: 12 (R3)
LDRH	R4, [SP, #20]
CMP	R3, R4
IT	CS
BCS	L_matrixrgb_scroll_img_left12
;matrixrgb_hw.c,179 :: 		for( j = 0; j < width; j++ )
; j start address is: 28 (R7)
MOVS	R7, #0
; j end address is: 28 (R7)
; i end address is: 12 (R3)
UXTH	R1, R3
UXTH	R0, R7
L_matrixrgb_scroll_img_left14:
; j start address is: 0 (R0)
; i start address is: 4 (R1)
LDRH	R4, [SP, #16]
CMP	R0, R4
IT	CS
BCS	L_matrixrgb_scroll_img_left15
;matrixrgb_hw.c,181 :: 		spi_buffer[0] = ptr[ 2 * ( i * width + j ) ];
LDRH	R4, [SP, #16]
MULS	R4, R1, R4
UXTH	R4, R4
ADDS	R4, R4, R0
UXTH	R4, R4
LSLS	R6, R4, #1
UXTH	R6, R6
LDR	R4, [SP, #8]
ADDS	R4, R4, R6
LDRB	R5, [R4, #0]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,182 :: 		spi_buffer[1] = ptr[ 2 * ( i * width + j ) + 1 ];
ADDS	R5, R6, #1
UXTH	R5, R5
LDR	R4, [SP, #8]
ADDS	R4, R4, R5
LDRB	R5, [R4, #0]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+1)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+1)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,183 :: 		matrixrgb_hal_write( &spi_buffer, 2 );
STRH	R1, [SP, #4]
STRH	R0, [SP, #6]
MOVS	R1, #2
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
LDRH	R0, [SP, #6]
LDRH	R1, [SP, #4]
;matrixrgb_hw.c,179 :: 		for( j = 0; j < width; j++ )
ADDS	R4, R0, #1
; j end address is: 0 (R0)
; j start address is: 28 (R7)
UXTH	R7, R4
;matrixrgb_hw.c,184 :: 		}
; j end address is: 28 (R7)
UXTH	R0, R7
IT	AL
BAL	L_matrixrgb_scroll_img_left14
L_matrixrgb_scroll_img_left15:
;matrixrgb_hw.c,178 :: 		for( i = 0; i < height; i++ )
ADDS	R4, R1, #1
; i end address is: 4 (R1)
; i start address is: 12 (R3)
UXTH	R3, R4
;matrixrgb_hw.c,184 :: 		}
; i end address is: 12 (R3)
IT	AL
BAL	L_matrixrgb_scroll_img_left11
L_matrixrgb_scroll_img_left12:
;matrixrgb_hw.c,185 :: 		}
L_end_matrixrgb_scroll_img_left:
LDR	LR, [SP, #0]
ADD	SP, SP, #28
BX	LR
; end of _matrixrgb_scroll_img_left
_matrixrgb_scroll_img_right:
;matrixrgb_hw.c,187 :: 		void matrixrgb_scroll_img_right( uint8_t *bmp, uint16_t width, uint16_t height, uint8_t speed )
; bmp start address is: 0 (R0)
SUB	SP, SP, #28
STR	LR, [SP, #0]
STRH	R1, [SP, #16]
STRH	R2, [SP, #20]
STRB	R3, [SP, #24]
; bmp end address is: 0 (R0)
; bmp start address is: 0 (R0)
;matrixrgb_hw.c,190 :: 		uint8_t *ptr = bmp;
STR	R0, [SP, #8]
; bmp end address is: 0 (R0)
;matrixrgb_hw.c,194 :: 		w_lo = width & 0xFF;
LDRH	R4, [SP, #16]
AND	R4, R4, #255
STRB	R4, [SP, #12]
;matrixrgb_hw.c,195 :: 		w_hi = ( width >> 8 ) & 0xFF;
LDRH	R4, [SP, #16]
LSRS	R4, R4, #8
UXTH	R4, R4
AND	R4, R4, #255
STRB	R4, [SP, #13]
;matrixrgb_hw.c,196 :: 		h_lo = height & 0xFF;
LDRH	R4, [SP, #20]
AND	R4, R4, #255
STRB	R4, [SP, #14]
;matrixrgb_hw.c,197 :: 		h_hi = ( height >> 8 ) & 0xFF;
LDRH	R4, [SP, #20]
LSRS	R4, R4, #8
UXTH	R4, R4
AND	R4, R4, #255
STRB	R4, [SP, #15]
;matrixrgb_hw.c,199 :: 		spi_buffer[0] = SCROLL_IMG_RIGHT_CMD;
MOVS	R5, #4
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,200 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,201 :: 		spi_buffer[0] = w_lo;                       // Send Low and High bytes for width and height
LDRB	R5, [SP, #12]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,202 :: 		spi_buffer[1] = w_hi;
LDRB	R5, [SP, #13]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+1)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+1)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,203 :: 		spi_buffer[2] = h_lo;
LDRB	R5, [SP, #14]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+2)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+2)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,204 :: 		spi_buffer[3] = h_hi;
LDRB	R5, [SP, #15]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+3)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+3)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,205 :: 		matrixrgb_hal_write( &spi_buffer, 4 );
MOVS	R1, #4
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,209 :: 		spi_buffer[0] = speed;
LDRB	R5, [SP, #24]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,210 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,212 :: 		for( i = 0; i < height; i++ )
; i start address is: 12 (R3)
MOVS	R3, #0
; i end address is: 12 (R3)
L_matrixrgb_scroll_img_right17:
; i start address is: 12 (R3)
LDRH	R4, [SP, #20]
CMP	R3, R4
IT	CS
BCS	L_matrixrgb_scroll_img_right18
;matrixrgb_hw.c,213 :: 		for( j = 0; j < width; j++ )
; j start address is: 28 (R7)
MOVS	R7, #0
; j end address is: 28 (R7)
; i end address is: 12 (R3)
UXTH	R1, R3
UXTH	R0, R7
L_matrixrgb_scroll_img_right20:
; j start address is: 0 (R0)
; i start address is: 4 (R1)
LDRH	R4, [SP, #16]
CMP	R0, R4
IT	CS
BCS	L_matrixrgb_scroll_img_right21
;matrixrgb_hw.c,215 :: 		spi_buffer[0] = ptr[ 2 * ( i * width + j ) ];
LDRH	R4, [SP, #16]
MULS	R4, R1, R4
UXTH	R4, R4
ADDS	R4, R4, R0
UXTH	R4, R4
LSLS	R6, R4, #1
UXTH	R6, R6
LDR	R4, [SP, #8]
ADDS	R4, R4, R6
LDRB	R5, [R4, #0]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,216 :: 		spi_buffer[1] = ptr[ 2 * ( i * width + j ) + 1 ];
ADDS	R5, R6, #1
UXTH	R5, R5
LDR	R4, [SP, #8]
ADDS	R4, R4, R5
LDRB	R5, [R4, #0]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+1)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+1)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,217 :: 		matrixrgb_hal_write( &spi_buffer, 2 );
STRH	R1, [SP, #4]
STRH	R0, [SP, #6]
MOVS	R1, #2
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
LDRH	R0, [SP, #6]
LDRH	R1, [SP, #4]
;matrixrgb_hw.c,213 :: 		for( j = 0; j < width; j++ )
ADDS	R4, R0, #1
; j end address is: 0 (R0)
; j start address is: 28 (R7)
UXTH	R7, R4
;matrixrgb_hw.c,218 :: 		}
; j end address is: 28 (R7)
UXTH	R0, R7
IT	AL
BAL	L_matrixrgb_scroll_img_right20
L_matrixrgb_scroll_img_right21:
;matrixrgb_hw.c,212 :: 		for( i = 0; i < height; i++ )
ADDS	R4, R1, #1
; i end address is: 4 (R1)
; i start address is: 12 (R3)
UXTH	R3, R4
;matrixrgb_hw.c,218 :: 		}
; i end address is: 12 (R3)
IT	AL
BAL	L_matrixrgb_scroll_img_right17
L_matrixrgb_scroll_img_right18:
;matrixrgb_hw.c,219 :: 		}
L_end_matrixrgb_scroll_img_right:
LDR	LR, [SP, #0]
ADD	SP, SP, #28
BX	LR
; end of _matrixrgb_scroll_img_right
_matrixrgb_scroll_text_right:
;matrixrgb_hw.c,221 :: 		void matrixrgb_scroll_text_right( char *text, color_t color, uint8_t speed, uint8_t text_size )
; text start address is: 0 (R0)
SUB	SP, SP, #20
STR	LR, [SP, #0]
STRB	R1, [SP, #12]
STRB	R2, [SP, #16]
; text end address is: 0 (R0)
; text start address is: 0 (R0)
;matrixrgb_hw.c,223 :: 		uint8_t i = 0;
;matrixrgb_hw.c,224 :: 		uint8_t *ptr = text;
STR	R0, [SP, #4]
; text end address is: 0 (R0)
;matrixrgb_hw.c,226 :: 		spi_buffer[0] = SCROLL_TEXT_RIGHT_CMD;
MOVS	R4, #9
MOVW	R3, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R3, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R4, [R3, #0]
;matrixrgb_hw.c,227 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,228 :: 		spi_buffer[0] = text_size;
LDRB	R4, [SP, #16]
MOVW	R3, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R3, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R4, [R3, #0]
;matrixrgb_hw.c,229 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,230 :: 		spi_buffer[0] = color.red;
LDRB	R4, [SP, #20]
MOVW	R3, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R3, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R4, [R3, #0]
;matrixrgb_hw.c,231 :: 		spi_buffer[1] = color.green;
LDRB	R4, [SP, #21]
MOVW	R3, #lo_addr(matrixrgb_hw_spi_buffer+1)
MOVT	R3, #hi_addr(matrixrgb_hw_spi_buffer+1)
STRB	R4, [R3, #0]
;matrixrgb_hw.c,232 :: 		spi_buffer[2] = color.blue;
LDRB	R4, [SP, #22]
MOVW	R3, #lo_addr(matrixrgb_hw_spi_buffer+2)
MOVT	R3, #hi_addr(matrixrgb_hw_spi_buffer+2)
STRB	R4, [R3, #0]
;matrixrgb_hw.c,233 :: 		matrixrgb_hal_write( &spi_buffer, 3 );
MOVS	R1, #3
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,234 :: 		spi_buffer[0] = speed;
LDRB	R4, [SP, #12]
MOVW	R3, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R3, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R4, [R3, #0]
;matrixrgb_hw.c,235 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,237 :: 		for( i = 0; i < text_size; i++ )
MOVS	R3, #0
STRB	R3, [SP, #8]
L_matrixrgb_scroll_text_right23:
LDRB	R4, [SP, #16]
LDRB	R3, [SP, #8]
CMP	R3, R4
IT	CS
BCS	L_matrixrgb_scroll_text_right24
;matrixrgb_hw.c,239 :: 		spi_buffer[0] = *ptr++;
LDR	R3, [SP, #4]
LDRB	R4, [R3, #0]
MOVW	R3, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R3, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R4, [R3, #0]
LDR	R3, [SP, #4]
ADDS	R3, R3, #1
STR	R3, [SP, #4]
;matrixrgb_hw.c,240 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,237 :: 		for( i = 0; i < text_size; i++ )
LDRB	R3, [SP, #8]
ADDS	R3, R3, #1
STRB	R3, [SP, #8]
;matrixrgb_hw.c,241 :: 		}
IT	AL
BAL	L_matrixrgb_scroll_text_right23
L_matrixrgb_scroll_text_right24:
;matrixrgb_hw.c,242 :: 		}
L_end_matrixrgb_scroll_text_right:
LDR	LR, [SP, #0]
ADD	SP, SP, #20
BX	LR
; end of _matrixrgb_scroll_text_right
_matrixrgb_scroll_text_left:
;matrixrgb_hw.c,244 :: 		void matrixrgb_scroll_text_left( char *text, color_t color, uint8_t speed , uint8_t text_size )
; text start address is: 0 (R0)
SUB	SP, SP, #20
STR	LR, [SP, #0]
STRB	R1, [SP, #12]
STRB	R2, [SP, #16]
; text end address is: 0 (R0)
; text start address is: 0 (R0)
;matrixrgb_hw.c,246 :: 		uint8_t i = 0;
;matrixrgb_hw.c,247 :: 		uint8_t *ptr = text;
STR	R0, [SP, #4]
; text end address is: 0 (R0)
;matrixrgb_hw.c,249 :: 		spi_buffer[0] = SCROLL_TEXT_LEFT_CMD;
MOVS	R4, #8
MOVW	R3, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R3, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R4, [R3, #0]
;matrixrgb_hw.c,250 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,251 :: 		spi_buffer[0] = text_size;
LDRB	R4, [SP, #16]
MOVW	R3, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R3, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R4, [R3, #0]
;matrixrgb_hw.c,252 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,253 :: 		spi_buffer[0] = color.red;
LDRB	R4, [SP, #20]
MOVW	R3, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R3, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R4, [R3, #0]
;matrixrgb_hw.c,254 :: 		spi_buffer[1] = color.green;
LDRB	R4, [SP, #21]
MOVW	R3, #lo_addr(matrixrgb_hw_spi_buffer+1)
MOVT	R3, #hi_addr(matrixrgb_hw_spi_buffer+1)
STRB	R4, [R3, #0]
;matrixrgb_hw.c,255 :: 		spi_buffer[2] = color.blue;
LDRB	R4, [SP, #22]
MOVW	R3, #lo_addr(matrixrgb_hw_spi_buffer+2)
MOVT	R3, #hi_addr(matrixrgb_hw_spi_buffer+2)
STRB	R4, [R3, #0]
;matrixrgb_hw.c,256 :: 		matrixrgb_hal_write( &spi_buffer, 3 );
MOVS	R1, #3
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,257 :: 		spi_buffer[0] = speed;
LDRB	R4, [SP, #12]
MOVW	R3, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R3, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R4, [R3, #0]
;matrixrgb_hw.c,258 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,260 :: 		for( i = 0; i < text_size; i++ )
MOVS	R3, #0
STRB	R3, [SP, #8]
L_matrixrgb_scroll_text_left26:
LDRB	R4, [SP, #16]
LDRB	R3, [SP, #8]
CMP	R3, R4
IT	CS
BCS	L_matrixrgb_scroll_text_left27
;matrixrgb_hw.c,262 :: 		spi_buffer[0] = *ptr++;
LDR	R3, [SP, #4]
LDRB	R4, [R3, #0]
MOVW	R3, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R3, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R4, [R3, #0]
LDR	R3, [SP, #4]
ADDS	R3, R3, #1
STR	R3, [SP, #4]
;matrixrgb_hw.c,263 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,260 :: 		for( i = 0; i < text_size; i++ )
LDRB	R3, [SP, #8]
ADDS	R3, R3, #1
STRB	R3, [SP, #8]
;matrixrgb_hw.c,264 :: 		}
IT	AL
BAL	L_matrixrgb_scroll_text_left26
L_matrixrgb_scroll_text_left27:
;matrixrgb_hw.c,266 :: 		}
L_end_matrixrgb_scroll_text_left:
LDR	LR, [SP, #0]
ADD	SP, SP, #20
BX	LR
; end of _matrixrgb_scroll_text_left
_matrixrgb_write_pixel:
;matrixrgb_hw.c,268 :: 		void matrixrgb_write_pixel( uint16_t row, uint16_t column, char red, char green, char blue )
; column start address is: 4 (R1)
; row start address is: 0 (R0)
SUB	SP, SP, #20
STR	LR, [SP, #0]
STRH	R1, [SP, #4]
UXTH	R1, R0
STRB	R2, [SP, #12]
STRB	R3, [SP, #16]
; column end address is: 4 (R1)
; row end address is: 0 (R0)
; row start address is: 4 (R1)
; column start address is: 0 (R0)
LDRB	R4, [SP, #20]
STRB	R4, [SP, #20]
;matrixrgb_hw.c,273 :: 		spi_buffer[0] = WRITE_PXL_CMD;
MOVS	R5, #5
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,274 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
STRH	R1, [SP, #8]
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
LDRH	R1, [SP, #8]
LDRH	R0, [SP, #4]
;matrixrgb_hw.c,275 :: 		r_lo = row & 0xFF;
AND	R5, R1, #255
;matrixrgb_hw.c,276 :: 		r_hi = ( row >> 8 ) & 0xFF;
LSRS	R4, R1, #8
UXTH	R4, R4
; row end address is: 4 (R1)
AND	R8, R4, #255
;matrixrgb_hw.c,277 :: 		c_lo = column & 0xFF;
AND	R7, R0, #255
;matrixrgb_hw.c,278 :: 		c_hi = ( column >> 8 ) & 0xFF;
LSRS	R4, R0, #8
UXTH	R4, R4
; column end address is: 0 (R0)
AND	R6, R4, #255
;matrixrgb_hw.c,279 :: 		spi_buffer[0] = r_lo;
UXTB	R5, R5
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,280 :: 		spi_buffer[1] = r_hi;
UXTB	R5, R8
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+1)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+1)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,281 :: 		spi_buffer[2] = c_lo;
UXTB	R5, R7
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+2)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+2)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,282 :: 		spi_buffer[3] = c_hi;
UXTB	R5, R6
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+3)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+3)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,283 :: 		spi_buffer[4] = red;
LDRB	R5, [SP, #12]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+4)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+4)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,284 :: 		spi_buffer[5] = green;
LDRB	R5, [SP, #16]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+5)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+5)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,285 :: 		spi_buffer[6] = blue;
LDRB	R5, [SP, #20]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+6)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+6)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,286 :: 		matrixrgb_hal_write( &spi_buffer, 7 );
MOVS	R1, #7
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,288 :: 		}
L_end_matrixrgb_write_pixel:
LDR	LR, [SP, #0]
ADD	SP, SP, #20
BX	LR
; end of _matrixrgb_write_pixel
_matrixrgb_write_pixel_img:
;matrixrgb_hw.c,290 :: 		void matrixrgb_write_pixel_img( uint8_t row, uint8_t column, char red, char green, char blue )
SUB	SP, SP, #20
STR	LR, [SP, #0]
STRB	R0, [SP, #4]
STRB	R1, [SP, #8]
STRB	R2, [SP, #12]
STRB	R3, [SP, #16]
LDRB	R4, [SP, #20]
STRB	R4, [SP, #20]
;matrixrgb_hw.c,295 :: 		spi_buffer[0] = WRITE_PXL_IMG_CMD;
MOVS	R5, #6
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,296 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,297 :: 		r_lo = row & 0xFF;
LDRB	R4, [SP, #4]
AND	R5, R4, #255
;matrixrgb_hw.c,299 :: 		c_lo = column & 0xFF;
LDRB	R4, [SP, #8]
AND	R6, R4, #255
;matrixrgb_hw.c,301 :: 		spi_buffer[0] = r_lo;
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,302 :: 		spi_buffer[1] = r_hi;
MOVS	R5, #0
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+1)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+1)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,303 :: 		spi_buffer[2] = c_lo;
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+2)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+2)
STRB	R6, [R4, #0]
;matrixrgb_hw.c,304 :: 		spi_buffer[3] = c_hi;
MOVS	R5, #0
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+3)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+3)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,305 :: 		spi_buffer[4] = red;
LDRB	R5, [SP, #12]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+4)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+4)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,306 :: 		spi_buffer[5] = green;
LDRB	R5, [SP, #16]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+5)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+5)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,307 :: 		spi_buffer[6] = blue;
LDRB	R5, [SP, #20]
MOVW	R4, #lo_addr(matrixrgb_hw_spi_buffer+6)
MOVT	R4, #hi_addr(matrixrgb_hw_spi_buffer+6)
STRB	R5, [R4, #0]
;matrixrgb_hw.c,308 :: 		matrixrgb_hal_write( &spi_buffer, 7 );
MOVS	R1, #7
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,310 :: 		}
L_end_matrixrgb_write_pixel_img:
LDR	LR, [SP, #0]
ADD	SP, SP, #20
BX	LR
; end of _matrixrgb_write_pixel_img
_matrixrgb_erase_pixel:
;matrixrgb_hw.c,312 :: 		void matrixrgb_erase_pixel( uint16_t row, uint16_t column )
; column start address is: 4 (R1)
; row start address is: 0 (R0)
SUB	SP, SP, #12
STR	LR, [SP, #0]
STRH	R1, [SP, #4]
UXTH	R1, R0
; column end address is: 4 (R1)
; row end address is: 0 (R0)
; row start address is: 4 (R1)
; column start address is: 0 (R0)
;matrixrgb_hw.c,317 :: 		spi_buffer[0] = ERASE_PXL_CMD;
MOVS	R3, #7
MOVW	R2, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R2, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R3, [R2, #0]
;matrixrgb_hw.c,318 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
STRH	R1, [SP, #8]
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
LDRH	R1, [SP, #8]
LDRH	R0, [SP, #4]
;matrixrgb_hw.c,319 :: 		r_lo = row & 0xFF;
AND	R3, R1, #255
;matrixrgb_hw.c,320 :: 		r_hi = ( row >> 8 ) & 0xFF;
LSRS	R2, R1, #8
UXTH	R2, R2
; row end address is: 4 (R1)
AND	R6, R2, #255
;matrixrgb_hw.c,321 :: 		c_lo = column & 0xFF;
AND	R5, R0, #255
;matrixrgb_hw.c,322 :: 		c_hi = ( column >> 8 ) & 0xFF;
LSRS	R2, R0, #8
UXTH	R2, R2
; column end address is: 0 (R0)
AND	R4, R2, #255
;matrixrgb_hw.c,323 :: 		spi_buffer[0] = r_lo;
UXTB	R3, R3
MOVW	R2, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R2, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R3, [R2, #0]
;matrixrgb_hw.c,324 :: 		spi_buffer[1] = r_hi;
UXTB	R3, R6
MOVW	R2, #lo_addr(matrixrgb_hw_spi_buffer+1)
MOVT	R2, #hi_addr(matrixrgb_hw_spi_buffer+1)
STRB	R3, [R2, #0]
;matrixrgb_hw.c,325 :: 		spi_buffer[2] = c_lo;
UXTB	R3, R5
MOVW	R2, #lo_addr(matrixrgb_hw_spi_buffer+2)
MOVT	R2, #hi_addr(matrixrgb_hw_spi_buffer+2)
STRB	R3, [R2, #0]
;matrixrgb_hw.c,326 :: 		spi_buffer[3] = c_hi;
UXTB	R3, R4
MOVW	R2, #lo_addr(matrixrgb_hw_spi_buffer+3)
MOVT	R2, #hi_addr(matrixrgb_hw_spi_buffer+3)
STRB	R3, [R2, #0]
;matrixrgb_hw.c,327 :: 		matrixrgb_hal_write( &spi_buffer, 4 );
MOVS	R1, #4
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,329 :: 		}
L_end_matrixrgb_erase_pixel:
LDR	LR, [SP, #0]
ADD	SP, SP, #12
BX	LR
; end of _matrixrgb_erase_pixel
_matrixrgb_shift_up:
;matrixrgb_hw.c,331 :: 		void matrixrgb_shift_up( void )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;matrixrgb_hw.c,333 :: 		spi_buffer[0] = DISPLAY_SHIFT_UP_CMD;
MOVS	R1, #10
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R1, [R0, #0]
;matrixrgb_hw.c,334 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,335 :: 		}
L_end_matrixrgb_shift_up:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _matrixrgb_shift_up
_matrixrgb_shift_down:
;matrixrgb_hw.c,337 :: 		void matrixrgb_shift_down( void )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;matrixrgb_hw.c,339 :: 		spi_buffer[0] = DISPLAY_SHIFT_DOWN_CMD;
MOVS	R1, #11
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R1, [R0, #0]
;matrixrgb_hw.c,340 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,341 :: 		}
L_end_matrixrgb_shift_down:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _matrixrgb_shift_down
_matrixrgb_shift_right:
;matrixrgb_hw.c,343 :: 		void matrixrgb_shift_right( void )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;matrixrgb_hw.c,345 :: 		spi_buffer[0] = DISPLAY_SHIFT_RIGHT_CMD;
MOVS	R1, #12
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R1, [R0, #0]
;matrixrgb_hw.c,346 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,347 :: 		}
L_end_matrixrgb_shift_right:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _matrixrgb_shift_right
_matrixrgb_shift_left:
;matrixrgb_hw.c,349 :: 		void matrixrgb_shift_left( void )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;matrixrgb_hw.c,351 :: 		spi_buffer[0] = DISPLAY_SHIFT_LEFT_CMD;
MOVS	R1, #13
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R1, [R0, #0]
;matrixrgb_hw.c,352 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,353 :: 		}
L_end_matrixrgb_shift_left:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _matrixrgb_shift_left
_matrixrgb_scroll_off_scrn_up:
;matrixrgb_hw.c,355 :: 		void matrixrgb_scroll_off_scrn_up( uint8_t speed )
SUB	SP, SP, #8
STR	LR, [SP, #0]
STRB	R0, [SP, #4]
;matrixrgb_hw.c,357 :: 		spi_buffer[0] = DISPLAY_SCROLL_OFF_SCRN_UP_CMD;
MOVS	R2, #14
MOVW	R1, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R1, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R2, [R1, #0]
;matrixrgb_hw.c,358 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,360 :: 		spi_buffer[0] = speed;
LDRB	R2, [SP, #4]
MOVW	R1, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R1, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R2, [R1, #0]
;matrixrgb_hw.c,361 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,362 :: 		}
L_end_matrixrgb_scroll_off_scrn_up:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _matrixrgb_scroll_off_scrn_up
_matrixrgb_scroll_off_scrn_down:
;matrixrgb_hw.c,364 :: 		void matrixrgb_scroll_off_scrn_down( uint8_t speed )
SUB	SP, SP, #8
STR	LR, [SP, #0]
STRB	R0, [SP, #4]
;matrixrgb_hw.c,366 :: 		spi_buffer[0] = DISPLAY_SCROLL_OFF_SCRN_DWN_CMD;
MOVS	R2, #15
MOVW	R1, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R1, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R2, [R1, #0]
;matrixrgb_hw.c,367 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,369 :: 		spi_buffer[0] = speed;
LDRB	R2, [SP, #4]
MOVW	R1, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R1, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R2, [R1, #0]
;matrixrgb_hw.c,370 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,371 :: 		}
L_end_matrixrgb_scroll_off_scrn_down:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _matrixrgb_scroll_off_scrn_down
_matrixrgb_scroll_off_scrn_left:
;matrixrgb_hw.c,373 :: 		void matrixrgb_scroll_off_scrn_left( uint8_t speed )
SUB	SP, SP, #8
STR	LR, [SP, #0]
STRB	R0, [SP, #4]
;matrixrgb_hw.c,375 :: 		spi_buffer[0] = DISPLAY_SCROLL_OFF_SCRN_LEFT_CMD;
MOVS	R2, #16
MOVW	R1, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R1, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R2, [R1, #0]
;matrixrgb_hw.c,376 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,378 :: 		spi_buffer[0] = speed;
LDRB	R2, [SP, #4]
MOVW	R1, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R1, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R2, [R1, #0]
;matrixrgb_hw.c,379 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,380 :: 		}
L_end_matrixrgb_scroll_off_scrn_left:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _matrixrgb_scroll_off_scrn_left
_matrixrgb_scroll_off_scrn_right:
;matrixrgb_hw.c,382 :: 		void matrixrgb_scroll_off_scrn_right( uint8_t speed )
SUB	SP, SP, #8
STR	LR, [SP, #0]
STRB	R0, [SP, #4]
;matrixrgb_hw.c,384 :: 		spi_buffer[0] = DISPLAY_SCROLL_OFF_SCRN_RIGHT_CMD;
MOVS	R2, #17
MOVW	R1, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R1, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R2, [R1, #0]
;matrixrgb_hw.c,385 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,387 :: 		spi_buffer[0] = speed;
LDRB	R2, [SP, #4]
MOVW	R1, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R1, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R2, [R1, #0]
;matrixrgb_hw.c,388 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,389 :: 		}
L_end_matrixrgb_scroll_off_scrn_right:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _matrixrgb_scroll_off_scrn_right
_matrixrgb_refresh:
;matrixrgb_hw.c,391 :: 		void matrixrgb_refresh( void )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;matrixrgb_hw.c,393 :: 		spi_buffer[0] = REFRESH_CMD;
MOVS	R1, #18
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R1, [R0, #0]
;matrixrgb_hw.c,394 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,396 :: 		}
L_end_matrixrgb_refresh:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _matrixrgb_refresh
_matrixrgb_clear_screen:
;matrixrgb_hw.c,398 :: 		void matrixrgb_clear_screen( void )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;matrixrgb_hw.c,400 :: 		spi_buffer[0] = CLR_SCRN_CMD;
MOVS	R1, #19
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
STRB	R1, [R0, #0]
;matrixrgb_hw.c,401 :: 		matrixrgb_hal_write( &spi_buffer, 1 );
MOVS	R1, #1
MOVW	R0, #lo_addr(matrixrgb_hw_spi_buffer+0)
MOVT	R0, #hi_addr(matrixrgb_hw_spi_buffer+0)
BL	_matrixrgb_hal_write+0
;matrixrgb_hw.c,403 :: 		}
L_end_matrixrgb_clear_screen:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _matrixrgb_clear_screen
_matrixrgb_set_color:
;matrixrgb_hw.c,405 :: 		void matrixrgb_set_color( color_t *color, uint8_t red_color, uint8_t green_color, uint8_t blue_color )
; blue_color start address is: 12 (R3)
; green_color start address is: 8 (R2)
; red_color start address is: 4 (R1)
; color start address is: 0 (R0)
; blue_color end address is: 12 (R3)
; green_color end address is: 8 (R2)
; red_color end address is: 4 (R1)
; color end address is: 0 (R0)
; color start address is: 0 (R0)
; red_color start address is: 4 (R1)
; green_color start address is: 8 (R2)
; blue_color start address is: 12 (R3)
;matrixrgb_hw.c,408 :: 		color->red   = red_color;
STRB	R1, [R0, #0]
; red_color end address is: 4 (R1)
;matrixrgb_hw.c,409 :: 		color->green = green_color;
ADDS	R4, R0, #1
STRB	R2, [R4, #0]
; green_color end address is: 8 (R2)
;matrixrgb_hw.c,410 :: 		color->blue  = blue_color;
ADDS	R4, R0, #2
; color end address is: 0 (R0)
STRB	R3, [R4, #0]
; blue_color end address is: 12 (R3)
;matrixrgb_hw.c,412 :: 		}
L_end_matrixrgb_set_color:
BX	LR
; end of _matrixrgb_set_color
