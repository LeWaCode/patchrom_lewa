.class Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;
.super Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;
.source "Synchronized.java"

# interfaces
.implements Lcom/lewa/guava/collect/Multiset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedMultiset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection",
        "<TE;>;",
        "Lcom/lewa/guava/collect/Multiset",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient elementSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/lewa/guava/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lewa/guava/collect/Multiset;Ljava/lang/Object;)V
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
            "Lcom/lewa/guava/collect/Multiset",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 543
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset<TE;>;"
    .local p1, delegate:Lcom/lewa/guava/collect/Multiset;,"Lcom/lewa/guava/collect/Multiset<TE;>;"
    invoke-direct {p0, p1, p2}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 544
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 2
    .parameter
    .parameter "n"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 558
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/lewa/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lewa/guava/collect/Multiset;->add(Ljava/lang/Object;I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 551
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 552
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/lewa/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lewa/guava/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected delegate()Lcom/lewa/guava/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 547
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset<TE;>;"
    invoke-super {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/collect/Multiset;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 537
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/lewa/guava/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 537
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/lewa/guava/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 581
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/lewa/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/lewa/guava/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/lewa/guava/collect/Synchronized;->typePreservingSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/lewa/guava/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 590
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/lewa/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/lewa/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/lewa/guava/collect/Synchronized;->typePreservingSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 595
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
    .line 599
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset<TE;>;"
    if-ne p1, p0, :cond_0

    .line 600
    const/4 v0, 0x1

    .line 603
    :goto_0
    return v0

    .line 602
    :cond_0
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 603
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/lewa/guava/collect/Multiset;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 604
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
    .line 608
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 609
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/lewa/guava/collect/Multiset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    monitor-exit v1

    return v0

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 2
    .parameter "o"
    .parameter "n"

    .prologue
    .line 563
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 564
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/lewa/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lewa/guava/collect/Multiset;->remove(Ljava/lang/Object;I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 2
    .parameter
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 570
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/lewa/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lewa/guava/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 2
    .parameter
    .parameter "oldCount"
    .parameter "newCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .prologue
    .line 575
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 576
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/lewa/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lewa/guava/collect/Multiset;->setCount(Ljava/lang/Object;II)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
