.class final Lcom/lewa/guava/collect/Sets$1;
.super Lcom/lewa/guava/collect/Sets$SetView;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lcom/lewa/guava/collect/Sets$SetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/Sets$SetView",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$set1:Ljava/util/Set;

.field final synthetic val$set2:Ljava/util/Set;

.field final synthetic val$set2minus1:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/lewa/guava/collect/Sets$1;->val$set1:Ljava/util/Set;

    iput-object p2, p0, Lcom/lewa/guava/collect/Sets$1;->val$set2minus1:Ljava/util/Set;

    iput-object p3, p0, Lcom/lewa/guava/collect/Sets$1;->val$set2:Ljava/util/Set;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lewa/guava/collect/Sets$SetView;-><init>(Lcom/lewa/guava/collect/Sets$1;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/lewa/guava/collect/Sets$1;->val$set1:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lewa/guava/collect/Sets$1;->val$set2:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copyInto(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/util/Set",
            "<TE;>;>(TS;)TS;"
        }
    .end annotation

    .prologue
    .line 605
    .local p1, set:Ljava/util/Set;,"TS;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Sets$1;->val$set1:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 606
    iget-object v0, p0, Lcom/lewa/guava/collect/Sets$1;->val$set2:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 607
    return-object p1
.end method

.method public immutableCopy()Lcom/lewa/guava/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 610
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/lewa/guava/collect/ImmutableSet$Builder;-><init>()V

    iget-object v1, p0, Lcom/lewa/guava/collect/Sets$1;->val$set1:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/lewa/guava/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/guava/collect/Sets$1;->val$set2:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/lewa/guava/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/collect/ImmutableSet$Builder;->build()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/lewa/guava/collect/Sets$1;->val$set1:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lewa/guava/collect/Sets$1;->val$set2:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 598
    iget-object v0, p0, Lcom/lewa/guava/collect/Sets$1;->val$set1:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/guava/collect/Sets$1;->val$set2minus1:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lewa/guava/collect/Iterators;->concat(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/lewa/guava/collect/Sets$1;->val$set1:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/lewa/guava/collect/Sets$1;->val$set2minus1:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
