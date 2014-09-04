.class public Llewa/laml/elements/ImageNumberScreenElement;
.super Llewa/laml/elements/ImageScreenElement;
.source "ImageNumberScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ImageNumber"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mBmpHeight:I

.field private mBmpWidth:I

.field private mCachedBmp:Landroid/graphics/Bitmap;

.field private mCachedCanvas:Landroid/graphics/Canvas;

.field private mNumExpression:Llewa/laml/data/Expression;

.field private mPreNumber:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 16
    const-string v0, "ImageNumberScreenElement"

    iput-object v0, p0, Llewa/laml/elements/ImageNumberScreenElement;->LOG_TAG:Ljava/lang/String;

    .line 28
    const/high16 v0, -0x8000

    iput v0, p0, Llewa/laml/elements/ImageNumberScreenElement;->mPreNumber:I

    .line 33
    invoke-virtual {p0, p1}, Llewa/laml/elements/ImageNumberScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 34
    return-void
.end method

.method private getNumberBitmap(C)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "c"

    .prologue
    .line 37
    iget-object v1, p0, Llewa/laml/elements/ImageNumberScreenElement;->mAni:Llewa/laml/animation/AnimatedElement;

    invoke-virtual {v1}, Llewa/laml/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llewa/laml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p0}, Llewa/laml/elements/ImageNumberScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    invoke-virtual {v1, v0}, Llewa/laml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private recreateBitmapIfNeeded(III)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "density"

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Llewa/laml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Llewa/laml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 44
    iget-object v3, p0, Llewa/laml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 45
    .local v2, i:I
    if-gt p2, v2, :cond_0

    move-object v1, v0

    .line 59
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #i:I
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 48
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v3, p0, Llewa/laml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 49
    iget-object v3, p0, Llewa/laml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gt p1, v3, :cond_1

    .line 50
    iget-object v3, p0, Llewa/laml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 51
    :cond_1
    iget-object v3, p0, Llewa/laml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gt p2, v3, :cond_2

    .line 52
    iget-object v3, p0, Llewa/laml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 54
    :cond_2
    iput p2, p0, Llewa/laml/elements/ImageNumberScreenElement;->mBmpHeight:I

    .line 55
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    iput-object v0, p0, Llewa/laml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .line 57
    iget-object v3, p0, Llewa/laml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3, p3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 58
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Llewa/laml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    move-object v1, v0

    .line 59
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method


# virtual methods
.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 63
    iget-object v10, p0, Llewa/laml/elements/ImageNumberScreenElement;->mNumExpression:Llewa/laml/data/Expression;

    invoke-virtual {p0, v10}, Llewa/laml/elements/ImageNumberScreenElement;->evaluate(Llewa/laml/data/Expression;)D

    move-result-wide v10

    double-to-int v7, v10

    .line 64
    .local v7, number:I
    iget v10, p0, Llewa/laml/elements/ImageNumberScreenElement;->mPreNumber:I

    if-eq v7, v10, :cond_2

    .line 65
    iput v7, p0, Llewa/laml/elements/ImageNumberScreenElement;->mPreNumber:I

    .line 66
    iput v12, p0, Llewa/laml/elements/ImageNumberScreenElement;->mBmpWidth:I

    .line 67
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, numStr:Ljava/lang/String;
    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-direct {p0, v10}, Llewa/laml/elements/ImageNumberScreenElement;->getNumberBitmap(C)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 69
    .local v1, bmp0:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    mul-int v9, v10, v11

    .line 70
    .local v9, width:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 71
    .local v2, height:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v10

    invoke-direct {p0, v9, v2, v10}, Llewa/laml/elements/ImageNumberScreenElement;->recreateBitmapIfNeeded(III)Landroid/graphics/Bitmap;

    .line 72
    iget-object v10, p0, Llewa/laml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v12}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 73
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 74
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-direct {p0, v10}, Llewa/laml/elements/ImageNumberScreenElement;->getNumberBitmap(C)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 76
    iget-object v10, p0, Llewa/laml/elements/ImageNumberScreenElement;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fail to get bitmap for number "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    :cond_0
    iget v10, p0, Llewa/laml/elements/ImageNumberScreenElement;->mBmpWidth:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    add-int v4, v10, v11

    .line 80
    .local v4, j:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 81
    .local v5, k:I
    iget-object v8, p0, Llewa/laml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .line 82
    .local v8, oldBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v10

    invoke-direct {p0, v4, v5, v10}, Llewa/laml/elements/ImageNumberScreenElement;->recreateBitmapIfNeeded(III)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 83
    iget-object v10, p0, Llewa/laml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10, v8, v13, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 84
    :cond_1
    iget-object v10, p0, Llewa/laml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    iget v11, p0, Llewa/laml/elements/ImageNumberScreenElement;->mBmpWidth:I

    int-to-float v11, v11

    invoke-virtual {v10, v0, v11, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 85
    iget v10, p0, Llewa/laml/elements/ImageNumberScreenElement;->mBmpWidth:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Llewa/laml/elements/ImageNumberScreenElement;->mBmpWidth:I

    goto :goto_1

    .line 89
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #bmp0:Landroid/graphics/Bitmap;
    .end local v2           #height:I
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v5           #k:I
    .end local v6           #numStr:Ljava/lang/String;
    .end local v8           #oldBmp:Landroid/graphics/Bitmap;
    .end local v9           #width:I
    :cond_2
    iget-object v10, p0, Llewa/laml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    return-object v10
.end method

.method protected getBitmapHeight()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Llewa/laml/elements/ImageNumberScreenElement;->mBmpHeight:I

    return v0
.end method

.method protected getBitmapWidth()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Llewa/laml/elements/ImageNumberScreenElement;->mBmpWidth:I

    return v0
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-super {p0, p1}, Llewa/laml/elements/ImageScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 102
    const-string v0, "number"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/ImageNumberScreenElement;->mNumExpression:Llewa/laml/data/Expression;

    .line 103
    return-void
.end method
