.class public Llewa/laml/elements/VirtualScreen;
.super Llewa/laml/elements/ElementGroup;
.source "VirtualScreen.java"


# static fields
.field private static final DRAW_BITMAP:I = 0x2

.field private static final DRAW_BITMAP_ONCE:I = 0x1

.field private static final DRAW_HARDWARE:I = 0x0

.field public static final TAG_NAME:Ljava/lang/String; = "VirtualScreen"


# instance fields
.field private mCanvasMode:I

.field private mDrawn:Z

.field private mFreeze:Z

.field private mFreezeMode:Llewa/laml/util/IndexedNumberVariable;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenCanvas:Landroid/graphics/Canvas;


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
    .line 38
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Llewa/laml/elements/VirtualScreen;->mCanvasMode:I

    .line 39
    const-string v0, "freeze"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Llewa/laml/elements/VirtualScreen;->mFreeze:Z

    .line 40
    iget-boolean v0, p0, Llewa/laml/elements/VirtualScreen;->mFreeze:Z

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Llewa/laml/elements/VirtualScreen;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "freeze"

    invoke-virtual {p0}, Llewa/laml/elements/VirtualScreen;->getContext()Llewa/laml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/VirtualScreen;->mFreezeMode:Llewa/laml/util/IndexedNumberVariable;

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 46
    iget v0, p0, Llewa/laml/elements/VirtualScreen;->mCanvasMode:I

    packed-switch v0, :pswitch_data_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 48
    :pswitch_0
    invoke-super {p0, p1}, Llewa/laml/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 52
    :pswitch_1
    iget-boolean v0, p0, Llewa/laml/elements/VirtualScreen;->mDrawn:Z

    if-nez v0, :cond_0

    .line 53
    invoke-super {p0, p1}, Llewa/laml/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V

    .line 54
    iget-object v0, p0, Llewa/laml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 55
    iget-object v0, p0, Llewa/laml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Llewa/laml/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/elements/VirtualScreen;->mDrawn:Z

    goto :goto_0

    .line 61
    :pswitch_2
    iget-object v0, p0, Llewa/laml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 62
    iget-object v0, p0, Llewa/laml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Llewa/laml/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Llewa/laml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 96
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Llewa/laml/elements/VirtualScreen;->mCanvasMode:I

    packed-switch v0, :pswitch_data_0

    .line 110
    iget-object v0, p0, Llewa/laml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    .line 101
    :pswitch_0
    iget-boolean v0, p0, Llewa/laml/elements/VirtualScreen;->mDrawn:Z

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/laml/elements/VirtualScreen;->mDrawn:Z

    .line 103
    iget-object v0, p0, Llewa/laml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 115
    invoke-super {p0}, Llewa/laml/elements/ElementGroup;->init()V

    .line 116
    invoke-virtual {p0}, Llewa/laml/elements/VirtualScreen;->getWidth()F

    move-result v1

    .line 117
    .local v1, width:F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_0

    .line 118
    const-string v2, "screen_width"

    invoke-virtual {p0}, Llewa/laml/elements/VirtualScreen;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-static {v2, v3}, Llewa/laml/util/Utils;->getVariableNumber(Ljava/lang/String;Llewa/laml/data/Variables;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Llewa/laml/elements/VirtualScreen;->scale(D)F

    move-result v1

    .line 119
    :cond_0
    invoke-virtual {p0}, Llewa/laml/elements/VirtualScreen;->getHeight()F

    move-result v0

    .line 120
    .local v0, height:F
    cmpg-float v2, v0, v4

    if-gez v2, :cond_1

    .line 121
    const-string v2, "screen_height"

    invoke-virtual {p0}, Llewa/laml/elements/VirtualScreen;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-static {v2, v3}, Llewa/laml/util/Utils;->getVariableNumber(Ljava/lang/String;Llewa/laml/data/Variables;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Llewa/laml/elements/VirtualScreen;->scale(D)F

    move-result v0

    .line 122
    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Llewa/laml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 124
    iget-object v2, p0, Llewa/laml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Llewa/laml/elements/VirtualScreen;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v3}, Llewa/laml/ScreenElementRoot;->getTargetDensity()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 125
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Llewa/laml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Llewa/laml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    .line 126
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 89
    invoke-super {p0}, Llewa/laml/elements/ElementGroup;->pause()V

    .line 90
    iget-object v0, p0, Llewa/laml/elements/VirtualScreen;->mFreezeMode:Llewa/laml/util/IndexedNumberVariable;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Llewa/laml/elements/VirtualScreen;->mFreezeMode:Llewa/laml/util/IndexedNumberVariable;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 92
    :cond_0
    return-void
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-super {p0, p1, p2}, Llewa/laml/elements/ElementGroup;->reset(J)V

    .line 84
    iput v0, p0, Llewa/laml/elements/VirtualScreen;->mCanvasMode:I

    .line 85
    iput-boolean v0, p0, Llewa/laml/elements/VirtualScreen;->mDrawn:Z

    .line 86
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-boolean v2, p0, Llewa/laml/elements/VirtualScreen;->mFreeze:Z

    if-eqz v2, :cond_2

    .line 72
    iget-object v2, p0, Llewa/laml/elements/VirtualScreen;->mFreezeMode:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v2}, Llewa/laml/util/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v0

    .line 73
    .local v0, freeze:Ljava/lang/Double;
    if-nez v0, :cond_1

    :goto_0
    iput v1, p0, Llewa/laml/elements/VirtualScreen;->mCanvasMode:I

    .line 74
    iget v1, p0, Llewa/laml/elements/VirtualScreen;->mCanvasMode:I

    if-nez v1, :cond_0

    .line 75
    invoke-super {p0, p1, p2}, Llewa/laml/elements/ElementGroup;->tick(J)V

    .line 80
    .end local v0           #freeze:Ljava/lang/Double;
    :cond_0
    :goto_1
    return-void

    .line 73
    .restart local v0       #freeze:Ljava/lang/Double;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v1

    goto :goto_0

    .line 77
    .end local v0           #freeze:Ljava/lang/Double;
    :cond_2
    iput v1, p0, Llewa/laml/elements/VirtualScreen;->mCanvasMode:I

    .line 78
    invoke-super {p0, p1, p2}, Llewa/laml/elements/ElementGroup;->tick(J)V

    goto :goto_1
.end method
