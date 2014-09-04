.class public Llewa/util/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/util/ImageCache$RetainFragment;,
        Llewa/util/ImageCache$ImageCacheParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_CLEAR_DISK_CACHE_ON_START:Z = false

.field private static final DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat; = null

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x46

.field private static final DEFAULT_DISK_CACHE_ENABLED:Z = true

.field private static final DEFAULT_DISK_CACHE_SIZE:I = 0xa00000

.field private static final DEFAULT_INIT_DISK_CACHE_ON_CREATE:Z = false

.field private static final DEFAULT_MEM_CACHE_ENABLED:Z = true

.field private static final DEFAULT_MEM_CACHE_SIZE:I = 0x500000

.field private static final DISK_CACHE_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImageCache"


# instance fields
.field private mCacheParams:Llewa/util/ImageCache$ImageCacheParams;

.field private final mDiskCacheLock:Ljava/lang/Object;

.field private mDiskCacheStarting:Z

.field private mDiskLruCache:Llewa/util/DiskLruCache;

.field private mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Llewa/util/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "uniqueName"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Llewa/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/util/ImageCache;->mDiskCacheStarting:Z

    .line 87
    new-instance v0, Llewa/util/ImageCache$ImageCacheParams;

    invoke-direct {v0, p1, p2}, Llewa/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Llewa/util/ImageCache;->init(Llewa/util/ImageCache$ImageCacheParams;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Llewa/util/ImageCache$ImageCacheParams;)V
    .locals 1
    .parameter "cacheParams"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Llewa/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/util/ImageCache;->mDiskCacheStarting:Z

    .line 77
    invoke-direct {p0, p1}, Llewa/util/ImageCache;->init(Llewa/util/ImageCache$ImageCacheParams;)V

    .line 78
    return-void
.end method

.method static synthetic access$000()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Llewa/util/ImageCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .parameter "bytes"

    .prologue
    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 475
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, hex:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 477
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    .end local v0           #hex:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static findOrCreateCache(Landroid/app/FragmentManager;Llewa/util/ImageCache$ImageCacheParams;)Llewa/util/ImageCache;
    .locals 2
    .parameter "fragmentManager"
    .parameter "cacheParams"

    .prologue
    .line 100
    if-nez p0, :cond_1

    .line 101
    new-instance v0, Llewa/util/ImageCache;

    invoke-direct {v0, p1}, Llewa/util/ImageCache;-><init>(Llewa/util/ImageCache$ImageCacheParams;)V

    .line 116
    :cond_0
    :goto_0
    return-object v0

    .line 105
    :cond_1
    invoke-static {p0}, Llewa/util/ImageCache;->findOrCreateRetainFragment(Landroid/app/FragmentManager;)Llewa/util/ImageCache$RetainFragment;

    move-result-object v1

    .line 108
    .local v1, mRetainFragment:Llewa/util/ImageCache$RetainFragment;
    invoke-virtual {v1}, Llewa/util/ImageCache$RetainFragment;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/util/ImageCache;

    .line 111
    .local v0, imageCache:Llewa/util/ImageCache;
    if-nez v0, :cond_0

    .line 112
    new-instance v0, Llewa/util/ImageCache;

    .end local v0           #imageCache:Llewa/util/ImageCache;
    invoke-direct {v0, p1}, Llewa/util/ImageCache;-><init>(Llewa/util/ImageCache$ImageCacheParams;)V

    .line 113
    .restart local v0       #imageCache:Llewa/util/ImageCache;
    invoke-virtual {v1, v0}, Llewa/util/ImageCache$RetainFragment;->setObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static findOrCreateRetainFragment(Landroid/app/FragmentManager;)Llewa/util/ImageCache$RetainFragment;
    .locals 3
    .parameter "fm"

    .prologue
    .line 554
    const-string v1, "ImageCache"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Llewa/util/ImageCache$RetainFragment;

    .line 557
    .local v0, mRetainFragment:Llewa/util/ImageCache$RetainFragment;
    if-nez v0, :cond_0

    .line 558
    new-instance v0, Llewa/util/ImageCache$RetainFragment;

    .end local v0           #mRetainFragment:Llewa/util/ImageCache$RetainFragment;
    invoke-direct {v0}, Llewa/util/ImageCache$RetainFragment;-><init>()V

    .line 559
    .restart local v0       #mRetainFragment:Llewa/util/ImageCache$RetainFragment;
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "ImageCache"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 562
    :cond_0
    return-object v0
.end method

.method public static getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 491
    invoke-static {}, Llewa/os/Build;->hasHoneycombMR1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 495
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "context"
    .parameter "uniqueName"

    .prologue
    .line 446
    :try_start_0
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Llewa/util/ImageCache;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, cachePath:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    .end local v0           #cachePath:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 446
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v1

    .line 452
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .parameter "context"

    .prologue
    .line 520
    invoke-static {}, Llewa/os/Build;->hasFroyo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 526
    :goto_0
    return-object v1

    .line 525
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, cacheDir:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUsableSpace(Ljava/io/File;)J
    .locals 5
    .parameter "path"

    .prologue
    .line 537
    invoke-static {}, Llewa/os/Build;->hasGingerbread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    .line 541
    :goto_0
    return-wide v1

    .line 540
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 541
    .local v0, stats:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    goto :goto_0
.end method

.method public static hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    .line 462
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 463
    .local v2, mDigest:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 464
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Llewa/util/ImageCache;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 468
    .end local v2           #mDigest:Ljava/security/MessageDigest;
    .local v0, cacheKey:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 465
    .end local v0           #cacheKey:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 466
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #cacheKey:Ljava/lang/String;
    goto :goto_0
.end method

.method private init(Llewa/util/ImageCache$ImageCacheParams;)V
    .locals 2
    .parameter "cacheParams"

    .prologue
    .line 125
    iput-object p1, p0, Llewa/util/ImageCache;->mCacheParams:Llewa/util/ImageCache$ImageCacheParams;

    .line 128
    iget-object v0, p0, Llewa/util/ImageCache;->mCacheParams:Llewa/util/ImageCache$ImageCacheParams;

    iget-boolean v0, v0, Llewa/util/ImageCache$ImageCacheParams;->memoryCacheEnabled:Z

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Llewa/util/ImageCache$1;

    iget-object v1, p0, Llewa/util/ImageCache;->mCacheParams:Llewa/util/ImageCache$ImageCacheParams;

    iget v1, v1, Llewa/util/ImageCache$ImageCacheParams;->memCacheSize:I

    invoke-direct {v0, p0, v1}, Llewa/util/ImageCache$1;-><init>(Llewa/util/ImageCache;I)V

    iput-object v0, p0, Llewa/util/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    .line 155
    :cond_0
    iget-boolean v0, p1, Llewa/util/ImageCache$ImageCacheParams;->initDiskCacheOnCreate:Z

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Llewa/util/ImageCache;->initDiskCache()V

    .line 159
    :cond_1
    return-void
.end method

.method public static isExternalStorageRemovable()Z
    .locals 1

    .prologue
    .line 506
    invoke-static {}, Llewa/os/Build;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    .line 509
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "data"
    .parameter "bitmap"

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Llewa/util/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 203
    return-void
.end method

.method public addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 9
    .parameter "data"
    .parameter "bitmap"
    .parameter "replaceExisting"

    .prologue
    .line 206
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v5, p0, Llewa/util/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v5, :cond_3

    if-nez p3, :cond_2

    iget-object v5, p0, Llewa/util/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v5, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 212
    :cond_2
    iget-object v5, p0, Llewa/util/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v5, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_3
    iget-object v6, p0, Llewa/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v6

    .line 217
    :try_start_0
    iget-object v5, p0, Llewa/util/ImageCache;->mDiskLruCache:Llewa/util/DiskLruCache;

    if-eqz v5, :cond_5

    .line 218
    invoke-static {p1}, Llewa/util/ImageCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 219
    .local v2, key:Ljava/lang/String;
    const/4 v3, 0x0

    .line 221
    .local v3, out:Ljava/io/OutputStream;
    :try_start_1
    iget-object v5, p0, Llewa/util/ImageCache;->mDiskLruCache:Llewa/util/DiskLruCache;

    invoke-virtual {v5, v2}, Llewa/util/DiskLruCache;->get(Ljava/lang/String;)Llewa/util/DiskLruCache$Snapshot;

    move-result-object v4

    .line 222
    .local v4, snapshot:Llewa/util/DiskLruCache$Snapshot;
    if-nez v4, :cond_6

    .line 223
    iget-object v5, p0, Llewa/util/ImageCache;->mDiskLruCache:Llewa/util/DiskLruCache;

    invoke-virtual {v5, v2}, Llewa/util/DiskLruCache;->edit(Ljava/lang/String;)Llewa/util/DiskLruCache$Editor;

    move-result-object v1

    .line 224
    .local v1, editor:Llewa/util/DiskLruCache$Editor;
    if-eqz v1, :cond_4

    .line 225
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Llewa/util/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v3

    .line 226
    iget-object v5, p0, Llewa/util/ImageCache;->mCacheParams:Llewa/util/ImageCache$ImageCacheParams;

    iget-object v5, v5, Llewa/util/ImageCache$ImageCacheParams;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v7, p0, Llewa/util/ImageCache;->mCacheParams:Llewa/util/ImageCache$ImageCacheParams;

    iget v7, v7, Llewa/util/ImageCache$ImageCacheParams;->compressQuality:I

    invoke-virtual {p2, v5, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 228
    invoke-virtual {v1}, Llewa/util/DiskLruCache$Editor;->commit()V

    .line 229
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 240
    .end local v1           #editor:Llewa/util/DiskLruCache$Editor;
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 241
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 246
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #out:Ljava/io/OutputStream;
    .end local v4           #snapshot:Llewa/util/DiskLruCache$Snapshot;
    :cond_5
    :goto_2
    :try_start_3
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 232
    .restart local v2       #key:Ljava/lang/String;
    .restart local v3       #out:Ljava/io/OutputStream;
    .restart local v4       #snapshot:Llewa/util/DiskLruCache$Snapshot;
    :cond_6
    const/4 v5, 0x0

    :try_start_4
    invoke-virtual {v4, v5}, Llewa/util/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 234
    .end local v4           #snapshot:Llewa/util/DiskLruCache$Snapshot;
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Ljava/io/IOException;
    :try_start_5
    const-string v5, "ImageCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addBitmapToCache - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 240
    if-eqz v3, :cond_5

    .line 241
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 243
    :catch_1
    move-exception v5

    goto :goto_2

    .line 236
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v5, "ImageCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addBitmapToCache - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 240
    if-eqz v3, :cond_5

    .line 241
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 243
    :catch_3
    move-exception v5

    goto :goto_2

    .line 239
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    .line 240
    if-eqz v3, :cond_7

    .line 241
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 243
    :cond_7
    :goto_3
    :try_start_a
    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .restart local v4       #snapshot:Llewa/util/DiskLruCache$Snapshot;
    :catch_4
    move-exception v5

    goto :goto_2

    .end local v4           #snapshot:Llewa/util/DiskLruCache$Snapshot;
    :catch_5
    move-exception v7

    goto :goto_3
.end method

.method public clearCache()V
    .locals 5

    .prologue
    .line 322
    iget-object v1, p0, Llewa/util/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Llewa/util/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 329
    :cond_0
    iget-object v2, p0, Llewa/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 330
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Llewa/util/ImageCache;->mDiskCacheStarting:Z

    .line 331
    iget-object v1, p0, Llewa/util/ImageCache;->mDiskLruCache:Llewa/util/DiskLruCache;

    if-eqz v1, :cond_1

    iget-object v1, p0, Llewa/util/ImageCache;->mDiskLruCache:Llewa/util/DiskLruCache;

    invoke-virtual {v1}, Llewa/util/DiskLruCache;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 333
    :try_start_1
    iget-object v1, p0, Llewa/util/ImageCache;->mDiskLruCache:Llewa/util/DiskLruCache;

    invoke-virtual {v1}, Llewa/util/DiskLruCache;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 340
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Llewa/util/ImageCache;->mDiskLruCache:Llewa/util/DiskLruCache;

    .line 341
    invoke-virtual {p0}, Llewa/util/ImageCache;->initDiskCache()V

    .line 343
    :cond_1
    monitor-exit v2

    .line 344
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCache - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 5

    .prologue
    .line 370
    iget-object v2, p0, Llewa/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 371
    :try_start_0
    iget-object v1, p0, Llewa/util/ImageCache;->mDiskLruCache:Llewa/util/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 373
    :try_start_1
    iget-object v1, p0, Llewa/util/ImageCache;->mDiskLruCache:Llewa/util/DiskLruCache;

    invoke-virtual {v1}, Llewa/util/DiskLruCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    iget-object v1, p0, Llewa/util/ImageCache;->mDiskLruCache:Llewa/util/DiskLruCache;

    invoke-virtual {v1}, Llewa/util/DiskLruCache;->close()V

    .line 375
    const/4 v1, 0x0

    iput-object v1, p0, Llewa/util/ImageCache;->mDiskLruCache:Llewa/util/DiskLruCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 384
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 385
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public flush()V
    .locals 5

    .prologue
    .line 351
    iget-object v2, p0, Llewa/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 352
    :try_start_0
    iget-object v1, p0, Llewa/util/ImageCache;->mDiskLruCache:Llewa/util/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 354
    :try_start_1
    iget-object v1, p0, Llewa/util/ImageCache;->mDiskLruCache:Llewa/util/DiskLruCache;

    invoke-virtual {v1}, Llewa/util/DiskLruCache;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 362
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 363
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ImageCache"

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

    .line 362
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "data"

    .prologue
    .line 282
    invoke-static {p1}, Llewa/util/ImageCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, key:Ljava/lang/String;
    iget-object v6, p0, Llewa/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v6

    .line 284
    :goto_0
    :try_start_0
    iget-boolean v5, p0, Llewa/util/ImageCache;->mDiskCacheStarting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 286
    :try_start_1
    iget-object v5, p0, Llewa/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v5

    goto :goto_0

    .line 289
    :cond_0
    :try_start_2
    iget-object v5, p0, Llewa/util/ImageCache;->mDiskLruCache:Llewa/util/DiskLruCache;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_3

    .line 290
    const/4 v2, 0x0

    .line 292
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_3
    iget-object v5, p0, Llewa/util/ImageCache;->mDiskLruCache:Llewa/util/DiskLruCache;

    invoke-virtual {v5, v3}, Llewa/util/DiskLruCache;->get(Ljava/lang/String;)Llewa/util/DiskLruCache$Snapshot;

    move-result-object v4

    .line 293
    .local v4, snapshot:Llewa/util/DiskLruCache$Snapshot;
    if-eqz v4, :cond_2

    .line 297
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Llewa/util/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v2

    .line 298
    if-eqz v2, :cond_2

    .line 299
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 307
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 308
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 310
    :cond_1
    :goto_1
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 313
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v4           #snapshot:Llewa/util/DiskLruCache$Snapshot;
    :goto_2
    return-object v0

    .line 307
    .restart local v2       #inputStream:Ljava/io/InputStream;
    .restart local v4       #snapshot:Llewa/util/DiskLruCache$Snapshot;
    :cond_2
    if-eqz v2, :cond_3

    .line 308
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 313
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v4           #snapshot:Llewa/util/DiskLruCache$Snapshot;
    :cond_3
    :goto_3
    const/4 v0, 0x0

    :try_start_7
    monitor-exit v6

    goto :goto_2

    .line 314
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v5

    .line 303
    .restart local v2       #inputStream:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 304
    .local v1, e:Ljava/io/IOException;
    :try_start_8
    const-string v5, "ImageCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBitmapFromDiskCache - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 307
    if-eqz v2, :cond_3

    .line 308
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    .line 310
    :catch_2
    move-exception v5

    goto :goto_3

    .line 306
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    .line 307
    if-eqz v2, :cond_4

    .line 308
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 310
    :cond_4
    :goto_4
    :try_start_b
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #snapshot:Llewa/util/DiskLruCache$Snapshot;
    :catch_3
    move-exception v5

    goto :goto_1

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_4
    move-exception v5

    goto :goto_3

    .end local v4           #snapshot:Llewa/util/DiskLruCache$Snapshot;
    :catch_5
    move-exception v7

    goto :goto_4
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 256
    iget-object v2, p0, Llewa/util/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v2, :cond_1

    .line 257
    iget-object v2, p0, Llewa/util/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 258
    .local v0, memBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Llewa/util/ImageCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 272
    .end local v0           #memBitmap:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public initDiskCache()V
    .locals 8

    .prologue
    .line 169
    iget-object v3, p0, Llewa/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 170
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Llewa/util/ImageCache;->mDiskCacheStarting:Z

    .line 171
    iget-object v2, p0, Llewa/util/ImageCache;->mDiskLruCache:Llewa/util/DiskLruCache;

    if-eqz v2, :cond_0

    iget-object v2, p0, Llewa/util/ImageCache;->mDiskLruCache:Llewa/util/DiskLruCache;

    invoke-virtual {v2}, Llewa/util/DiskLruCache;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    :cond_0
    iget-object v2, p0, Llewa/util/ImageCache;->mCacheParams:Llewa/util/ImageCache$ImageCacheParams;

    iget-object v0, v2, Llewa/util/ImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 173
    .local v0, diskCacheDir:Ljava/io/File;
    iget-object v2, p0, Llewa/util/ImageCache;->mCacheParams:Llewa/util/ImageCache$ImageCacheParams;

    iget-boolean v2, v2, Llewa/util/ImageCache$ImageCacheParams;->diskCacheEnabled:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 177
    :cond_1
    invoke-static {v0}, Llewa/util/ImageCache;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v4

    iget-object v2, p0, Llewa/util/ImageCache;->mCacheParams:Llewa/util/ImageCache$ImageCacheParams;

    iget v2, v2, Llewa/util/ImageCache$ImageCacheParams;->diskCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    .line 179
    const/4 v2, 0x1

    const/4 v4, 0x1

    :try_start_1
    iget-object v5, p0, Llewa/util/ImageCache;->mCacheParams:Llewa/util/ImageCache$ImageCacheParams;

    iget v5, v5, Llewa/util/ImageCache$ImageCacheParams;->diskCacheSize:I

    int-to-long v5, v5

    invoke-static {v0, v2, v4, v5, v6}, Llewa/util/DiskLruCache;->open(Ljava/io/File;IIJ)Llewa/util/DiskLruCache;

    move-result-object v2

    iput-object v2, p0, Llewa/util/ImageCache;->mDiskLruCache:Llewa/util/DiskLruCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    .end local v0           #diskCacheDir:Ljava/io/File;
    :cond_2
    :goto_0
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Llewa/util/ImageCache;->mDiskCacheStarting:Z

    .line 192
    iget-object v2, p0, Llewa/util/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 193
    monitor-exit v3

    .line 194
    return-void

    .line 184
    .restart local v0       #diskCacheDir:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 185
    .local v1, e:Ljava/io/IOException;
    iget-object v2, p0, Llewa/util/ImageCache;->mCacheParams:Llewa/util/ImageCache$ImageCacheParams;

    const/4 v4, 0x0

    iput-object v4, v2, Llewa/util/ImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 186
    const-string v2, "ImageCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initDiskCache - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    .end local v0           #diskCacheDir:Ljava/io/File;
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
