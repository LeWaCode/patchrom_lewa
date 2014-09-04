.class Lcom/lewa/guava/collect/Synchronized$SynchronizedList;
.super Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
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
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedList;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedList<TE;>;"
    .local p1, delegate:Ljava/util/List;,"Ljava/util/List<TE;>;"
    invoke-direct {p0, p1, p2}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 417
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedList;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedList<TE;>;"
    .local p2, element:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 426
    monitor-exit v1

    .line 427
    return-void

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedList;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedList<TE;>;"
    .local p2, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 431
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 432
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
    .line 413
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedList;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedList<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 413
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedList;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedList<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedList;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedList<TE;>;"
    invoke-super {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 481
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedList;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedList<TE;>;"
    if-ne p1, p0, :cond_0

    .line 482
    const/4 v0, 0x1

    .line 485
    :goto_0
    return v0

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 485
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 436
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedList;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedList<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 437
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 438
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
    .line 490
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedList;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedList<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 491
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    monitor-exit v1

    return v0

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 442
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedList;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedList<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 448
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedList;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedList<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 449
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedList;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedList<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedList;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedList<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 462
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedList;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedList<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 463
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 468
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedList;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedList<TE;>;"
    .local p2, element:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 469
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation build Lcom/lewa/guava/annotations/GwtIncompatible;
        value = "List.subList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 475
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedList;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedList<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 476
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/lewa/guava/collect/Platform;->subList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/lewa/guava/collect/Synchronized;->list(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
