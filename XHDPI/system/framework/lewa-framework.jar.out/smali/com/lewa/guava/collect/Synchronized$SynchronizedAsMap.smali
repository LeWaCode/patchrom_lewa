.class Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;
.super Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;
.source "Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedAsMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/Synchronized$SynchronizedMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient asMapEntrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end field

.field private transient asMapValues:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .end parameter
    .parameter "mutex"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1337
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap<TK;TV;>;"
    .local p1, delegate:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    invoke-direct {p0, p1, p2}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1338
    return-void
.end method


# virtual methods
.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 1370
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1349
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1350
    :try_start_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;->asMapEntrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1351
    new-instance v0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;

    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;->delegate()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;->asMapEntrySet:Ljava/util/Set;

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;->asMapEntrySet:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 1355
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1330
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1341
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap<TK;TV;>;"
    iget-object v2, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1342
    :try_start_0
    invoke-super {p0, p1}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1343
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    #calls: Lcom/lewa/guava/collect/Synchronized;->typePreservingCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    invoke-static {v0, v1}, Lcom/lewa/guava/collect/Synchronized;->access$000(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0

    .line 1345
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public values()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1359
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1360
    :try_start_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;->asMapValues:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 1361
    new-instance v0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues;

    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;->delegate()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;->asMapValues:Ljava/util/Collection;

    .line 1364
    :cond_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;->asMapValues:Ljava/util/Collection;

    monitor-exit v1

    return-object v0

    .line 1365
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
