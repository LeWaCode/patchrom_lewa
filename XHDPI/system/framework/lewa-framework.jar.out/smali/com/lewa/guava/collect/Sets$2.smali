.class final Lcom/lewa/guava/collect/Sets$2;
.super Lcom/lewa/guava/collect/Sets$SetView;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/Sets;->intersection(Ljava/util/Set;Ljava/util/Set;)Lcom/lewa/guava/collect/Sets$SetView;
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
.field final synthetic val$inSet2:Lcom/lewa/guava/base/Predicate;

.field final synthetic val$set1:Ljava/util/Set;

.field final synthetic val$set2:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/lewa/guava/base/Predicate;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 651
    iput-object p1, p0, Lcom/lewa/guava/collect/Sets$2;->val$set1:Ljava/util/Set;

    iput-object p2, p0, Lcom/lewa/guava/collect/Sets$2;->val$inSet2:Lcom/lewa/guava/base/Predicate;

    iput-object p3, p0, Lcom/lewa/guava/collect/Sets$2;->val$set2:Ljava/util/Set;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lewa/guava/collect/Sets$SetView;-><init>(Lcom/lewa/guava/collect/Sets$1;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/lewa/guava/collect/Sets$2;->val$set1:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lewa/guava/collect/Sets$2;->val$set2:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 665
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Sets$2;->val$set1:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lewa/guava/collect/Sets$2;->val$set2:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Sets$2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

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
    .line 653
    iget-object v0, p0, Lcom/lewa/guava/collect/Sets$2;->val$set1:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/guava/collect/Sets$2;->val$inSet2:Lcom/lewa/guava/base/Predicate;

    invoke-static {v0, v1}, Lcom/lewa/guava/collect/Iterators;->filter(Ljava/util/Iterator;Lcom/lewa/guava/base/Predicate;)Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Sets$2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method
