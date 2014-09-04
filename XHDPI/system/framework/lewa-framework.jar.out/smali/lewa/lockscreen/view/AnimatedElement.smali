.class public Llewa/lockscreen/view/AnimatedElement;
.super Ljava/lang/Object;
.source "AnimatedElement.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimatedElement"


# instance fields
.field private element:Lorg/w3c/dom/Element;

.field private expression:Llewa/lockscreen/view/Expression;

.field private mAlignAbsolute:Z

.field private mAlpha:Ljava/lang/String;

.field private mAlphas:Llewa/lockscreen/view/AlphaAnimation;

.field protected mAngle:Ljava/lang/String;

.field private mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/lockscreen/view/BaseAnimation;",
            ">;"
        }
    .end annotation
.end field

.field protected mBaseX:Ljava/lang/String;

.field protected mBaseY:Ljava/lang/String;

.field protected mCenterX:Ljava/lang/String;

.field protected mCenterY:Ljava/lang/String;

.field private mFrames:Llewa/lockscreen/view/FramesAnimation;

.field protected mHeight:Ljava/lang/String;

.field private mRotations:Llewa/lockscreen/view/RotationAnimation;

.field private mScales:Llewa/lockscreen/view/ScaleAnimation;

.field protected mSrc:Ljava/lang/String;

.field protected mSrcExpression:Ljava/lang/String;

.field protected mSrcId:Ljava/lang/String;

.field private mTranslates:Llewa/lockscreen/view/TranslateAnimation;

.field protected mWidth:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V
    .locals 1
    .parameter "element"
    .parameter "screenContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Llewa/lockscreen/view/AnimatedElement;->element:Lorg/w3c/dom/Element;

    .line 41
    new-instance v0, Llewa/lockscreen/view/Expression;

    invoke-direct {v0}, Llewa/lockscreen/view/Expression;-><init>()V

    iput-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    .line 42
    invoke-virtual {p0, p1}, Llewa/lockscreen/view/AnimatedElement;->load(Lorg/w3c/dom/Element;)V

    .line 43
    return-void
.end method

.method private loadAlphaAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 149
    const-string v1, "AlphaAnimation"

    invoke-static {p1, v1}, Llewa/lockscreen/view/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 150
    .local v0, childElement:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 151
    new-instance v1, Llewa/lockscreen/view/AlphaAnimation;

    invoke-direct {v1, v0}, Llewa/lockscreen/view/AlphaAnimation;-><init>(Lorg/w3c/dom/Element;)V

    iput-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mAlphas:Llewa/lockscreen/view/AlphaAnimation;

    .line 152
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->mAlphas:Llewa/lockscreen/view/AlphaAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    return-void
.end method

.method private loadFrameAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 113
    const-string v1, "FramesAnimation"

    invoke-static {p1, v1}, Llewa/lockscreen/view/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 114
    .local v0, childElement:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 115
    new-instance v1, Llewa/lockscreen/view/FramesAnimation;

    invoke-direct {v1, v0}, Llewa/lockscreen/view/FramesAnimation;-><init>(Lorg/w3c/dom/Element;)V

    iput-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mFrames:Llewa/lockscreen/view/FramesAnimation;

    .line 116
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->mFrames:Llewa/lockscreen/view/FramesAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    return-void
.end method

.method private loadRotationAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 131
    const-string v1, "RotationAnimation"

    invoke-static {p1, v1}, Llewa/lockscreen/view/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 132
    .local v0, childElement:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 133
    new-instance v1, Llewa/lockscreen/view/RotationAnimation;

    invoke-direct {v1, v0}, Llewa/lockscreen/view/RotationAnimation;-><init>(Lorg/w3c/dom/Element;)V

    iput-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mRotations:Llewa/lockscreen/view/RotationAnimation;

    .line 134
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->mRotations:Llewa/lockscreen/view/RotationAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    return-void
.end method

.method private loadScaleAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 140
    const-string v1, "ScaleAnimation"

    invoke-static {p1, v1}, Llewa/lockscreen/view/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 141
    .local v0, childElement:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 142
    new-instance v1, Llewa/lockscreen/view/ScaleAnimation;

    invoke-direct {v1, v0}, Llewa/lockscreen/view/ScaleAnimation;-><init>(Lorg/w3c/dom/Element;)V

    iput-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mScales:Llewa/lockscreen/view/ScaleAnimation;

    .line 143
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->mScales:Llewa/lockscreen/view/ScaleAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    return-void
.end method

.method private loadTranslateAnimations(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 122
    const-string v1, "TranslateAnimation"

    invoke-static {p1, v1}, Llewa/lockscreen/view/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 123
    .local v0, childElement:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 124
    new-instance v1, Llewa/lockscreen/view/TranslateAnimation;

    invoke-direct {v1, v0}, Llewa/lockscreen/view/TranslateAnimation;-><init>(Lorg/w3c/dom/Element;)V

    iput-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mTranslates:Llewa/lockscreen/view/TranslateAnimation;

    .line 125
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->mTranslates:Llewa/lockscreen/view/TranslateAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    .line 349
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 7

    .prologue
    .line 207
    const/16 v1, 0xff

    .line 208
    .local v1, alpha_exp:I
    const/16 v2, 0xff

    .line 209
    .local v2, alphas:I
    const/16 v0, 0xff

    .line 210
    .local v0, alpha:I
    iget-object v3, p0, Llewa/lockscreen/view/AnimatedElement;->mAlpha:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 212
    iget-object v3, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v4, "alpha"

    iget-object v5, p0, Llewa/lockscreen/view/AnimatedElement;->mAlpha:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Llewa/lockscreen/view/Expression;->putDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v3, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v4, "alpha"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Llewa/lockscreen/view/Expression;->getDou(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v1

    .line 221
    :goto_0
    iget-object v3, p0, Llewa/lockscreen/view/AnimatedElement;->mAlphas:Llewa/lockscreen/view/AlphaAnimation;

    if-eqz v3, :cond_2

    .line 222
    iget-object v3, p0, Llewa/lockscreen/view/AnimatedElement;->mAlphas:Llewa/lockscreen/view/AlphaAnimation;

    invoke-virtual {v3}, Llewa/lockscreen/view/AlphaAnimation;->getAlpha()I

    move-result v2

    .line 227
    :goto_1
    mul-int v3, v1, v2

    int-to-float v3, v3

    const/high16 v4, 0x437f

    div-float/2addr v3, v4

    float-to-int v0, v3

    .line 229
    return v0

    .line 215
    :cond_0
    iget-object v3, p0, Llewa/lockscreen/view/AnimatedElement;->mAlpha:Ljava/lang/String;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 216
    iget-object v3, p0, Llewa/lockscreen/view/AnimatedElement;->mAlpha:Ljava/lang/String;

    invoke-static {v3}, Llewa/lockscreen/view/Expression;->caculateInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 218
    :cond_1
    const/16 v1, 0xff

    goto :goto_0

    .line 224
    :cond_2
    const/16 v2, 0xff

    goto :goto_1
.end method

.method public getBitmap()Ljava/lang/String;
    .locals 7

    .prologue
    .line 317
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mSrc:Ljava/lang/String;

    .line 318
    .local v0, bitmapName:Ljava/lang/String;
    iget-object v3, p0, Llewa/lockscreen/view/AnimatedElement;->mFrames:Llewa/lockscreen/view/FramesAnimation;

    if-nez v3, :cond_1

    .line 319
    iget-object v3, p0, Llewa/lockscreen/view/AnimatedElement;->mSrcId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 320
    iget-object v3, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v4, "srcId"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Llewa/lockscreen/view/Expression;->getDou(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v2

    .line 321
    .local v2, srcid:I
    iget-object v3, p0, Llewa/lockscreen/view/AnimatedElement;->mSrc:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 322
    .local v1, pos:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mSrc:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mSrc:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 327
    .end local v1           #pos:I
    .end local v2           #srcid:I
    :goto_0
    return-object v3

    :cond_0
    move-object v3, v0

    .line 325
    goto :goto_0

    .line 327
    :cond_1
    iget-object v3, p0, Llewa/lockscreen/view/AnimatedElement;->mFrames:Llewa/lockscreen/view/FramesAnimation;

    invoke-virtual {v3}, Llewa/lockscreen/view/FramesAnimation;->getSrc()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getCenterX()F
    .locals 5

    .prologue
    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, centerX:F
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mCenterX:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v2, "centerX"

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Llewa/lockscreen/view/Expression;->getDou(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    int-to-float v0, v1

    .line 305
    :cond_0
    return v0
.end method

.method public getCenterY()F
    .locals 5

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, centerY:F
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mCenterY:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v2, "centerY"

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Llewa/lockscreen/view/Expression;->getDou(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    int-to-float v0, v1

    .line 313
    :cond_0
    return v0
.end method

.method public getHeight()I
    .locals 5

    .prologue
    .line 267
    const/4 v0, -0x1

    .line 268
    .local v0, height:I
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mHeight:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 269
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v2, "h"

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Llewa/lockscreen/view/Expression;->getDou(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 275
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mHeight:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 271
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mHeight:Ljava/lang/String;

    invoke-static {v1}, Llewa/lockscreen/view/Expression;->caculateInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 272
    :cond_2
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mScales:Llewa/lockscreen/view/ScaleAnimation;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mScales:Llewa/lockscreen/view/ScaleAnimation;

    invoke-virtual {v1}, Llewa/lockscreen/view/ScaleAnimation;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 2

    .prologue
    .line 256
    const/4 v0, -0x1

    .line 257
    .local v0, maxHeight:I
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mScales:Llewa/lockscreen/view/ScaleAnimation;

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mScales:Llewa/lockscreen/view/ScaleAnimation;

    invoke-virtual {v1}, Llewa/lockscreen/view/ScaleAnimation;->getMaxHeight()I

    move-result v0

    .line 263
    :cond_0
    :goto_0
    return v0

    .line 260
    :cond_1
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mHeight:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public getMaxWidth()I
    .locals 2

    .prologue
    .line 233
    const/4 v0, -0x1

    .line 234
    .local v0, maxWidth:I
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mScales:Llewa/lockscreen/view/ScaleAnimation;

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mScales:Llewa/lockscreen/view/ScaleAnimation;

    invoke-virtual {v1}, Llewa/lockscreen/view/ScaleAnimation;->getMaxWidth()I

    move-result v0

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 237
    :cond_1
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mWidth:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public getRotationAngle()F
    .locals 6

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, angleEx:F
    const/4 v1, 0x0

    .line 283
    .local v1, angleRo:F
    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->mAngle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v3, "angle"

    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mAngle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Llewa/lockscreen/view/Expression;->putDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v3, "angle"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Llewa/lockscreen/view/Expression;->getDou(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    int-to-float v0, v2

    .line 292
    :goto_0
    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->mRotations:Llewa/lockscreen/view/RotationAnimation;

    if-eqz v2, :cond_1

    .line 293
    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->mRotations:Llewa/lockscreen/view/RotationAnimation;

    invoke-virtual {v2}, Llewa/lockscreen/view/RotationAnimation;->getAngle()I

    move-result v2

    int-to-float v1, v2

    .line 297
    :goto_1
    add-float v2, v0, v1

    return v2

    .line 290
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 295
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getWidth()I
    .locals 5

    .prologue
    .line 244
    const/4 v0, -0x1

    .line 245
    .local v0, width:I
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mWidth:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 246
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v2, "w"

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Llewa/lockscreen/view/Expression;->getDou(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 252
    :cond_0
    :goto_0
    return v0

    .line 247
    :cond_1
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mWidth:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 248
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mWidth:Ljava/lang/String;

    invoke-static {v1}, Llewa/lockscreen/view/Expression;->caculateInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 249
    :cond_2
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mScales:Llewa/lockscreen/view/ScaleAnimation;

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Llewa/lockscreen/view/AnimatedElement;->mScales:Llewa/lockscreen/view/ScaleAnimation;

    invoke-virtual {v1}, Llewa/lockscreen/view/ScaleAnimation;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getX()I
    .locals 9

    .prologue
    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, mX:I
    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mBaseX:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mBaseX:Ljava/lang/String;

    const-string v5, "move_x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_2

    .line 160
    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mBaseX:Ljava/lang/String;

    const-string v5, ".move_x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 161
    .local v2, position:I
    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mBaseX:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, subStr:Ljava/lang/String;
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, name:Ljava/lang/String;
    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v5, "x"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Llewa/lockscreen/view/Expression;->getDou(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    const-string v5, "move_x"

    const-string v6, "0"

    invoke-static {v1, v5, v6}, Llewa/lockscreen/view/Expression;->getRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int v0, v4, v5

    .line 170
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #position:I
    .end local v3           #subStr:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mFrames:Llewa/lockscreen/view/FramesAnimation;

    if-eqz v4, :cond_0

    .line 171
    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mFrames:Llewa/lockscreen/view/FramesAnimation;

    invoke-virtual {v4}, Llewa/lockscreen/view/FramesAnimation;->getX()I

    move-result v4

    add-int/2addr v0, v4

    .line 174
    :cond_0
    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mTranslates:Llewa/lockscreen/view/TranslateAnimation;

    if-eqz v4, :cond_1

    .line 175
    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mTranslates:Llewa/lockscreen/view/TranslateAnimation;

    invoke-virtual {v4}, Llewa/lockscreen/view/TranslateAnimation;->getX()I

    move-result v4

    add-int/2addr v0, v4

    .line 178
    :cond_1
    return v0

    .line 164
    :cond_2
    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mBaseX:Ljava/lang/String;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_3

    .line 165
    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mBaseX:Ljava/lang/String;

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->caculateInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 167
    :cond_3
    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v5, "x"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Llewa/lockscreen/view/Expression;->getDou(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getY()I
    .locals 9

    .prologue
    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    .line 183
    const/4 v0, 0x0

    .line 185
    .local v0, mY:I
    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mBaseY:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mBaseY:Ljava/lang/String;

    const-string v5, "move_y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_2

    .line 186
    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mBaseY:Ljava/lang/String;

    const-string v5, ".move_y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 187
    .local v2, position:I
    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mBaseY:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, subStr:Ljava/lang/String;
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, name:Ljava/lang/String;
    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v5, "y"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Llewa/lockscreen/view/Expression;->getDou(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    const-string v5, "move_y"

    const-string v6, "0"

    invoke-static {v1, v5, v6}, Llewa/lockscreen/view/Expression;->getRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int v0, v4, v5

    .line 195
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #position:I
    .end local v3           #subStr:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mFrames:Llewa/lockscreen/view/FramesAnimation;

    if-eqz v4, :cond_0

    .line 196
    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mFrames:Llewa/lockscreen/view/FramesAnimation;

    invoke-virtual {v4}, Llewa/lockscreen/view/FramesAnimation;->getY()I

    move-result v4

    add-int/2addr v0, v4

    .line 198
    :cond_0
    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mTranslates:Llewa/lockscreen/view/TranslateAnimation;

    if-eqz v4, :cond_1

    .line 199
    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mTranslates:Llewa/lockscreen/view/TranslateAnimation;

    invoke-virtual {v4}, Llewa/lockscreen/view/TranslateAnimation;->getY()I

    move-result v4

    add-int/2addr v0, v4

    .line 202
    :cond_1
    return v0

    .line 190
    :cond_2
    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mBaseY:Ljava/lang/String;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_3

    .line 191
    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->mBaseY:Ljava/lang/String;

    invoke-static {v4}, Llewa/lockscreen/view/Expression;->caculateInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 193
    :cond_3
    iget-object v4, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v5, "y"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Llewa/lockscreen/view/Expression;->getDou(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 338
    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 339
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 340
    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/lockscreen/view/BaseAnimation;

    invoke-virtual {v2}, Llewa/lockscreen/view/BaseAnimation;->init()V

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_0
    return-void
.end method

.method public isAlignAbsolute()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Llewa/lockscreen/view/AnimatedElement;->mAlignAbsolute:Z

    return v0
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    const-string v0, "AnimatedElement"

    const-string v1, "node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Llewa/lockscreen/view/DomParseException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Llewa/lockscreen/view/DomParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    const-string v0, "x"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mBaseX:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mBaseX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v1, "x"

    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->mBaseX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Llewa/lockscreen/view/Expression;->putDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_1
    const-string v0, "y"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mBaseY:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mBaseY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 60
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v1, "y"

    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->mBaseY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Llewa/lockscreen/view/Expression;->putDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_2
    const-string v0, "w"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mWidth:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mWidth:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 65
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v1, "w"

    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->mWidth:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Llewa/lockscreen/view/Expression;->putDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_3
    const-string v0, "h"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mHeight:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mHeight:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 70
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v1, "h"

    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->mHeight:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Llewa/lockscreen/view/Expression;->putDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_4
    const-string v0, "angle"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mAngle:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mAngle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 75
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v1, "angle"

    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->mAngle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Llewa/lockscreen/view/Expression;->putDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_5
    const-string v0, "centerX"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mCenterX:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mCenterX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 80
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v1, "centerX"

    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->mCenterX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Llewa/lockscreen/view/Expression;->putDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_6
    const-string v0, "centerY"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mCenterY:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mCenterY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 85
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v1, "centerY"

    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->mCenterY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Llewa/lockscreen/view/Expression;->putDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_7
    const-string v0, "alpha"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mAlpha:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mAlpha:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 90
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v1, "alpha"

    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->mAlpha:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Llewa/lockscreen/view/Expression;->putDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_8
    const-string v0, "srcid"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mSrcId:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mSrcId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 95
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v1, "srcId"

    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->mSrcId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Llewa/lockscreen/view/Expression;->putDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_9
    const-string v0, "src"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/lockscreen/view/AnimatedElement;->mSrc:Ljava/lang/String;

    .line 100
    const-string v0, "align"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "absolute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/lockscreen/view/AnimatedElement;->mAlignAbsolute:Z

    .line 104
    :cond_a
    invoke-direct {p0, p1}, Llewa/lockscreen/view/AnimatedElement;->loadFrameAnimations(Lorg/w3c/dom/Element;)V

    .line 105
    invoke-direct {p0, p1}, Llewa/lockscreen/view/AnimatedElement;->loadTranslateAnimations(Lorg/w3c/dom/Element;)V

    .line 106
    invoke-direct {p0, p1}, Llewa/lockscreen/view/AnimatedElement;->loadRotationAnimations(Lorg/w3c/dom/Element;)V

    .line 107
    invoke-direct {p0, p1}, Llewa/lockscreen/view/AnimatedElement;->loadScaleAnimations(Lorg/w3c/dom/Element;)V

    .line 108
    invoke-direct {p0, p1}, Llewa/lockscreen/view/AnimatedElement;->loadAlphaAnimations(Lorg/w3c/dom/Element;)V

    .line 109
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 352
    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 353
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 354
    iget-object v2, p0, Llewa/lockscreen/view/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/lockscreen/view/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Llewa/lockscreen/view/BaseAnimation;->tick(J)V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_0
    return-void
.end method
