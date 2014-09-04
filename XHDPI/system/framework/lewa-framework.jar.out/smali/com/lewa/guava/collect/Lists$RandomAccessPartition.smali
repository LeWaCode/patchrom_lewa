.class Lcom/lewa/guava/collect/Lists$RandomAccessPartition;
.super Lcom/lewa/guava/collect/Lists$Partition;
.source "Lists.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RandomAccessPartition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/Lists$Partition",
        "<TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


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
    .line 534
    .local p0, this:Lcom/lewa/guava/collect/Lists$RandomAccessPartition;,"Lcom/lewa/guava/collect/Lists$RandomAccessPartition<TT;>;"
    .local p1, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/lewa/guava/collect/Lists$Partition;-><init>(Ljava/util/List;I)V

    .line 535
    return-void
.end method
