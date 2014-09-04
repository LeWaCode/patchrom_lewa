.class Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;
.super Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;
.source "Synchronized.java"

# interfaces
.implements Lcom/lewa/guava/collect/SetMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedSetMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap",
        "<TK;TV;>;",
        "Lcom/lewa/guava/collect/SetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/SetMultimap;Ljava/lang/Object;)V
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
            "Lcom/lewa/guava/collect/SetMultimap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 870
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    .local p1, delegate:Lcom/lewa/guava/collect/SetMultimap;,"Lcom/lewa/guava/collect/SetMultimap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;-><init>(Lcom/lewa/guava/collect/Multimap;Ljava/lang/Object;)V

    .line 871
    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Lcom/lewa/guava/collect/Multimap;
    .locals 1

    .prologue
    .line 865
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/lewa/guava/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lcom/lewa/guava/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 873
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/collect/SetMultimap;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 865
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/lewa/guava/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 865
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 892
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 893
    :try_start_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 894
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/lewa/guava/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/lewa/guava/collect/SetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/lewa/guava/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;->entrySet:Ljava/util/Set;

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;->entrySet:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 897
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 865
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 876
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 877
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/lewa/guava/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lewa/guava/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/lewa/guava/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 878
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 865
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 881
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 882
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/lewa/guava/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lewa/guava/collect/SetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 883
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 865
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 887
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 888
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/lewa/guava/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lewa/guava/collect/SetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 889
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
