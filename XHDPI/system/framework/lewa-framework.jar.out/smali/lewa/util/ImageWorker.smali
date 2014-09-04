.class public abstract Llewa/util/ImageWorker;
.super Ljava/lang/Object;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/util/ImageWorker$CacheAsyncTask;,
        Llewa/util/ImageWorker$AsyncDrawable;,
        Llewa/util/ImageWorker$BitmapWorkerTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final FADE_IN_TIME:I = 0xc8

.field private static final MESSAGE_CLEAR:I = 0x0

.field private static final MESSAGE_CLOSE:I = 0x3

.field private static final MESSAGE_FLUSH:I = 0x2

.field private static final MESSAGE_INIT_DISK_CACHE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImageWorker"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mExitTasksEarly:Z

.field private mFadeInBitmap:Z

.field private mImageCache:Llewa/util/ImageCache;

.field private mImageCacheParams:Llewa/util/ImageCache$ImageCacheParams;

.field protected mLoadingBitmap:Landroid/graphics/Bitmap;

.field protected mLoadingResourceId:I

.field protected mPauseWork:Z

.field private final mPauseWorkLock:Ljava/lang/Object;

.field protected mResources:Landroid/content/res/Resources;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/util/ImageWorker;->mFadeInBitmap:Z

    .line 51
    iput-boolean v1, p0, Llewa/util/ImageWorker;->mExitTasksEarly:Z

    .line 52
    iput-boolean v1, p0, Llewa/util/ImageWorker;->mPauseWork:Z

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Llewa/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Llewa/util/ImageWorker;->mLoadingResourceId:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Llewa/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    .line 67
    iput-object p1, p0, Llewa/util/ImageWorker;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method static synthetic access$100(Llewa/util/ImageWorker;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Llewa/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Llewa/util/ImageWorker;)Llewa/util/ImageCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;

    return-object v0
.end method

.method static synthetic access$300(Llewa/util/ImageWorker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Llewa/util/ImageWorker;->mExitTasksEarly:Z

    return v0
.end method

.method static synthetic access$400(Llewa/util/ImageWorker;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Llewa/util/ImageWorker;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/ImageView;)Llewa/util/ImageWorker$BitmapWorkerTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-static {p0}, Llewa/util/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Llewa/util/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    return-object v0
.end method

.method public static cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z
    .locals 6
    .parameter "data"
    .parameter "imageView"

    .prologue
    const/4 v2, 0x1

    .line 287
    invoke-static {p1}, Llewa/util/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Llewa/util/ImageWorker$BitmapWorkerTask;

    move-result-object v1

    .line 289
    .local v1, bitmapWorkerTask:Llewa/util/ImageWorker$BitmapWorkerTask;
    if-eqz v1, :cond_1

    .line 290
    #getter for: Llewa/util/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;
    invoke-static {v1}, Llewa/util/ImageWorker$BitmapWorkerTask;->access$000(Llewa/util/ImageWorker$BitmapWorkerTask;)Ljava/lang/Object;

    move-result-object v0

    .line 291
    .local v0, bitmapData:Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 292
    :cond_0
    invoke-virtual {v1, v2}, Llewa/util/ImageWorker$BitmapWorkerTask;->cancel(Z)Z

    .line 294
    const-string v3, "ImageWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelPotentialWork - cancelled work for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .end local v0           #bitmapData:Ljava/lang/Object;
    :cond_1
    :goto_0
    return v2

    .line 298
    .restart local v0       #bitmapData:Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cancelWork(Landroid/widget/ImageView;)V
    .locals 5
    .parameter "imageView"

    .prologue
    .line 270
    invoke-static {p0}, Llewa/util/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Llewa/util/ImageWorker$BitmapWorkerTask;

    move-result-object v1

    .line 271
    .local v1, bitmapWorkerTask:Llewa/util/ImageWorker$BitmapWorkerTask;
    if-eqz v1, :cond_0

    .line 272
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Llewa/util/ImageWorker$BitmapWorkerTask;->cancel(Z)Z

    .line 274
    #getter for: Llewa/util/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;
    invoke-static {v1}, Llewa/util/ImageWorker$BitmapWorkerTask;->access$000(Llewa/util/ImageWorker$BitmapWorkerTask;)Ljava/lang/Object;

    move-result-object v0

    .line 275
    .local v0, bitmapData:Ljava/lang/Object;
    const-string v2, "ImageWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelWork - cancelled work for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v0           #bitmapData:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private static getBitmapWorkerTask(Landroid/widget/ImageView;)Llewa/util/ImageWorker$BitmapWorkerTask;
    .locals 3
    .parameter "imageView"

    .prologue
    .line 310
    if-eqz p0, :cond_0

    .line 311
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 312
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Llewa/util/ImageWorker$AsyncDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 313
    check-cast v0, Llewa/util/ImageWorker$AsyncDrawable;

    .line 314
    .local v0, asyncDrawable:Llewa/util/ImageWorker$AsyncDrawable;
    invoke-virtual {v0}, Llewa/util/ImageWorker$AsyncDrawable;->getBitmapWorkerTask()Llewa/util/ImageWorker$BitmapWorkerTask;

    move-result-object v2

    .line 317
    .end local v0           #asyncDrawable:Llewa/util/ImageWorker$AsyncDrawable;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "imageView"
    .parameter "bitmap"

    .prologue
    .line 514
    iget-boolean v1, p0, Llewa/util/ImageWorker;->mFadeInBitmap:Z

    if-eqz v1, :cond_1

    .line 516
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x106000d

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Llewa/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    invoke-direct {v3, v4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 522
    .local v0, td:Landroid/graphics/drawable/TransitionDrawable;
    const/4 v1, -0x1

    iget v2, p0, Llewa/util/ImageWorker;->mLoadingResourceId:I

    if-ne v1, v2, :cond_0

    .line 523
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Llewa/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Llewa/util/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 529
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 530
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 534
    .end local v0           #td:Landroid/graphics/drawable/TransitionDrawable;
    :goto_1
    return-void

    .line 526
    .restart local v0       #td:Landroid/graphics/drawable/TransitionDrawable;
    :cond_0
    iget v1, p0, Llewa/util/ImageWorker;->mLoadingResourceId:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 532
    .end local v0           #td:Landroid/graphics/drawable/TransitionDrawable;
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method


# virtual methods
.method public addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "data"
    .parameter "bmp"

    .prologue
    .line 80
    iget-object v0, p0, Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Llewa/util/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 83
    :cond_0
    return-void
.end method

.method public addImageCache(Landroid/app/FragmentManager;Llewa/util/ImageCache$ImageCacheParams;)V
    .locals 4
    .parameter "fragmentManager"
    .parameter "cacheParams"

    .prologue
    const/4 v3, 0x1

    .line 217
    iput-object p2, p0, Llewa/util/ImageWorker;->mImageCacheParams:Llewa/util/ImageCache$ImageCacheParams;

    .line 218
    iget-object v0, p0, Llewa/util/ImageWorker;->mImageCacheParams:Llewa/util/ImageCache$ImageCacheParams;

    invoke-static {p1, v0}, Llewa/util/ImageCache;->findOrCreateCache(Landroid/app/FragmentManager;Llewa/util/ImageCache$ImageCacheParams;)Llewa/util/ImageCache;

    move-result-object v0

    invoke-virtual {p0, v0}, Llewa/util/ImageWorker;->setImageCache(Llewa/util/ImageCache;)V

    .line 219
    new-instance v0, Llewa/util/ImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Llewa/util/ImageWorker$CacheAsyncTask;-><init>(Llewa/util/ImageWorker;)V

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Llewa/util/ImageWorker$CacheAsyncTask;->execute([Ljava/lang/Object;)Llewa/util/AsyncTask;

    .line 220
    return-void
.end method

.method protected applyEffect(Landroid/graphics/Bitmap;Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "bm"
    .parameter "type"

    .prologue
    .line 262
    return-object p1
.end method

.method public clearCache()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 593
    new-instance v0, Llewa/util/ImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Llewa/util/ImageWorker$CacheAsyncTask;-><init>(Llewa/util/ImageWorker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Llewa/util/ImageWorker$CacheAsyncTask;->execute([Ljava/lang/Object;)Llewa/util/AsyncTask;

    .line 594
    return-void
.end method

.method protected clearCacheInternal()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;

    invoke-virtual {v0}, Llewa/util/ImageCache;->clearCache()V

    .line 577
    :cond_0
    return-void
.end method

.method public closeCache()V
    .locals 4

    .prologue
    .line 601
    new-instance v0, Llewa/util/ImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Llewa/util/ImageWorker$CacheAsyncTask;-><init>(Llewa/util/ImageWorker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Llewa/util/ImageWorker$CacheAsyncTask;->execute([Ljava/lang/Object;)Llewa/util/AsyncTask;

    .line 602
    return-void
.end method

.method protected closeCacheInternal()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;

    invoke-virtual {v0}, Llewa/util/ImageCache;->close()V

    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;

    .line 590
    :cond_0
    return-void
.end method

.method protected createNinePatchDrawableIfNecessary()V
    .locals 2

    .prologue
    .line 188
    iget-object v1, p0, Llewa/util/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Llewa/util/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 190
    .local v0, chunk:[B
    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Llewa/util/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 202
    const/4 v1, 0x0

    iput-object v1, p0, Llewa/util/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 207
    .end local v0           #chunk:[B
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Llewa/util/ImageWorker;->mLoadingResourceId:I

    goto :goto_0
.end method

.method public flushCache()V
    .locals 4

    .prologue
    .line 597
    new-instance v0, Llewa/util/ImageWorker$CacheAsyncTask;

    invoke-direct {v0, p0}, Llewa/util/ImageWorker$CacheAsyncTask;-><init>(Llewa/util/ImageWorker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Llewa/util/ImageWorker$CacheAsyncTask;->execute([Ljava/lang/Object;)Llewa/util/AsyncTask;

    .line 598
    return-void
.end method

.method protected flushCacheInternal()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;

    invoke-virtual {v0}, Llewa/util/ImageCache;->flush()V

    .line 583
    :cond_0
    return-void
.end method

.method public freeLoadingImage()V
    .locals 0

    .prologue
    .line 611
    return-void
.end method

.method public getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "data"

    .prologue
    .line 71
    iget-object v1, p0, Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 76
    :cond_0
    :goto_0
    return-object v0

    .line 73
    :cond_1
    iget-object v1, p0, Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;

    invoke-virtual {v1, p1}, Llewa/util/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    :cond_2
    iget-object v1, p0, Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;

    invoke-virtual {v1, p1}, Llewa/util/ImageCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getExitTasksEarly()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Llewa/util/ImageWorker;->mExitTasksEarly:Z

    return v0
.end method

.method protected initDiskCacheInternal()V
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;

    invoke-virtual {v0}, Llewa/util/ImageCache;->initDiskCache()V

    .line 571
    :cond_0
    return-void
.end method

.method public loadImage(Ljava/lang/Object;Landroid/widget/ImageView;)V
    .locals 7
    .parameter "data"
    .parameter "imageView"

    .prologue
    .line 97
    if-nez p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const/4 v1, 0x0

    .line 103
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;

    if-eqz v3, :cond_2

    .line 104
    iget-object v4, p0, Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Llewa/util/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 108
    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 110
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 104
    :cond_3
    const-string v3, ""

    goto :goto_1

    .line 111
    :cond_4
    invoke-static {p1, p2}, Llewa/util/ImageWorker;->cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    new-instance v2, Llewa/util/ImageWorker$BitmapWorkerTask;

    invoke-direct {v2, p0, p2}, Llewa/util/ImageWorker$BitmapWorkerTask;-><init>(Llewa/util/ImageWorker;Landroid/widget/ImageView;)V

    .line 113
    .local v2, task:Llewa/util/ImageWorker$BitmapWorkerTask;
    new-instance v0, Llewa/util/ImageWorker$AsyncDrawable;

    iget-object v3, p0, Llewa/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Llewa/util/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3, v4, v2}, Llewa/util/ImageWorker$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Llewa/util/ImageWorker$BitmapWorkerTask;)V

    .line 115
    .local v0, asyncDrawable:Llewa/util/ImageWorker$AsyncDrawable;
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    sget-object v3, Llewa/util/AsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Llewa/util/ImageWorker$BitmapWorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Llewa/util/AsyncTask;

    goto :goto_0
.end method

.method public loadImage(Ljava/lang/Object;Landroid/widget/ImageView;II)V
    .locals 7
    .parameter "data"
    .parameter "imageView"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 125
    if-nez p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const/4 v1, 0x0

    .line 131
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;

    if-eqz v3, :cond_2

    .line 132
    iget-object v4, p0, Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Llewa/util/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 137
    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 139
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 132
    :cond_3
    const-string v3, ""

    goto :goto_1

    .line 140
    :cond_4
    invoke-static {p1, p2}, Llewa/util/ImageWorker;->cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    new-instance v2, Llewa/util/ImageWorker$BitmapWorkerTask;

    invoke-direct {v2, p0, p2}, Llewa/util/ImageWorker$BitmapWorkerTask;-><init>(Llewa/util/ImageWorker;Landroid/widget/ImageView;)V

    .line 142
    .local v2, task:Llewa/util/ImageWorker$BitmapWorkerTask;
    new-instance v0, Llewa/util/ImageWorker$AsyncDrawable;

    iget-object v3, p0, Llewa/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Llewa/util/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3, v4, v2}, Llewa/util/ImageWorker$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Llewa/util/ImageWorker$BitmapWorkerTask;)V

    .line 144
    .local v0, asyncDrawable:Llewa/util/ImageWorker$AsyncDrawable;
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    sget-object v3, Llewa/util/AsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Llewa/util/ImageWorker$BitmapWorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Llewa/util/AsyncTask;

    goto/16 :goto_0
.end method

.method protected abstract processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
.end method

.method protected abstract processBitmap(Ljava/lang/Object;II)Landroid/graphics/Bitmap;
.end method

.method public setExitTasksEarly(Z)V
    .locals 0
    .parameter "exitTasksEarly"

    .prologue
    .line 242
    iput-boolean p1, p0, Llewa/util/ImageWorker;->mExitTasksEarly:Z

    .line 243
    return-void
.end method

.method public setImageCache(Llewa/util/ImageCache;)V
    .locals 0
    .parameter "imageCache"

    .prologue
    .line 231
    iput-object p1, p0, Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;

    .line 232
    return-void
.end method

.method public setImageFadeIn(Z)V
    .locals 0
    .parameter "fadeIn"

    .prologue
    .line 238
    iput-boolean p1, p0, Llewa/util/ImageWorker;->mFadeInBitmap:Z

    .line 239
    return-void
.end method

.method public setLoadingImage(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 174
    iget-object v0, p0, Llewa/util/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Llewa/util/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/util/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 179
    :cond_0
    :try_start_0
    iget-object v0, p0, Llewa/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Llewa/util/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 180
    iput p1, p0, Llewa/util/ImageWorker;->mLoadingResourceId:I

    .line 181
    invoke-virtual {p0}, Llewa/util/ImageWorker;->createNinePatchDrawableIfNecessary()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setLoadingImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 159
    iget-object v0, p0, Llewa/util/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Llewa/util/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/util/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 163
    :cond_0
    iput-object p1, p0, Llewa/util/ImageWorker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Llewa/util/ImageWorker;->mLoadingResourceId:I

    .line 165
    invoke-virtual {p0}, Llewa/util/ImageWorker;->createNinePatchDrawableIfNecessary()V

    .line 166
    return-void
.end method

.method public setPauseWork(Z)V
    .locals 2
    .parameter "pauseWork"

    .prologue
    .line 537
    iget-object v1, p0, Llewa/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 538
    :try_start_0
    iput-boolean p1, p0, Llewa/util/ImageWorker;->mPauseWork:Z

    .line 539
    iget-boolean v0, p0, Llewa/util/ImageWorker;->mPauseWork:Z

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Llewa/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 542
    :cond_0
    monitor-exit v1

    .line 543
    return-void

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
