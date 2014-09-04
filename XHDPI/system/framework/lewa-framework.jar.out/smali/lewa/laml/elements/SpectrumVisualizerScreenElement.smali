.class public Llewa/laml/elements/SpectrumVisualizerScreenElement;
.super Llewa/laml/elements/ImageScreenElement;
.source "SpectrumVisualizerScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SpectrumVisualizer"


# instance fields
.field private mAlphaWidthNum:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDotbar:Ljava/lang/String;

.field private mPanel:Landroid/graphics/Bitmap;

.field private mPanelSrc:Ljava/lang/String;

.field private mResDensity:I

.field private mShadow:Ljava/lang/String;

.field private mSpectrumVisualizer:Llewa/widget/SpectrumVisualizer;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 3
    .parameter "ele"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 38
    const-string v0, "panelSrc"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mPanelSrc:Ljava/lang/String;

    .line 39
    const-string v0, "dotbarSrc"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mDotbar:Ljava/lang/String;

    .line 40
    const-string v0, "shadowSrc"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mShadow:Ljava/lang/String;

    .line 41
    new-instance v0, Llewa/widget/SpectrumVisualizer;

    invoke-virtual {p0}, Llewa/laml/elements/SpectrumVisualizerScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Llewa/widget/SpectrumVisualizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Llewa/widget/SpectrumVisualizer;

    .line 42
    iget-object v0, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Llewa/widget/SpectrumVisualizer;

    invoke-virtual {v0, v2}, Llewa/widget/SpectrumVisualizer;->setSoftDrawEnabled(Z)V

    .line 43
    iget-object v0, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Llewa/widget/SpectrumVisualizer;

    invoke-virtual {v0, v2}, Llewa/widget/SpectrumVisualizer;->enableUpdate(Z)V

    .line 44
    const-string v0, "alphaWidthNum"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Llewa/laml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mAlphaWidthNum:I

    .line 45
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 48
    iget-object v0, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Llewa/laml/elements/SpectrumVisualizerScreenElement;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 50
    iget-object v0, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Llewa/laml/elements/SpectrumVisualizerScreenElement;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Llewa/laml/elements/SpectrumVisualizerScreenElement;->getTop()F

    move-result v2

    iget-object v3, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 52
    :cond_0
    invoke-super {p0, p1}, Llewa/laml/elements/ImageScreenElement;->doRender(Landroid/graphics/Canvas;)V

    .line 53
    return-void
.end method

.method public enableUpdate(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 56
    iget-object v0, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Llewa/widget/SpectrumVisualizer;

    invoke-virtual {v0, p1}, Llewa/widget/SpectrumVisualizer;->enableUpdate(Z)V

    .line 57
    return-void
.end method

.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-object v0, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 63
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 64
    iget-object v0, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 65
    iget-object v0, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Llewa/widget/SpectrumVisualizer;

    iget-object v1, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Llewa/widget/SpectrumVisualizer;->draw(Landroid/graphics/Canvas;)V

    .line 66
    iget-object v0, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mResDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 67
    iget-object v0, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 72
    invoke-super {p0}, Llewa/laml/elements/ImageScreenElement;->init()V

    .line 73
    iget-object v4, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mPanelSrc:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v5

    :goto_0
    iput-object v4, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    .line 74
    iget-object v4, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mDotbar:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v5

    .line 75
    .local v0, dotbar:Landroid/graphics/Bitmap;
    :goto_1
    iget-object v4, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mShadow:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v2, v5

    .line 76
    .local v2, shadow:Landroid/graphics/Bitmap;
    :goto_2
    invoke-virtual {p0}, Llewa/laml/elements/SpectrumVisualizerScreenElement;->getWidth()F

    move-result v4

    float-to-int v3, v4

    .line 77
    .local v3, width:I
    invoke-virtual {p0}, Llewa/laml/elements/SpectrumVisualizerScreenElement;->getHeight()F

    move-result v4

    float-to-int v1, v4

    .line 78
    .local v1, height:I
    if-lez v3, :cond_0

    if-gtz v1, :cond_5

    .line 79
    :cond_0
    iget-object v4, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    if-nez v4, :cond_4

    .line 80
    const-string v4, "SpectrumVisualizerScreenElement"

    const-string v5, "no panel or size"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_3
    return-void

    .line 73
    .end local v0           #dotbar:Landroid/graphics/Bitmap;
    .end local v1           #height:I
    .end local v2           #shadow:Landroid/graphics/Bitmap;
    .end local v3           #width:I
    :cond_1
    invoke-virtual {p0}, Llewa/laml/elements/SpectrumVisualizerScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    iget-object v6, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mPanelSrc:Ljava/lang/String;

    invoke-virtual {v4, v6}, Llewa/laml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p0}, Llewa/laml/elements/SpectrumVisualizerScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    iget-object v6, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mDotbar:Ljava/lang/String;

    invoke-virtual {v4, v6}, Llewa/laml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 75
    .restart local v0       #dotbar:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p0}, Llewa/laml/elements/SpectrumVisualizerScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    iget-object v5, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mShadow:Ljava/lang/String;

    invoke-virtual {v4, v5}, Llewa/laml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    .line 83
    .restart local v1       #height:I
    .restart local v2       #shadow:Landroid/graphics/Bitmap;
    .restart local v3       #width:I
    :cond_4
    iget-object v4, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 84
    iget-object v4, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 86
    :cond_5
    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 87
    iget-object v4, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Llewa/widget/SpectrumVisualizer;

    invoke-virtual {v4, v3, v1, v0, v2}, Llewa/widget/SpectrumVisualizer;->setBitmaps(IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 88
    :cond_6
    iget v4, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mAlphaWidthNum:I

    if-ltz v4, :cond_7

    .line 89
    iget-object v4, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Llewa/widget/SpectrumVisualizer;

    iget v5, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mAlphaWidthNum:I

    invoke-virtual {v4, v5}, Llewa/widget/SpectrumVisualizer;->setAlphaNum(I)V

    .line 90
    :cond_7
    if-nez v0, :cond_8

    const/16 v4, 0xf0

    :goto_4
    iput v4, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mResDensity:I

    .line 91
    iget-object v4, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Llewa/widget/SpectrumVisualizer;

    invoke-virtual {v4, v7, v7, v3, v1}, Llewa/widget/SpectrumVisualizer;->layout(IIII)V

    .line 92
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 93
    iget-object v4, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    iget v5, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mResDensity:I

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 94
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Llewa/laml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    goto :goto_3

    .line 90
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v4

    goto :goto_4
.end method
