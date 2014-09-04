.class public Llewa/laml/elements/ImageScreenElement;
.super Llewa/laml/elements/AnimatedScreenElement;
.source "ImageScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/elements/ImageScreenElement$1;,
        Llewa/laml/elements/ImageScreenElement$pair;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImageScreenElement"

.field public static final MASK_TAG_NAME:Ljava/lang/String; = "Mask"

.field private static final SCALE_TYPE_CROP_CENTER:I = 0x1

.field public static final TAG_NAME:Ljava/lang/String; = "Image"

.field private static final VAR_BMP_HEIGHT:Ljava/lang/String; = "bmp_height"

.field private static final VAR_BMP_WIDTH:Ljava/lang/String; = "bmp_width"


# instance fields
.field private mAniHeight:F

.field private mAniWidth:F

.field private mAntiAlias:Z

.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapProvider:Llewa/laml/elements/BitmapProvider;

.field protected mBlurMaskColors:[I

.field protected mBlurRadius:I

.field protected mBluredBitmap:Landroid/graphics/Bitmap;

.field private mBmpHeight:F

.field private mBmpSizeHeightVar:Llewa/laml/util/IndexedNumberVariable;

.field private mBmpSizeWidthVar:Llewa/laml/util/IndexedNumberVariable;

.field private mBmpWidth:F

.field private mBufferCanvas:Landroid/graphics/Canvas;

.field protected mCoverColors:[I

.field protected mCurrentBitmap:Landroid/graphics/Bitmap;

.field private mDesRect:Landroid/graphics/Rect;

.field private mHeight:F

.field private mKey:Ljava/lang/String;

.field private mMaskBuffer:Landroid/graphics/Bitmap;

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/animation/AnimatedElement;",
            ">;"
        }
    .end annotation
.end field

.field protected mPaint:Landroid/graphics/Paint;

.field private mRotateXYpair:Llewa/laml/elements/ImageScreenElement$pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llewa/laml/elements/ImageScreenElement$pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleType:I

.field private mSrcH:Llewa/laml/data/Expression;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mSrcW:Llewa/laml/data/Expression;

.field private mSrcX:Llewa/laml/data/Expression;

.field private mSrcY:Llewa/laml/data/Expression;

.field private mWidth:F

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 7
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 99
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 35
    iput-boolean v6, p0, Llewa/laml/elements/ImageScreenElement;->mAntiAlias:Z

    .line 55
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Llewa/laml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 65
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Llewa/laml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    .line 69
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Llewa/laml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 100
    invoke-virtual {p0, p1}, Llewa/laml/elements/ImageScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 101
    iget-object v3, p0, Llewa/laml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-boolean v4, p0, Llewa/laml/elements/ImageScreenElement;->mAntiAlias:Z

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 102
    iget-object v3, p0, Llewa/laml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 103
    iget-object v3, p0, Llewa/laml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    iget-boolean v4, p0, Llewa/laml/elements/ImageScreenElement;->mAntiAlias:Z

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 104
    const-string v3, "srcX"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Llewa/laml/elements/ImageScreenElement;->mSrcX:Llewa/laml/data/Expression;

    .line 105
    const-string v3, "srcY"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Llewa/laml/elements/ImageScreenElement;->mSrcY:Llewa/laml/data/Expression;

    .line 106
    const-string v3, "srcW"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Llewa/laml/elements/ImageScreenElement;->mSrcW:Llewa/laml/data/Expression;

    .line 107
    const-string v3, "srcH"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Llewa/laml/elements/ImageScreenElement;->mSrcH:Llewa/laml/data/Expression;

    .line 108
    iget-object v3, p0, Llewa/laml/elements/ImageScreenElement;->mSrcX:Llewa/laml/data/Expression;

    if-eqz v3, :cond_0

    iget-object v3, p0, Llewa/laml/elements/ImageScreenElement;->mSrcY:Llewa/laml/data/Expression;

    if-eqz v3, :cond_0

    iget-object v3, p0, Llewa/laml/elements/ImageScreenElement;->mSrcW:Llewa/laml/data/Expression;

    if-eqz v3, :cond_0

    iget-object v3, p0, Llewa/laml/elements/ImageScreenElement;->mSrcH:Llewa/laml/data/Expression;

    if-eqz v3, :cond_0

    .line 109
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Llewa/laml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 110
    :cond_0
    const-string v3, "useVirtualScreen"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 111
    .local v2, useVirtualScreen:Z
    const-string v3, "srcType"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, srcType:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 113
    const-string v1, "VirtualScreen"

    .line 114
    :cond_1
    const-string v3, "scaleType"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, scaleType:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v3, "centerCrop"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    iput v6, p0, Llewa/laml/elements/ImageScreenElement;->mScaleType:I

    .line 118
    :cond_2
    invoke-static {p2, v1}, Llewa/laml/elements/BitmapProvider;->create(Llewa/laml/ScreenElementRoot;Ljava/lang/String;)Llewa/laml/elements/BitmapProvider;

    move-result-object v3

    iput-object v3, p0, Llewa/laml/elements/ImageScreenElement;->mBitmapProvider:Llewa/laml/elements/BitmapProvider;

    .line 119
    iget-boolean v3, p0, Llewa/laml/elements/ImageScreenElement;->mHasName:Z

    if-eqz v3, :cond_3

    .line 120
    new-instance v3, Llewa/laml/util/IndexedNumberVariable;

    iget-object v4, p0, Llewa/laml/elements/ImageScreenElement;->mName:Ljava/lang/String;

    const-string v5, "bmp_width"

    invoke-virtual {p0}, Llewa/laml/elements/ImageScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v3, p0, Llewa/laml/elements/ImageScreenElement;->mBmpSizeWidthVar:Llewa/laml/util/IndexedNumberVariable;

    .line 121
    new-instance v3, Llewa/laml/util/IndexedNumberVariable;

    iget-object v4, p0, Llewa/laml/elements/ImageScreenElement;->mName:Ljava/lang/String;

    const-string v5, "bmp_height"

    invoke-virtual {p0}, Llewa/laml/elements/ImageScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v3, p0, Llewa/laml/elements/ImageScreenElement;->mBmpSizeHeightVar:Llewa/laml/util/IndexedNumberVariable;

    .line 123
    :cond_3
    return-void
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Llewa/laml/elements/ImageScreenElement;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 127
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/ImageScreenElement;->mKey:Ljava/lang/String;

    .line 128
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/ImageScreenElement;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method private loadMask(Lorg/w3c/dom/Element;)V
    .locals 7
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v3, p0, Llewa/laml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 133
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Llewa/laml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 134
    :cond_0
    iget-object v3, p0, Llewa/laml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 135
    const-string v3, "Mask"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 136
    .local v2, images:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 137
    iget-object v4, p0, Llewa/laml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    new-instance v5, Llewa/laml/animation/AnimatedElement;

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    iget-object v6, p0, Llewa/laml/elements/ImageScreenElement;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-direct {v5, v3, v6}, Llewa/laml/animation/AnimatedElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_1
    return-void
.end method

.method private renderWithMask(Landroid/graphics/Canvas;Llewa/laml/animation/AnimatedElement;II)V
    .locals 44
    .parameter "bufferCanvas"
    .parameter "mask"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 143
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/ImageScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    invoke-virtual/range {p2 .. p2}, Llewa/laml/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Llewa/laml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v37

    .line 144
    .local v37, rawMask:Landroid/graphics/Bitmap;
    if-nez v37, :cond_0

    .line 191
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual/range {p2 .. p2}, Llewa/laml/animation/AnimatedElement;->getX()F

    move-result v2

    float-to-double v9, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Llewa/laml/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v33, v0

    .line 147
    .local v33, maskX:D
    invoke-virtual/range {p2 .. p2}, Llewa/laml/animation/AnimatedElement;->getY()F

    move-result v2

    float-to-double v9, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Llewa/laml/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v35, v0

    .line 148
    .local v35, maskY:D
    invoke-virtual/range {p2 .. p2}, Llewa/laml/animation/AnimatedElement;->getRotationAngle()F

    move-result v32

    .line 149
    .local v32, maskAngle:F
    invoke-virtual/range {p2 .. p2}, Llewa/laml/animation/AnimatedElement;->isAlignAbsolute()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/ImageScreenElement;->getRotation()F

    move-result v17

    .line 151
    .local v17, angle:F
    const/4 v2, 0x0

    cmpl-float v2, v17, v2

    if-nez v2, :cond_4

    .line 152
    move/from16 v0, p3

    int-to-double v9, v0

    sub-double v33, v33, v9

    .line 153
    move/from16 v0, p4

    int-to-double v9, v0

    sub-double v35, v35, v9

    .line 175
    .end local v17           #angle:F
    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Llewa/laml/animation/AnimatedElement;->getPivotX()F

    move-result v2

    float-to-double v9, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Llewa/laml/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v9, v2

    add-double v9, v9, v33

    double-to-float v2, v9

    invoke-virtual/range {p2 .. p2}, Llewa/laml/animation/AnimatedElement;->getPivotY()F

    move-result v9

    float-to-double v9, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Llewa/laml/elements/ImageScreenElement;->scale(D)F

    move-result v9

    float-to-double v9, v9

    add-double v9, v9, v35

    double-to-float v9, v9

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1, v2, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 178
    move-wide/from16 v0, v33

    double-to-int v0, v0

    move/from16 v28, v0

    .line 179
    .local v28, i:I
    move-wide/from16 v0, v35

    double-to-int v0, v0

    move/from16 v29, v0

    .line 180
    .local v29, j:I
    invoke-virtual/range {p2 .. p2}, Llewa/laml/animation/AnimatedElement;->getWidth()F

    move-result v2

    float-to-double v9, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Llewa/laml/elements/ImageScreenElement;->scale(D)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v30

    .line 181
    .local v30, k:I
    if-gez v30, :cond_2

    .line 182
    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v30

    .line 183
    :cond_2
    invoke-virtual/range {p2 .. p2}, Llewa/laml/animation/AnimatedElement;->getHeight()F

    move-result v2

    float-to-double v9, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Llewa/laml/elements/ImageScreenElement;->scale(D)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v31

    .line 184
    .local v31, l:I
    if-gez v31, :cond_3

    .line 185
    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v31

    .line 186
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    add-int v9, v28, v30

    add-int v10, v29, v31

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v2, v0, v1, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Llewa/laml/animation/AnimatedElement;->getAlpha()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 189
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Llewa/laml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Llewa/laml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 155
    .end local v28           #i:I
    .end local v29           #j:I
    .end local v30           #k:I
    .end local v31           #l:I
    .restart local v17       #angle:F
    :cond_4
    sub-float v32, v32, v17

    .line 156
    const-wide v9, 0x400921fb54442d18L

    move/from16 v0, v17

    float-to-double v11, v0

    mul-double/2addr v9, v11

    const-wide v11, 0x4066800000000000L

    div-double v7, v9, v11

    .line 157
    .local v7, angleA:D
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/ImageScreenElement;->getPivotX()F

    move-result v2

    float-to-double v3, v2

    .line 158
    .local v3, cx:D
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/ImageScreenElement;->getPivotY()F

    move-result v2

    float-to-double v5, v2

    .line 159
    .local v5, cy:D
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/ImageScreenElement;->mRotateXYpair:Llewa/laml/elements/ImageScreenElement$pair;

    if-nez v2, :cond_5

    .line 160
    new-instance v2, Llewa/laml/elements/ImageScreenElement$pair;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, Llewa/laml/elements/ImageScreenElement$pair;-><init>(Llewa/laml/elements/ImageScreenElement$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Llewa/laml/elements/ImageScreenElement;->mRotateXYpair:Llewa/laml/elements/ImageScreenElement$pair;

    .line 161
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Llewa/laml/elements/ImageScreenElement;->mRotateXYpair:Llewa/laml/elements/ImageScreenElement$pair;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Llewa/laml/elements/ImageScreenElement;->rotateXY(DDDLlewa/laml/elements/ImageScreenElement$pair;)V

    .line 162
    move/from16 v0, p3

    int-to-double v9, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/ImageScreenElement;->mRotateXYpair:Llewa/laml/elements/ImageScreenElement$pair;

    iget-object v2, v2, Llewa/laml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    add-double v38, v9, v11

    .line 163
    .local v38, rx:D
    move/from16 v0, p4

    int-to-double v9, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/ImageScreenElement;->mRotateXYpair:Llewa/laml/elements/ImageScreenElement$pair;

    iget-object v2, v2, Llewa/laml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    add-double v40, v9, v11

    .line 164
    .local v40, ry:D
    invoke-virtual/range {p2 .. p2}, Llewa/laml/animation/AnimatedElement;->getPivotX()F

    move-result v2

    float-to-double v10, v2

    invoke-virtual/range {p2 .. p2}, Llewa/laml/animation/AnimatedElement;->getPivotY()F

    move-result v2

    float-to-double v12, v2

    const-wide v14, 0x400921fb54442d18L

    invoke-virtual/range {p2 .. p2}, Llewa/laml/animation/AnimatedElement;->getRotationAngle()F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v42, v0

    mul-double v14, v14, v42

    const-wide v42, 0x4066800000000000L

    div-double v14, v14, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mRotateXYpair:Llewa/laml/elements/ImageScreenElement$pair;

    move-object/from16 v16, v0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v16}, Llewa/laml/elements/ImageScreenElement;->rotateXY(DDDLlewa/laml/elements/ImageScreenElement$pair;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/ImageScreenElement;->mRotateXYpair:Llewa/laml/elements/ImageScreenElement$pair;

    iget-object v2, v2, Llewa/laml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Llewa/laml/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v9, v2

    add-double v9, v9, v33

    sub-double v24, v9, v38

    .line 167
    .local v24, dx:D
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/ImageScreenElement;->mRotateXYpair:Llewa/laml/elements/ImageScreenElement$pair;

    iget-object v2, v2, Llewa/laml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Llewa/laml/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-double v9, v2

    add-double v9, v9, v35

    sub-double v26, v9, v40

    .line 168
    .local v26, dy:D
    mul-double v9, v24, v24

    mul-double v11, v26, v26

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    .line 169
    .local v22, dm:D
    div-double v9, v24, v22

    invoke-static {v9, v10}, Ljava/lang/Math;->asin(D)D

    move-result-wide v18

    .line 170
    .local v18, angleB:D
    const-wide/16 v9, 0x0

    cmpl-double v2, v26, v9

    if-lez v2, :cond_6

    add-double v20, v7, v18

    .line 171
    .local v20, angleC:D
    :goto_2
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v33, v22, v9

    .line 172
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v35, v22, v9

    goto/16 :goto_1

    .line 170
    .end local v20           #angleC:D
    :cond_6
    const-wide v9, 0x400921fb54442d18L

    add-double/2addr v9, v7

    sub-double v20, v9, v18

    goto :goto_2
.end method

.method private rotateXY(DDDLlewa/laml/elements/ImageScreenElement$pair;)V
    .locals 11
    .parameter "centerX"
    .parameter "centerY"
    .parameter "angle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD",
            "Llewa/laml/elements/ImageScreenElement$pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p7, pr:Llewa/laml/elements/ImageScreenElement$pair;,"Llewa/laml/elements/ImageScreenElement$pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    mul-double v7, p1, p1

    mul-double v9, p3, p3

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 195
    .local v5, cm:D
    const-wide/16 v7, 0x0

    cmpl-double v7, v5, v7

    if-lez v7, :cond_0

    .line 196
    div-double v7, p1, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    .line 197
    .local v1, angle1:D
    const-wide v7, 0x400921fb54442d18L

    sub-double/2addr v7, v1

    sub-double v3, v7, p5

    .line 198
    .local v3, angle2:D
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    add-double/2addr v7, p1

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p7

    iput-object v7, v0, Llewa/laml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 199
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    sub-double v7, p3, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p7

    iput-object v7, v0, Llewa/laml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    .line 203
    .end local v1           #angle1:D
    .end local v3           #angle2:D
    :goto_0
    return-void

    .line 201
    :cond_0
    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p7

    iput-object v7, v0, Llewa/laml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    move-object/from16 v0, p7

    iput-object v7, v0, Llewa/laml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateBitmap()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 206
    invoke-virtual {p0}, Llewa/laml/elements/ImageScreenElement;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 207
    iget-boolean v0, p0, Llewa/laml/elements/ImageScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Llewa/laml/elements/ImageScreenElement;->mBmpSizeWidthVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Llewa/laml/elements/ImageScreenElement;->getBitmapWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Llewa/laml/elements/ImageScreenElement;->descale(F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 209
    iget-object v0, p0, Llewa/laml/elements/ImageScreenElement;->mBmpSizeHeightVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Llewa/laml/elements/ImageScreenElement;->getBitmapHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Llewa/laml/elements/ImageScreenElement;->descale(F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 211
    :cond_0
    invoke-super {p0}, Llewa/laml/elements/AnimatedScreenElement;->getWidth()F

    move-result v0

    iput v0, p0, Llewa/laml/elements/ImageScreenElement;->mAniWidth:F

    .line 212
    invoke-virtual {p0}, Llewa/laml/elements/ImageScreenElement;->getBitmapWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Llewa/laml/elements/ImageScreenElement;->mBmpWidth:F

    .line 213
    iget v0, p0, Llewa/laml/elements/ImageScreenElement;->mAniWidth:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    iget v0, p0, Llewa/laml/elements/ImageScreenElement;->mAniWidth:F

    :goto_0
    iput v0, p0, Llewa/laml/elements/ImageScreenElement;->mWidth:F

    .line 214
    invoke-super {p0}, Llewa/laml/elements/AnimatedScreenElement;->getHeight()F

    move-result v0

    iput v0, p0, Llewa/laml/elements/ImageScreenElement;->mAniHeight:F

    .line 215
    invoke-virtual {p0}, Llewa/laml/elements/ImageScreenElement;->getBitmapHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Llewa/laml/elements/ImageScreenElement;->mBmpHeight:F

    .line 216
    iget v0, p0, Llewa/laml/elements/ImageScreenElement;->mAniHeight:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    iget v0, p0, Llewa/laml/elements/ImageScreenElement;->mAniHeight:F

    :goto_1
    iput v0, p0, Llewa/laml/elements/ImageScreenElement;->mHeight:F

    .line 217
    invoke-super {p0}, Llewa/laml/elements/AnimatedScreenElement;->getX()F

    move-result v0

    iput v0, p0, Llewa/laml/elements/ImageScreenElement;->mX:F

    .line 218
    invoke-super {p0}, Llewa/laml/elements/AnimatedScreenElement;->getY()F

    move-result v0

    iput v0, p0, Llewa/laml/elements/ImageScreenElement;->mY:F

    .line 219
    return-void

    .line 213
    :cond_1
    iget v0, p0, Llewa/laml/elements/ImageScreenElement;->mBmpWidth:F

    goto :goto_0

    .line 216
    :cond_2
    iget v0, p0, Llewa/laml/elements/ImageScreenElement;->mBmpHeight:F

    goto :goto_1
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 29
    .parameter "c"

    .prologue
    .line 222
    move-object/from16 v0, p0

    iget-object v8, v0, Llewa/laml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 223
    .local v8, bmp:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_0

    .line 224
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/ImageScreenElement;->getAlpha()I

    move-result v6

    .line 225
    .local v6, alpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v16

    .line 227
    .local v16, oldDensity:I
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mWidth:F

    move/from16 v24, v0

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mHeight:F

    move/from16 v24, v0

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-eqz v24, :cond_0

    .line 229
    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mWidth:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/ImageScreenElement;->getLeft(FF)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    .line 230
    .local v22, x:I
    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mY:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mHeight:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/ImageScreenElement;->getTop(FF)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    .line 231
    .local v23, y:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-nez v24, :cond_8

    .line 233
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v24

    if-eqz v24, :cond_2

    .line 234
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/ImageScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Llewa/laml/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Llewa/laml/ResourceManager;->getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;

    move-result-object v15

    .line 235
    .local v15, np:Landroid/graphics/NinePatch;
    if-eqz v15, :cond_1

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mWidth:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mHeight:F

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v15, v0, v1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 313
    .end local v15           #np:Landroid/graphics/NinePatch;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 314
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 317
    .end local v6           #alpha:I
    .end local v16           #oldDensity:I
    .end local v22           #x:I
    .end local v23           #y:I
    :cond_0
    return-void

    .line 240
    .restart local v6       #alpha:I
    .restart local v15       #np:Landroid/graphics/NinePatch;
    .restart local v16       #oldDensity:I
    .restart local v22       #x:I
    .restart local v23       #y:I
    :cond_1
    const-string v24, "ImageScreenElement"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "the image contains ninepatch chunk but couldn\'t get NinePatch object: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Llewa/laml/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    .end local v15           #np:Landroid/graphics/NinePatch;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mAniWidth:F

    move/from16 v24, v0

    const/16 v25, 0x0

    cmpg-float v24, v24, v25

    if-gtz v24, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mAniHeight:F

    move/from16 v24, v0

    const/16 v25, 0x0

    cmpg-float v24, v24, v25

    if-gtz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    if-nez v24, :cond_3

    .line 245
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 247
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mScaleType:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 248
    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mBmpWidth:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mBmpHeight:F

    move/from16 v25, v0

    cmpg-float v24, v24, v25

    if-gez v24, :cond_5

    .line 249
    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mBmpWidth:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mBmpHeight:F

    move/from16 v25, v0

    div-float v21, v24, v25

    .line 250
    .local v21, scale:F
    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mHeight:F

    move/from16 v24, v0

    mul-float v24, v24, v21

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Llewa/laml/elements/ImageScreenElement;->mWidth:F

    .line 251
    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mWidth:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/ImageScreenElement;->getLeft(FF)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    .line 257
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mWidth:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mHeight:F

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcX:Llewa/laml/data/Expression;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Llewa/laml/elements/ImageScreenElement;->evaluate(Llewa/laml/data/Expression;)D

    move-result-wide v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/ImageScreenElement;->scale(D)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v19, v0

    .line 260
    .local v19, sX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcY:Llewa/laml/data/Expression;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Llewa/laml/elements/ImageScreenElement;->evaluate(Llewa/laml/data/Expression;)D

    move-result-wide v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/ImageScreenElement;->scale(D)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v20, v0

    .line 261
    .local v20, sY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcW:Llewa/laml/data/Expression;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Llewa/laml/elements/ImageScreenElement;->evaluate(Llewa/laml/data/Expression;)D

    move-result-wide v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/ImageScreenElement;->scale(D)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v18, v0

    .line 262
    .local v18, sW:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcH:Llewa/laml/data/Expression;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Llewa/laml/elements/ImageScreenElement;->evaluate(Llewa/laml/data/Expression;)D

    move-result-wide v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/ImageScreenElement;->scale(D)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v17, v0

    .line 263
    .local v17, sH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    add-int v25, v19, v18

    add-int v26, v20, v17

    move-object/from16 v0, v24

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 265
    .end local v17           #sH:I
    .end local v18           #sW:I
    .end local v19           #sX:I
    .end local v20           #sY:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 253
    .end local v21           #scale:F
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mBmpHeight:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mBmpWidth:F

    move/from16 v25, v0

    div-float v21, v24, v25

    .line 254
    .restart local v21       #scale:F
    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mWidth:F

    move/from16 v24, v0

    mul-float v24, v24, v21

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Llewa/laml/elements/ImageScreenElement;->mHeight:F

    .line 255
    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mY:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mHeight:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/ImageScreenElement;->getTop(FF)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    goto/16 :goto_1

    .line 267
    .end local v21           #scale:F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mWidth:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mHeight:F

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcX:Llewa/laml/data/Expression;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Llewa/laml/elements/ImageScreenElement;->evaluate(Llewa/laml/data/Expression;)D

    move-result-wide v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/ImageScreenElement;->scale(D)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v19, v0

    .line 270
    .restart local v19       #sX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcY:Llewa/laml/data/Expression;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Llewa/laml/elements/ImageScreenElement;->evaluate(Llewa/laml/data/Expression;)D

    move-result-wide v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/ImageScreenElement;->scale(D)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v20, v0

    .line 271
    .restart local v20       #sY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcW:Llewa/laml/data/Expression;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Llewa/laml/elements/ImageScreenElement;->evaluate(Llewa/laml/data/Expression;)D

    move-result-wide v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/ImageScreenElement;->scale(D)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v18, v0

    .line 272
    .restart local v18       #sW:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcH:Llewa/laml/data/Expression;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Llewa/laml/elements/ImageScreenElement;->evaluate(Llewa/laml/data/Expression;)D

    move-result-wide v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/ImageScreenElement;->scale(D)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v17, v0

    .line 273
    .restart local v17       #sH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    add-int v25, v19, v18

    add-int v26, v20, v17

    move-object/from16 v0, v24

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 275
    .end local v17           #sH:I
    .end local v18           #sW:I
    .end local v19           #sX:I
    .end local v20           #sY:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 280
    :cond_8
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/ImageScreenElement;->getMaxWidth()F

    move-result v14

    .line 281
    .local v14, maxWidth:F
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/ImageScreenElement;->getMaxHeight()F

    move-result v13

    .line 282
    .local v13, maxHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mWidth:F

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v10, v0

    .line 283
    .local v10, bufferWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mHeight:F

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v13, v0}, Ljava/lang/Math;->max(FF)F

    move-result v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v9, v0

    .line 284
    .local v9, bufferHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    move/from16 v0, v24

    if-gt v10, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move/from16 v0, v24

    if-le v9, v0, :cond_a

    .line 286
    :cond_9
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/ImageScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    move-object/from16 v24, v0

    invoke-direct/range {p0 .. p0}, Llewa/laml/elements/ImageScreenElement;->getKey()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v10, v9, v1}, Llewa/laml/ResourceManager;->getMaskBufferBitmap(IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 288
    .local v7, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iput-object v7, v0, Llewa/laml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 290
    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 291
    .local v11, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iput-object v11, v0, Llewa/laml/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    .line 293
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #canvas:Landroid/graphics/Canvas;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    sget-object v26, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mRoot:Llewa/laml/ScreenElementRoot;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Llewa/laml/ScreenElementRoot;->getScale()F

    move-result v21

    .line 295
    .restart local v21       #scale:F
    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mAniWidth:F

    move/from16 v24, v0

    const/16 v25, 0x0

    cmpg-float v24, v24, v25

    if-gtz v24, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mAniHeight:F

    move/from16 v24, v0

    const/16 v25, 0x0

    cmpg-float v24, v24, v25

    if-gtz v24, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    if-nez v24, :cond_b

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 308
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Llewa/laml/animation/AnimatedElement;

    .line 309
    .local v5, ae:Llewa/laml/animation/AnimatedElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v5, v2, v3}, Llewa/laml/elements/ImageScreenElement;->renderWithMask(Landroid/graphics/Canvas;Llewa/laml/animation/AnimatedElement;II)V

    goto :goto_3

    .line 298
    .end local v5           #ae:Llewa/laml/animation/AnimatedElement;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mWidth:F

    move/from16 v27, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/ImageScreenElement;->mHeight:F

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v24 .. v28}, Landroid/graphics/Rect;->set(IIII)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    if-eqz v24, :cond_c

    .line 300
    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcX:Llewa/laml/data/Expression;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Llewa/laml/elements/ImageScreenElement;->evaluate(Llewa/laml/data/Expression;)D

    move-result-wide v26

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v19, v0

    .line 301
    .restart local v19       #sX:I
    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcY:Llewa/laml/data/Expression;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Llewa/laml/elements/ImageScreenElement;->evaluate(Llewa/laml/data/Expression;)D

    move-result-wide v26

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v20, v0

    .line 302
    .restart local v20       #sY:I
    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcW:Llewa/laml/data/Expression;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Llewa/laml/elements/ImageScreenElement;->evaluate(Llewa/laml/data/Expression;)D

    move-result-wide v26

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v18, v0

    .line 303
    .restart local v18       #sW:I
    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcH:Llewa/laml/data/Expression;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Llewa/laml/elements/ImageScreenElement;->evaluate(Llewa/laml/data/Expression;)D

    move-result-wide v26

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v17, v0

    .line 304
    .restart local v17       #sH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    add-int v25, v19, v18

    add-int v26, v20, v17

    move-object/from16 v0, v24

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 306
    .end local v17           #sH:I
    .end local v18           #sW:I
    .end local v19           #sX:I
    .end local v20           #sY:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mBufferCanvas:Landroid/graphics/Canvas;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 311
    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/laml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 320
    invoke-super {p0}, Llewa/laml/elements/AnimatedScreenElement;->finish()V

    .line 321
    iget-object v0, p0, Llewa/laml/elements/ImageScreenElement;->mBitmapProvider:Llewa/laml/elements/BitmapProvider;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Llewa/laml/elements/ImageScreenElement;->mBitmapProvider:Llewa/laml/elements/BitmapProvider;

    invoke-virtual {v0}, Llewa/laml/elements/BitmapProvider;->finish()V

    .line 323
    :cond_0
    iput-object v1, p0, Llewa/laml/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 324
    iput-object v1, p0, Llewa/laml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 325
    iput-object v1, p0, Llewa/laml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 326
    iput-object v1, p0, Llewa/laml/elements/ImageScreenElement;->mBluredBitmap:Landroid/graphics/Bitmap;

    .line 327
    return-void
.end method

.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Llewa/laml/elements/ImageScreenElement;->mBluredBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Llewa/laml/elements/ImageScreenElement;->mBluredBitmap:Landroid/graphics/Bitmap;

    .line 337
    :goto_0
    return-object v0

    .line 332
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Llewa/laml/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 334
    :cond_1
    iget-object v0, p0, Llewa/laml/elements/ImageScreenElement;->mBitmapProvider:Llewa/laml/elements/BitmapProvider;

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Llewa/laml/elements/ImageScreenElement;->mBitmapProvider:Llewa/laml/elements/BitmapProvider;

    iget-object v1, p0, Llewa/laml/elements/ImageScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v1}, Llewa/laml/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llewa/laml/elements/BitmapProvider;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 337
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBitmapHeight()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Llewa/laml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Llewa/laml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBitmapWidth()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Llewa/laml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Llewa/laml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 351
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBlurredBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bmp"

    .prologue
    .line 448
    const/16 v0, 0x96

    invoke-virtual {p0, p1, v0}, Llewa/laml/elements/ImageScreenElement;->getBlurredBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected getBlurredBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "bmp"
    .parameter "minSize"

    .prologue
    .line 452
    const/16 v16, 0x0

    .line 453
    .local v16, mod:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Llewa/laml/elements/ImageScreenElement;->mBlurRadius:I

    if-lez v1, :cond_3

    .line 455
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 456
    .local v20, width:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 458
    .local v14, height:I
    move/from16 v0, v20

    int-to-float v1, v0

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    float-to-int v12, v1

    .line 459
    .local v12, bwidth:I
    int-to-float v1, v14

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    float-to-int v9, v1

    .line 460
    .local v9, bheight:I
    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 461
    .local v11, bmax:I
    move/from16 v0, p2

    if-ge v11, v0, :cond_0

    .line 462
    move/from16 v0, v20

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v0, p2

    if-ge v1, v0, :cond_4

    .line 463
    move/from16 v12, v20

    .line 464
    move v9, v14

    .line 473
    :cond_0
    :goto_0
    move/from16 v0, v20

    if-eq v0, v12, :cond_6

    if-eq v14, v9, :cond_6

    const/16 v18, 0x1

    .line 475
    .local v18, scaled:Z
    :goto_1
    if-eqz v18, :cond_7

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v9, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 476
    .local v19, tmp:Landroid/graphics/Bitmap;
    :goto_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 477
    .local v10, blurred:Landroid/graphics/Bitmap;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 478
    const/high16 v1, -0x100

    invoke-virtual {v10, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 479
    move-object/from16 v0, p0

    iget v1, v0, Llewa/laml/elements/ImageScreenElement;->mBlurRadius:I

    move-object/from16 v0, v19

    invoke-static {v0, v10, v1}, Llewa/util/ImageUtils;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 480
    if-eqz v18, :cond_1

    .line 481
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    .line 483
    :cond_1
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 484
    .local v13, c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/laml/elements/ImageScreenElement;->mBlurMaskColors:[I

    if-eqz v1, :cond_2

    .line 485
    new-instance v15, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v15, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 486
    .local v15, maskPaint:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 487
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    int-to-float v5, v9

    move-object/from16 v0, p0

    iget-object v6, v0, Llewa/laml/elements/ImageScreenElement;->mBlurMaskColors:[I

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 489
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v12, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v13, v1, v15}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 492
    .end local v15           #maskPaint:Landroid/graphics/Paint;
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 493
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 494
    new-instance v17, Landroid/graphics/Paint;

    const/4 v1, 0x3

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 495
    .local v17, paint:Landroid/graphics/Paint;
    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v20

    int-to-float v5, v0

    int-to-float v6, v14

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v10, v1, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/laml/elements/ImageScreenElement;->mCoverColors:[I

    if-eqz v1, :cond_3

    .line 498
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    int-to-float v5, v14

    move-object/from16 v0, p0

    iget-object v6, v0, Llewa/laml/elements/ImageScreenElement;->mCoverColors:[I

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 500
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v20

    invoke-direct {v1, v2, v3, v0, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    .end local v9           #bheight:I
    .end local v10           #blurred:Landroid/graphics/Bitmap;
    .end local v11           #bmax:I
    .end local v12           #bwidth:I
    .end local v13           #c:Landroid/graphics/Canvas;
    .end local v14           #height:I
    .end local v17           #paint:Landroid/graphics/Paint;
    .end local v18           #scaled:Z
    .end local v19           #tmp:Landroid/graphics/Bitmap;
    .end local v20           #width:I
    :cond_3
    :goto_3
    return-object v16

    .line 465
    .restart local v9       #bheight:I
    .restart local v11       #bmax:I
    .restart local v12       #bwidth:I
    .restart local v14       #height:I
    .restart local v20       #width:I
    :cond_4
    if-le v12, v9, :cond_5

    .line 466
    move/from16 v12, p2

    .line 467
    move/from16 v0, p2

    int-to-float v1, v0

    int-to-float v2, v14

    mul-float/2addr v1, v2

    move/from16 v0, v20

    int-to-float v2, v0

    div-float/2addr v1, v2

    float-to-int v9, v1

    goto/16 :goto_0

    .line 468
    :cond_5
    if-ge v12, v9, :cond_0

    .line 469
    move/from16 v9, p2

    .line 470
    move/from16 v0, p2

    int-to-float v1, v0

    move/from16 v0, v20

    int-to-float v2, v0

    mul-float/2addr v1, v2

    int-to-float v2, v14

    div-float/2addr v1, v2

    float-to-int v12, v1

    goto/16 :goto_0

    .line 473
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_1

    .restart local v18       #scaled:Z
    :cond_7
    move-object/from16 v19, p1

    .line 475
    goto/16 :goto_2

    .line 503
    .end local v9           #bheight:I
    .end local v11           #bmax:I
    .end local v12           #bwidth:I
    .end local v14           #height:I
    .end local v18           #scaled:Z
    .end local v20           #width:I
    :catch_0
    move-exception v1

    goto :goto_3

    .line 502
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Llewa/laml/elements/ImageScreenElement;->mHeight:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Llewa/laml/elements/ImageScreenElement;->mWidth:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Llewa/laml/elements/ImageScreenElement;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Llewa/laml/elements/ImageScreenElement;->mY:F

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 371
    invoke-super {p0}, Llewa/laml/elements/AnimatedScreenElement;->init()V

    .line 372
    iput-object v2, p0, Llewa/laml/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 373
    iput-object v2, p0, Llewa/laml/elements/ImageScreenElement;->mBluredBitmap:Landroid/graphics/Bitmap;

    .line 374
    iput-object v2, p0, Llewa/laml/elements/ImageScreenElement;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 375
    iget-object v2, p0, Llewa/laml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 376
    iget-object v2, p0, Llewa/laml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/animation/AnimatedElement;

    .line 377
    .local v1, mask:Llewa/laml/animation/AnimatedElement;
    invoke-virtual {v1}, Llewa/laml/animation/AnimatedElement;->init()V

    goto :goto_0

    .line 379
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mask:Llewa/laml/animation/AnimatedElement;
    :cond_0
    iget-object v2, p0, Llewa/laml/elements/ImageScreenElement;->mBitmapProvider:Llewa/laml/elements/BitmapProvider;

    if-eqz v2, :cond_1

    .line 380
    iget-object v2, p0, Llewa/laml/elements/ImageScreenElement;->mBitmapProvider:Llewa/laml/elements/BitmapProvider;

    iget-object v3, p0, Llewa/laml/elements/ImageScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v3}, Llewa/laml/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Llewa/laml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 381
    :cond_1
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 8
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 384
    if-nez p1, :cond_0

    .line 385
    const-string v5, "ImageScreenElement"

    const-string v6, "node is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v5, Llewa/laml/ScreenElementLoadException;

    const-string v6, "node is null"

    invoke-direct {v5, v6}, Llewa/laml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 388
    :cond_0
    invoke-direct {p0, p1}, Llewa/laml/elements/ImageScreenElement;->loadMask(Lorg/w3c/dom/Element;)V

    .line 389
    const-string v5, "blur"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, attr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 391
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Llewa/laml/elements/ImageScreenElement;->mBlurRadius:I

    .line 394
    :cond_1
    :try_start_0
    const-string v5, "blurMaskGradient"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 396
    const-string v5, "\\|"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, attrs:[Ljava/lang/String;
    array-length v4, v1

    .line 398
    .local v4, length:I
    array-length v5, v1

    if-lt v5, v7, :cond_2

    .line 399
    new-array v5, v4, [I

    iput-object v5, p0, Llewa/laml/elements/ImageScreenElement;->mBlurMaskColors:[I

    .line 400
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 401
    iget-object v5, p0, Llewa/laml/elements/ImageScreenElement;->mBlurMaskColors:[I

    aget-object v6, v1, v3

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v3

    .line 400
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 404
    .end local v1           #attrs:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #length:I
    :cond_2
    const-string v5, "coverGradient"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 406
    const-string v5, "\\|"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 407
    .restart local v1       #attrs:[Ljava/lang/String;
    array-length v4, v1

    .line 408
    .restart local v4       #length:I
    if-lt v4, v7, :cond_3

    .line 409
    new-array v5, v4, [I

    iput-object v5, p0, Llewa/laml/elements/ImageScreenElement;->mCoverColors:[I

    .line 410
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 411
    iget-object v5, p0, Llewa/laml/elements/ImageScreenElement;->mCoverColors:[I

    aget-object v6, v1, v3

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 414
    .end local v1           #attrs:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #length:I
    :catch_0
    move-exception v2

    .line 415
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "ImageScreenElement"

    const-string v6, "create wallpaper error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    return-void
.end method

.method protected onVisibilityChange(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 421
    invoke-super {p0, p1}, Llewa/laml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 422
    if-eqz p1, :cond_0

    .line 423
    invoke-direct {p0}, Llewa/laml/elements/ImageScreenElement;->updateBitmap()V

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/laml/elements/ImageScreenElement;->mCurrentBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public reset(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 430
    invoke-super {p0, p1, p2}, Llewa/laml/elements/AnimatedScreenElement;->reset(J)V

    .line 431
    iget-object v2, p0, Llewa/laml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 432
    iget-object v2, p0, Llewa/laml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/animation/AnimatedElement;

    .line 433
    .local v1, mask:Llewa/laml/animation/AnimatedElement;
    invoke-virtual {v1, p1, p2}, Llewa/laml/animation/AnimatedElement;->reset(J)V

    goto :goto_0

    .line 435
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mask:Llewa/laml/animation/AnimatedElement;
    :cond_0
    iget-object v2, p0, Llewa/laml/elements/ImageScreenElement;->mBitmapProvider:Llewa/laml/elements/BitmapProvider;

    if-eqz v2, :cond_1

    .line 436
    iget-object v2, p0, Llewa/laml/elements/ImageScreenElement;->mBitmapProvider:Llewa/laml/elements/BitmapProvider;

    invoke-virtual {v2}, Llewa/laml/elements/BitmapProvider;->reset()V

    .line 437
    :cond_1
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bmp"

    .prologue
    .line 440
    iget-object v0, p0, Llewa/laml/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_0

    .line 441
    iput-object p1, p0, Llewa/laml/elements/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 442
    invoke-virtual {p0, p1}, Llewa/laml/elements/ImageScreenElement;->getBlurredBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/ImageScreenElement;->mBluredBitmap:Landroid/graphics/Bitmap;

    .line 443
    invoke-direct {p0}, Llewa/laml/elements/ImageScreenElement;->updateBitmap()V

    .line 445
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 510
    invoke-super {p0, p1, p2}, Llewa/laml/elements/AnimatedScreenElement;->tick(J)V

    .line 511
    invoke-virtual {p0}, Llewa/laml/elements/ImageScreenElement;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 518
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v2, p0, Llewa/laml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 514
    iget-object v2, p0, Llewa/laml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/animation/AnimatedElement;

    .line 515
    .local v1, mask:Llewa/laml/animation/AnimatedElement;
    invoke-virtual {v1, p1, p2}, Llewa/laml/animation/AnimatedElement;->tick(J)V

    goto :goto_1

    .line 517
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mask:Llewa/laml/animation/AnimatedElement;
    :cond_1
    invoke-direct {p0}, Llewa/laml/elements/ImageScreenElement;->updateBitmap()V

    goto :goto_0
.end method
