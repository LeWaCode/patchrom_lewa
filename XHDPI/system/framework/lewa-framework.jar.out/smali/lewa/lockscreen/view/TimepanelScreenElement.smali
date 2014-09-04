.class public Llewa/lockscreen/view/TimepanelScreenElement;
.super Llewa/lockscreen/view/AnimatedScreenElement;
.source "TimepanelScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/lockscreen/view/TimepanelScreenElement$1;,
        Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "hh:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final TAG:Ljava/lang/String; = "TimepanelScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Time"


# instance fields
.field private hourDrawed:I

.field private mBmpHeight:I

.field private mBmpWidth:I

.field private mBuffer:Landroid/graphics/Bitmap;

.field protected mCalendar:Ljava/util/Calendar;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mForceDraw:Z

.field private mFormat:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPaint:Landroid/graphics/Paint;

.field private mTimeFormatLength:I

.field private minDrawed:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V
    .locals 2
    .parameter "element"
    .parameter "screenContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 45
    invoke-direct {p0, p1, p2}, Llewa/lockscreen/view/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    .line 40
    iput v0, p0, Llewa/lockscreen/view/TimepanelScreenElement;->hourDrawed:I

    .line 41
    iput v0, p0, Llewa/lockscreen/view/TimepanelScreenElement;->minDrawed:I

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mForceDraw:Z

    .line 47
    const-string v0, "kk:mm"

    iput-object v0, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mHandler:Landroid/os/Handler;

    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 51
    new-instance v0, Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llewa/lockscreen/view/TimepanelScreenElement$TimeZoneChangeReceiver;-><init>(Llewa/lockscreen/view/TimepanelScreenElement;Llewa/lockscreen/view/TimepanelScreenElement$1;)V

    iput-object v0, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    return-void
.end method

.method static synthetic access$100(Llewa/lockscreen/view/TimepanelScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Llewa/lockscreen/view/TimepanelScreenElement;->updateTime()V

    return-void
.end method

.method static synthetic access$202(Llewa/lockscreen/view/TimepanelScreenElement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mForceDraw:Z

    return p1
.end method

.method static synthetic access$300(Llewa/lockscreen/view/TimepanelScreenElement;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getDigitBmp(C)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "c"

    .prologue
    .line 92
    const/4 v5, 0x0

    .line 93
    .local v5, timeStr:Ljava/lang/String;
    const/16 v6, 0x3a

    if-ne p1, v6, :cond_0

    .line 94
    const-string v5, "dot"

    .line 99
    :goto_0
    const/4 v3, 0x0

    .line 100
    .local v3, timeBmp:Ljava/lang/String;
    iget-object v6, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v6}, Llewa/lockscreen/view/AnimatedElement;->getBitmap()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, bitmap:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 102
    const-string v3, "time.png"

    .line 106
    :goto_1
    const/16 v6, 0x2e

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 107
    .local v2, position:I
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, timeBmpSub:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, bitmapName:Ljava/lang/String;
    iget-object v6, p0, Llewa/lockscreen/view/TimepanelScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v6, v6, Llewa/lockscreen/view/ScreenContext;->mResourceManager:Llewa/lockscreen/view/ResourceManager;

    invoke-virtual {v6, v1}, Llewa/lockscreen/view/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    .line 96
    .end local v0           #bitmap:Ljava/lang/String;
    .end local v1           #bitmapName:Ljava/lang/String;
    .end local v2           #position:I
    .end local v3           #timeBmp:Ljava/lang/String;
    .end local v4           #timeBmpSub:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 104
    .restart local v0       #bitmap:Ljava/lang/String;
    .restart local v3       #timeBmp:Ljava/lang/String;
    :cond_1
    move-object v3, v0

    goto :goto_1
.end method

.method private setDateFormat()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Llewa/lockscreen/view/TimepanelScreenElement;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "kk:mm"

    iput-object v0, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    .line 87
    :goto_0
    iget-object v0, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mTimeFormatLength:I

    .line 88
    return-void

    .line 85
    :cond_0
    const-string v0, "hh:mm"

    iput-object v0, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateTime()V
    .locals 14

    .prologue
    .line 116
    iget-object v10, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_0

    iget-object v10, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 118
    :cond_0
    const/16 v10, 0x30

    invoke-direct {p0, v10}, Llewa/lockscreen/view/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    .local v0, bitmap_char:Landroid/graphics/Bitmap;
    const/16 v10, 0x3a

    invoke-direct {p0, v10}, Llewa/lockscreen/view/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 120
    .local v1, bitmap_dot:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 157
    .end local v0           #bitmap_char:Landroid/graphics/Bitmap;
    .end local v1           #bitmap_dot:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 123
    .restart local v0       #bitmap_char:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap_dot:Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v1, :cond_1

    .line 126
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iput v10, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mBmpHeight:I

    .line 127
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    mul-int/lit8 v2, v10, 0x4

    .line 128
    .local v2, bmp_width_4_chars:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 129
    .local v3, bmp_width_dot:I
    add-int v9, v2, v3

    .line 131
    .local v9, totalWidth:I
    iget v10, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mBmpHeight:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mBuffer:Landroid/graphics/Bitmap;

    .line 134
    .end local v0           #bitmap_char:Landroid/graphics/Bitmap;
    .end local v1           #bitmap_dot:Landroid/graphics/Bitmap;
    .end local v2           #bmp_width_4_chars:I
    .end local v3           #bmp_width_dot:I
    .end local v9           #totalWidth:I
    :cond_3
    iget-object v10, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mCanvas:Landroid/graphics/Canvas;

    if-nez v10, :cond_4

    .line 135
    new-instance v10, Landroid/graphics/Canvas;

    iget-object v11, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v10, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v10, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mCanvas:Landroid/graphics/Canvas;

    .line 138
    :cond_4
    iget-object v10, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mCanvas:Landroid/graphics/Canvas;

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 140
    iget-object v10, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 141
    iget-object v10, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    iget-object v11, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 142
    .local v8, timeStr:Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 143
    .local v7, left:I
    iget v10, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mTimeFormatLength:I

    if-lez v10, :cond_1

    .line 144
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget v10, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mTimeFormatLength:I

    if-ge v6, v10, :cond_6

    .line 145
    invoke-interface {v8, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 146
    .local v4, c:C
    invoke-direct {p0, v4}, Llewa/lockscreen/view/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 147
    .local v5, digitBitmap:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_5

    .line 148
    iget-object v10, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v11, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v5, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 149
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int/2addr v7, v10

    .line 144
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 153
    .end local v4           #c:C
    .end local v5           #digitBitmap:Landroid/graphics/Bitmap;
    :cond_6
    iput v7, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mBmpWidth:I

    .line 154
    iget-object v10, p0, Llewa/lockscreen/view/TimepanelScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    const/4 v11, 0x1

    iput-boolean v11, v10, Llewa/lockscreen/view/ScreenContext;->mShouldUpdate:Z

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mBuffer:Landroid/graphics/Bitmap;

    .line 60
    :cond_0
    invoke-super {p0}, Llewa/lockscreen/view/AnimatedScreenElement;->finish()V

    .line 61
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Llewa/lockscreen/view/AnimatedScreenElement;->init()V

    .line 67
    invoke-direct {p0}, Llewa/lockscreen/view/TimepanelScreenElement;->setDateFormat()V

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .local v0, intentfilter:Landroid/content/IntentFilter;
    invoke-direct {p0}, Llewa/lockscreen/view/TimepanelScreenElement;->updateTime()V

    .line 78
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 164
    invoke-virtual {p0}, Llewa/lockscreen/view/TimepanelScreenElement;->isVisible()Z

    move-result v6

    if-nez v6, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 168
    .local v1, calendar:Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 169
    .local v2, curHour:I
    const/16 v6, 0xc

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 170
    .local v3, curMinute:I
    iget v6, p0, Llewa/lockscreen/view/TimepanelScreenElement;->hourDrawed:I

    if-ne v2, v6, :cond_2

    iget v6, p0, Llewa/lockscreen/view/TimepanelScreenElement;->minDrawed:I

    if-ne v3, v6, :cond_2

    iget-boolean v6, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mForceDraw:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 172
    :cond_2
    iput v2, p0, Llewa/lockscreen/view/TimepanelScreenElement;->hourDrawed:I

    .line 173
    iput v3, p0, Llewa/lockscreen/view/TimepanelScreenElement;->minDrawed:I

    .line 174
    invoke-direct {p0}, Llewa/lockscreen/view/TimepanelScreenElement;->updateTime()V

    .line 176
    :cond_3
    iget-object v6, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v6}, Llewa/lockscreen/view/AnimatedElement;->getAlpha()I

    move-result v0

    .line 177
    .local v0, alpha:I
    if-lez v0, :cond_0

    .line 180
    iget-object v6, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 183
    iget-object v6, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 184
    iget-object v6, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v6}, Llewa/lockscreen/view/AnimatedElement;->getX()I

    move-result v6

    iget v7, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mBmpWidth:I

    invoke-virtual {p0, v6, v7}, Llewa/lockscreen/view/TimepanelScreenElement;->getLeft(II)I

    move-result v6

    int-to-float v4, v6

    .line 185
    .local v4, left:F
    iget-object v6, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v6}, Llewa/lockscreen/view/AnimatedElement;->getY()I

    move-result v6

    iget v7, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mBmpHeight:I

    invoke-virtual {p0, v6, v7}, Llewa/lockscreen/view/TimepanelScreenElement;->getTop(II)I

    move-result v6

    int-to-float v5, v6

    .line 186
    .local v5, top:F
    iget-object v6, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mBuffer:Landroid/graphics/Bitmap;

    iget-object v7, p0, Llewa/lockscreen/view/TimepanelScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
