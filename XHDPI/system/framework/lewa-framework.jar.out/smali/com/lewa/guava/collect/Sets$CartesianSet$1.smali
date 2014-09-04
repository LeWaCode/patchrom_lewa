.class Lcom/lewa/guava/collect/Sets$CartesianSet$1;
.super Lcom/lewa/guava/collect/UnmodifiableIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/Sets$CartesianSet;->iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/UnmodifiableIterator",
        "<",
        "Ljava/util/List",
        "<TB;>;>;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/lewa/guava/collect/Sets$CartesianSet;


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/Sets$CartesianSet;)V
    .locals 0
    .parameter

    .prologue
    .line 869
    .local p0, this:Lcom/lewa/guava/collect/Sets$CartesianSet$1;,"Lcom/lewa/guava/collect/Sets$CartesianSet.1;"
    iput-object p1, p0, Lcom/lewa/guava/collect/Sets$CartesianSet$1;->this$0:Lcom/lewa/guava/collect/Sets$CartesianSet;

    invoke-direct {p0}, Lcom/lewa/guava/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 873
    .local p0, this:Lcom/lewa/guava/collect/Sets$CartesianSet$1;,"Lcom/lewa/guava/collect/Sets$CartesianSet.1;"
    iget v0, p0, Lcom/lewa/guava/collect/Sets$CartesianSet$1;->index:I

    iget-object v1, p0, Lcom/lewa/guava/collect/Sets$CartesianSet$1;->this$0:Lcom/lewa/guava/collect/Sets$CartesianSet;

    iget v1, v1, Lcom/lewa/guava/collect/Sets$CartesianSet;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 869
    .local p0, this:Lcom/lewa/guava/collect/Sets$CartesianSet$1;,"Lcom/lewa/guava/collect/Sets$CartesianSet.1;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Sets$CartesianSet$1;->next()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 877
    .local p0, this:Lcom/lewa/guava/collect/Sets$CartesianSet$1;,"Lcom/lewa/guava/collect/Sets$CartesianSet.1;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Sets$CartesianSet$1;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 878
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 881
    :cond_0
    iget-object v3, p0, Lcom/lewa/guava/collect/Sets$CartesianSet$1;->this$0:Lcom/lewa/guava/collect/Sets$CartesianSet;

    iget-object v3, v3, Lcom/lewa/guava/collect/Sets$CartesianSet;->axes:Lcom/lewa/guava/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/lewa/guava/collect/ImmutableList;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/Object;

    .line 882
    .local v2, tuple:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 883
    iget-object v3, p0, Lcom/lewa/guava/collect/Sets$CartesianSet$1;->this$0:Lcom/lewa/guava/collect/Sets$CartesianSet;

    iget-object v3, v3, Lcom/lewa/guava/collect/Sets$CartesianSet;->axes:Lcom/lewa/guava/collect/ImmutableList;

    invoke-virtual {v3, v0}, Lcom/lewa/guava/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;

    iget v4, p0, Lcom/lewa/guava/collect/Sets$CartesianSet$1;->index:I

    invoke-virtual {v3, v4}, Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;->getForIndex(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 882
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 885
    :cond_1
    iget v3, p0, Lcom/lewa/guava/collect/Sets$CartesianSet$1;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lewa/guava/collect/Sets$CartesianSet$1;->index:I

    .line 888
    invoke-static {v2}, Lcom/lewa/guava/collect/ImmutableList;->of([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v1

    .line 889
    .local v1, result:Ljava/util/List;,"Ljava/util/List<TB;>;"
    return-object v1
.end method
