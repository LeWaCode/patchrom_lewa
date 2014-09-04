.class public Llewa/graphics/BitmapInfo;
.super Ljava/lang/Object;
.source "BitmapInfo.java"


# instance fields
.field height:I

.field pixels:[I

.field width:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Llewa/graphics/BitmapInfo;->width:I

    .line 16
    iput p2, p0, Llewa/graphics/BitmapInfo;->height:I

    .line 17
    mul-int v0, p1, p2

    new-array v0, v0, [I

    iput-object v0, p0, Llewa/graphics/BitmapInfo;->pixels:[I

    .line 18
    return-void
.end method

.method public static getBitmap(Llewa/graphics/BitmapInfo;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "info"

    .prologue
    .line 27
    iget-object v0, p0, Llewa/graphics/BitmapInfo;->pixels:[I

    iget v1, p0, Llewa/graphics/BitmapInfo;->width:I

    iget v2, p0, Llewa/graphics/BitmapInfo;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmapInfo(Landroid/graphics/Bitmap;)Llewa/graphics/BitmapInfo;
    .locals 9
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 21
    new-instance v8, Llewa/graphics/BitmapInfo;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v8, v0, v1}, Llewa/graphics/BitmapInfo;-><init>(II)V

    .line 22
    .local v8, info:Llewa/graphics/BitmapInfo;
    iget-object v1, v8, Llewa/graphics/BitmapInfo;->pixels:[I

    iget v3, v8, Llewa/graphics/BitmapInfo;->width:I

    iget v6, v8, Llewa/graphics/BitmapInfo;->width:I

    iget v7, v8, Llewa/graphics/BitmapInfo;->height:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 23
    return-object v8
.end method
