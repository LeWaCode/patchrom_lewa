.class public Llewa/laml/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/ResourceManager$BitmapInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ResourceManager"


# instance fields
.field protected final mBitmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Llewa/laml/ResourceManager$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraResourceDensity:I

.field private mExtraResourceFolder:Ljava/lang/String;

.field private mExtraResourceScreenWidth:I

.field private final mFailedBitmaps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaskBitmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mNinePatches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/NinePatch;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceDensity:I

.field private final mResourceLoader:Llewa/laml/ResourceLoader;

.field private mTargetDensity:I


# direct methods
.method public constructor <init>(Llewa/laml/ResourceLoader;)V
    .locals 1
    .parameter "resourceLoader"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llewa/laml/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Llewa/laml/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llewa/laml/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    .line 45
    iput-object p1, p0, Llewa/laml/ResourceManager;->mResourceLoader:Llewa/laml/ResourceLoader;

    .line 46
    return-void
.end method

.method private getBitmapInfo(Ljava/lang/String;)Llewa/laml/ResourceManager$BitmapInfo;
    .locals 7
    .parameter "src"

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 107
    :goto_0
    return-object v0

    .line 64
    :cond_0
    iget-object v4, p0, Llewa/laml/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    monitor-enter v4

    .line 65
    :try_start_0
    iget-object v5, p0, Llewa/laml/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/ResourceManager$BitmapInfo;

    .line 67
    .local v0, info:Llewa/laml/ResourceManager$BitmapInfo;
    if-eqz v0, :cond_1

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Llewa/laml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 69
    monitor-exit v4

    goto :goto_0

    .line 72
    .end local v0           #info:Llewa/laml/ResourceManager$BitmapInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #info:Llewa/laml/ResourceManager$BitmapInfo;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    iget-object v4, p0, Llewa/laml/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v3

    .line 75
    goto :goto_0

    .line 77
    :cond_2
    const-string v3, "ResourceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load image "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v2, 0x1

    .line 80
    .local v2, useDefaultResource:Z
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 81
    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    const-string v3, ".9.png"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 82
    iget v3, p0, Llewa/laml/ResourceManager;->mTargetDensity:I

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 83
    iget v3, p0, Llewa/laml/ResourceManager;->mExtraResourceScreenWidth:I

    if-eqz v3, :cond_3

    .line 84
    iget v3, p0, Llewa/laml/ResourceManager;->mExtraResourceDensity:I

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 85
    iget-object v3, p0, Llewa/laml/ResourceManager;->mResourceLoader:Llewa/laml/ResourceLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Llewa/laml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Llewa/laml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Llewa/laml/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    const/4 v2, 0x0

    .line 91
    :cond_3
    if-nez v0, :cond_4

    .line 92
    iget v3, p0, Llewa/laml/ResourceManager;->mResourceDensity:I

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 93
    iget-object v3, p0, Llewa/laml/ResourceManager;->mResourceLoader:Llewa/laml/ResourceLoader;

    invoke-virtual {v3, p1, v1}, Llewa/laml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Llewa/laml/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 95
    :cond_4
    if-eqz v0, :cond_7

    .line 96
    if-nez v2, :cond_5

    .line 97
    const-string v3, "ResourceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load image from extra resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Llewa/laml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_5
    iget-object v3, v0, Llewa/laml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    iget v4, p0, Llewa/laml/ResourceManager;->mTargetDensity:I

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Llewa/laml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 100
    iget-object v4, p0, Llewa/laml/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    monitor-enter v4

    .line 101
    :try_start_2
    iget-object v3, p0, Llewa/laml/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 81
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 105
    :cond_7
    iget-object v3, p0, Llewa/laml/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v3, "ResourceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to load image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static translateDensity(I)I
    .locals 0
    .parameter "density"

    .prologue
    .line 229
    return p0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 111
    iget-object v2, p0, Llewa/laml/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/ResourceManager$BitmapInfo;

    .line 112
    .local v0, bi:Llewa/laml/ResourceManager$BitmapInfo;
    iget-object v2, v0, Llewa/laml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, v0, Llewa/laml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 117
    .end local v0           #bi:Llewa/laml/ResourceManager$BitmapInfo;
    :cond_1
    iget-object v2, p0, Llewa/laml/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 118
    iget-object v2, p0, Llewa/laml/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 119
    .local v0, bi:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 120
    .end local v0           #bi:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v2, p0, Llewa/laml/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 123
    :cond_3
    iget-object v2, p0, Llewa/laml/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 124
    iget-object v2, p0, Llewa/laml/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 125
    return-void
.end method

.method public finish(Z)V
    .locals 0
    .parameter "keepResource"

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    invoke-virtual {p0}, Llewa/laml/ResourceManager;->clear()V

    .line 130
    :cond_0
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "src"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Llewa/laml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Llewa/laml/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 134
    .local v0, info:Llewa/laml/ResourceManager$BitmapInfo;
    if-eqz v0, :cond_0

    .line 135
    iget-object v1, v0, Llewa/laml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 136
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "src"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Llewa/laml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Llewa/laml/ResourceManager$BitmapInfo;

    move-result-object v2

    .line 142
    .local v2, info:Llewa/laml/ResourceManager$BitmapInfo;
    if-eqz v2, :cond_1

    iget-object v4, v2, Llewa/laml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 143
    iget-object v0, v2, Llewa/laml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 144
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    if-eqz v4, :cond_0

    .line 145
    new-instance v3, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    iget-object v5, v2, Llewa/laml/ResourceManager$BitmapInfo;->mPadding:Landroid/graphics/Rect;

    invoke-direct {v3, v0, v4, v5, p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 148
    .local v3, ninePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;
    iget v4, p0, Llewa/laml/ResourceManager;->mTargetDensity:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    .line 156
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v3           #ninePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;
    :goto_0
    return-object v3

    .line 152
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 153
    .local v1, d:Landroid/graphics/drawable/BitmapDrawable;
    iget v4, p0, Llewa/laml/ResourceManager;->mTargetDensity:I

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    move-object v3, v1

    .line 154
    goto :goto_0

    .line 156
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #d:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 1
    .parameter "src"

    .prologue
    .line 160
    iget-object v0, p0, Llewa/laml/ResourceManager;->mResourceLoader:Llewa/laml/ResourceLoader;

    invoke-virtual {v0, p1}, Llewa/laml/ResourceLoader;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "path"

    .prologue
    .line 49
    iget-object v0, p0, Llewa/laml/ResourceManager;->mResourceLoader:Llewa/laml/ResourceLoader;

    invoke-virtual {v0, p1}, Llewa/laml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 1
    .parameter "path"
    .parameter "size"

    .prologue
    .line 53
    iget-object v0, p0, Llewa/laml/ResourceManager;->mResourceLoader:Llewa/laml/ResourceLoader;

    invoke-virtual {v0, p1, p2}, Llewa/laml/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Llewa/laml/ResourceManager;->mResourceLoader:Llewa/laml/ResourceLoader;

    invoke-virtual {v0}, Llewa/laml/ResourceLoader;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getMaskBufferBitmap(IILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "key"

    .prologue
    .line 168
    iget-object v3, p0, Llewa/laml/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 169
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Llewa/laml/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    .line 171
    :cond_0
    iget-object v3, p0, Llewa/laml/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 172
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lt v3, p2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v3, p1, :cond_3

    .line 173
    :cond_1
    if-eqz v1, :cond_2

    .line 174
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 176
    .local v2, bw:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 177
    .local v0, bh:I
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 178
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 179
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 182
    .end local v0           #bh:I
    .end local v2           #bw:I
    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 183
    iget v3, p0, Llewa/laml/ResourceManager;->mResourceDensity:I

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 184
    iget-object v3, p0, Llewa/laml/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_3
    return-object v1
.end method

.method public getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;
    .locals 4
    .parameter "src"

    .prologue
    .line 191
    iget-object v2, p0, Llewa/laml/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/NinePatch;

    .line 192
    .local v1, ret:Landroid/graphics/NinePatch;
    if-nez v1, :cond_0

    .line 193
    invoke-virtual {p0, p1}, Llewa/laml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 196
    new-instance v1, Landroid/graphics/NinePatch;

    .end local v1           #ret:Landroid/graphics/NinePatch;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 198
    .restart local v1       #ret:Landroid/graphics/NinePatch;
    iget-object v2, p0, Llewa/laml/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_0
    return-object v1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Llewa/laml/ResourceManager;->mResourceLoader:Llewa/laml/ResourceLoader;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public setExtraResourceDensity(I)V
    .locals 2
    .parameter "den"

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "den"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 212
    invoke-static {p1}, Llewa/laml/ResourceManager;->translateDensity(I)I

    move-result v0

    iput v0, p0, Llewa/laml/ResourceManager;->mExtraResourceDensity:I

    .line 213
    return-void
.end method

.method public setExtraResourceScreenWidth(I)V
    .locals 2
    .parameter "sw"

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 217
    iput p1, p0, Llewa/laml/ResourceManager;->mExtraResourceScreenWidth:I

    .line 218
    return-void
.end method

.method public setResourceDensity(I)V
    .locals 0
    .parameter "density"

    .prologue
    .line 221
    iput p1, p0, Llewa/laml/ResourceManager;->mResourceDensity:I

    .line 222
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 0
    .parameter "density"

    .prologue
    .line 225
    iput p1, p0, Llewa/laml/ResourceManager;->mTargetDensity:I

    .line 226
    return-void
.end method
