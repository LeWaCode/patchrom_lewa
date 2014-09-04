.class public Llewa/laml/elements/TimepanelScreenElement;
.super Llewa/laml/elements/ImageScreenElement;
.source "TimepanelScreenElement.java"

# interfaces
.implements Llewa/laml/NotifierManager$OnNotifyListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TimepanelScreenElement"

.field private static final M12:Ljava/lang/String; = "hh:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field public static final TAG_NAME:Ljava/lang/String; = "Time"


# instance fields
.field private mBmpHeight:I

.field private mBmpWidth:I

.field protected mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatExp:Llewa/laml/data/Expression;

.field private mLastUpdateTime:J

.field private mLoadResourceFailed:Z

.field private mPreTime:Ljava/lang/CharSequence;

.field private mSpace:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 2
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 50
    const-string v0, "kk:mm"

    iput-object v0, p0, Llewa/laml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 52
    const-string v0, "format"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    .line 53
    const-string v0, "formatExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/TimepanelScreenElement;->mFormatExp:Llewa/laml/data/Expression;

    .line 54
    const-string v0, "space"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Llewa/laml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Llewa/laml/elements/TimepanelScreenElement;->mSpace:I

    .line 55
    return-void
.end method

.method private createBitmap()V
    .locals 9

    .prologue
    .line 58
    const-string v2, "0123456789:"

    .line 59
    .local v2, digits:Ljava/lang/String;
    const/4 v4, 0x0

    .line 60
    .local v4, maxWidth:I
    const/4 v0, 0x0

    .line 61
    .local v0, density:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Llewa/laml/elements/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 63
    .local v1, digitBmp:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 64
    const/4 v6, 0x1

    iput-boolean v6, p0, Llewa/laml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    .line 65
    const-string v6, "TimepanelScreenElement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load digit bitmap: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v1           #digitBmp:Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 68
    .restart local v1       #digitBmp:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 69
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 70
    :cond_1
    iget v6, p0, Llewa/laml/elements/TimepanelScreenElement;->mBmpHeight:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 71
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Llewa/laml/elements/TimepanelScreenElement;->mBmpHeight:I

    .line 72
    :cond_2
    if-nez v0, :cond_3

    .line 73
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v0

    .line 61
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    .end local v1           #digitBmp:Landroid/graphics/Bitmap;
    :cond_4
    iget v6, p0, Llewa/laml/elements/TimepanelScreenElement;->mSpace:I

    int-to-double v6, v6

    invoke-virtual {p0, v6, v7}, Llewa/laml/elements/TimepanelScreenElement;->scale(D)F

    move-result v6

    float-to-int v5, v6

    .line 77
    .local v5, space:I
    mul-int/lit8 v6, v4, 0x5

    mul-int/lit8 v7, v5, 0x4

    add-int/2addr v6, v7

    iget v7, p0, Llewa/laml/elements/TimepanelScreenElement;->mBmpHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Llewa/laml/elements/TimepanelScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 78
    iget-object v6, p0, Llewa/laml/elements/TimepanelScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 79
    iget v6, p0, Llewa/laml/elements/TimepanelScreenElement;->mBmpHeight:I

    int-to-double v6, v6

    invoke-virtual {p0, v6, v7}, Llewa/laml/elements/TimepanelScreenElement;->setActualHeight(D)V

    goto :goto_1
.end method

.method private getDigitBmp(C)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "c"

    .prologue
    .line 83
    iget-object v2, p0, Llewa/laml/elements/TimepanelScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v2}, Llewa/laml/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "time.png"

    .line 84
    .local v0, src:Ljava/lang/String;
    :goto_0
    const/16 v2, 0x3a

    if-ne p1, v2, :cond_1

    const-string v1, "dot"

    .line 85
    .local v1, suffix:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Llewa/laml/elements/TimepanelScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    invoke-static {v0, v1}, Llewa/laml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Llewa/laml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 83
    .end local v0           #src:Ljava/lang/String;
    .end local v1           #suffix:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Llewa/laml/elements/TimepanelScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v2}, Llewa/laml/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    .restart local v0       #src:Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Llewa/laml/elements/TimepanelScreenElement;->mFormatExp:Llewa/laml/data/Expression;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Llewa/laml/elements/TimepanelScreenElement;->mFormatExp:Llewa/laml/data/Expression;

    invoke-virtual {p0}, Llewa/laml/elements/TimepanelScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Llewa/laml/data/Expression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llewa/laml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    goto :goto_0
.end method

.method private setDateFormat()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Llewa/laml/elements/TimepanelScreenElement;->mFormatExp:Llewa/laml/data/Expression;

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Llewa/laml/elements/TimepanelScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Llewa/laml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    .line 99
    :cond_0
    return-void

    .line 97
    :cond_1
    const-string v0, "hh:mm"

    goto :goto_0
.end method

.method private updateTime()V
    .locals 13

    .prologue
    .line 102
    iget-boolean v9, p0, Llewa/laml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    if-eqz v9, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v9, p0, Llewa/laml/elements/TimepanelScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v9, :cond_2

    .line 105
    invoke-direct {p0}, Llewa/laml/elements/TimepanelScreenElement;->createBitmap()V

    .line 107
    :cond_2
    iget-object v9, p0, Llewa/laml/elements/TimepanelScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_0

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 109
    .local v1, currentTimeMillis:J
    const-wide/16 v9, 0x3c

    div-long v9, v1, v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    iget-wide v11, p0, Llewa/laml/elements/TimepanelScreenElement;->mLastUpdateTime:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_0

    .line 110
    iget-object v9, p0, Llewa/laml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v9, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 111
    invoke-direct {p0}, Llewa/laml/elements/TimepanelScreenElement;->getFormat()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Llewa/laml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 112
    .local v5, newTime:Ljava/lang/CharSequence;
    iget-object v9, p0, Llewa/laml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 113
    iput-object v5, p0, Llewa/laml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    .line 114
    new-instance v7, Landroid/graphics/Canvas;

    iget-object v9, p0, Llewa/laml/elements/TimepanelScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 115
    .local v7, tmpCanvas:Landroid/graphics/Canvas;
    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 116
    const/4 v8, 0x0

    .line 117
    .local v8, x:I
    iget v9, p0, Llewa/laml/elements/TimepanelScreenElement;->mSpace:I

    int-to-double v9, v9

    invoke-virtual {p0, v9, v10}, Llewa/laml/elements/TimepanelScreenElement;->scale(D)F

    move-result v9

    float-to-int v6, v9

    .line 118
    .local v6, space:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 119
    invoke-interface {v5, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 120
    .local v3, digit:C
    invoke-direct {p0, v3}, Llewa/laml/elements/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 122
    int-to-float v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 123
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/2addr v9, v8

    add-int v8, v6, v9

    .line 118
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 127
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #digit:C
    :cond_4
    sub-int v9, v8, v6

    iput v9, p0, Llewa/laml/elements/TimepanelScreenElement;->mBmpWidth:I

    .line 128
    iget v9, p0, Llewa/laml/elements/TimepanelScreenElement;->mBmpWidth:I

    int-to-float v9, v9

    invoke-virtual {p0, v9}, Llewa/laml/elements/TimepanelScreenElement;->descale(F)F

    move-result v9

    float-to-double v9, v9

    invoke-virtual {p0, v9, v10}, Llewa/laml/elements/TimepanelScreenElement;->setActualWidth(D)V

    .line 129
    const-wide/32 v9, 0xea60

    div-long v9, v1, v9

    iput-wide v9, p0, Llewa/laml/elements/TimepanelScreenElement;->mLastUpdateTime:J

    .line 130
    invoke-virtual {p0}, Llewa/laml/elements/TimepanelScreenElement;->requestUpdate()V

    goto/16 :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/laml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/laml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    .line 139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llewa/laml/elements/TimepanelScreenElement;->mLastUpdateTime:J

    .line 140
    invoke-virtual {p0}, Llewa/laml/elements/TimepanelScreenElement;->getNotifierManager()Llewa/laml/NotifierManager;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1, p0}, Llewa/laml/NotifierManager;->releaseNotifier(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 141
    invoke-virtual {p0}, Llewa/laml/elements/TimepanelScreenElement;->getNotifierManager()Llewa/laml/NotifierManager;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1, p0}, Llewa/laml/NotifierManager;->releaseNotifier(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 142
    return-void
.end method

.method protected getBitmapWidth()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Llewa/laml/elements/TimepanelScreenElement;->mBmpWidth:I

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Llewa/laml/elements/ImageScreenElement;->init()V

    .line 150
    invoke-direct {p0}, Llewa/laml/elements/TimepanelScreenElement;->setDateFormat()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/laml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    .line 152
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llewa/laml/elements/TimepanelScreenElement;->mLastUpdateTime:J

    .line 153
    invoke-virtual {p0}, Llewa/laml/elements/TimepanelScreenElement;->getNotifierManager()Llewa/laml/NotifierManager;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1, p0}, Llewa/laml/NotifierManager;->acquireNotifier(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 154
    invoke-virtual {p0}, Llewa/laml/elements/TimepanelScreenElement;->getNotifierManager()Llewa/laml/NotifierManager;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1, p0}, Llewa/laml/NotifierManager;->acquireNotifier(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 155
    invoke-direct {p0}, Llewa/laml/elements/TimepanelScreenElement;->updateTime()V

    .line 156
    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "intent"
    .parameter "o"

    .prologue
    .line 159
    invoke-direct {p0}, Llewa/laml/elements/TimepanelScreenElement;->updateTime()V

    .line 160
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Llewa/laml/elements/TimepanelScreenElement;->getNotifierManager()Llewa/laml/NotifierManager;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1, p0}, Llewa/laml/NotifierManager;->pause(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 164
    invoke-virtual {p0}, Llewa/laml/elements/TimepanelScreenElement;->getNotifierManager()Llewa/laml/NotifierManager;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1, p0}, Llewa/laml/NotifierManager;->pause(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 165
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 168
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 169
    invoke-virtual {p0}, Llewa/laml/elements/TimepanelScreenElement;->getNotifierManager()Llewa/laml/NotifierManager;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1, p0}, Llewa/laml/NotifierManager;->resume(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 170
    invoke-virtual {p0}, Llewa/laml/elements/TimepanelScreenElement;->getNotifierManager()Llewa/laml/NotifierManager;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1, p0}, Llewa/laml/NotifierManager;->resume(Ljava/lang/String;Llewa/laml/NotifierManager$OnNotifyListener;)V

    .line 171
    invoke-direct {p0}, Llewa/laml/elements/TimepanelScreenElement;->updateTime()V

    .line 172
    return-void
.end method
