.class public Llewa/laml/elements/TextScreenElement;
.super Llewa/laml/elements/AnimatedScreenElement;
.source "TextScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/elements/TextScreenElement$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x12

.field private static final LOG_TAG:Ljava/lang/String; = "TextScreenElement"

.field private static final MARQUEE_FRAMERATE:I = 0x1e

.field private static final MIN_SHADOW_ALPHA:I = 0xbb

.field private static final PADDING:I = 0x32

.field private static final SHADOW_COLOR:I = 0x20000000

.field public static final TAG_NAME:Ljava/lang/String; = "Text"

.field public static final TEXT_HEIGHT:Ljava/lang/String; = "text_height"

.field public static final TEXT_WIDTH:Ljava/lang/String; = "text_width"


# instance fields
.field private mColorParser:Llewa/laml/util/ColorParser;

.field private mFormatter:Llewa/laml/util/TextFormatter;

.field private mMarqueeGap:I

.field private mMarqueePos:F

.field private mMarqueeSpeed:I

.field private mMultiLine:Z

.field private mPaint:Landroid/text/TextPaint;

.field private mPreText:Ljava/lang/String;

.field private mPreviousTime:J

.field private mSetText:Ljava/lang/String;

.field private mShadowColor:I

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mShouldMarquee:Z

.field private mSizeExpression:Llewa/laml/data/Expression;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mText:Ljava/lang/String;

.field private mTextHeightVar:Llewa/laml/util/IndexedNumberVariable;

.field private mTextLayout:Landroid/text/StaticLayout;

.field private mTextSize:F

.field private mTextWidth:F

.field private mTextWidthVar:Llewa/laml/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 4
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 52
    const v0, 0x7f7fffff

    iput v0, p0, Llewa/laml/elements/TextScreenElement;->mMarqueePos:F

    .line 58
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Llewa/laml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 93
    invoke-virtual {p0, p1}, Llewa/laml/elements/TextScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 94
    iget-boolean v0, p0, Llewa/laml/elements/TextScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/TextScreenElement;->mName:Ljava/lang/String;

    const-string v2, "text_width"

    invoke-virtual {p0}, Llewa/laml/elements/TextScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/TextScreenElement;->mTextWidthVar:Llewa/laml/util/IndexedNumberVariable;

    .line 96
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/TextScreenElement;->mName:Ljava/lang/String;

    const-string v2, "text_height"

    invoke-virtual {p0}, Llewa/laml/elements/TextScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/TextScreenElement;->mTextHeightVar:Llewa/laml/util/IndexedNumberVariable;

    .line 98
    :cond_0
    return-void
.end method

.method private extractTypeface(Ljava/lang/String;)Ljava/io/File;
    .locals 13
    .parameter "face"

    .prologue
    const/4 v8, 0x0

    .line 269
    const/4 v3, 0x0

    .line 270
    .local v3, is:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 272
    .local v5, os:Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v9, Llewa/os/Process;->IS_SYSTEM:Z

    if-eqz v9, :cond_0

    const-string v9, "/cache"

    :goto_0
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/typefaces"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v1, dir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 275
    .local v2, font:Ljava/io/File;
    const/4 v9, 0x1

    new-array v7, v9, [J

    .line 276
    .local v7, size:[J
    iget-object v9, p0, Llewa/laml/elements/TextScreenElement;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v9}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v9

    iget-object v9, v9, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    invoke-virtual {v9, p1, v7}, Llewa/laml/ResourceManager;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v3

    .line 277
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    const/4 v11, 0x0

    aget-wide v11, v7, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v9, v9, v11

    if-nez v9, :cond_1

    .line 292
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 293
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 295
    .end local v1           #dir:Ljava/io/File;
    .end local v2           #font:Ljava/io/File;
    .end local v7           #size:[J
    :goto_1
    return-object v2

    .line 272
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Llewa/laml/elements/TextScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v9

    iget-object v9, v9, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 279
    .restart local v1       #dir:Ljava/io/File;
    .restart local v2       #font:Ljava/io/File;
    .restart local v7       #size:[J
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    if-nez v3, :cond_2

    .line 292
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 293
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v2, v8

    goto :goto_1

    .line 282
    :cond_2
    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 284
    .end local v5           #os:Ljava/io/OutputStream;
    .local v6, os:Ljava/io/OutputStream;
    const/16 v9, 0x1000

    :try_start_3
    new-array v0, v9, [B

    .line 285
    .local v0, buf:[B
    :goto_2
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, n:I
    if-ltz v4, :cond_3

    .line 286
    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 290
    .end local v0           #buf:[B
    .end local v4           #n:I
    :catch_0
    move-exception v9

    move-object v5, v6

    .line 292
    .end local v1           #dir:Ljava/io/File;
    .end local v2           #font:Ljava/io/File;
    .end local v6           #os:Ljava/io/OutputStream;
    .end local v7           #size:[J
    .restart local v5       #os:Ljava/io/OutputStream;
    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 293
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v2, v8

    .line 295
    goto :goto_1

    .line 288
    .end local v5           #os:Ljava/io/OutputStream;
    .restart local v0       #buf:[B
    .restart local v1       #dir:Ljava/io/File;
    .restart local v2       #font:Ljava/io/File;
    .restart local v4       #n:I
    .restart local v6       #os:Ljava/io/OutputStream;
    .restart local v7       #size:[J
    :cond_3
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 292
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 293
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v5, v6

    .end local v6           #os:Ljava/io/OutputStream;
    .restart local v5       #os:Ljava/io/OutputStream;
    goto :goto_1

    .line 292
    .end local v0           #buf:[B
    .end local v1           #dir:Ljava/io/File;
    .end local v2           #font:Ljava/io/File;
    .end local v4           #n:I
    .end local v7           #size:[J
    :catchall_0
    move-exception v8

    :goto_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 293
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v8

    .line 292
    .end local v5           #os:Ljava/io/OutputStream;
    .restart local v1       #dir:Ljava/io/File;
    .restart local v2       #font:Ljava/io/File;
    .restart local v6       #os:Ljava/io/OutputStream;
    .restart local v7       #size:[J
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #os:Ljava/io/OutputStream;
    .restart local v5       #os:Ljava/io/OutputStream;
    goto :goto_4

    .line 290
    .end local v1           #dir:Ljava/io/File;
    .end local v2           #font:Ljava/io/File;
    .end local v7           #size:[J
    :catch_1
    move-exception v9

    goto :goto_3
.end method

.method private getAlignment()Landroid/text/Layout$Alignment;
    .locals 2

    .prologue
    .line 101
    sget-object v0, Llewa/laml/elements/TextScreenElement$1;->$SwitchMap$lewa$laml$elements$ScreenElement$Align:[I

    iget-object v1, p0, Llewa/laml/elements/TextScreenElement;->mAlign:Llewa/laml/elements/ScreenElement$Align;

    invoke-virtual {v1}, Llewa/laml/elements/ScreenElement$Align;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 109
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_0
    return-object v0

    .line 103
    :pswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 105
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 107
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateTextSize()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Llewa/laml/elements/TextScreenElement;->mSizeExpression:Llewa/laml/data/Expression;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Llewa/laml/elements/TextScreenElement;->mSizeExpression:Llewa/laml/data/Expression;

    invoke-virtual {p0, v0}, Llewa/laml/elements/TextScreenElement;->evaluate(Llewa/laml/data/Expression;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Llewa/laml/elements/TextScreenElement;->scale(D)F

    move-result v0

    iput v0, p0, Llewa/laml/elements/TextScreenElement;->mTextSize:F

    .line 116
    iget-object v0, p0, Llewa/laml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget v1, p0, Llewa/laml/elements/TextScreenElement;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 118
    :cond_0
    return-void
.end method

.method private updateTextWidth()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Llewa/laml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-direct {p0}, Llewa/laml/elements/TextScreenElement;->updateTextSize()V

    .line 123
    iget-object v0, p0, Llewa/laml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Llewa/laml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Llewa/laml/elements/TextScreenElement;->mTextWidth:F

    .line 124
    iget-boolean v0, p0, Llewa/laml/elements/TextScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Llewa/laml/elements/TextScreenElement;->mTextWidthVar:Llewa/laml/util/IndexedNumberVariable;

    iget v1, p0, Llewa/laml/elements/TextScreenElement;->mTextWidth:F

    invoke-virtual {p0, v1}, Llewa/laml/elements/TextScreenElement;->descale(F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "c"

    .prologue
    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/laml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 133
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/laml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    if-nez v1, :cond_1

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/laml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/TextScreenElement;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 135
    :cond_1
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/TextScreenElement;->getAlpha()I

    move-result v8

    .line 136
    .local v8, alpha:I
    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/laml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v8}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    const/16 v1, 0xbb

    if-le v8, v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Llewa/laml/elements/TextScreenElement;->mShadowRadius:F

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Llewa/laml/elements/TextScreenElement;->mShadowDx:F

    move-object/from16 v0, p0

    iget v4, v0, Llewa/laml/elements/TextScreenElement;->mShadowDy:F

    move-object/from16 v0, p0

    iget v5, v0, Llewa/laml/elements/TextScreenElement;->mShadowColor:I

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/TextScreenElement;->getWidth()F

    move-result v14

    .line 140
    .local v14, width:F
    const/4 v1, 0x0

    cmpg-float v1, v14, v1

    if-ltz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Llewa/laml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v1, v14, v1

    if-lez v1, :cond_3

    .line 141
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Llewa/laml/elements/TextScreenElement;->mTextWidth:F

    .line 142
    :cond_3
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/TextScreenElement;->getHeight()F

    move-result v9

    .line 143
    .local v9, height:F
    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/laml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v12

    .line 144
    .local v12, lineHeight:F
    const/4 v1, 0x0

    cmpg-float v1, v9, v1

    if-gez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/laml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    if-nez v1, :cond_4

    .line 145
    move v9, v12

    .line 146
    :cond_4
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/TextScreenElement;->getX()F

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v14}, Llewa/laml/elements/TextScreenElement;->getLeft(FF)F

    move-result v15

    .line 147
    .local v15, x:F
    const/4 v1, 0x0

    cmpl-float v1, v9, v1

    if-lez v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/TextScreenElement;->getY()F

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Llewa/laml/elements/TextScreenElement;->getTop(FF)F

    move-result v16

    .line 148
    .local v16, y:F
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 149
    const/4 v1, 0x0

    cmpl-float v1, v14, v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    cmpl-float v1, v9, v1

    if-lez v1, :cond_5

    .line 150
    const/high16 v1, 0x4120

    sub-float v1, v16, v1

    add-float v2, v15, v14

    const/high16 v3, 0x41a0

    add-float v3, v3, v16

    add-float/2addr v3, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 152
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/laml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_9

    .line 153
    const/4 v11, 0x0

    .local v11, k:I
    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/laml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v10

    .local v10, j:I
    :goto_3
    if-ge v11, v10, :cond_a

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/TextScreenElement;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/laml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v11}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/laml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v11}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/laml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v11}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v1

    add-float v5, v15, v1

    add-float v1, v16, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Llewa/laml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v11}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Llewa/laml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 153
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 137
    .end local v9           #height:F
    .end local v10           #j:I
    .end local v11           #k:I
    .end local v12           #lineHeight:F
    .end local v14           #width:F
    .end local v15           #x:F
    .end local v16           #y:F
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Llewa/laml/elements/TextScreenElement;->mShadowRadius:F

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 147
    .restart local v9       #height:F
    .restart local v12       #lineHeight:F
    .restart local v14       #width:F
    .restart local v15       #x:F
    :cond_8
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/TextScreenElement;->getY()F

    move-result v16

    goto :goto_2

    .line 159
    .restart local v16       #y:F
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/TextScreenElement;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v1, v0, Llewa/laml/elements/TextScreenElement;->mMarqueePos:F

    const v3, 0x7f7fffff

    cmpl-float v1, v1, v3

    if-nez v1, :cond_b

    const/4 v1, 0x0

    :goto_4
    add-float/2addr v1, v15

    add-float v3, v16, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Llewa/laml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 161
    move-object/from16 v0, p0

    iget v1, v0, Llewa/laml/elements/TextScreenElement;->mMarqueePos:F

    move-object/from16 v0, p0

    iget v2, v0, Llewa/laml/elements/TextScreenElement;->mTextWidth:F

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Llewa/laml/elements/TextScreenElement;->mTextSize:F

    move-object/from16 v0, p0

    iget v3, v0, Llewa/laml/elements/TextScreenElement;->mMarqueeGap:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v13, v1, v2

    .line 162
    .local v13, nextPos:F
    cmpg-float v1, v13, v14

    if-gez v1, :cond_a

    .line 163
    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/laml/elements/TextScreenElement;->mText:Ljava/lang/String;

    add-float v2, v15, v13

    add-float v3, v16, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Llewa/laml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 166
    .end local v13           #nextPos:F
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 159
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Llewa/laml/elements/TextScreenElement;->mMarqueePos:F

    goto :goto_4
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Llewa/laml/elements/AnimatedScreenElement;->finish()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/laml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    .line 172
    const v0, 0x7f7fffff

    iput v0, p0, Llewa/laml/elements/TextScreenElement;->mMarqueePos:F

    .line 173
    return-void
.end method

.method protected getColor()I
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Llewa/laml/elements/TextScreenElement;->mColorParser:Llewa/laml/util/ColorParser;

    invoke-virtual {p0}, Llewa/laml/elements/TextScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Llewa/laml/util/ColorParser;->getColor(Llewa/laml/data/Variables;)I

    move-result v0

    return v0
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Llewa/laml/elements/TextScreenElement;->mFormatter:Llewa/laml/util/TextFormatter;

    invoke-virtual {p0}, Llewa/laml/elements/TextScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Llewa/laml/util/TextFormatter;->getFormat(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Llewa/laml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Llewa/laml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    .line 187
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llewa/laml/elements/TextScreenElement;->mFormatter:Llewa/laml/util/TextFormatter;

    invoke-virtual {p0}, Llewa/laml/elements/TextScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Llewa/laml/util/TextFormatter;->getText(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Llewa/laml/elements/AnimatedScreenElement;->init()V

    .line 192
    invoke-virtual {p0}, Llewa/laml/elements/TextScreenElement;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 193
    const v0, 0x7f7fffff

    iput v0, p0, Llewa/laml/elements/TextScreenElement;->mMarqueePos:F

    .line 194
    invoke-direct {p0}, Llewa/laml/elements/TextScreenElement;->updateTextWidth()V

    .line 195
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 22
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 198
    if-nez p1, :cond_0

    .line 199
    const-string v3, "TextScreenElement"

    const-string v20, "node is null"

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v3, Llewa/laml/ScreenElementLoadException;

    const-string v20, "node is null"

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Llewa/laml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 202
    :cond_0
    invoke-static/range {p1 .. p1}, Llewa/laml/util/TextFormatter;->fromElement(Lorg/w3c/dom/Element;)Llewa/laml/util/TextFormatter;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Llewa/laml/elements/TextScreenElement;->mFormatter:Llewa/laml/util/TextFormatter;

    .line 203
    const-string v3, "gradient"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 204
    .local v16, gradient:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 205
    const-string v3, "\\|"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 207
    .local v11, attrs:[Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/TextScreenElement;->scale(D)F

    move-result v4

    .line 208
    .local v4, x0:F
    const/4 v3, 0x1

    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/TextScreenElement;->scale(D)F

    move-result v5

    .line 209
    .local v5, y0:F
    const/4 v3, 0x2

    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/TextScreenElement;->scale(D)F

    move-result v6

    .line 210
    .local v6, x1:F
    const/4 v3, 0x3

    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/TextScreenElement;->scale(D)F

    move-result v7

    .line 211
    .local v7, y1:F
    const/4 v3, 0x4

    aget-object v3, v11, v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    .line 212
    .local v8, color0:I
    const/4 v3, 0x5

    aget-object v3, v11, v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    .line 213
    .local v9, color1:I
    sget-object v10, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 214
    .local v10, tileMode:Landroid/graphics/Shader$TileMode;
    array-length v3, v11

    const/16 v20, 0x7

    move/from16 v0, v20

    if-ne v3, v0, :cond_1

    .line 215
    const/4 v3, 0x6

    aget-object v17, v11, v3

    .line 216
    .local v17, mode:Ljava/lang/String;
    const-string v3, "clamp"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 217
    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 222
    .end local v17           #mode:Ljava/lang/String;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    new-instance v3, Landroid/graphics/LinearGradient;

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 226
    .end local v4           #x0:F
    .end local v5           #y0:F
    .end local v6           #x1:F
    .end local v7           #y1:F
    .end local v8           #color0:I
    .end local v9           #color1:I
    .end local v10           #tileMode:Landroid/graphics/Shader$TileMode;
    .end local v11           #attrs:[Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v3, "shadow"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 227
    .local v18, shadow:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 228
    const-string v3, "\\|"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 230
    .restart local v11       #attrs:[Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_1
    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/TextScreenElement;->scale(D)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Llewa/laml/elements/TextScreenElement;->mShadowRadius:F

    .line 231
    const/4 v3, 0x1

    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/TextScreenElement;->scale(D)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Llewa/laml/elements/TextScreenElement;->mShadowDx:F

    .line 232
    const/4 v3, 0x2

    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/TextScreenElement;->scale(D)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Llewa/laml/elements/TextScreenElement;->mShadowDy:F

    .line 233
    array-length v3, v11

    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v3, v0, :cond_7

    const/4 v3, 0x3

    aget-object v3, v11, v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    :goto_2
    move-object/from16 v0, p0

    iput v3, v0, Llewa/laml/elements/TextScreenElement;->mShadowColor:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 241
    .end local v11           #attrs:[Ljava/lang/String;
    :cond_3
    :goto_3
    const-string v3, "typeface"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 242
    .local v14, face:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 244
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Llewa/laml/elements/TextScreenElement;->extractTypeface(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 245
    .local v15, font:Ljava/io/File;
    if-eqz v15, :cond_4

    .line 246
    invoke-static {v15}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v19

    .line 247
    .local v19, typeface:Landroid/graphics/Typeface;
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 252
    .end local v15           #font:Ljava/io/File;
    .end local v19           #typeface:Landroid/graphics/Typeface;
    :cond_4
    :goto_4
    const-string v3, "size"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Llewa/laml/elements/TextScreenElement;->mSizeExpression:Llewa/laml/data/Expression;

    .line 253
    const-string v3, "marqueeSpeed"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v3, v1}, Llewa/laml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Llewa/laml/elements/TextScreenElement;->mMarqueeSpeed:I

    .line 254
    const-string v3, "bold"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 255
    .local v12, bold:Z
    const-string v3, "spacingMult"

    const/high16 v20, 0x3f80

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v3, v1}, Llewa/laml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Llewa/laml/elements/TextScreenElement;->mSpacingMult:F

    .line 256
    const-string v3, "spacingAdd"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v3, v1}, Llewa/laml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Llewa/laml/elements/TextScreenElement;->mSpacingAdd:F

    .line 257
    const-string v3, "marqueeGap"

    const/16 v20, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v3, v1}, Llewa/laml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Llewa/laml/elements/TextScreenElement;->mMarqueeGap:I

    .line 258
    const-string v3, "multiLine"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Llewa/laml/elements/TextScreenElement;->mMultiLine:Z

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    const/high16 v20, 0x4190

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v12}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 262
    invoke-static/range {p1 .. p1}, Llewa/laml/util/ColorParser;->fromElement(Lorg/w3c/dom/Element;)Llewa/laml/util/ColorParser;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Llewa/laml/elements/TextScreenElement;->mColorParser:Llewa/laml/util/ColorParser;

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    if-nez v3, :cond_5

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/TextScreenElement;->getColor()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 266
    :cond_5
    return-void

    .line 218
    .end local v12           #bold:Z
    .end local v14           #face:Ljava/lang/String;
    .end local v18           #shadow:Ljava/lang/String;
    .restart local v4       #x0:F
    .restart local v5       #y0:F
    .restart local v6       #x1:F
    .restart local v7       #y1:F
    .restart local v8       #color0:I
    .restart local v9       #color1:I
    .restart local v10       #tileMode:Landroid/graphics/Shader$TileMode;
    .restart local v11       #attrs:[Ljava/lang/String;
    .restart local v17       #mode:Ljava/lang/String;
    :cond_6
    :try_start_3
    const-string v3, "repeat"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    sget-object v10, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 233
    .end local v4           #x0:F
    .end local v5           #y0:F
    .end local v6           #x1:F
    .end local v7           #y1:F
    .end local v8           #color0:I
    .end local v9           #color1:I
    .end local v10           #tileMode:Landroid/graphics/Shader$TileMode;
    .end local v17           #mode:Ljava/lang/String;
    .restart local v18       #shadow:Ljava/lang/String;
    :cond_7
    const/high16 v3, 0x2000

    goto/16 :goto_2

    .line 234
    :catch_0
    move-exception v13

    .line 235
    .local v13, e:Ljava/lang/Exception;
    const/high16 v3, 0x4000

    move-object/from16 v0, p0

    iput v3, v0, Llewa/laml/elements/TextScreenElement;->mShadowRadius:F

    .line 236
    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iput v3, v0, Llewa/laml/elements/TextScreenElement;->mShadowDx:F

    .line 237
    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iput v3, v0, Llewa/laml/elements/TextScreenElement;->mShadowDy:F

    .line 238
    const/high16 v3, 0x2000

    move-object/from16 v0, p0

    iput v3, v0, Llewa/laml/elements/TextScreenElement;->mShadowColor:I

    goto/16 :goto_3

    .line 249
    .end local v11           #attrs:[Ljava/lang/String;
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v14       #face:Ljava/lang/String;
    :catch_1
    move-exception v3

    goto/16 :goto_4

    .line 223
    .end local v14           #face:Ljava/lang/String;
    .end local v18           #shadow:Ljava/lang/String;
    .restart local v11       #attrs:[Ljava/lang/String;
    :catch_2
    move-exception v3

    goto/16 :goto_1
.end method

.method protected onVisibilityChange(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 299
    invoke-super {p0, p1}, Llewa/laml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 300
    iget-boolean v0, p0, Llewa/laml/elements/TextScreenElement;->mShouldMarquee:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/high16 v0, 0x41f0

    :goto_0
    invoke-virtual {p0, v0}, Llewa/laml/elements/TextScreenElement;->requestFramerate(F)V

    .line 301
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 304
    iput-object p1, p0, Llewa/laml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public tick(J)V
    .locals 10
    .parameter "currentTime"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const v1, 0x7f7fffff

    const/4 v9, 0x0

    .line 308
    invoke-super {p0, p1, p2}, Llewa/laml/elements/AnimatedScreenElement;->tick(J)V

    .line 309
    invoke-virtual {p0}, Llewa/laml/elements/TextScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 311
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/laml/elements/TextScreenElement;->mShouldMarquee:Z

    .line 312
    invoke-virtual {p0}, Llewa/laml/elements/TextScreenElement;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 313
    iget-object v0, p0, Llewa/laml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    iput-object v2, p0, Llewa/laml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    goto :goto_0

    .line 316
    :cond_1
    invoke-direct {p0}, Llewa/laml/elements/TextScreenElement;->updateTextWidth()V

    .line 317
    invoke-virtual {p0}, Llewa/laml/elements/TextScreenElement;->getWidth()F

    move-result v8

    .line 318
    .local v8, width:F
    cmpl-float v0, v8, v9

    if-lez v0, :cond_7

    iget v0, p0, Llewa/laml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_7

    .line 319
    iget-boolean v0, p0, Llewa/laml/elements/TextScreenElement;->mMultiLine:Z

    if-eqz v0, :cond_4

    .line 320
    iget-object v0, p0, Llewa/laml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Llewa/laml/elements/TextScreenElement;->mPreText:Ljava/lang/String;

    iget-object v1, p0, Llewa/laml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 321
    :cond_2
    iget-object v0, p0, Llewa/laml/elements/TextScreenElement;->mText:Ljava/lang/String;

    iput-object v0, p0, Llewa/laml/elements/TextScreenElement;->mPreText:Ljava/lang/String;

    .line 322
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Llewa/laml/elements/TextScreenElement;->mText:Ljava/lang/String;

    iget-object v2, p0, Llewa/laml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    float-to-int v3, v8

    invoke-direct {p0}, Llewa/laml/elements/TextScreenElement;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v4

    iget v5, p0, Llewa/laml/elements/TextScreenElement;->mSpacingMult:F

    iget v6, p0, Llewa/laml/elements/TextScreenElement;->mSpacingAdd:F

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Llewa/laml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 324
    iget-boolean v0, p0, Llewa/laml/elements/TextScreenElement;->mHasName:Z

    if-eqz v0, :cond_3

    .line 325
    iget-object v0, p0, Llewa/laml/elements/TextScreenElement;->mTextHeightVar:Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    iget-object v2, p0, Llewa/laml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Llewa/laml/elements/TextScreenElement;->descale(F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 346
    :cond_3
    :goto_1
    iget-boolean v0, p0, Llewa/laml/elements/TextScreenElement;->mShouldMarquee:Z

    if-eqz v0, :cond_8

    const/high16 v0, 0x41f0

    :goto_2
    invoke-virtual {p0, v0}, Llewa/laml/elements/TextScreenElement;->requestFramerate(F)V

    goto :goto_0

    .line 328
    :cond_4
    iget v0, p0, Llewa/laml/elements/TextScreenElement;->mMarqueeSpeed:I

    if-lez v0, :cond_3

    .line 329
    iget v0, p0, Llewa/laml/elements/TextScreenElement;->mMarqueePos:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    .line 330
    const/high16 v0, 0x4248

    iput v0, p0, Llewa/laml/elements/TextScreenElement;->mMarqueePos:F

    .line 339
    :cond_5
    :goto_3
    iput-wide p1, p0, Llewa/laml/elements/TextScreenElement;->mPreviousTime:J

    .line 340
    iput-boolean v7, p0, Llewa/laml/elements/TextScreenElement;->mShouldMarquee:Z

    goto :goto_1

    .line 332
    :cond_6
    iget v0, p0, Llewa/laml/elements/TextScreenElement;->mMarqueePos:F

    iget v1, p0, Llewa/laml/elements/TextScreenElement;->mMarqueeSpeed:I

    int-to-long v1, v1

    iget-wide v3, p0, Llewa/laml/elements/TextScreenElement;->mPreviousTime:J

    sub-long v3, p1, v3

    mul-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Llewa/laml/elements/TextScreenElement;->mMarqueePos:F

    .line 335
    iget v0, p0, Llewa/laml/elements/TextScreenElement;->mMarqueePos:F

    iget v1, p0, Llewa/laml/elements/TextScreenElement;->mTextWidth:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 336
    iget v0, p0, Llewa/laml/elements/TextScreenElement;->mMarqueePos:F

    iget v1, p0, Llewa/laml/elements/TextScreenElement;->mTextWidth:F

    iget v2, p0, Llewa/laml/elements/TextScreenElement;->mTextSize:F

    iget v3, p0, Llewa/laml/elements/TextScreenElement;->mMarqueeGap:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Llewa/laml/elements/TextScreenElement;->mMarqueePos:F

    goto :goto_3

    .line 343
    :cond_7
    iput-object v2, p0, Llewa/laml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 344
    iput v1, p0, Llewa/laml/elements/TextScreenElement;->mMarqueePos:F

    goto :goto_1

    :cond_8
    move v0, v9

    .line 346
    goto :goto_2
.end method
