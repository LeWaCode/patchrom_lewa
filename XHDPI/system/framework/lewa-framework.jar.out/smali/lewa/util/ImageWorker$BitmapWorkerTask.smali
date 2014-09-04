.class Llewa/util/ImageWorker$BitmapWorkerTask;
.super Llewa/util/AsyncTask;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/util/ImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llewa/util/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;

.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Llewa/util/ImageWorker;


# direct methods
.method public constructor <init>(Llewa/util/ImageWorker;Landroid/widget/ImageView;)V
    .locals 1
    .parameter
    .parameter "imageView"

    .prologue
    .line 327
    iput-object p1, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->this$0:Llewa/util/ImageWorker;

    invoke-direct {p0}, Llewa/util/AsyncTask;-><init>()V

    .line 328
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 329
    return-void
.end method

.method static synthetic access$000(Llewa/util/ImageWorker$BitmapWorkerTask;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 323
    iget-object v0, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;

    return-object v0
.end method

.method private getAttachedImageView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 468
    iget-object v2, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 469
    .local v1, imageView:Landroid/widget/ImageView;
    #calls: Llewa/util/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Llewa/util/ImageWorker$BitmapWorkerTask;
    invoke-static {v1}, Llewa/util/ImageWorker;->access$500(Landroid/widget/ImageView;)Llewa/util/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    .line 471
    .local v0, bitmapWorkerTask:Llewa/util/ImageWorker$BitmapWorkerTask;
    if-ne p0, v0, :cond_0

    .line 475
    .end local v1           #imageView:Landroid/widget/ImageView;
    :goto_0
    return-object v1

    .restart local v1       #imageView:Landroid/widget/ImageView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 336
    aget-object v5, p1, v5

    iput-object v5, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;

    .line 337
    iget-object v5, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->data:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, dataString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 341
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->this$0:Llewa/util/ImageWorker;

    #getter for: Llewa/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v5}, Llewa/util/ImageWorker;->access$100(Llewa/util/ImageWorker;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 342
    :goto_0
    :try_start_0
    iget-object v5, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->this$0:Llewa/util/ImageWorker;

    iget-boolean v5, v5, Llewa/util/ImageWorker;->mPauseWork:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Llewa/util/ImageWorker$BitmapWorkerTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 344
    :try_start_1
    iget-object v5, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->this$0:Llewa/util/ImageWorker;

    #getter for: Llewa/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v5}, Llewa/util/ImageWorker;->access$100(Llewa/util/ImageWorker;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v5

    goto :goto_0

    .line 347
    :cond_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    iget-object v5, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->this$0:Llewa/util/ImageWorker;

    #getter for: Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;
    invoke-static {v5}, Llewa/util/ImageWorker;->access$200(Llewa/util/ImageWorker;)Llewa/util/ImageCache;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Llewa/util/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0}, Llewa/util/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->this$0:Llewa/util/ImageWorker;

    #getter for: Llewa/util/ImageWorker;->mExitTasksEarly:Z
    invoke-static {v5}, Llewa/util/ImageWorker;->access$300(Llewa/util/ImageWorker;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 355
    iget-object v5, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->this$0:Llewa/util/ImageWorker;

    #getter for: Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;
    invoke-static {v5}, Llewa/util/ImageWorker;->access$200(Llewa/util/ImageWorker;)Llewa/util/ImageCache;

    move-result-object v5

    invoke-virtual {v5, v1}, Llewa/util/ImageCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 362
    :cond_1
    const/4 v2, 0x0

    .line 363
    .local v2, effectedBmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    invoke-virtual {p0}, Llewa/util/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0}, Llewa/util/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->this$0:Llewa/util/ImageWorker;

    #getter for: Llewa/util/ImageWorker;->mExitTasksEarly:Z
    invoke-static {v5}, Llewa/util/ImageWorker;->access$300(Llewa/util/ImageWorker;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 365
    array-length v5, p1

    if-ne v5, v9, :cond_4

    .line 367
    :try_start_3
    iget-object v5, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->this$0:Llewa/util/ImageWorker;

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v5, v6}, Llewa/util/ImageWorker;->processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    .line 392
    :goto_1
    invoke-direct {p0}, Llewa/util/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v4

    .line 393
    .local v4, v:Landroid/widget/ImageView;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 394
    iget-object v5, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->this$0:Llewa/util/ImageWorker;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Llewa/util/ImageWorker;->applyEffect(Landroid/graphics/Bitmap;Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 395
    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 396
    const/4 v2, 0x0

    .line 405
    .end local v4           #v:Landroid/widget/ImageView;
    :cond_2
    if-eqz v0, :cond_3

    iget-object v5, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->this$0:Llewa/util/ImageWorker;

    #getter for: Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;
    invoke-static {v5}, Llewa/util/ImageWorker;->access$200(Llewa/util/ImageWorker;)Llewa/util/ImageCache;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 406
    if-nez v2, :cond_6

    .line 407
    array-length v5, p1

    if-ne v5, v9, :cond_5

    .line 408
    iget-object v5, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->this$0:Llewa/util/ImageWorker;

    #getter for: Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;
    invoke-static {v5}, Llewa/util/ImageWorker;->access$200(Llewa/util/ImageWorker;)Llewa/util/ImageCache;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Llewa/util/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 436
    :cond_3
    :goto_2
    return-object v0

    .line 347
    .end local v2           #effectedBmp:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 368
    .restart local v2       #effectedBmp:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v3

    .line 369
    .local v3, oom:Ljava/lang/OutOfMemoryError;
    const-string v5, "ImageWorker"

    const-string v6, "System is low on memory. Garbage collection is triggered and process will then be retied"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :try_start_5
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 372
    iget-object v5, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->this$0:Llewa/util/ImageWorker;

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v5, v6}, Llewa/util/ImageWorker;->processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    goto :goto_1

    .line 373
    :catchall_1
    move-exception v5

    throw v5

    .line 380
    .end local v3           #oom:Ljava/lang/OutOfMemoryError;
    :cond_4
    :try_start_6
    iget-object v6, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->this$0:Llewa/util/ImageWorker;

    const/4 v5, 0x0

    aget-object v7, p1, v5

    const/4 v5, 0x1

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v5, 0x2

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v7, v8, v5}, Llewa/util/ImageWorker;->processBitmap(Ljava/lang/Object;II)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v0

    goto :goto_1

    .line 381
    :catch_2
    move-exception v3

    .line 382
    .restart local v3       #oom:Ljava/lang/OutOfMemoryError;
    const-string v5, "ImageWorker"

    const-string v6, "System is low on memory. Garbage collection is triggered and process will then be retied"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :try_start_7
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 385
    iget-object v6, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->this$0:Llewa/util/ImageWorker;

    const/4 v5, 0x0

    aget-object v7, p1, v5

    const/4 v5, 0x1

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v5, 0x2

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v7, v8, v5}, Llewa/util/ImageWorker;->processBitmap(Ljava/lang/Object;II)Landroid/graphics/Bitmap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v0

    goto/16 :goto_1

    .line 386
    :catchall_2
    move-exception v5

    throw v5

    .line 410
    .end local v3           #oom:Ljava/lang/OutOfMemoryError;
    :cond_5
    iget-object v5, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->this$0:Llewa/util/ImageWorker;

    #getter for: Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;
    invoke-static {v5}, Llewa/util/ImageWorker;->access$200(Llewa/util/ImageWorker;)Llewa/util/ImageCache;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v10

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Llewa/util/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 414
    :cond_6
    invoke-direct {p0}, Llewa/util/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v4

    .line 415
    .restart local v4       #v:Landroid/widget/ImageView;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 416
    array-length v5, p1

    if-ne v5, v9, :cond_7

    .line 417
    iget-object v5, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->this$0:Llewa/util/ImageWorker;

    #getter for: Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;
    invoke-static {v5}, Llewa/util/ImageWorker;->access$200(Llewa/util/ImageWorker;)Llewa/util/ImageCache;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Llewa/util/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 424
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 425
    const/4 v0, 0x0

    .line 426
    move-object v0, v2

    goto/16 :goto_2

    .line 420
    :cond_7
    iget-object v5, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->this$0:Llewa/util/ImageWorker;

    #getter for: Llewa/util/ImageWorker;->mImageCache:Llewa/util/ImageCache;
    invoke-static {v5}, Llewa/util/ImageWorker;->access$200(Llewa/util/ImageWorker;)Llewa/util/ImageCache;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p1, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Llewa/util/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 428
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 429
    const/4 v0, 0x0

    .line 430
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 431
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 388
    .end local v4           #v:Landroid/widget/ImageView;
    :catch_3
    move-exception v5

    goto/16 :goto_1

    .line 375
    :catch_4
    move-exception v5

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Llewa/util/ImageWorker$BitmapWorkerTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 457
    invoke-super {p0, p1}, Llewa/util/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 458
    iget-object v0, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->this$0:Llewa/util/ImageWorker;

    #getter for: Llewa/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v0}, Llewa/util/ImageWorker;->access$100(Llewa/util/ImageWorker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 459
    :try_start_0
    iget-object v0, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->this$0:Llewa/util/ImageWorker;

    #getter for: Llewa/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v0}, Llewa/util/ImageWorker;->access$100(Llewa/util/ImageWorker;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 460
    monitor-exit v1

    .line 461
    return-void

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 323
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Llewa/util/ImageWorker$BitmapWorkerTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 445
    invoke-virtual {p0}, Llewa/util/ImageWorker$BitmapWorkerTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->this$0:Llewa/util/ImageWorker;

    #getter for: Llewa/util/ImageWorker;->mExitTasksEarly:Z
    invoke-static {v1}, Llewa/util/ImageWorker;->access$300(Llewa/util/ImageWorker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    :cond_0
    const/4 p1, 0x0

    .line 449
    :cond_1
    invoke-direct {p0}, Llewa/util/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 450
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 451
    iget-object v1, p0, Llewa/util/ImageWorker$BitmapWorkerTask;->this$0:Llewa/util/ImageWorker;

    #calls: Llewa/util/ImageWorker;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0, p1}, Llewa/util/ImageWorker;->access$400(Llewa/util/ImageWorker;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 453
    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 323
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Llewa/util/ImageWorker$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
