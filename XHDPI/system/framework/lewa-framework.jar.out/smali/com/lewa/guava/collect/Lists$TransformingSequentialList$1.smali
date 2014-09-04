.class Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;
.super Ljava/lang/Object;
.source "Lists.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/Lists$TransformingSequentialList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/guava/collect/Lists$TransformingSequentialList;

.field final synthetic val$delegate:Ljava/util/ListIterator;


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/Lists$TransformingSequentialList;Ljava/util/ListIterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 401
    .local p0, this:Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;,"Lcom/lewa/guava/collect/Lists$TransformingSequentialList.1;"
    iput-object p1, p0, Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;->this$0:Lcom/lewa/guava/collect/Lists$TransformingSequentialList;

    iput-object p2, p0, Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;->val$delegate:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, this:Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;,"Lcom/lewa/guava/collect/Lists$TransformingSequentialList.1;"
    .local p1, e:Ljava/lang/Object;,"TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 407
    .local p0, this:Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;,"Lcom/lewa/guava/collect/Lists$TransformingSequentialList.1;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;->val$delegate:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 411
    .local p0, this:Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;,"Lcom/lewa/guava/collect/Lists$TransformingSequentialList.1;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;->val$delegate:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, this:Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;,"Lcom/lewa/guava/collect/Lists$TransformingSequentialList.1;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;->this$0:Lcom/lewa/guava/collect/Lists$TransformingSequentialList;

    iget-object v0, v0, Lcom/lewa/guava/collect/Lists$TransformingSequentialList;->function:Lcom/lewa/guava/base/Function;

    iget-object v1, p0, Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;->val$delegate:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lewa/guava/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 419
    .local p0, this:Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;,"Lcom/lewa/guava/collect/Lists$TransformingSequentialList.1;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;->val$delegate:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, this:Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;,"Lcom/lewa/guava/collect/Lists$TransformingSequentialList.1;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;->this$0:Lcom/lewa/guava/collect/Lists$TransformingSequentialList;

    iget-object v0, v0, Lcom/lewa/guava/collect/Lists$TransformingSequentialList;->function:Lcom/lewa/guava/base/Function;

    iget-object v1, p0, Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;->val$delegate:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lewa/guava/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 427
    .local p0, this:Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;,"Lcom/lewa/guava/collect/Lists$TransformingSequentialList.1;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;->val$delegate:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 431
    .local p0, this:Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;,"Lcom/lewa/guava/collect/Lists$TransformingSequentialList.1;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;->val$delegate:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 432
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, this:Lcom/lewa/guava/collect/Lists$TransformingSequentialList$1;,"Lcom/lewa/guava/collect/Lists$TransformingSequentialList.1;"
    .local p1, e:Ljava/lang/Object;,"TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
