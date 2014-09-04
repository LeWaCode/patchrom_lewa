.class final Lcom/lewa/guava/collect/Iterators$5;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field current:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field

.field removeFrom:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final synthetic val$inputs:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lcom/lewa/guava/collect/Iterators$5;->val$inputs:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    invoke-static {}, Lcom/lewa/guava/collect/Iterators;->emptyIterator()Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/Iterators$5;->current:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 538
    :goto_0
    iget-object v1, p0, Lcom/lewa/guava/collect/Iterators$5;->current:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .local v0, currentHasNext:Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/lewa/guava/collect/Iterators$5;->val$inputs:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/lewa/guava/collect/Iterators$5;->val$inputs:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    iput-object v1, p0, Lcom/lewa/guava/collect/Iterators$5;->current:Ljava/util/Iterator;

    goto :goto_0

    .line 541
    :cond_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Iterators$5;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Iterators$5;->current:Ljava/util/Iterator;

    iput-object v0, p0, Lcom/lewa/guava/collect/Iterators$5;->removeFrom:Ljava/util/Iterator;

    .line 548
    iget-object v0, p0, Lcom/lewa/guava/collect/Iterators$5;->current:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/lewa/guava/collect/Iterators$5;->removeFrom:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "no calls to next() since last call to remove()"

    invoke-static {v0, v1}, Lcom/lewa/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 553
    iget-object v0, p0, Lcom/lewa/guava/collect/Iterators$5;->removeFrom:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lewa/guava/collect/Iterators$5;->removeFrom:Ljava/util/Iterator;

    .line 555
    return-void

    .line 551
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
