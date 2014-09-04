.class Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;
.super Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;
.source "Synchronized.java"

# interfaces
.implements Lcom/lewa/guava/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedBiMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/Synchronized$SynchronizedMap",
        "<TK;TV;>;",
        "Lcom/lewa/guava/collect/BiMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient inverse:Lcom/lewa/guava/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end field

.field private transient valueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lewa/guava/collect/BiMap;Ljava/lang/Object;Lcom/lewa/guava/collect/BiMap;)V
    .locals 0
    .parameter
    .end parameter
    .parameter "mutex"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/BiMap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            "Lcom/lewa/guava/collect/BiMap",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 1293
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    .local p1, delegate:Lcom/lewa/guava/collect/BiMap;,"Lcom/lewa/guava/collect/BiMap<TK;TV;>;"
    .local p3, inverse:Lcom/lewa/guava/collect/BiMap;,"Lcom/lewa/guava/collect/BiMap<TV;TK;>;"
    invoke-direct {p0, p1, p2}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1294
    iput-object p3, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;->inverse:Lcom/lewa/guava/collect/BiMap;

    .line 1295
    return-void
.end method


# virtual methods
.method protected delegate()Lcom/lewa/guava/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1298
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    invoke-super {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/collect/BiMap;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1285
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;->delegate()Lcom/lewa/guava/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Map;
    .locals 1

    .prologue
    .line 1285
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;->delegate()Lcom/lewa/guava/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1311
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1312
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;->delegate()Lcom/lewa/guava/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lewa/guava/collect/BiMap;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1313
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public inverse()Lcom/lewa/guava/collect/BiMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 1317
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1318
    :try_start_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;->inverse:Lcom/lewa/guava/collect/BiMap;

    if-nez v0, :cond_0

    .line 1319
    new-instance v0, Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;

    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;->delegate()Lcom/lewa/guava/collect/BiMap;

    move-result-object v2

    invoke-interface {v2}, Lcom/lewa/guava/collect/BiMap;->inverse()Lcom/lewa/guava/collect/BiMap;

    move-result-object v2

    iget-object v3, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3, p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;-><init>(Lcom/lewa/guava/collect/BiMap;Ljava/lang/Object;Lcom/lewa/guava/collect/BiMap;)V

    iput-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;->inverse:Lcom/lewa/guava/collect/BiMap;

    .line 1322
    :cond_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;->inverse:Lcom/lewa/guava/collect/BiMap;

    monitor-exit v1

    return-object v0

    .line 1323
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1285
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1302
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1303
    :try_start_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;->valueSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1304
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;->delegate()Lcom/lewa/guava/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/lewa/guava/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/lewa/guava/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;->valueSet:Ljava/util/Set;

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;->valueSet:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 1307
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
