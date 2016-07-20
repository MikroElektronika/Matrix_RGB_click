#line 1 "C:/Users/Corey/Documents/Projects/MatrixRGB/Application/PIC32_Done/MatrixRGB_PIC.c"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/packages/click_matrixrgb/uses/matrixrgb_hw.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/include/stdint.h"




typedef signed char int8_t;
typedef signed int int16_t;
typedef signed long int int32_t;
typedef signed long long int64_t;


typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
typedef unsigned long int uint32_t;
typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef signed int int_least16_t;
typedef signed long int int_least32_t;
typedef signed long long int_least64_t;


typedef unsigned char uint_least8_t;
typedef unsigned int uint_least16_t;
typedef unsigned long int uint_least32_t;
typedef unsigned long long uint_least64_t;



typedef signed long int int_fast8_t;
typedef signed long int int_fast16_t;
typedef signed long int int_fast32_t;
typedef signed long long int_fast64_t;


typedef unsigned long int uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long long uint_fast64_t;


typedef signed long int intptr_t;
typedef unsigned long int uintptr_t;


typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;
#line 116 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/packages/click_matrixrgb/uses/matrixrgb_hw.h"
typedef struct
{
 uint8_t red;
 uint8_t green;
 uint8_t blue;
}color_t;
#line 146 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/packages/click_matrixrgb/uses/matrixrgb_hw.h"
void matrixrgb_init( uint8_t width, uint8_t height );

void matrixrgb_write_text( char *text, color_t color, uint8_t text_size, uint8_t start_row, uint8_t start_col );
#line 163 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/packages/click_matrixrgb/uses/matrixrgb_hw.h"
void matrixrgb_image_load( uint8_t *bmp, uint8_t width, uint8_t height );
#line 179 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/packages/click_matrixrgb/uses/matrixrgb_hw.h"
void matrixrgb_scroll_img_left( uint8_t *bmp, uint8_t width, uint8_t height, uint8_t speed );
#line 195 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/packages/click_matrixrgb/uses/matrixrgb_hw.h"
void matrixrgb_scroll_img_right( uint8_t *bmp, uint8_t width, uint8_t height, uint8_t speed );
#line 209 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/packages/click_matrixrgb/uses/matrixrgb_hw.h"
void matrixrgb_write_pixel( int row, int column, char red, char green, char blue );
#line 226 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/packages/click_matrixrgb/uses/matrixrgb_hw.h"
void matrixrgb_write_pixel_img( int row, int column, char red, char green, char blue );
#line 237 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/packages/click_matrixrgb/uses/matrixrgb_hw.h"
void matrixrgb_erase_pixel( int row, int column );
#line 250 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/packages/click_matrixrgb/uses/matrixrgb_hw.h"
void matrixrgb_scroll_text_right( char *text, color_t color, uint8_t speed , uint8_t text_size );
#line 263 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/packages/click_matrixrgb/uses/matrixrgb_hw.h"
void matrixrgb_scroll_text_left( char *text, color_t color, uint8_t speed , uint8_t text_size );
#line 272 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/packages/click_matrixrgb/uses/matrixrgb_hw.h"
void matrixrgb_shift_up( void );
#line 281 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/packages/click_matrixrgb/uses/matrixrgb_hw.h"
void matrixrgb_shift_down( void );
#line 290 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/packages/click_matrixrgb/uses/matrixrgb_hw.h"
void matrixrgb_shift_right( void );
#line 299 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/packages/click_matrixrgb/uses/matrixrgb_hw.h"
void matrixrgb_shift_left( void );
#line 309 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/packages/click_matrixrgb/uses/matrixrgb_hw.h"
void matrixrgb_scroll_off_scrn_up( uint8_t speed );
#line 319 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/packages/click_matrixrgb/uses/matrixrgb_hw.h"
void matrixrgb_scroll_off_scrn_down( uint8_t speed );
#line 329 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/packages/click_matrixrgb/uses/matrixrgb_hw.h"
void matrixrgb_scroll_off_scrn_left( uint8_t speed );
#line 339 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/packages/click_matrixrgb/uses/matrixrgb_hw.h"
void matrixrgb_scroll_off_scrn_right( uint8_t speed );
#line 353 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/packages/click_matrixrgb/uses/matrixrgb_hw.h"
void matrixrgb_refresh( void );
#line 362 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/packages/click_matrixrgb/uses/matrixrgb_hw.h"
void matrixrgb_clear_screen( void );
#line 374 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/packages/click_matrixrgb/uses/matrixrgb_hw.h"
void matrixrgb_set_color( color_t *color, uint8_t red_color, uint8_t green_color, uint8_t blue_color );
#line 1 "c:/users/corey/documents/projects/matrixrgb/application/application_library/resources/resources.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/include/stdint.h"
#line 9 "c:/users/corey/documents/projects/matrixrgb/application/application_library/resources/resources.h"
extern uint8_t ime_bmp[ 2048 ];
extern uint8_t prezime_bmp[ 2048 ];
extern uint8_t Title_bmp[ 2048 ];
extern uint8_t my_img[ 2048 ];
extern uint8_t MikroeBITMAP_bmp[ 2048 ];
extern uint8_t MainMenuBreakout_bmp[2054];
extern uint8_t YouWinScreen_bmp[2054];
extern uint8_t BonusLevelScreen_bmp[2054];
extern uint8_t YouLoseScreen_bmp[2054];
extern uint8_t NewMainMenuBreakoutScreen_bmp[2054];

extern const code char mikroe[ 2048 ];
extern const unsigned short Tahoma10x11[2048];



uint8_t MikroE_Sign_bmp[2054] = {
0x00,0x00,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0x00,0x00,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xFF,0xFF,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xFF,0xFF,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,
0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xFF,0xFF,0xE4,0xE8,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
0xFF,0xFF,0xFF,0xFF,0xE4,0xE8,0xFF,0xFF,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xFF,0xFF,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xFF,0xFF,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,
0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
0xFF,0xFF,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0x00,0x00,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,
0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0xE4,0xE8,0x00,0x00

};
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for pic32/include/stdint.h"
#line 5 "C:/Users/Corey/Documents/Projects/MatrixRGB/Application/PIC32_Done/MatrixRGB_PIC.c"
sbit MATRIXRGB_CS at RC2_bit;
sbit MATRIXRGB_CS_DIR at TRISC2_bit;
sbit MATRIXRGB_READY at RE8_bit;
sbit MATRIXRGB_READY_DIR at TRISE8_bit;
sbit MATRIXRGB_RST at RC1_bit;
sbit MATRIXRGB_RST_DIR at TRISC1_bit;

void system_setup( uint8_t width, uint8_t height );

void main()
{
 color_t my_color;
 uint8_t count = 3;
 uint8_t i = 0;
 system_setup( 2, 1 );

 matrixrgb_scroll_img_right( MikroeBITMAP_bmp, 64, 16, 40 );
 matrixrgb_scroll_off_scrn_down( 30 );
 matrixrgb_set_color( &my_color, 1, 1, 1 );
 matrixrgb_scroll_text_left( "Matrix ", my_color, 17, 10 );
 matrixrgb_set_color( &my_color, 1, 0, 0 );
 matrixrgb_scroll_text_left( "R", my_color, 17, 1 );
 matrixrgb_set_color( &my_color, 0, 1, 0 );
 matrixrgb_scroll_text_left( "G", my_color, 17, 1 );
 matrixrgb_set_color( &my_color, 0, 0, 1 );
 matrixrgb_scroll_text_left( "B ", my_color, 17, 1 );
 matrixrgb_set_color( &my_color, 1, 1, 1 );
 matrixrgb_scroll_off_scrn_up( 30 );
 matrixrgb_set_color( &my_color, 1, 0, 0 );
 matrixrgb_scroll_text_left( "By: ", my_color, 17, 4 );
 matrixrgb_set_color( &my_color, 1, 1, 1 );
 matrixrgb_scroll_text_left( "Corey ", my_color, 17, 6 );
 matrixrgb_set_color( &my_color, 0, 0, 1 );
 matrixrgb_scroll_text_left( "Lakey ", my_color, 17, 6 );
 matrixrgb_scroll_off_scrn_left( 17 );
 matrixrgb_scroll_img_right( MikroeBITMAP_bmp, 64, 16, 25 );
 matrixrgb_scroll_off_scrn_right( 10 );

 while(1)
 {
 matrixrgb_set_color( &my_color, 1, 1, 1 );
 matrixrgb_scroll_text_left( "Matrix", my_color, 20, 10 );
 matrixrgb_set_color( &my_color, 1, 0, 0 );
 matrixrgb_scroll_text_left( "R", my_color, 20, 1 );
 matrixrgb_set_color( &my_color, 0, 1, 0 );
 matrixrgb_scroll_text_left( "G", my_color, 20, 1 );
 matrixrgb_set_color( &my_color, 0, 0, 1 );
 matrixrgb_scroll_text_left( "B", my_color, 20, 1 );
 matrixrgb_refresh();
 }
}

void system_setup( uint8_t width, uint8_t height )
{
 MATRIXRGB_CS_DIR = 0;
 MATRIXRGB_READY_DIR = 1;
 MATRIXRGB_RST_DIR = 0;


 SPI3_Init_Advanced( _SPI_MASTER, _SPI_8_BIT, 2, _SPI_SS_DISABLE,
 _SPI_DATA_SAMPLE_END, _SPI_CLK_IDLE_LOW,
 _SPI_IDLE_2_ACTIVE );

 MATRIXRGB_RST = 0;
 MATRIXRGB_RST = 1;
 Delay_ms(200);

 matrixrgb_init( width, height );
 Delay_ms(200);

}