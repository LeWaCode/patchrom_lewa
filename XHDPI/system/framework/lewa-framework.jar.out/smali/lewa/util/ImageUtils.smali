.class public Llewa/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static PNG_HEAD_FORMAT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Llewa/util/ImageUtils;->PNG_HEAD_FORMAT:[B

    .line 273
    :try_start_0
    const-string v0, "lewa_imageutils"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    goto :goto_0

    .line 15
    nop

    :array_0
    .array-data 0x1
        0x89t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .parameter "options"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 34
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 35
    .local v0, height:I
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 36
    .local v3, width:I
    const/4 v2, 0x1

    .line 37
    .local v2, inSampleSize:I
    if-gt v0, p2, :cond_0

    if-le v3, p1, :cond_1

    .line 38
    :cond_0
    int-to-float v5, v0

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 39
    .local v1, heightRatio:I
    int-to-float v5, v3

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 40
    .local v4, widthRatio:I
    if-ge v1, v4, :cond_2

    move v2, v1

    .line 42
    .end local v1           #heightRatio:I
    .end local v4           #widthRatio:I
    :cond_1
    :goto_0
    return v2

    .restart local v1       #heightRatio:I
    .restart local v4       #widthRatio:I
    :cond_2
    move v2, v4

    .line 40
    goto :goto_0
.end method

.method public static computeSampleSize(Llewa/util/InputStreamLoader;I)I
    .locals 6
    .parameter "streamLoader"
    .parameter "pixelSize"

    .prologue
    .line 20
    const/4 v1, 0x1

    .line 21
    .local v1, roundedSize:I
    if-lez p1, :cond_0

    .line 22
    invoke-static {p0}, Llewa/util/ImageUtils;->getBitmapSize(Llewa/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 24
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v4, v5

    div-int/2addr v4, p1

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 25
    .local v2, size:D
    :goto_0
    mul-int/lit8 v4, v1, 0x2

    int-to-double v4, v4

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_0

    .line 26
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    .end local v0           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v2           #size:D
    :cond_0
    return v1
.end method

.method public static cropBitmapToAnother(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Z
    .locals 13
    .parameter "srcBmp"
    .parameter "destBmp"
    .parameter "recycleSrcBmp"

    .prologue
    const/high16 v12, 0x4000

    const/4 v11, 0x0

    const/4 v7, 0x1

    .line 46
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 48
    .local v6, srcWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 49
    .local v5, srcHeight:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 50
    .local v2, destWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 52
    .local v1, destHeight:I
    int-to-float v8, v2

    int-to-float v9, v6

    div-float/2addr v8, v9

    int-to-float v9, v1

    int-to-float v10, v5

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 54
    .local v4, ratio:F
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 55
    .local v3, paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 56
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 58
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 60
    .local v0, canvas:Landroid/graphics/Canvas;
    int-to-float v8, v2

    int-to-float v9, v6

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    div-float/2addr v8, v12

    int-to-float v9, v1

    int-to-float v10, v5

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    div-float/2addr v9, v12

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 62
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 63
    invoke-virtual {v0, p0, v11, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 64
    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 69
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #destHeight:I
    .end local v2           #destWidth:I
    .end local v3           #paint:Landroid/graphics/Paint;
    .end local v4           #ratio:F
    .end local v5           #srcHeight:I
    .end local v6           #srcWidth:I
    :cond_0
    :goto_0
    return v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "in"
    .parameter "out"
    .parameter "radius"

    .prologue
    .line 250
    invoke-static {p0, p1, p2}, Llewa/util/ImageUtils;->native_blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 251
    return-void
.end method

.method public static findEdge(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "bmp"
    .parameter "rect"

    .prologue
    .line 254
    invoke-static {p0, p1}, Llewa/util/ImageUtils;->native_find_edge(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 255
    return-void
.end method

.method public static findMaxSide(Landroid/graphics/Bitmap;)I
    .locals 1
    .parameter "bmp"

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-static {p0, v0}, Llewa/util/ImageUtils;->native_find_side(Landroid/graphics/Bitmap;Z)I

    move-result v0

    return v0
.end method

.method public static findMinSide(Landroid/graphics/Bitmap;)I
    .locals 1
    .parameter "bmp"

    .prologue
    .line 258
    const/4 v0, 0x1

    invoke-static {p0, v0}, Llewa/util/ImageUtils;->native_find_side(Landroid/graphics/Bitmap;Z)I

    move-result v0

    return v0
.end method

.method public static final getBitmap(Llewa/util/InputStreamLoader;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "streamLoader"
    .parameter "pixelSize"

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-static {}, Llewa/util/ImageUtils;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 74
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0, p1}, Llewa/util/ImageUtils;->computeSampleSize(Llewa/util/InputStreamLoader;I)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 75
    const/4 v3, 0x0

    .line 76
    .local v3, retry:I
    :goto_0
    const/4 v5, 0x3

    if-ge v3, v5, :cond_0

    .line 78
    :try_start_0
    invoke-virtual {p0}, Llewa/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 85
    invoke-virtual {p0}, Llewa/util/InputStreamLoader;->close()V

    .line 89
    :cond_0
    :goto_1
    return-object v4

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 81
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    invoke-virtual {p0}, Llewa/util/InputStreamLoader;->close()V

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 85
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {p0}, Llewa/util/InputStreamLoader;->close()V

    goto :goto_1

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Llewa/util/InputStreamLoader;->close()V

    throw v4
.end method

.method public static getBitmap(Llewa/util/InputStreamLoader;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "streamLoader"
    .parameter "destWidth"
    .parameter "destHeight"

    .prologue
    .line 93
    mul-int v2, p1, p2

    mul-int/lit8 v1, v2, 0x2

    .line 94
    .local v1, pixelSize:I
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 95
    :cond_0
    const/4 v1, -0x1

    .line 97
    :cond_1
    invoke-static {p0, v1}, Llewa/util/ImageUtils;->getBitmap(Llewa/util/InputStreamLoader;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    .local v0, destBmp:Landroid/graphics/Bitmap;
    if-lez v1, :cond_2

    .line 99
    const/4 v2, 0x1

    invoke-static {v0, p1, p2, v2}, Llewa/util/ImageUtils;->scaleBitmapToDesire(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    :cond_2
    return-object v0
.end method

.method public static getBitmap(Llewa/util/InputStreamLoader;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "streamLoader"
    .parameter "destWidth"
    .parameter "destHeight"
    .parameter "reusedBitmap"

    .prologue
    .line 106
    const/4 v2, 0x0

    .line 107
    .local v2, srcBitmap:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_3

    .line 108
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 109
    invoke-static {p0}, Llewa/util/ImageUtils;->getBitmapSize(Llewa/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 111
    .local v1, sizeOp:Landroid/graphics/BitmapFactory$Options;
    :try_start_0
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 113
    invoke-static {}, Llewa/util/ImageUtils;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 114
    .local v0, op:Landroid/graphics/BitmapFactory$Options;
    iput-object p3, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 115
    const/4 v3, 0x1

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 116
    invoke-virtual {p0}, Llewa/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 117
    if-eqz v2, :cond_1

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 118
    const/4 v3, 0x1

    invoke-static {v2, p1, p2, v3}, Llewa/util/ImageUtils;->scaleBitmapToDesire(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 123
    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    :cond_0
    invoke-virtual {p0}, Llewa/util/InputStreamLoader;->close()V

    .line 129
    .end local v0           #op:Landroid/graphics/BitmapFactory$Options;
    .end local v1           #sizeOp:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v3

    .line 123
    .restart local v1       #sizeOp:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    if-eqz v2, :cond_2

    .line 124
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    :cond_2
    invoke-virtual {p0}, Llewa/util/InputStreamLoader;->close()V

    .line 129
    .end local v1           #sizeOp:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    :goto_1
    invoke-static {p0, p1, p2}, Llewa/util/ImageUtils;->getBitmap(Llewa/util/InputStreamLoader;II)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 121
    .restart local v1       #sizeOp:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v3

    .line 123
    if-eqz v2, :cond_4

    .line 124
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    :cond_4
    invoke-virtual {p0}, Llewa/util/InputStreamLoader;->close()V

    goto :goto_1

    .line 123
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_5

    .line 124
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    :cond_5
    invoke-virtual {p0}, Llewa/util/InputStreamLoader;->close()V

    throw v3
.end method

.method public static final getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 133
    new-instance v0, Llewa/util/InputStreamLoader;

    invoke-direct {v0, p0}, Llewa/util/InputStreamLoader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Llewa/util/ImageUtils;->getBitmapSize(Llewa/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method

.method public static final getBitmapSize(Llewa/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .parameter "streamLoader"

    .prologue
    .line 137
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 138
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 140
    :try_start_0
    invoke-virtual {p0}, Llewa/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    invoke-virtual {p0}, Llewa/util/InputStreamLoader;->close()V

    .line 146
    :goto_0
    return-object v0

    .line 142
    :catch_0
    move-exception v1

    .line 144
    invoke-virtual {p0}, Llewa/util/InputStreamLoader;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Llewa/util/InputStreamLoader;->close()V

    throw v1
.end method

.method public static getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 151
    .local v0, opt:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 152
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 153
    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 154
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 155
    return-object v0
.end method

.method public static isPngFormat(Llewa/util/InputStreamLoader;)Z
    .locals 7
    .parameter "streamLoader"

    .prologue
    const/4 v5, 0x0

    .line 160
    :try_start_0
    invoke-virtual {p0}, Llewa/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v3

    .line 161
    .local v3, is:Ljava/io/InputStream;
    sget-object v6, Llewa/util/ImageUtils;->PNG_HEAD_FORMAT:[B

    array-length v6, v6

    new-array v1, v6, [B

    .line 162
    .local v1, head:[B
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 163
    .local v4, n:I
    array-length v2, v1

    .line 164
    .local v2, i:I
    if-lt v4, v2, :cond_0

    invoke-static {v1}, Llewa/util/ImageUtils;->isPngFormat([B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 168
    :cond_0
    if-eqz p0, :cond_1

    .line 169
    invoke-virtual {p0}, Llewa/util/InputStreamLoader;->close()V

    .end local v1           #head:[B
    .end local v2           #i:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #n:I
    :cond_1
    :goto_0
    return v5

    .line 165
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/Exception;
    if-eqz p0, :cond_1

    .line 169
    invoke-virtual {p0}, Llewa/util/InputStreamLoader;->close()V

    goto :goto_0

    .line 168
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz p0, :cond_2

    .line 169
    invoke-virtual {p0}, Llewa/util/InputStreamLoader;->close()V

    :cond_2
    throw v5
.end method

.method public static isPngFormat([B)Z
    .locals 3
    .parameter "pngHead"

    .prologue
    .line 174
    if-eqz p0, :cond_1

    array-length v1, p0

    sget-object v2, Llewa/util/ImageUtils;->PNG_HEAD_FORMAT:[B

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 175
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Llewa/util/ImageUtils;->PNG_HEAD_FORMAT:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 176
    aget-byte v1, p0, v0

    sget-object v2, Llewa/util/ImageUtils;->PNG_HEAD_FORMAT:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_0

    .line 177
    const/4 v1, 0x0

    .line 179
    .end local v0           #i:I
    :goto_1
    return v1

    .line 175
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static native native_blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
.end method

.method private static native native_find_edge(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
.end method

.method private static native native_find_side(Landroid/graphics/Bitmap;Z)I
.end method

.method public static saveBitmapToLocal(Llewa/util/InputStreamLoader;Ljava/lang/String;II)Z
    .locals 4
    .parameter "streamLoader"
    .parameter "path"
    .parameter "destWidth"
    .parameter "destHeight"

    .prologue
    .line 184
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 185
    invoke-static {p0}, Llewa/util/ImageUtils;->getBitmapSize(Llewa/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 186
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v3, :cond_1

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_1

    .line 187
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v3, p2, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, p3, :cond_0

    .line 188
    invoke-static {p0, p1}, Llewa/util/ImageUtils;->saveToFile(Llewa/util/InputStreamLoader;Ljava/lang/String;)Z

    move-result v2

    .line 199
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return v2

    .line 190
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    invoke-static {p0, p2, p3}, Llewa/util/ImageUtils;->getBitmap(Llewa/util/InputStreamLoader;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    .local v0, destBmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 192
    invoke-static {p0}, Llewa/util/ImageUtils;->isPngFormat(Llewa/util/InputStreamLoader;)Z

    move-result v3

    invoke-static {v0, p1, v3}, Llewa/util/ImageUtils;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result v2

    .line 193
    .local v2, result:Z
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 199
    .end local v0           #destBmp:Landroid/graphics/Bitmap;
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v2           #result:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 1
    .parameter "bitmap"
    .parameter "path"

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Llewa/util/ImageUtils;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "bitmap"
    .parameter "path"
    .parameter "saveToPng"

    .prologue
    .line 207
    if-eqz p0, :cond_1

    .line 209
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, outputStream:Ljava/io/FileOutputStream;
    if-eqz p2, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 212
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 213
    const/4 v1, 0x1

    .line 217
    .end local v0           #outputStream:Ljava/io/FileOutputStream;
    :goto_1
    return v1

    .line 210
    .restart local v0       #outputStream:Ljava/io/FileOutputStream;
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    .end local v0           #outputStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 217
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static saveToFile(Llewa/util/InputStreamLoader;Ljava/lang/String;)Z
    .locals 3
    .parameter "streamLoader"
    .parameter "path"

    .prologue
    .line 222
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, outputStream:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Llewa/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v0

    .line 224
    .local v0, inputStream:Ljava/io/InputStream;
    invoke-static {v0, v1}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 225
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 226
    invoke-virtual {p0}, Llewa/util/InputStreamLoader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    const/4 v2, 0x1

    .line 230
    .end local v0           #inputStream:Ljava/io/InputStream;
    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    :goto_0
    return v2

    .line 228
    :catch_0
    move-exception v2

    .line 230
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static scaleBitmapToDesire(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "srcBmp"
    .parameter "destWidth"
    .parameter "destHeight"
    .parameter "recycleSrcBmp"

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 236
    .local v3, srcWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 237
    .local v2, srcHeight:I
    if-ne v3, p1, :cond_1

    if-ne v2, p2, :cond_1

    .line 246
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 239
    .restart local p0
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 240
    .local v0, config:Landroid/graphics/Bitmap$Config;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 241
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 242
    :cond_2
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 243
    .local v1, destBmp:Landroid/graphics/Bitmap;
    invoke-static {p0, v1, p3}, Llewa/util/ImageUtils;->cropBitmapToAnother(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object p0, v1

    .line 244
    goto :goto_0
.end method
