.class public Llewa/laml/elements/PathScreenElement;
.super Llewa/laml/elements/AnimatedScreenElement;
.source "PathScreenElement.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PathScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Path"

.field public static final TYPES:[Ljava/lang/String; = null

.field private static final TYPE_QUAD:I = 0x1

.field private static final TYPE_RECT:I


# instance fields
.field private mColorParser:Llewa/laml/util/ColorParser;

.field private mHeight:F

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPaintShadow:Landroid/graphics/Paint;

.field protected mPaintShadow2:Landroid/graphics/Paint;

.field protected mPath:Landroid/graphics/Path;

.field protected mPathShadow:Landroid/graphics/Path;

.field protected mPathShadow2:Landroid/graphics/Path;

.field private mPoints:[Llewa/laml/data/Expression;

.field private mPointsValue:[F

.field private mShadow:Z

.field private mType:I

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rect"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "quad"

    aput-object v2, v0, v1

    sput-object v0, Llewa/laml/elements/PathScreenElement;->TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 9
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 33
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Llewa/laml/elements/PathScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Llewa/laml/elements/PathScreenElement;->mPath:Landroid/graphics/Path;

    .line 55
    const/4 v6, -0x1

    iput v6, p0, Llewa/laml/elements/PathScreenElement;->mType:I

    .line 62
    if-nez p1, :cond_0

    .line 63
    const-string v6, "PathScreenElement"

    const-string v7, "node is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    const-string v6, "type"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, type:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    sget-object v6, Llewa/laml/elements/PathScreenElement;->TYPES:[Ljava/lang/String;

    array-length v0, v6

    .local v0, N:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 66
    sget-object v6, Llewa/laml/elements/PathScreenElement;->TYPES:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 67
    iput v2, p0, Llewa/laml/elements/PathScreenElement;->mType:I

    .line 68
    packed-switch v2, :pswitch_data_0

    .line 65
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :pswitch_0
    const/4 v6, 0x4

    new-array v6, v6, [Llewa/laml/data/Expression;

    const/4 v7, 0x0

    const-string v8, "left"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "top"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "right"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "bottom"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v8

    aput-object v8, v6, v7

    iput-object v6, p0, Llewa/laml/elements/PathScreenElement;->mPoints:[Llewa/laml/data/Expression;

    goto :goto_1

    .line 78
    :pswitch_1
    const/4 v6, 0x6

    new-array v6, v6, [Llewa/laml/data/Expression;

    const/4 v7, 0x0

    const-string v8, "fromX"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "fromY"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "moveX"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "moveY"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "toX"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "toY"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v8

    aput-object v8, v6, v7

    iput-object v6, p0, Llewa/laml/elements/PathScreenElement;->mPoints:[Llewa/laml/data/Expression;

    goto/16 :goto_1

    .line 90
    :cond_2
    iget v6, p0, Llewa/laml/elements/PathScreenElement;->mType:I

    if-gez v6, :cond_3

    .line 91
    new-instance v6, Llewa/laml/ScreenElementLoadException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unsupported type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Llewa/laml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 93
    :cond_3
    iget-object v6, p0, Llewa/laml/elements/PathScreenElement;->mPoints:[Llewa/laml/data/Expression;

    array-length v6, v6

    new-array v6, v6, [F

    iput-object v6, p0, Llewa/laml/elements/PathScreenElement;->mPointsValue:[F

    .line 94
    invoke-static {p1}, Llewa/laml/util/ColorParser;->fromElement(Lorg/w3c/dom/Element;)Llewa/laml/util/ColorParser;

    move-result-object v6

    iput-object v6, p0, Llewa/laml/elements/PathScreenElement;->mColorParser:Llewa/laml/util/ColorParser;

    .line 95
    invoke-virtual {p0}, Llewa/laml/elements/PathScreenElement;->getColor()I

    move-result v1

    .line 96
    .local v1, color:I
    iget-object v6, p0, Llewa/laml/elements/PathScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    const-string v6, "width"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v6

    invoke-virtual {p0, v6}, Llewa/laml/elements/PathScreenElement;->evaluate(Llewa/laml/data/Expression;)D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Llewa/laml/elements/PathScreenElement;->scale(D)F

    move-result v5

    .line 99
    .local v5, width:F
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_4

    const/high16 v5, 0x3f80

    .end local v5           #width:F
    :cond_4
    iput v5, p0, Llewa/laml/elements/PathScreenElement;->mWidth:F

    .line 100
    iget-object v6, p0, Llewa/laml/elements/PathScreenElement;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Llewa/laml/elements/PathScreenElement;->mWidth:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    const-string v6, "style"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, style:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 104
    const-string v6, "stroke"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 105
    iget-object v6, p0, Llewa/laml/elements/PathScreenElement;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    :cond_5
    :goto_2
    const-string v6, "shadow"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Llewa/laml/elements/PathScreenElement;->mShadow:Z

    if-eqz v6, :cond_6

    .line 110
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Llewa/laml/elements/PathScreenElement;->mPaintShadow:Landroid/graphics/Paint;

    .line 111
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Llewa/laml/elements/PathScreenElement;->mPaintShadow2:Landroid/graphics/Paint;

    .line 112
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Llewa/laml/elements/PathScreenElement;->mPathShadow:Landroid/graphics/Path;

    .line 113
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Llewa/laml/elements/PathScreenElement;->mPathShadow2:Landroid/graphics/Path;

    .line 114
    iget-object v6, p0, Llewa/laml/elements/PathScreenElement;->mPaintShadow:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-object v6, p0, Llewa/laml/elements/PathScreenElement;->mPaintShadow2:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object v6, p0, Llewa/laml/elements/PathScreenElement;->mPaintShadow:Landroid/graphics/Paint;

    iget v7, p0, Llewa/laml/elements/PathScreenElement;->mWidth:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 117
    iget-object v6, p0, Llewa/laml/elements/PathScreenElement;->mPaintShadow2:Landroid/graphics/Paint;

    iget v7, p0, Llewa/laml/elements/PathScreenElement;->mWidth:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    :cond_6
    return-void

    .line 106
    :cond_7
    const-string v6, "fill"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 107
    iget-object v6, p0, Llewa/laml/elements/PathScreenElement;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_2

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPoint(Llewa/laml/data/Expression;)F
    .locals 2
    .parameter "exp"

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Llewa/laml/elements/PathScreenElement;->evaluate(Llewa/laml/data/Expression;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Llewa/laml/elements/PathScreenElement;->scale(D)F

    move-result v0

    return v0
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 199
    invoke-virtual {p0}, Llewa/laml/elements/PathScreenElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p0}, Llewa/laml/elements/PathScreenElement;->updatePath()V

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 202
    iget-object v0, p0, Llewa/laml/elements/PathScreenElement;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Llewa/laml/elements/PathScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 203
    iget-boolean v0, p0, Llewa/laml/elements/PathScreenElement;->mShadow:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Llewa/laml/elements/PathScreenElement;->mPathShadow:Landroid/graphics/Path;

    iget-object v1, p0, Llewa/laml/elements/PathScreenElement;->mPaintShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 205
    iget-object v0, p0, Llewa/laml/elements/PathScreenElement;->mPathShadow2:Landroid/graphics/Path;

    iget-object v1, p0, Llewa/laml/elements/PathScreenElement;->mPaintShadow2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 207
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 209
    :cond_1
    return-void
.end method

.method protected getColor()I
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Llewa/laml/elements/PathScreenElement;->mColorParser:Llewa/laml/util/ColorParser;

    invoke-virtual {p0}, Llewa/laml/elements/PathScreenElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Llewa/laml/util/ColorParser;->getColor(Llewa/laml/data/Variables;)I

    move-result v0

    return v0
.end method

.method protected updatePath()V
    .locals 21

    .prologue
    .line 130
    move-object/from16 v0, p0

    iget v2, v0, Llewa/laml/elements/PathScreenElement;->mType:I

    if-gez v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/PathScreenElement;->getAlpha()I

    move-result v8

    .line 133
    .local v8, alpha:I
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 134
    move-object/from16 v0, p0

    iget v2, v0, Llewa/laml/elements/PathScreenElement;->mType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 181
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/PathScreenElement;->getHeight()F

    move-result v14

    .line 182
    .local v14, height:F
    move-object/from16 v0, p0

    iget v2, v0, Llewa/laml/elements/PathScreenElement;->mHeight:F

    cmpl-float v2, v14, v2

    if-eqz v2, :cond_6

    .line 183
    move-object/from16 v0, p0

    iput v14, v0, Llewa/laml/elements/PathScreenElement;->mHeight:F

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPoints:[Llewa/laml/data/Expression;

    array-length v2, v2

    add-int/lit8 v15, v2, -0x1

    .local v15, i:I
    :goto_1
    if-ltz v15, :cond_6

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPointsValue:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/PathScreenElement;->mPoints:[Llewa/laml/data/Expression;

    aget-object v3, v3, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Llewa/laml/elements/PathScreenElement;->getPoint(Llewa/laml/data/Expression;)F

    move-result v3

    aput v3, v2, v15

    .line 184
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 136
    .end local v14           #height:F
    .end local v15           #i:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPoints:[Llewa/laml/data/Expression;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Llewa/laml/elements/PathScreenElement;->getPoint(Llewa/laml/data/Expression;)F

    move-result v10

    .line 137
    .local v10, cx:F
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPoints:[Llewa/laml/data/Expression;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Llewa/laml/elements/PathScreenElement;->getPoint(Llewa/laml/data/Expression;)F

    move-result v11

    .line 138
    .local v11, cy:F
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPointsValue:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    cmpl-float v2, v10, v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPointsValue:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    cmpl-float v2, v11, v2

    if-eqz v2, :cond_5

    .line 139
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPointsValue:[F

    const/4 v3, 0x2

    aput v10, v2, v3

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPointsValue:[F

    const/4 v3, 0x3

    aput v11, v2, v3

    .line 141
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/PathScreenElement;->getOffsetX()F

    move-result v2

    add-float/2addr v10, v2

    .line 142
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/PathScreenElement;->getOffsetY()F

    move-result v2

    add-float/2addr v11, v2

    .line 143
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/PathScreenElement;->getHeight()F

    move-result v14

    .line 144
    .restart local v14       #height:F
    move-object/from16 v0, p0

    iget v2, v0, Llewa/laml/elements/PathScreenElement;->mHeight:F

    cmpl-float v2, v14, v2

    if-eqz v2, :cond_3

    .line 145
    move-object/from16 v0, p0

    iput v14, v0, Llewa/laml/elements/PathScreenElement;->mHeight:F

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPoints:[Llewa/laml/data/Expression;

    array-length v2, v2

    add-int/lit8 v15, v2, -0x1

    .restart local v15       #i:I
    :goto_2
    if-ltz v15, :cond_3

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPointsValue:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/PathScreenElement;->mPoints:[Llewa/laml/data/Expression;

    aget-object v3, v3, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Llewa/laml/elements/PathScreenElement;->getPoint(Llewa/laml/data/Expression;)F

    move-result v3

    aput v3, v2, v15

    .line 146
    add-int/lit8 v15, v15, -0x1

    goto :goto_2

    .line 150
    .end local v15           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 151
    move-object/from16 v0, p0

    iget-boolean v2, v0, Llewa/laml/elements/PathScreenElement;->mShadow:Z

    if-eqz v2, :cond_4

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPathShadow:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPathShadow2:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 155
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPointsValue:[F

    const/4 v3, 0x0

    aget v17, v2, v3

    .line 156
    .local v17, sx:F
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPointsValue:[F

    const/4 v3, 0x1

    aget v18, v2, v3

    .line 157
    .local v18, sy:F
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPointsValue:[F

    const/4 v3, 0x4

    aget v12, v2, v3

    .line 158
    .local v12, ex:F
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPointsValue:[F

    const/4 v3, 0x5

    aget v13, v2, v3

    .line 159
    .local v13, ey:F
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPath:Landroid/graphics/Path;

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 161
    move-object/from16 v0, p0

    iget-boolean v2, v0, Llewa/laml/elements/PathScreenElement;->mShadow:Z

    if-eqz v2, :cond_5

    .line 162
    move-object/from16 v0, p0

    iget v0, v0, Llewa/laml/elements/PathScreenElement;->mWidth:F

    move/from16 v16, v0

    .line 163
    .local v16, shadowOffset:F
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPathShadow:Landroid/graphics/Path;

    sub-float v3, v18, v16

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPathShadow:Landroid/graphics/Path;

    sub-float v3, v11, v16

    sub-float v4, v13, v16

    invoke-virtual {v2, v10, v3, v12, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPathShadow:Landroid/graphics/Path;

    add-float v3, v18, v16

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPathShadow:Landroid/graphics/Path;

    add-float v3, v11, v16

    add-float v4, v13, v16

    invoke-virtual {v2, v10, v3, v12, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 167
    const/high16 v2, 0x4000

    mul-float v16, v16, v2

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPathShadow2:Landroid/graphics/Path;

    sub-float v3, v18, v16

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPathShadow2:Landroid/graphics/Path;

    sub-float v3, v11, v16

    sub-float v4, v13, v16

    invoke-virtual {v2, v10, v3, v12, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPathShadow2:Landroid/graphics/Path;

    add-float v3, v18, v16

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPathShadow2:Landroid/graphics/Path;

    add-float v3, v11, v16

    add-float v4, v13, v16

    invoke-virtual {v2, v10, v3, v12, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 174
    .end local v12           #ex:F
    .end local v13           #ey:F
    .end local v14           #height:F
    .end local v16           #shadowOffset:F
    .end local v17           #sx:F
    .end local v18           #sy:F
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Llewa/laml/elements/PathScreenElement;->mShadow:Z

    if-eqz v2, :cond_0

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    .line 176
    .local v9, color:I
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPaintShadow:Landroid/graphics/Paint;

    const v3, 0xffffff

    and-int/2addr v3, v9

    div-int/lit8 v4, v8, 0x6

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPaintShadow2:Landroid/graphics/Paint;

    const v3, 0xffffff

    and-int/2addr v3, v9

    div-int/lit8 v4, v8, 0x8

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 188
    .end local v9           #color:I
    .end local v10           #cx:F
    .end local v11           #cy:F
    .restart local v14       #height:F
    :cond_6
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/PathScreenElement;->getOffsetX()F

    move-result v19

    .line 189
    .local v19, x:F
    invoke-virtual/range {p0 .. p0}, Llewa/laml/elements/PathScreenElement;->getOffsetY()F

    move-result v20

    .line 190
    .local v20, y:F
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/laml/elements/PathScreenElement;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/laml/elements/PathScreenElement;->mPointsValue:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    add-float v3, v3, v19

    move-object/from16 v0, p0

    iget-object v4, v0, Llewa/laml/elements/PathScreenElement;->mPointsValue:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    add-float v4, v4, v20

    move-object/from16 v0, p0

    iget-object v5, v0, Llewa/laml/elements/PathScreenElement;->mPointsValue:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    add-float v5, v5, v19

    move-object/from16 v0, p0

    iget-object v6, v0, Llewa/laml/elements/PathScreenElement;->mPointsValue:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    add-float v6, v6, v20

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
