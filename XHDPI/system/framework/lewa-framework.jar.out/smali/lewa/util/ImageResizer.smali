.class public Llewa/util/ImageResizer;
.super Llewa/util/ImageWorker;
.source "ImageResizer.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ImageResizer"


# instance fields
.field protected mImageHeight:I

.field protected mImageWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "imageSize"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Llewa/util/ImageWorker;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {p0, p2}, Llewa/util/ImageResizer;->setImageSize(I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Llewa/util/ImageWorker;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0, p2, p3}, Llewa/util/ImageResizer;->setImageSize(II)V

    .line 51
    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .parameter "options"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 298
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 299
    .local v0, height:I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 300
    .local v4, width:I
    const/4 v1, 0x1

    .line 302
    .local v1, inSampleSize:I
    if-gt v0, p2, :cond_0

    if-le v4, p1, :cond_2

    .line 303
    :cond_0
    if-le v4, v0, :cond_1

    .line 304
    int-to-float v5, v0

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 316
    :goto_0
    mul-int v5, v4, v0

    int-to-float v2, v5

    .line 320
    .local v2, totalPixels:F
    mul-int v5, p1, p2

    mul-int/lit8 v5, v5, 0x2

    int-to-float v3, v5

    .line 322
    .local v3, totalReqPixelsCap:F
    :goto_1
    mul-int v5, v1, v1

    int-to-float v5, v5

    div-float v5, v2, v5

    cmpl-float v5, v5, v3

    if-lez v5, :cond_2

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 306
    .end local v2           #totalPixels:F
    .end local v3           #totalReqPixelsCap:F
    :cond_1
    int-to-float v5, v4

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    .line 326
    :cond_2
    return v1
.end method

.method public static decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "fileDescriptor"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    const/4 v2, 0x0

    .line 229
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 230
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 231
    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 234
    invoke-static {v1, p1, p2}, Llewa/util/ImageResizer;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 237
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 239
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 243
    :goto_0
    return-object v2

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "ImageResizer"

    const-string v4, "System is low on memory. Please consider running garbage collection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "filename"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 199
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 200
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 201
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 204
    invoke-static {v1, p1, p2}, Llewa/util/ImageResizer;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 207
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 209
    :try_start_0
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 213
    :goto_0
    return-object v2

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "ImageResizer"

    const-string v3, "System is low on memory. Please consider running garbage collection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "res"
    .parameter "resId"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 169
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 170
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 171
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 174
    invoke-static {v1, p2, p3}, Llewa/util/ImageResizer;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 177
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 179
    :try_start_0
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 183
    :goto_0
    return-object v2

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "ImageResizer"

    const-string v3, "System is low on memory. Please consider running garbage collection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static decodeSampledBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "context"
    .parameter "uri"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    const/4 v2, 0x0

    .line 259
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 260
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 263
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 267
    invoke-static {v1, p2, p3}, Llewa/util/ImageResizer;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 270
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 278
    :goto_0
    return-object v2

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "ImageResizer"

    const-string v4, "System is low on memory. Please consider running garbage collection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private processBitmap(III)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "resId"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 110
    const-string v0, "ImageResizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processBitmap - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Llewa/util/ImageResizer;->mResources:Landroid/content/res/Resources;

    invoke-static {v0, p1, p2, p3}, Llewa/util/ImageResizer;->decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private processBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "uri"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 117
    const-string v0, "ImageResizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processBitmap - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Llewa/util/ImageResizer;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Llewa/util/ImageResizer;->decodeSampledBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private processBitmap(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "fd"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 124
    const-string v0, "ImageResizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processBitmap - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {p1, p2, p3}, Llewa/util/ImageResizer;->decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "data"

    .prologue
    .line 135
    iget v0, p0, Llewa/util/ImageResizer;->mImageWidth:I

    iget v1, p0, Llewa/util/ImageResizer;->mImageHeight:I

    invoke-virtual {p0, p1, v0, v1}, Llewa/util/ImageResizer;->processBitmap(Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected processBitmap(Ljava/lang/Object;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "data"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 140
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 141
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Llewa/util/ImageResizer;->processBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    .end local p1
    :goto_0
    return-object v0

    .line 143
    .restart local p1
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 144
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Llewa/util/ImageResizer;->processBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_1
    instance-of v0, p1, Ljava/io/FileDescriptor;

    if-eqz v0, :cond_2

    .line 147
    check-cast p1, Ljava/io/FileDescriptor;

    .end local p1
    invoke-direct {p0, p1, p2, p3}, Llewa/util/ImageResizer;->processBitmap(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 149
    .restart local p1
    :cond_2
    instance-of v0, p1, Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 150
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-direct {p0, p1, p2, p3}, Llewa/util/ImageResizer;->processBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 152
    .restart local p1
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected processBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "data"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public setImageSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 81
    invoke-virtual {p0, p1, p1}, Llewa/util/ImageResizer;->setImageSize(II)V

    .line 82
    return-void
.end method

.method public setImageSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 71
    iput p1, p0, Llewa/util/ImageResizer;->mImageWidth:I

    .line 72
    iput p2, p0, Llewa/util/ImageResizer;->mImageHeight:I

    .line 73
    return-void
.end method

.method public setLoadingImage(I)V
    .locals 3
    .parameter "resId"

    .prologue
    .line 86
    iget v0, p0, Llewa/util/ImageResizer;->mImageHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Llewa/util/ImageResizer;->mImageWidth:I

    if-gtz v0, :cond_1

    .line 87
    :cond_0
    invoke-super {p0, p1}, Llewa/util/ImageWorker;->setLoadingImage(I)V

    .line 99
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Llewa/util/ImageResizer;->mLoadingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Llewa/util/ImageResizer;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/util/ImageResizer;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 96
    :cond_2
    iget-object v0, p0, Llewa/util/ImageResizer;->mResources:Landroid/content/res/Resources;

    iget v1, p0, Llewa/util/ImageResizer;->mImageWidth:I

    iget v2, p0, Llewa/util/ImageResizer;->mImageHeight:I

    invoke-static {v0, p1, v1, v2}, Llewa/util/ImageResizer;->decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Llewa/util/ImageResizer;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 97
    iput p1, p0, Llewa/util/ImageResizer;->mLoadingResourceId:I

    .line 98
    invoke-virtual {p0}, Llewa/util/ImageResizer;->createNinePatchDrawableIfNecessary()V

    goto :goto_0
.end method
