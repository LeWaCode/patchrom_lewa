.class Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;
.super Lcom/lewa/guava/collect/Synchronized$SynchronizedObject;
.source "Synchronized.java"

# interfaces
.implements Lcom/lewa/guava/collect/Multimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/Synchronized$SynchronizedObject;",
        "Lcom/lewa/guava/collect/Multimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient asMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field transient entries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient keys:Lcom/lewa/guava/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/Multiset",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient valuesCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/Multimap;Ljava/lang/Object;)V
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
            "Lcom/lewa/guava/collect/Multimap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 663
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, delegate:Lcom/lewa/guava/collect/Multimap;,"Lcom/lewa/guava/collect/Multimap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/lewa/guava/collect/Synchronized$SynchronizedObject;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 664
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 772
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 773
    :try_start_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 774
    new-instance v0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;

    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v2

    invoke-interface {v2}, Lcom/lewa/guava/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    monitor-exit v1

    return-object v0

    .line 777
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 739
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 740
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/lewa/guava/collect/Multimap;->clear()V

    .line 741
    monitor-exit v1

    .line 742
    return-void

    .line 741
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 691
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 692
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lewa/guava/collect/Multimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 679
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 680
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lewa/guava/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 681
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 685
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 686
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lewa/guava/collect/Multimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected delegate()Lcom/lewa/guava/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 659
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedObject;->delegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/collect/Multimap;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 649
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 763
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 765
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/lewa/guava/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    #calls: Lcom/lewa/guava/collect/Synchronized;->typePreservingCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    invoke-static {v0, v2}, Lcom/lewa/guava/collect/Synchronized;->access$000(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    monitor-exit v1

    return-object v0

    .line 768
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 790
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    if-ne p1, p0, :cond_0

    .line 791
    const/4 v0, 0x1

    .line 794
    :goto_0
    return v0

    .line 793
    :cond_0
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 794
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 795
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 697
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 698
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lewa/guava/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    #calls: Lcom/lewa/guava/collect/Synchronized;->typePreservingCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    invoke-static {v0, v2}, Lcom/lewa/guava/collect/Synchronized;->access$000(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 699
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 799
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 800
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    monitor-exit v1

    return v0

    .line 801
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 673
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 674
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/lewa/guava/collect/Multimap;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 675
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 745
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 747
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/lewa/guava/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/lewa/guava/collect/Synchronized;->typePreservingSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 750
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public keys()Lcom/lewa/guava/collect/Multiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/Multiset",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 781
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 782
    :try_start_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->keys:Lcom/lewa/guava/collect/Multiset;

    if-nez v0, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/lewa/guava/collect/Multimap;->keys()Lcom/lewa/guava/collect/Multiset;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    #calls: Lcom/lewa/guava/collect/Synchronized;->multiset(Lcom/lewa/guava/collect/Multiset;Ljava/lang/Object;)Lcom/lewa/guava/collect/Multiset;
    invoke-static {v0, v2}, Lcom/lewa/guava/collect/Synchronized;->access$100(Lcom/lewa/guava/collect/Multiset;Ljava/lang/Object;)Lcom/lewa/guava/collect/Multiset;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->keys:Lcom/lewa/guava/collect/Multiset;

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->keys:Lcom/lewa/guava/collect/Multiset;

    monitor-exit v1

    return-object v0

    .line 786
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 703
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 704
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lewa/guava/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 705
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putAll(Lcom/lewa/guava/collect/Multimap;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/Multimap",
            "<+TK;+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 715
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, multimap:Lcom/lewa/guava/collect/Multimap;,"Lcom/lewa/guava/collect/Multimap<+TK;+TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 716
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lewa/guava/collect/Multimap;->putAll(Lcom/lewa/guava/collect/Multimap;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 717
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 709
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 710
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lewa/guava/collect/Multimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 727
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 728
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lewa/guava/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
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
    .line 733
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 734
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lewa/guava/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 735
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 721
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 722
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lewa/guava/collect/Multimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 667
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 668
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/lewa/guava/collect/Multimap;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 669
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 754
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 756
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/lewa/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/lewa/guava/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/lewa/guava/collect/Synchronized;->collection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    monitor-exit v1

    return-object v0

    .line 759
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
