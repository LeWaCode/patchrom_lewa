.class Lcom/lewa/guava/collect/Lists$Partition;
.super Ljava/util/AbstractList;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Partition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final size:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 0
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 509
    .local p0, this:Lcom/lewa/guava/collect/Lists$Partition;,"Lcom/lewa/guava/collect/Lists$Partition<TT;>;"
    .local p1, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 510
    iput-object p1, p0, Lcom/lewa/guava/collect/Lists$Partition;->list:Ljava/util/List;

    .line 511
    iput p2, p0, Lcom/lewa/guava/collect/Lists$Partition;->size:I

    .line 512
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 505
    .local p0, this:Lcom/lewa/guava/collect/Lists$Partition;,"Lcom/lewa/guava/collect/Lists$Partition<TT;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/Lists$Partition;->get(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/util/List;
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 515
    .local p0, this:Lcom/lewa/guava/collect/Lists$Partition;,"Lcom/lewa/guava/collect/Lists$Partition<TT;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Lists$Partition;->size()I

    move-result v1

    .line 516
    .local v1, listSize:I
    invoke-static {p1, v1}, Lcom/lewa/guava/base/Preconditions;->checkElementIndex(II)I

    .line 517
    iget v3, p0, Lcom/lewa/guava/collect/Lists$Partition;->size:I

    mul-int v2, p1, v3

    .line 518
    .local v2, start:I
    iget v3, p0, Lcom/lewa/guava/collect/Lists$Partition;->size:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/lewa/guava/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 519
    .local v0, end:I
    iget-object v3, p0, Lcom/lewa/guava/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-static {v3, v2, v0}, Lcom/lewa/guava/collect/Platform;->subList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 527
    .local p0, this:Lcom/lewa/guava/collect/Lists$Partition;,"Lcom/lewa/guava/collect/Lists$Partition<TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 523
    .local p0, this:Lcom/lewa/guava/collect/Lists$Partition;,"Lcom/lewa/guava/collect/Lists$Partition<TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/lewa/guava/collect/Lists$Partition;->size:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/lewa/guava/collect/Lists$Partition;->size:I

    div-int/2addr v0, v1

    return v0
.end method
