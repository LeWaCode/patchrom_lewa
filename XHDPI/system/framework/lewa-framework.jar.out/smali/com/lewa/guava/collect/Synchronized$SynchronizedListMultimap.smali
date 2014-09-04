.class Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;
.super Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;
.source "Synchronized.java"

# interfaces
.implements Lcom/lewa/guava/collect/ListMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedListMultimap"
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
        "Lcom/lewa/guava/collect/ListMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/ListMultimap;Ljava/lang/Object;)V
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
            "Lcom/lewa/guava/collect/ListMultimap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 826
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap<TK;TV;>;"
    .local p1, delegate:Lcom/lewa/guava/collect/ListMultimap;,"Lcom/lewa/guava/collect/ListMultimap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;-><init>(Lcom/lewa/guava/collect/Multimap;Ljava/lang/Object;)V

    .line 827
    return-void
.end method


# virtual methods
.method protected delegate()Lcom/lewa/guava/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 829
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/collect/ListMultimap;

    return-object v0
.end method

.method protected bridge synthetic delegate()Lcom/lewa/guava/collect/Multimap;
    .locals 1

    .prologue
    .line 822
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;->delegate()Lcom/lewa/guava/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 822
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;->delegate()Lcom/lewa/guava/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 822
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 832
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 833
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;->delegate()Lcom/lewa/guava/collect/ListMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lewa/guava/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/lewa/guava/collect/Synchronized;->list(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 834
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
    .line 822
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 837
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 838
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;->delegate()Lcom/lewa/guava/collect/ListMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lewa/guava/collect/ListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 839
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
    .line 822
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 843
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 844
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;->delegate()Lcom/lewa/guava/collect/ListMultimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lewa/guava/collect/ListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 845
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
