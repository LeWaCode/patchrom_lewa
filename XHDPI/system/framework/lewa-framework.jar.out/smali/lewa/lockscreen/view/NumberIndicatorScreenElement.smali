.class public Llewa/lockscreen/view/NumberIndicatorScreenElement;
.super Llewa/lockscreen/view/AnimatedScreenElement;
.source "NumberIndicatorScreenElement.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NumberIndicatorScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "NumberIndicator"


# instance fields
.field private mImages:Llewa/lockscreen/view/ImagesInOne;

.field private mNumberWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mShowZero:Z


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
    .line 20
    invoke-direct {p0, p1, p2}, Llewa/lockscreen/view/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llewa/lockscreen/view/NumberIndicatorScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 22
    invoke-virtual {p0, p1}, Llewa/lockscreen/view/NumberIndicatorScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 23
    return-void
.end method


# virtual methods
.method public load(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 27
    if-nez p1, :cond_0

    .line 28
    const-string v0, "NumberIndicatorScreenElement"

    const-string v1, "node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v0, Llewa/lockscreen/view/DomParseException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Llewa/lockscreen/view/DomParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 43
    invoke-virtual {p0}, Llewa/lockscreen/view/NumberIndicatorScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Llewa/lockscreen/view/NumberIndicatorScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v0}, Llewa/lockscreen/view/AnimatedElement;->getAlpha()I

    move-result v6

    .line 47
    .local v6, alpha:I
    if-lez v6, :cond_0

    .line 50
    const/4 v9, 0x0

    .line 51
    .local v9, num:I
    if-ltz v9, :cond_0

    .line 54
    if-nez v9, :cond_2

    iget-boolean v0, p0, Llewa/lockscreen/view/NumberIndicatorScreenElement;->mShowZero:Z

    if-eqz v0, :cond_0

    .line 57
    :cond_2
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 58
    .local v10, numStr:Ljava/lang/String;
    iget-object v0, p0, Llewa/lockscreen/view/NumberIndicatorScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v0}, Llewa/lockscreen/view/AnimatedElement;->getX()I

    move-result v2

    .line 60
    .local v2, animX:I
    iget-object v0, p0, Llewa/lockscreen/view/NumberIndicatorScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 62
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    .line 63
    .local v8, length:I
    iget-object v0, p0, Llewa/lockscreen/view/NumberIndicatorScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v0}, Llewa/lockscreen/view/AnimatedElement;->getY()I

    move-result v3

    .line 65
    .local v3, animY:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 67
    invoke-virtual {v10, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v4, v0, -0x30

    .line 68
    .local v4, c:I
    iget-object v0, p0, Llewa/lockscreen/view/NumberIndicatorScreenElement;->mImages:Llewa/lockscreen/view/ImagesInOne;

    iget-object v5, p0, Llewa/lockscreen/view/NumberIndicatorScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Llewa/lockscreen/view/ImagesInOne;->draw(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    .line 69
    iget v0, p0, Llewa/lockscreen/view/NumberIndicatorScreenElement;->mNumberWidth:I

    add-int/2addr v2, v0

    .line 65
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method
