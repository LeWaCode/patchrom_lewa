.class final Lcom/lewa/guava/collect/ImmutableSortedAsList;
.super Lcom/lewa/guava/collect/RegularImmutableList;
.source "ImmutableSortedAsList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/RegularImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient set:Lcom/lewa/guava/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;IILcom/lewa/guava/collect/ImmutableSortedSet;)V
    .locals 0
    .parameter "array"
    .parameter "offset"
    .parameter "size"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "II",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedAsList;,"Lcom/lewa/guava/collect/ImmutableSortedAsList<TE;>;"
    .local p4, set:Lcom/lewa/guava/collect/ImmutableSortedSet;,"Lcom/lewa/guava/collect/ImmutableSortedSet<TE;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/lewa/guava/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    .line 66
    iput-object p4, p0, Lcom/lewa/guava/collect/ImmutableSortedAsList;->set:Lcom/lewa/guava/collect/ImmutableSortedSet;

    .line 67
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 73
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedAsList;,"Lcom/lewa/guava/collect/ImmutableSortedAsList<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedAsList;->set:Lcom/lewa/guava/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/lewa/guava/collect/ImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "target"

    .prologue
    .line 77
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedAsList;,"Lcom/lewa/guava/collect/ImmutableSortedAsList<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedAsList;->set:Lcom/lewa/guava/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/lewa/guava/collect/ImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "target"

    .prologue
    .line 81
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedAsList;,"Lcom/lewa/guava/collect/ImmutableSortedAsList<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedAsList;->set:Lcom/lewa/guava/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/lewa/guava/collect/ImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public subList(II)Lcom/lewa/guava/collect/ImmutableList;
    .locals 5
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedAsList;,"Lcom/lewa/guava/collect/ImmutableSortedAsList<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSortedAsList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/lewa/guava/base/Preconditions;->checkPositionIndexes(III)V

    .line 88
    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/lewa/guava/collect/ImmutableList;->of()Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lewa/guava/collect/RegularImmutableSortedSet;

    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSortedAsList;->array()[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/lewa/guava/collect/ImmutableSortedAsList;->set:Lcom/lewa/guava/collect/ImmutableSortedSet;

    invoke-virtual {v2}, Lcom/lewa/guava/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSortedAsList;->offset()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSortedAsList;->offset()I

    move-result v4

    add-int/2addr v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lewa/guava/collect/RegularImmutableSortedSet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;II)V

    invoke-virtual {v0}, Lcom/lewa/guava/collect/RegularImmutableSortedSet;->asList()Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedAsList;,"Lcom/lewa/guava/collect/ImmutableSortedAsList<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/ImmutableSortedAsList;->subList(II)Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 97
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedAsList;,"Lcom/lewa/guava/collect/ImmutableSortedAsList<TE;>;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableAsList$SerializedForm;

    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableSortedAsList;->set:Lcom/lewa/guava/collect/ImmutableSortedSet;

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/ImmutableAsList$SerializedForm;-><init>(Lcom/lewa/guava/collect/ImmutableCollection;)V

    return-object v0
.end method
