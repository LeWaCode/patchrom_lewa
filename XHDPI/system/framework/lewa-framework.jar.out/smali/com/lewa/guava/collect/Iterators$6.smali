.class final Lcom/lewa/guava/collect/Iterators$6;
.super Lcom/lewa/guava/collect/UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/Iterators;->partitionImpl(Ljava/util/Iterator;IZ)Lcom/lewa/guava/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/UnmodifiableIterator",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterator:Ljava/util/Iterator;

.field final synthetic val$pad:Z

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Ljava/util/Iterator;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/lewa/guava/collect/Iterators$6;->val$iterator:Ljava/util/Iterator;

    iput p2, p0, Lcom/lewa/guava/collect/Iterators$6;->val$size:I

    iput-boolean p3, p0, Lcom/lewa/guava/collect/Iterators$6;->val$pad:Z

    invoke-direct {p0}, Lcom/lewa/guava/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/lewa/guava/collect/Iterators$6;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Iterators$6;->next()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Iterators$6;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 610
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 612
    :cond_0
    iget v3, p0, Lcom/lewa/guava/collect/Iterators$6;->val$size:I

    new-array v0, v3, [Ljava/lang/Object;

    .line 613
    .local v0, array:[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 614
    .local v1, count:I
    :goto_0
    iget v3, p0, Lcom/lewa/guava/collect/Iterators$6;->val$size:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/lewa/guava/collect/Iterators$6;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 615
    iget-object v3, p0, Lcom/lewa/guava/collect/Iterators$6;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 614
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 619
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 621
    .local v2, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    iget-boolean v3, p0, Lcom/lewa/guava/collect/Iterators$6;->val$pad:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/lewa/guava/collect/Iterators$6;->val$size:I

    if-ne v1, v3, :cond_3

    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :cond_2
    :goto_1
    return-object v2

    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :cond_3
    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/lewa/guava/collect/Platform;->subList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v2

    goto :goto_1
.end method
