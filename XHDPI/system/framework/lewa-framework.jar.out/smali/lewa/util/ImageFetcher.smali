.class public Llewa/util/ImageFetcher;
.super Llewa/util/ImageResizer;
.source "ImageFetcher.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DISK_CACHE_INDEX:I = 0x0

.field private static final HTTP_CACHE_DIR:Ljava/lang/String; = "http"

.field private static final HTTP_CACHE_SIZE:I = 0xa00000

.field private static final IO_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "ImageFetcher"


# instance fields
.field private mHttpCacheDir:Ljava/io/File;

.field private mHttpDiskCache:Llewa/util/DiskLruCache;

.field private final mHttpDiskCacheLock:Ljava/lang/Object;

.field private mHttpDiskCacheStarting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "imageSize"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Llewa/util/ImageResizer;-><init>(Landroid/content/Context;I)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/util/ImageFetcher;->mHttpDiskCacheStarting:Z

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Llewa/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    .line 107
    invoke-direct {p0, p1}, Llewa/util/ImageFetcher;->init(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Llewa/util/ImageResizer;-><init>(Landroid/content/Context;II)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/util/ImageFetcher;->mHttpDiskCacheStarting:Z

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Llewa/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    .line 96
    invoke-direct {p0, p1}, Llewa/util/ImageFetcher;->init(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method private checkConnection(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 204
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 206
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 207
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_1

    .line 209
    :cond_0
    const-string v2, "ImageFetcher"

    const-string v3, "checkConnection - no connection found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1
    return-void
.end method

.method public static disableConnectionReuseIfNecessary()V
    .locals 2

    .prologue
    .line 345
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 346
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 348
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Llewa/util/ImageFetcher;->checkConnection(Landroid/content/Context;)V

    .line 112
    const-string v0, "http"

    invoke-static {p1, v0}, Llewa/util/ImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Llewa/util/ImageFetcher;->mHttpCacheDir:Ljava/io/File;

    .line 113
    return-void
.end method

.method private initHttpDiskCache()V
    .locals 7

    .prologue
    const-wide/32 v5, 0xa00000

    .line 122
    iget-object v1, p0, Llewa/util/ImageFetcher;->mHttpCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    iget-object v1, p0, Llewa/util/ImageFetcher;->mHttpCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 125
    :cond_0
    iget-object v2, p0, Llewa/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    :try_start_0
    iget-object v1, p0, Llewa/util/ImageFetcher;->mHttpCacheDir:Ljava/io/File;

    invoke-static {v1}, Llewa/util/ImageCache;->getUsableSpace(Ljava/io/File;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 128
    :try_start_1
    iget-object v1, p0, Llewa/util/ImageFetcher;->mHttpCacheDir:Ljava/io/File;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/32 v5, 0xa00000

    invoke-static {v1, v3, v4, v5, v6}, Llewa/util/DiskLruCache;->open(Ljava/io/File;IIJ)Llewa/util/DiskLruCache;

    move-result-object v1

    iput-object v1, p0, Llewa/util/ImageFetcher;->mHttpDiskCache:Llewa/util/DiskLruCache;

    .line 130
    const-string v1, "ImageFetcher"

    const-string v3, "HTTP cache initialized"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Llewa/util/ImageFetcher;->mHttpDiskCacheStarting:Z

    .line 137
    iget-object v1, p0, Llewa/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 138
    monitor-exit v2

    .line 139
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Llewa/util/ImageFetcher;->mHttpDiskCache:Llewa/util/DiskLruCache;

    goto :goto_0

    .line 138
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method protected clearCacheInternal()V
    .locals 5

    .prologue
    .line 143
    invoke-super {p0}, Llewa/util/ImageResizer;->clearCacheInternal()V

    .line 144
    iget-object v2, p0, Llewa/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 145
    :try_start_0
    iget-object v1, p0, Llewa/util/ImageFetcher;->mHttpDiskCache:Llewa/util/DiskLruCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Llewa/util/ImageFetcher;->mHttpDiskCache:Llewa/util/DiskLruCache;

    invoke-virtual {v1}, Llewa/util/DiskLruCache;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 147
    :try_start_1
    iget-object v1, p0, Llewa/util/ImageFetcher;->mHttpDiskCache:Llewa/util/DiskLruCache;

    invoke-virtual {v1}, Llewa/util/DiskLruCache;->delete()V

    .line 149
    const-string v1, "ImageFetcher"

    const-string v3, "HTTP cache cleared"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Llewa/util/ImageFetcher;->mHttpDiskCache:Llewa/util/DiskLruCache;

    .line 155
    const/4 v1, 0x1

    iput-boolean v1, p0, Llewa/util/ImageFetcher;->mHttpDiskCacheStarting:Z

    .line 156
    invoke-direct {p0}, Llewa/util/ImageFetcher;->initHttpDiskCache()V

    .line 158
    :cond_0
    monitor-exit v2

    .line 159
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ImageFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCacheInternal - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected closeCacheInternal()V
    .locals 5

    .prologue
    .line 180
    invoke-super {p0}, Llewa/util/ImageResizer;->closeCacheInternal()V

    .line 181
    iget-object v2, p0, Llewa/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 182
    :try_start_0
    iget-object v1, p0, Llewa/util/ImageFetcher;->mHttpDiskCache:Llewa/util/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 184
    :try_start_1
    iget-object v1, p0, Llewa/util/ImageFetcher;->mHttpDiskCache:Llewa/util/DiskLruCache;

    invoke-virtual {v1}, Llewa/util/DiskLruCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    iget-object v1, p0, Llewa/util/ImageFetcher;->mHttpDiskCache:Llewa/util/DiskLruCache;

    invoke-virtual {v1}, Llewa/util/DiskLruCache;->close()V

    .line 186
    const/4 v1, 0x0

    iput-object v1, p0, Llewa/util/ImageFetcher;->mHttpDiskCache:Llewa/util/DiskLruCache;

    .line 188
    const-string v1, "ImageFetcher"

    const-string v3, "HTTP cache closed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 196
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ImageFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeCacheInternal - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public downloadUrlToStream(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 12
    .parameter "urlString"
    .parameter "outputStream"

    .prologue
    .line 305
    invoke-static {}, Llewa/util/ImageFetcher;->disableConnectionReuseIfNecessary()V

    .line 306
    const/4 v8, 0x0

    .line 307
    .local v8, urlConnection:Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 308
    .local v5, out:Ljava/io/BufferedOutputStream;
    const/4 v3, 0x0

    .line 311
    .local v3, in:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 312
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 313
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const/16 v10, 0x2000

    invoke-direct {v4, v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 314
    .end local v3           #in:Ljava/io/BufferedInputStream;
    .local v4, in:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    const/16 v9, 0x2000

    invoke-direct {v6, p2, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 317
    .end local v5           #out:Ljava/io/BufferedOutputStream;
    .local v6, out:Ljava/io/BufferedOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    .local v1, b:I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 318
    invoke-virtual {v6, v1}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 321
    .end local v1           #b:I
    :catch_0
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/BufferedInputStream;
    .restart local v3       #in:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 322
    .end local v6           #out:Ljava/io/BufferedOutputStream;
    .end local v7           #url:Ljava/net/URL;
    .local v2, e:Ljava/io/IOException;
    .restart local v5       #out:Ljava/io/BufferedOutputStream;
    :goto_1
    :try_start_3
    const-string v9, "ImageFetcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in downloadBitmap - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 324
    if-eqz v8, :cond_0

    .line 325
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 328
    :cond_0
    if-eqz v5, :cond_1

    .line 329
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 331
    :cond_1
    if-eqz v3, :cond_2

    .line 332
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 336
    :cond_2
    :goto_2
    const/4 v9, 0x0

    .end local v2           #e:Ljava/io/IOException;
    :goto_3
    return v9

    .line 320
    .end local v3           #in:Ljava/io/BufferedInputStream;
    .end local v5           #out:Ljava/io/BufferedOutputStream;
    .restart local v1       #b:I
    .restart local v4       #in:Ljava/io/BufferedInputStream;
    .restart local v6       #out:Ljava/io/BufferedOutputStream;
    .restart local v7       #url:Ljava/net/URL;
    :cond_3
    const/4 v9, 0x1

    .line 324
    if-eqz v8, :cond_4

    .line 325
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 328
    :cond_4
    if-eqz v6, :cond_5

    .line 329
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 331
    :cond_5
    if-eqz v4, :cond_6

    .line 332
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_6
    :goto_4
    move-object v3, v4

    .end local v4           #in:Ljava/io/BufferedInputStream;
    .restart local v3       #in:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 334
    .end local v6           #out:Ljava/io/BufferedOutputStream;
    .restart local v5       #out:Ljava/io/BufferedOutputStream;
    goto :goto_3

    .line 324
    .end local v1           #b:I
    .end local v7           #url:Ljava/net/URL;
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v8, :cond_7

    .line 325
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 328
    :cond_7
    if-eqz v5, :cond_8

    .line 329
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 331
    :cond_8
    if-eqz v3, :cond_9

    .line 332
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 334
    :cond_9
    :goto_6
    throw v9

    :catch_1
    move-exception v10

    goto :goto_6

    .line 324
    .end local v3           #in:Ljava/io/BufferedInputStream;
    .restart local v4       #in:Ljava/io/BufferedInputStream;
    .restart local v7       #url:Ljava/net/URL;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #in:Ljava/io/BufferedInputStream;
    .restart local v3       #in:Ljava/io/BufferedInputStream;
    goto :goto_5

    .end local v3           #in:Ljava/io/BufferedInputStream;
    .end local v5           #out:Ljava/io/BufferedOutputStream;
    .restart local v4       #in:Ljava/io/BufferedInputStream;
    .restart local v6       #out:Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v9

    move-object v3, v4

    .end local v4           #in:Ljava/io/BufferedInputStream;
    .restart local v3       #in:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #out:Ljava/io/BufferedOutputStream;
    .restart local v5       #out:Ljava/io/BufferedOutputStream;
    goto :goto_5

    .line 334
    .end local v7           #url:Ljava/net/URL;
    .restart local v2       #e:Ljava/io/IOException;
    :catch_2
    move-exception v9

    goto :goto_2

    .line 321
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    goto :goto_1

    .end local v3           #in:Ljava/io/BufferedInputStream;
    .restart local v4       #in:Ljava/io/BufferedInputStream;
    .restart local v7       #url:Ljava/net/URL;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/BufferedInputStream;
    .restart local v3       #in:Ljava/io/BufferedInputStream;
    goto :goto_1

    .line 334
    .end local v3           #in:Ljava/io/BufferedInputStream;
    .end local v5           #out:Ljava/io/BufferedOutputStream;
    .restart local v1       #b:I
    .restart local v4       #in:Ljava/io/BufferedInputStream;
    .restart local v6       #out:Ljava/io/BufferedOutputStream;
    :catch_5
    move-exception v10

    goto :goto_4
.end method

.method protected flushCacheInternal()V
    .locals 5

    .prologue
    .line 163
    invoke-super {p0}, Llewa/util/ImageResizer;->flushCacheInternal()V

    .line 164
    iget-object v2, p0, Llewa/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 165
    :try_start_0
    iget-object v1, p0, Llewa/util/ImageFetcher;->mHttpDiskCache:Llewa/util/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 167
    :try_start_1
    iget-object v1, p0, Llewa/util/ImageFetcher;->mHttpDiskCache:Llewa/util/DiskLruCache;

    invoke-virtual {v1}, Llewa/util/DiskLruCache;->flush()V

    .line 169
    const-string v1, "ImageFetcher"

    const-string v3, "HTTP cache flushed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 176
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ImageFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flush - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected initDiskCacheInternal()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Llewa/util/ImageResizer;->initDiskCacheInternal()V

    .line 118
    invoke-direct {p0}, Llewa/util/ImageFetcher;->initHttpDiskCache()V

    .line 119
    return-void
.end method

.method protected processBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "data"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 223
    const-string v8, "ImageFetcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processBitmap - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {p1}, Llewa/util/ImageCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 227
    .local v6, key:Ljava/lang/String;
    const/4 v4, 0x0

    .line 228
    .local v4, fileDescriptor:Ljava/io/FileDescriptor;
    const/4 v5, 0x0

    .line 230
    .local v5, fileInputStream:Ljava/io/FileInputStream;
    iget-object v9, p0, Llewa/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v9

    .line 232
    :goto_0
    :try_start_0
    iget-boolean v8, p0, Llewa/util/ImageFetcher;->mHttpDiskCacheStarting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v8, :cond_0

    .line 234
    :try_start_1
    iget-object v8, p0, Llewa/util/ImageFetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v8

    goto :goto_0

    .line 238
    :cond_0
    :try_start_2
    iget-object v8, p0, Llewa/util/ImageFetcher;->mHttpDiskCache:Llewa/util/DiskLruCache;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_4

    .line 240
    :try_start_3
    iget-object v8, p0, Llewa/util/ImageFetcher;->mHttpDiskCache:Llewa/util/DiskLruCache;

    invoke-virtual {v8, v6}, Llewa/util/DiskLruCache;->get(Ljava/lang/String;)Llewa/util/DiskLruCache$Snapshot;

    move-result-object v7

    .line 241
    .local v7, snapshot:Llewa/util/DiskLruCache$Snapshot;
    if-nez v7, :cond_2

    .line 243
    const-string v8, "ImageFetcher"

    const-string v10, "processBitmap, not found in http cache, downloading..."

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v8, p0, Llewa/util/ImageFetcher;->mHttpDiskCache:Llewa/util/DiskLruCache;

    invoke-virtual {v8, v6}, Llewa/util/DiskLruCache;->edit(Ljava/lang/String;)Llewa/util/DiskLruCache$Editor;

    move-result-object v3

    .line 246
    .local v3, editor:Llewa/util/DiskLruCache$Editor;
    if-eqz v3, :cond_1

    .line 247
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Llewa/util/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {p0, p1, v8}, Llewa/util/ImageFetcher;->downloadUrlToStream(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 249
    invoke-virtual {v3}, Llewa/util/DiskLruCache$Editor;->commit()V

    .line 254
    :cond_1
    :goto_1
    iget-object v8, p0, Llewa/util/ImageFetcher;->mHttpDiskCache:Llewa/util/DiskLruCache;

    invoke-virtual {v8, v6}, Llewa/util/DiskLruCache;->get(Ljava/lang/String;)Llewa/util/DiskLruCache$Snapshot;

    move-result-object v7

    .line 256
    .end local v3           #editor:Llewa/util/DiskLruCache$Editor;
    :cond_2
    if-eqz v7, :cond_3

    .line 257
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Llewa/util/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/io/FileInputStream;

    move-object v5, v0

    .line 259
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v4

    .line 266
    :cond_3
    if-nez v4, :cond_4

    if-eqz v5, :cond_4

    .line 268
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 273
    .end local v7           #snapshot:Llewa/util/DiskLruCache$Snapshot;
    :cond_4
    :goto_2
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_5

    .line 278
    :try_start_6
    invoke-static {v4, p2, p3}, Llewa/util/ImageFetcher;->decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v1

    .line 283
    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    .line 285
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 288
    :cond_6
    :goto_4
    return-object v1

    .line 251
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #editor:Llewa/util/DiskLruCache$Editor;
    .restart local v7       #snapshot:Llewa/util/DiskLruCache$Snapshot;
    :cond_7
    :try_start_8
    invoke-virtual {v3}, Llewa/util/DiskLruCache$Editor;->abort()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 261
    .end local v3           #editor:Llewa/util/DiskLruCache$Editor;
    .end local v7           #snapshot:Llewa/util/DiskLruCache$Snapshot;
    :catch_1
    move-exception v2

    .line 262
    .local v2, e:Ljava/io/IOException;
    :try_start_9
    const-string v8, "ImageFetcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processBitmap - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 266
    if-nez v4, :cond_4

    if-eqz v5, :cond_4

    .line 268
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    .line 269
    :catch_2
    move-exception v8

    goto :goto_2

    .line 263
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 264
    .local v2, e:Ljava/lang/IllegalStateException;
    :try_start_b
    const-string v8, "ImageFetcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processBitmap - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 266
    if-nez v4, :cond_4

    if-eqz v5, :cond_4

    .line 268
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_2

    .line 269
    :catch_4
    move-exception v8

    goto :goto_2

    .line 266
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v8

    if-nez v4, :cond_8

    if-eqz v5, :cond_8

    .line 268
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 269
    :cond_8
    :goto_5
    :try_start_e
    throw v8

    .line 273
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    throw v8

    .line 279
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :catch_5
    move-exception v2

    .line 280
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v8, "ImageFetcher"

    const-string v9, "System is low on memory. Please consider running garbage collection"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 269
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .restart local v7       #snapshot:Llewa/util/DiskLruCache$Snapshot;
    :catch_6
    move-exception v8

    goto :goto_2

    .end local v7           #snapshot:Llewa/util/DiskLruCache$Snapshot;
    :catch_7
    move-exception v10

    goto :goto_5

    .line 286
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :catch_8
    move-exception v8

    goto :goto_4
.end method
