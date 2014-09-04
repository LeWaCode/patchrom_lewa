.class public Llewa/lockscreen/view/ImagesInOne;
.super Ljava/lang/Object;
.source "ImagesInOne.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCount:I

.field private mDst:Landroid/graphics/Rect;

.field private mOneWidth:I

.field private mSrc:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "bitmap"
    .parameter "width"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Llewa/lockscreen/view/ImagesInOne;->mSrc:Landroid/graphics/Rect;

    .line 20
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Llewa/lockscreen/view/ImagesInOne;->mDst:Landroid/graphics/Rect;

    .line 21
    iput-object p1, p0, Llewa/lockscreen/view/ImagesInOne;->mBitmap:Landroid/graphics/Bitmap;

    .line 22
    iput p2, p0, Llewa/lockscreen/view/ImagesInOne;->mOneWidth:I

    .line 23
    iget-object v1, p0, Llewa/lockscreen/view/ImagesInOne;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 24
    .local v0, bmpWidth:I
    iget v1, p0, Llewa/lockscreen/view/ImagesInOne;->mOneWidth:I

    div-int v1, v0, v1

    iput v1, p0, Llewa/lockscreen/view/ImagesInOne;->mCount:I

    .line 25
    iget v1, p0, Llewa/lockscreen/view/ImagesInOne;->mOneWidth:I

    rem-int v1, v0, v1

    if-nez v1, :cond_0

    .line 26
    return-void

    .line 28
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V
    .locals 9
    .parameter "canvas"
    .parameter "width"
    .parameter "height"
    .parameter "index"
    .parameter "paint"

    .prologue
    .line 34
    iget v6, p0, Llewa/lockscreen/view/ImagesInOne;->mCount:I

    add-int/lit8 v2, v6, -0x1

    .line 35
    .local v2, l:I
    if-le p4, v2, :cond_0

    .line 36
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "invalid index"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 38
    :cond_0
    iget v6, p0, Llewa/lockscreen/view/ImagesInOne;->mOneWidth:I

    add-int v4, v6, p2

    .line 39
    .local v4, totalWidth:I
    iget-object v6, p0, Llewa/lockscreen/view/ImagesInOne;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int v3, v6, p3

    .line 40
    .local v3, totalHeight:I
    iget-object v6, p0, Llewa/lockscreen/view/ImagesInOne;->mDst:Landroid/graphics/Rect;

    invoke-virtual {v6, p2, p3, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 41
    iget v6, p0, Llewa/lockscreen/view/ImagesInOne;->mOneWidth:I

    mul-int v0, v6, p4

    .line 42
    .local v0, allWidth:I
    iget v6, p0, Llewa/lockscreen/view/ImagesInOne;->mOneWidth:I

    add-int v5, v6, v0

    .line 43
    .local v5, widths:I
    iget-object v6, p0, Llewa/lockscreen/view/ImagesInOne;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 44
    .local v1, bmpHeight:I
    iget-object v6, p0, Llewa/lockscreen/view/ImagesInOne;->mSrc:Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 45
    iget-object v6, p0, Llewa/lockscreen/view/ImagesInOne;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Llewa/lockscreen/view/ImagesInOne;->mSrc:Landroid/graphics/Rect;

    iget-object v8, p0, Llewa/lockscreen/view/ImagesInOne;->mDst:Landroid/graphics/Rect;

    invoke-virtual {p1, v6, v7, v8, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 46
    return-void
.end method
