.class Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList;
.super Ljava/util/AbstractList;
.source "Lists.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformingRandomAccessList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;",
        "Ljava/util/RandomAccess;",
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
    .line 457
    .local p0, this:Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList;,"Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList<TF;TT;>;"
    .local p1, fromList:Ljava/util/List;,"Ljava/util/List<TF;>;"
    .local p2, function:Lcom/lewa/guava/base/Function;,"Lcom/lewa/guava/base/Function<-TF;+TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 458
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    .line 459
    invoke-static {p2}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/base/Function;

    iput-object v0, p0, Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList;->function:Lcom/lewa/guava/base/Function;

    .line 460
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 462
    .local p0, this:Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList;,"Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList<TF;TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 463
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, this:Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList;,"Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList<TF;TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList;->function:Lcom/lewa/guava/base/Function;

    iget-object v1, p0, Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lewa/guava/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 468
    .local p0, this:Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList;,"Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList<TF;TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, this:Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList;,"Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList<TF;TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList;->function:Lcom/lewa/guava/base/Function;

    iget-object v1, p0, Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lewa/guava/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 474
    .local p0, this:Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList;,"Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList<TF;TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList;->fromList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
