.class public Llewa/lockscreen/view/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/lockscreen/view/ResourceManager$SoftRefedBitmap;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourceManager"

.field private static element:Lorg/w3c/dom/Element;

.field private static mBitmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Llewa/lockscreen/view/ResourceManager$SoftRefedBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static mNinePatches:Ljava/util/HashMap;
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

.field private static queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lockscreenresourceloader:Llewa/lockscreen/LockScreenResourceLoader;

.field private final mLockScreenInterface:Llewa/lockscreen/LewaLockScreenInterface;

.field private mMaskBitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llewa/lockscreen/LockScreenResourceLoader;)V
    .locals 1
    .parameter "lockscreenresourceloader"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llewa/lockscreen/view/ResourceManager;-><init>(Llewa/lockscreen/LockScreenResourceLoader;Llewa/lockscreen/LewaLockScreenInterface;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Llewa/lockscreen/LockScreenResourceLoader;Llewa/lockscreen/LewaLockScreenInterface;)V
    .locals 1
    .parameter "lockscreenresourceloader"
    .parameter "lockScreenInterface"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Llewa/lockscreen/view/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llewa/lockscreen/view/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Llewa/lockscreen/view/ResourceManager;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 47
    :cond_0
    sget-object v0, Llewa/lockscreen/view/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llewa/lockscreen/view/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    .line 51
    :cond_1
    iput-object p1, p0, Llewa/lockscreen/view/ResourceManager;->lockscreenresourceloader:Llewa/lockscreen/LockScreenResourceLoader;

    .line 52
    iput-object p2, p0, Llewa/lockscreen/view/ResourceManager;->mLockScreenInterface:Llewa/lockscreen/LewaLockScreenInterface;

    .line 53
    return-void
.end method

.method public static clearCache()V
    .locals 5

    .prologue
    .line 119
    sget-object v4, Llewa/lockscreen/view/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    .line 120
    sget-object v4, Llewa/lockscreen/view/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 121
    .local v1, bitmapInfoIter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 123
    .local v2, entry:Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llewa/lockscreen/view/ResourceManager$SoftRefedBitmap;

    .line 124
    .local v3, srbmpInfo:Llewa/lockscreen/view/ResourceManager$SoftRefedBitmap;
    invoke-virtual {v3}, Llewa/lockscreen/view/ResourceManager$SoftRefedBitmap;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 125
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 130
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #entry:Ljava/util/Map$Entry;
    .end local v3           #srbmpInfo:Llewa/lockscreen/view/ResourceManager$SoftRefedBitmap;
    :cond_1
    sget-object v4, Llewa/lockscreen/view/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 131
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 133
    :cond_2
    sget-object v4, Llewa/lockscreen/view/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    if-eqz v4, :cond_3

    .line 134
    sget-object v4, Llewa/lockscreen/view/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 136
    :cond_3
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "imageName"

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    const/4 v3, 0x0

    .line 86
    :goto_0
    return-object v3

    .line 70
    :cond_0
    sget-object v3, Llewa/lockscreen/view/ResourceManager;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Llewa/lockscreen/view/ResourceManager$SoftRefedBitmap;

    .line 71
    .local v1, pollref:Llewa/lockscreen/view/ResourceManager$SoftRefedBitmap;
    if-eqz v1, :cond_1

    .line 72
    sget-object v3, Llewa/lockscreen/view/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    iget-object v4, v1, Llewa/lockscreen/view/ResourceManager$SoftRefedBitmap;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_1
    sget-object v3, Llewa/lockscreen/view/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/lockscreen/view/ResourceManager$SoftRefedBitmap;

    .line 75
    .local v2, srbmpInfo:Llewa/lockscreen/view/ResourceManager$SoftRefedBitmap;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Llewa/lockscreen/view/ResourceManager$SoftRefedBitmap;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 76
    invoke-virtual {v2}, Llewa/lockscreen/view/ResourceManager$SoftRefedBitmap;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :goto_1
    move-object v3, v0

    .line 86
    goto :goto_0

    .line 78
    :cond_2
    iget-object v3, p0, Llewa/lockscreen/view/ResourceManager;->lockscreenresourceloader:Llewa/lockscreen/LockScreenResourceLoader;

    invoke-virtual {v3, p1}, Llewa/lockscreen/LockScreenResourceLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    sget-object v3, Llewa/lockscreen/view/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    new-instance v4, Llewa/lockscreen/view/ResourceManager$SoftRefedBitmap;

    sget-object v5, Llewa/lockscreen/view/ResourceManager;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v4, p1, v0, v5}, Llewa/lockscreen/view/ResourceManager$SoftRefedBitmap;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 82
    :cond_3
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

    goto :goto_1
.end method

.method public getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "resources"
    .parameter "imageName"

    .prologue
    .line 139
    invoke-virtual {p0, p2}, Llewa/lockscreen/view/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 140
    .local v2, bitmap:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 141
    .local v0, obj:Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 152
    .end local v0           #obj:Ljava/lang/Object;
    :goto_0
    check-cast v0, Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 145
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 146
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 147
    .local v3, abyte0:[B
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    .end local v0           #obj:Ljava/lang/Object;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 148
    .local v0, obj:Landroid/graphics/drawable/NinePatchDrawable;
    goto :goto_0

    .line 149
    .end local v3           #abyte0:[B
    .local v0, obj:Ljava/lang/Object;
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #obj:Ljava/lang/Object;
    invoke-direct {v0, p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v0, obj:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 1
    .parameter "s"

    .prologue
    .line 157
    iget-object v0, p0, Llewa/lockscreen/view/ResourceManager;->lockscreenresourceloader:Llewa/lockscreen/LockScreenResourceLoader;

    invoke-virtual {v0, p1}, Llewa/lockscreen/LockScreenResourceLoader;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v0

    return-object v0
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 2

    .prologue
    .line 162
    sget-object v0, Llewa/lockscreen/view/ResourceManager;->element:Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/lockscreen/view/ResourceManager;->mLockScreenInterface:Llewa/lockscreen/LewaLockScreenInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llewa/lockscreen/view/ResourceManager;->mLockScreenInterface:Llewa/lockscreen/LewaLockScreenInterface;

    invoke-interface {v0}, Llewa/lockscreen/LewaLockScreenInterface;->getLockScreenChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    iget-object v0, p0, Llewa/lockscreen/view/ResourceManager;->lockscreenresourceloader:Llewa/lockscreen/LockScreenResourceLoader;

    invoke-virtual {v0}, Llewa/lockscreen/LockScreenResourceLoader;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v0

    sput-object v0, Llewa/lockscreen/view/ResourceManager;->element:Lorg/w3c/dom/Element;

    .line 165
    iget-object v0, p0, Llewa/lockscreen/view/ResourceManager;->mLockScreenInterface:Llewa/lockscreen/LewaLockScreenInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Llewa/lockscreen/LewaLockScreenInterface;->setLockScreenChanged(Z)V

    .line 167
    :cond_1
    sget-object v0, Llewa/lockscreen/view/ResourceManager;->element:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getMaskBufferBitmap(II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Llewa/lockscreen/view/ResourceManager;->mMaskBitmap:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Llewa/lockscreen/view/ResourceManager;->mMaskBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 177
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt v1, p2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 178
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Llewa/lockscreen/view/ResourceManager;->mMaskBitmap:Ljava/lang/ref/SoftReference;

    .line 181
    :cond_1
    return-object v0

    .line 175
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;
    .locals 4
    .parameter "ninePathName"

    .prologue
    .line 186
    sget-object v3, Llewa/lockscreen/view/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/NinePatch;

    .line 187
    .local v2, ninepatch:Landroid/graphics/NinePatch;
    if-nez v2, :cond_0

    .line 189
    invoke-virtual {p0, p1}, Llewa/lockscreen/view/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 190
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 192
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 193
    .local v0, abyte0:[B
    new-instance v2, Landroid/graphics/NinePatch;

    .end local v2           #ninepatch:Landroid/graphics/NinePatch;
    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 194
    .restart local v2       #ninepatch:Landroid/graphics/NinePatch;
    sget-object v3, Llewa/lockscreen/view/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .end local v0           #abyte0:[B
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-object v2
.end method
