.class Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;
.super Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;
.source "Synchronized.java"

# interfaces
.implements Lcom/lewa/guava/collect/SortedSetMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedSortedSetMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap",
        "<TK;TV;>;",
        "Lcom/lewa/guava/collect/SortedSetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/SortedSetMultimap;Ljava/lang/Object;)V
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
            "Lcom/lewa/guava/collect/SortedSetMultimap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 921
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    .local p1, delegate:Lcom/lewa/guava/collect/SortedSetMultimap;,"Lcom/lewa/guava/collect/SortedSetMultimap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;-><init>(Lcom/lewa/guava/collect/SetMultimap;Ljava/lang/Object;)V

    .line 922
    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Lcom/lewa/guava/collect/Multimap;
    .locals 1

    .prologue
    .line 917
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lcom/lewa/guava/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Lcom/lewa/guava/collect/SetMultimap;
    .locals 1

    .prologue
    .line 917
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lcom/lewa/guava/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lcom/lewa/guava/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/SortedSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 924
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/lewa/guava/collect/SetMultimap;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/collect/SortedSetMultimap;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 917
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lcom/lewa/guava/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 917
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 917
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 927
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 928
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lcom/lewa/guava/collect/SortedSetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lewa/guava/collect/SortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/lewa/guava/collect/Synchronized;->sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 929
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
    .line 917
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 917
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 932
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 933
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lcom/lewa/guava/collect/SortedSetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lewa/guava/collect/SortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 934
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
    .line 917
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 917
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 938
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 939
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lcom/lewa/guava/collect/SortedSetMultimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lewa/guava/collect/SortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 940
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public valueComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation

    .prologue
    .line 943
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 944
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lcom/lewa/guava/collect/SortedSetMultimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/lewa/guava/collect/SortedSetMultimap;->valueComparator()Ljava/util/Comparator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 945
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
