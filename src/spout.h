/* See COPYING file for copyright, license and warranty details */

#define SDL_WIDTH (128 * zoom)
#define SDL_HEIGHT (88 * zoom)

#define PAD_RI 0x01
#define PAD_LF 0x02
#define PAD_DN 0x04
#define PAD_UP 0x08
#define PAD_B  0x10
#define PAD_A  0x20
#define PAD_D  0x40
#define PAD_C  0x80

#define TRG_RI 0x0100
#define TRG_LF 0x0200
#define TRG_DN 0x0400
#define TRG_UP 0x0800
#define TRG_B  0x1000
#define TRG_A  0x2000
#define TRG_D  0x4000
#define TRG_C  0x8000

#define PP_MODE_SINGLE 0
#define PP_MODE_REPEAT 1

#define FRAMERATE 50
#define MAX_GRAIN 500

typedef struct {
	short x, y;
} SVECTOR;

typedef struct {
	long x, y;
} VECTOR;

typedef struct tagGRAIN {
	struct tagGRAIN	*next;
	struct tagGRAIN	*prev;

	SVECTOR s, v;
	short pos;
	unsigned char color;
} GRAIN;

void spout(int t, int x, int y);
void sweep(unsigned char c1, unsigned char c2);
void initGrain(void);
GRAIN *allocGrain(void);
GRAIN *freeGrain(GRAIN *current);
int pceFontPrintf(const char *fmt, ... );
void pceFontSetTxColor(int color);
void pceFontSetBkColor(int color);
void pceFontSetPos(int x, int y);
void pceFontSetType(int type);
void pceLCDTrans();
int pcePadGet();
