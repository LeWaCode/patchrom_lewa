.class public Llewa/laml/util/RendererCoreCache;
.super Ljava/lang/Object;
.source "RendererCoreCache.java"

# interfaces
.implements Llewa/laml/RendererCore$OnReleaseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/util/RendererCoreCache$RendererCoreInfo;,
        Llewa/laml/util/RendererCoreCache$CheckCacheRunnable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererCoreCache"

.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field public static final TIME_MIN:I = 0xea60


# instance fields
.field private mCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Llewa/laml/util/RendererCoreCache$RendererCoreInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llewa/laml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Llewa/laml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llewa/laml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    .line 31
    iput-object p1, p0, Llewa/laml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method static synthetic access$000(Llewa/laml/util/RendererCoreCache;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Llewa/laml/util/RendererCoreCache;->checkCache(Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized checkCache(Ljava/lang/Object;)V
    .locals 7
    .parameter "key"

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    const-string v3, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v3, p0, Llewa/laml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;

    .line 37
    .local v0, ri:Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    if-nez v0, :cond_1

    .line 38
    const-string v3, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCache: the key does not exist, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 39
    :cond_1
    :try_start_1
    iget-wide v3, v0, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    sub-long v1, v3, v5

    .line 41
    .local v1, t:J
    iget-wide v3, v0, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_2

    .line 42
    iget-object v3, p0, Llewa/laml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v3, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCache removed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    .end local v0           #ri:Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    .end local v1           #t:J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 45
    .restart local v0       #ri:Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    .restart local v1       #t:J
    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_3

    .line 46
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    .line 47
    const-wide/16 v1, 0x0

    .line 49
    :cond_3
    iget-object v3, p0, Llewa/laml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Llewa/laml/util/RendererCoreCache$CheckCacheRunnable;

    iget-wide v5, v0, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    sub-long/2addr v5, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    const-string v3, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCache resheduled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized get(Ljava/lang/Object;Landroid/content/Context;JLlewa/laml/ResourceLoader;Ljava/lang/String;Landroid/os/Handler;)Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    .locals 5
    .parameter "key"
    .parameter "context"
    .parameter "cacheTime"
    .parameter "loader"
    .parameter "path"
    .parameter "h"

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p3, p4}, Llewa/laml/util/RendererCoreCache;->get(Ljava/lang/Object;J)Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 102
    .local v1, ri:Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 114
    .end local v1           #ri:Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    .local v2, ri:Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 104
    .end local v2           #ri:Ljava/lang/Object;
    .restart local v1       #ri:Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    :cond_0
    if-nez p5, :cond_2

    :try_start_1
    invoke-static {p2, p6, p7}, Llewa/laml/RendererCore;->createFromZipFile(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)Llewa/laml/RendererCore;

    move-result-object v0

    .line 106
    .local v0, r:Llewa/laml/RendererCore;
    :goto_1
    new-instance v1, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;

    .end local v1           #ri:Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    invoke-direct {v1, v0}, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;-><init>(Llewa/laml/RendererCore;)V

    .line 107
    .restart local v1       #ri:Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, v1, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    .line 108
    iput-wide p3, v1, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    .line 109
    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0, p0}, Llewa/laml/RendererCore;->setOnReleaseListener(Llewa/laml/RendererCore$OnReleaseListener;)V

    .line 111
    new-instance v3, Llewa/laml/util/RendererCoreCache$CheckCacheRunnable;

    invoke-direct {v3, p0, p1}, Llewa/laml/util/RendererCoreCache$CheckCacheRunnable;-><init>(Llewa/laml/util/RendererCoreCache;Ljava/lang/Object;)V

    iput-object v3, v1, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Llewa/laml/util/RendererCoreCache$CheckCacheRunnable;

    .line 113
    :cond_1
    iget-object v3, p0, Llewa/laml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 114
    .restart local v2       #ri:Ljava/lang/Object;
    goto :goto_0

    .line 104
    .end local v0           #r:Llewa/laml/RendererCore;
    .end local v2           #ri:Ljava/lang/Object;
    :cond_2
    invoke-static {p2, p5, p7}, Llewa/laml/RendererCore;->create(Landroid/content/Context;Llewa/laml/ResourceLoader;Landroid/os/Handler;)Llewa/laml/RendererCore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 101
    .end local v1           #ri:Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public declared-synchronized OnRendererCoreReleased(Llewa/laml/RendererCore;)V
    .locals 5
    .parameter "rc"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    const-string v2, "RendererCoreCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnRendererCoreReleased: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v2, p0, Llewa/laml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 58
    .local v0, en:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Llewa/laml/util/RendererCoreCache$RendererCoreInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;

    iget-object v2, v2, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->r:Llewa/laml/RendererCore;

    if-ne v2, p1, :cond_0

    .line 59
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Llewa/laml/util/RendererCoreCache;->release(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .end local v0           #en:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Llewa/laml/util/RendererCoreCache$RendererCoreInfo;>;"
    :cond_1
    monitor-exit p0

    return-void

    .line 56
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Llewa/laml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;J)Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    .locals 3
    .parameter "key"
    .parameter "cacheTime"

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Llewa/laml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;

    .line 91
    .local v0, ri:Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    if-eqz v0, :cond_0

    .line 92
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v0, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    .line 93
    iput-wide p2, v0, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    .line 94
    iget-object v1, p0, Llewa/laml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Llewa/laml/util/RendererCoreCache$CheckCacheRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    monitor-exit p0

    return-object v0

    .line 90
    .end local v0           #ri:Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(Ljava/lang/Object;Landroid/content/Context;JLjava/lang/String;)Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    .locals 7
    .parameter "key"
    .parameter "context"
    .parameter "cacheTime"
    .parameter "path"

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Llewa/laml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLjava/lang/String;Landroid/os/Handler;)Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;Landroid/content/Context;JLjava/lang/String;Landroid/os/Handler;)Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    .locals 8
    .parameter "key"
    .parameter "context"
    .parameter "cacheTime"
    .parameter "path"
    .parameter "h"

    .prologue
    .line 76
    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v6, p5

    move-object v7, p6

    :try_start_0
    invoke-direct/range {v0 .. v7}, Llewa/laml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLlewa/laml/ResourceLoader;Ljava/lang/String;Landroid/os/Handler;)Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;Landroid/content/Context;JLlewa/laml/ResourceLoader;)Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    .locals 8
    .parameter "key"
    .parameter "context"
    .parameter "cacheTime"
    .parameter "loader"

    .prologue
    .line 86
    monitor-enter p0

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Llewa/laml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLlewa/laml/ResourceLoader;Ljava/lang/String;Landroid/os/Handler;)Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;Landroid/content/Context;JLlewa/laml/ResourceLoader;Landroid/os/Handler;)Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    .locals 8
    .parameter "key"
    .parameter "context"
    .parameter "cacheTime"
    .parameter "loader"
    .parameter "h"

    .prologue
    .line 81
    monitor-enter p0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v7, p6

    :try_start_0
    invoke-direct/range {v0 .. v7}, Llewa/laml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLlewa/laml/ResourceLoader;Ljava/lang/String;Landroid/os/Handler;)Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release(Ljava/lang/Object;)V
    .locals 5
    .parameter "key"

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    const-string v1, "RendererCoreCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Llewa/laml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;

    .line 120
    .local v0, ri:Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    .line 122
    iget-wide v1, v0, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 123
    iget-object v1, p0, Llewa/laml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "RendererCoreCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :cond_1
    :try_start_1
    const-string v1, "RendererCoreCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduled release: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Llewa/laml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Llewa/laml/util/RendererCoreCache$CheckCacheRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    iget-object v1, p0, Llewa/laml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Llewa/laml/util/RendererCoreCache$CheckCacheRunnable;

    iget-wide v3, v0, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    .end local v0           #ri:Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
