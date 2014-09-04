.class Lcom/lewa/guava/collect/Collections2$TransformedCollection;
.super Ljava/util/AbstractCollection;
.source "Collections2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransformedCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final fromCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TF;>;"
        }
    .end annotation
.end field

.field final function:Lcom/lewa/guava/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/base/Function",
            "<-TF;+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;Lcom/lewa/guava/base/Function;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TF;>;",
            "Lcom/lewa/guava/base/Function",
            "<-TF;+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, this:Lcom/lewa/guava/collect/Collections2$TransformedCollection;,"Lcom/lewa/guava/collect/Collections2$TransformedCollection<TF;TT;>;"
    .local p1, fromCollection:Ljava/util/Collection;,"Ljava/util/Collection<TF;>;"
    .local p2, function:Lcom/lewa/guava/base/Function;,"Lcom/lewa/guava/base/Function<-TF;+TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 299
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lcom/lewa/guava/collect/Collections2$TransformedCollection;->fromCollection:Ljava/util/Collection;

    .line 300
    invoke-static {p2}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/base/Function;

    iput-object v0, p0, Lcom/lewa/guava/collect/Collections2$TransformedCollection;->function:Lcom/lewa/guava/base/Function;

    .line 301
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 304
    .local p0, this:Lcom/lewa/guava/collect/Collections2$TransformedCollection;,"Lcom/lewa/guava/collect/Collections2$TransformedCollection<TF;TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Collections2$TransformedCollection;->fromCollection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 305
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 308
    .local p0, this:Lcom/lewa/guava/collect/Collections2$TransformedCollection;,"Lcom/lewa/guava/collect/Collections2$TransformedCollection<TF;TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Collections2$TransformedCollection;->fromCollection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, this:Lcom/lewa/guava/collect/Collections2$TransformedCollection;,"Lcom/lewa/guava/collect/Collections2$TransformedCollection<TF;TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Collections2$TransformedCollection;->fromCollection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/guava/collect/Collections2$TransformedCollection;->function:Lcom/lewa/guava/base/Function;

    invoke-static {v0, v1}, Lcom/lewa/guava/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/lewa/guava/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 316
    .local p0, this:Lcom/lewa/guava/collect/Collections2$TransformedCollection;,"Lcom/lewa/guava/collect/Collections2$TransformedCollection<TF;TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Collections2$TransformedCollection;->fromCollection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
