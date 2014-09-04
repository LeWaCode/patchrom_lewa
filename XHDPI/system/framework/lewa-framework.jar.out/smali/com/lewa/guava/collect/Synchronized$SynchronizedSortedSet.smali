.class Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;
.super Lcom/lewa/guava/collect/Synchronized$SynchronizedSet;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/Synchronized$SynchronizedSet",
        "<TE;>;",
        "Ljava/util/SortedSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/util/SortedSet;Ljava/lang/Object;)V
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
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet<TE;>;"
    .local p1, delegate:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TE;>;"
    invoke-direct {p0, p1, p2}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    .line 335
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 343
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 330
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 330
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Set;
    .locals 1

    .prologue
    .line 330
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet<TE;>;"
    invoke-super {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 367
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet<TE;>;"
    .local p1, toElement:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/lewa/guava/collect/Synchronized;->sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 373
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 348
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    .local p2, toElement:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 349
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/lewa/guava/collect/Synchronized;->sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 360
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/lewa/guava/collect/Synchronized;->sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
