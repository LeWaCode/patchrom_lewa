.class Lcom/lewa/guava/collect/Lists$TransformingSequentialList;
.super Ljava/util/AbstractSequentialList;
.source "Lists.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformingSequentialList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSequentialList",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final fromList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
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
.method constructor <init>(Ljava/util/List;Lcom/lewa/guava/base/Function;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TF;>;",
            "Lcom/lewa/guava/base/Function",
            "<-TF;+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, this:Lcom/lewa/guava/collect/Lists$TransformingSequentialList;,"Lcom/lewa/guava/collect/Lists$TransformingSequentialList<TF;TT;>;"
    .local p1, fromList:Ljava/util/List;,"Ljava/util/List<TF;>;"
    .local p2, function:Lcom/lewa/guava/base/Function;,"Lcom/lewa/guava/base/Function<-TF;+TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    .line 385
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/lewa/guava/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;

    .line 386
    invoke-static {p2}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/base/Function;

    iput-object v0, p0, Lcom/lewa/guava/collect/Lists$TransformingSequentialList;->function:Lcom/lewa/guava/base/Function;

    .line 387
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 394
    .local p0, this:Lcom/lewa/guava/collect/Lists$TransformingSequentialList;,"Lcom/lewa/guava/collect/Lists$TransformingSequentialList<TF;TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 395
    return-void
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, this:Lcom/lewa/guava/collect/Lists$TransformingSequentialList;,"Lcom/lewa/guava/collect/Lists$TransformingSequentialList<TF;TT;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 401
    .local v0, delegate:Ljava/util/ListIterator;,"Ljava/util/ListIterator<TF;>;"
    new-instance v1, Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;

    invoke-direct {v1, p0, v0}, Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;-><init>(Lcom/lewa/guava/collect/Lists$TransformingSequentialList;Ljava/util/ListIterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 397
    .local p0, this:Lcom/lewa/guava/collect/Lists$TransformingSequentialList;,"Lcom/lewa/guava/collect/Lists$TransformingSequentialList<TF;TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
