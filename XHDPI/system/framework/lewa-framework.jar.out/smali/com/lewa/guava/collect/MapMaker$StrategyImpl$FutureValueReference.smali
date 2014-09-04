.class Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/lewa/guava/collect/MapMaker$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/MapMaker$StrategyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FutureValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lewa/guava/collect/MapMaker$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final newEntry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final original:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/MapMaker$StrategyImpl;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 675
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>.FutureValueReference;"
    .local p2, original:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    .local p3, newEntry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object p2, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    .line 677
    iput-object p3, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;->newEntry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    .line 678
    return-void
.end method


# virtual methods
.method public copyFor(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Lcom/lewa/guava/collect/MapMaker$ValueReference;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/lewa/guava/collect/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 694
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>.FutureValueReference;"
    .local p1, entry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    new-instance v0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;

    iget-object v1, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;

    iget-object v2, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    invoke-direct {v0, v1, v2, p1}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;-><init>(Lcom/lewa/guava/collect/MapMaker$StrategyImpl;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)V

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 681
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>.FutureValueReference;"
    const/4 v0, 0x0

    .line 683
    .local v0, success:Z
    :try_start_0
    iget-object v2, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    invoke-interface {v2}, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;->getValueReference()Lcom/lewa/guava/collect/MapMaker$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Lcom/lewa/guava/collect/MapMaker$ValueReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 684
    .local v1, value:Ljava/lang/Object;,"TV;"
    const/4 v0, 0x1

    .line 687
    if-nez v0, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;->removeEntry()V

    :cond_0
    return-object v1

    .line 687
    .end local v1           #value:Ljava/lang/Object;,"TV;"
    :catchall_0
    move-exception v2

    if-nez v0, :cond_1

    .line 688
    invoke-virtual {p0}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;->removeEntry()V

    :cond_1
    throw v2
.end method

.method removeEntry()V
    .locals 2

    .prologue
    .line 718
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>.FutureValueReference;"
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;

    iget-object v0, v0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->internals:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;

    iget-object v1, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;->newEntry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    invoke-interface {v0, v1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;->removeEntry(Ljava/lang/Object;)Z

    .line 719
    return-void
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 698
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl<TK;TV;>.FutureValueReference;"
    const/4 v0, 0x0

    .line 701
    .local v0, success:Z
    :try_start_0
    iget-object v2, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;

    iget-object v3, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    invoke-virtual {v2, v3}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->waitForValue(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 702
    .local v1, value:Ljava/lang/Object;,"TV;"
    const/4 v0, 0x1

    .line 705
    if-nez v0, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;->removeEntry()V

    :cond_0
    return-object v1

    .line 705
    .end local v1           #value:Ljava/lang/Object;,"TV;"
    :catchall_0
    move-exception v2

    if-nez v0, :cond_1

    .line 706
    invoke-virtual {p0}, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$FutureValueReference;->removeEntry()V

    :cond_1
    throw v2
.end method
