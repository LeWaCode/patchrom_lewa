.class Lcom/lewa/guava/collect/RegularImmutableList;
.super Lcom/lewa/guava/collect/ImmutableList;
.source "RegularImmutableList.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient array:[Ljava/lang/Object;

.field private final transient offset:I

.field private final transient size:I


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .parameter "array"

    .prologue
    .line 79
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<TE;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/lewa/guava/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    .line 80
    return-void
.end method

.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0
    .parameter "array"
    .parameter "offset"
    .parameter "size"

    .prologue
    .line 72
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<TE;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableList;-><init>()V

    .line 73
    iput p2, p0, Lcom/lewa/guava/collect/RegularImmutableList;->offset:I

    .line 74
    iput p3, p0, Lcom/lewa/guava/collect/RegularImmutableList;->size:I

    .line 75
    iput-object p1, p0, Lcom/lewa/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/lewa/guava/collect/RegularImmutableList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/lewa/guava/collect/RegularImmutableList;->size:I

    return v0
.end method


# virtual methods
.method array()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 265
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter "target"

    .prologue
    .line 91
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/RegularImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .parameter "object"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<TE;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 211
    if-ne p1, p0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v7

    .line 214
    :cond_1
    instance-of v9, p1, Ljava/util/List;

    if-nez v9, :cond_2

    move v7, v8

    .line 215
    goto :goto_0

    :cond_2
    move-object v6, p1

    .line 218
    check-cast v6, Ljava/util/List;

    .line 219
    .local v6, that:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/RegularImmutableList;->size()I

    move-result v9

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-eq v9, v10, :cond_3

    move v7, v8

    .line 220
    goto :goto_0

    .line 223
    :cond_3
    iget v3, p0, Lcom/lewa/guava/collect/RegularImmutableList;->offset:I

    .line 224
    .local v3, index:I
    instance-of v9, p1, Lcom/lewa/guava/collect/RegularImmutableList;

    if-eqz v9, :cond_5

    move-object v5, p1

    .line 225
    check-cast v5, Lcom/lewa/guava/collect/RegularImmutableList;

    .line 226
    .local v5, other:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<*>;"
    iget v1, v5, Lcom/lewa/guava/collect/RegularImmutableList;->offset:I

    .local v1, i:I
    :goto_1
    iget v9, v5, Lcom/lewa/guava/collect/RegularImmutableList;->offset:I

    iget v10, v5, Lcom/lewa/guava/collect/RegularImmutableList;->size:I

    add-int/2addr v9, v10

    if-ge v1, v9, :cond_0

    .line 227
    iget-object v9, p0, Lcom/lewa/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    aget-object v9, v9, v3

    iget-object v10, v5, Lcom/lewa/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    move v7, v8

    .line 228
    goto :goto_0

    .line 226
    :cond_4
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_1

    .line 232
    .end local v1           #i:I
    .end local v5           #other:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<*>;"
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 233
    .local v0, element:Ljava/lang/Object;
    iget-object v9, p0, Lcom/lewa/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aget-object v9, v9, v3

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    move v7, v8

    .line 234
    goto :goto_0

    :cond_6
    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_2
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/lewa/guava/collect/RegularImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/lewa/guava/base/Preconditions;->checkElementIndex(II)I

    .line 120
    iget-object v0, p0, Lcom/lewa/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/lewa/guava/collect/RegularImmutableList;->offset:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 244
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<TE;>;"
    const/4 v0, 0x1

    .line 245
    .local v0, hashCode:I
    iget v1, p0, Lcom/lewa/guava/collect/RegularImmutableList;->offset:I

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/lewa/guava/collect/RegularImmutableList;->offset:I

    iget v3, p0, Lcom/lewa/guava/collect/RegularImmutableList;->size:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 246
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/lewa/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_0
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .parameter "target"

    .prologue
    .line 124
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<TE;>;"
    if-eqz p1, :cond_1

    .line 125
    iget v0, p0, Lcom/lewa/guava/collect/RegularImmutableList;->offset:I

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/lewa/guava/collect/RegularImmutableList;->offset:I

    iget v2, p0, Lcom/lewa/guava/collect/RegularImmutableList;->size:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/lewa/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget v1, p0, Lcom/lewa/guava/collect/RegularImmutableList;->offset:I

    sub-int v1, v0, v1

    .line 131
    .end local v0           #i:I
    :goto_1
    return v1

    .line 125
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    .end local v0           #i:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 87
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/lewa/guava/collect/RegularImmutableList;->offset:I

    iget v2, p0, Lcom/lewa/guava/collect/RegularImmutableList;->size:I

    invoke-static {v0, v1, v2}, Lcom/lewa/guava/collect/Iterators;->forArray([Ljava/lang/Object;II)Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 65
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/RegularImmutableList;->iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .parameter "target"

    .prologue
    .line 135
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<TE;>;"
    if-eqz p1, :cond_1

    .line 136
    iget v1, p0, Lcom/lewa/guava/collect/RegularImmutableList;->offset:I

    iget v2, p0, Lcom/lewa/guava/collect/RegularImmutableList;->size:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/lewa/guava/collect/RegularImmutableList;->offset:I

    if-lt v0, v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/lewa/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget v1, p0, Lcom/lewa/guava/collect/RegularImmutableList;->offset:I

    sub-int v1, v0, v1

    .line 142
    .end local v0           #i:I
    :goto_1
    return v1

    .line 136
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 142
    .end local v0           #i:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lewa/guava/collect/RegularImmutableList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "start"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/lewa/guava/collect/RegularImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/lewa/guava/base/Preconditions;->checkPositionIndex(II)I

    .line 160
    new-instance v0, Lcom/lewa/guava/collect/RegularImmutableList$1;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/RegularImmutableList$1;-><init>(Lcom/lewa/guava/collect/RegularImmutableList;I)V

    return-object v0
.end method

.method offset()I
    .locals 1

    .prologue
    .line 261
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/lewa/guava/collect/RegularImmutableList;->offset:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 83
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/lewa/guava/collect/RegularImmutableList;->size:I

    return v0
.end method

.method public subList(II)Lcom/lewa/guava/collect/ImmutableList;
    .locals 4
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
    .line 146
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/lewa/guava/collect/RegularImmutableList;->size:I

    invoke-static {p1, p2, v0}, Lcom/lewa/guava/base/Preconditions;->checkPositionIndexes(III)V

    .line 147
    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/lewa/guava/collect/ImmutableList;->of()Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lewa/guava/collect/RegularImmutableList;

    iget-object v1, p0, Lcom/lewa/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/lewa/guava/collect/RegularImmutableList;->offset:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/lewa/guava/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/RegularImmutableList;->subList(II)Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 101
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/RegularImmutableList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 102
    .local v0, newArray:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/lewa/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/lewa/guava/collect/RegularImmutableList;->offset:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/lewa/guava/collect/RegularImmutableList;->size:I

    invoke-static {v1, v2, v0, v3, v4}, Lcom/lewa/guava/collect/Platform;->unsafeArrayCopy([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 103
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<TE;>;"
    .local p1, other:[Ljava/lang/Object;,"[TT;"
    array-length v0, p1

    iget v1, p0, Lcom/lewa/guava/collect/RegularImmutableList;->size:I

    if-ge v0, v1, :cond_1

    .line 108
    iget v0, p0, Lcom/lewa/guava/collect/RegularImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/lewa/guava/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 112
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lewa/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/lewa/guava/collect/RegularImmutableList;->offset:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/lewa/guava/collect/RegularImmutableList;->size:I

    invoke-static {v0, v1, p1, v2, v3}, Lcom/lewa/guava/collect/Platform;->unsafeArrayCopy([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 113
    return-object p1

    .line 109
    :cond_1
    array-length v0, p1

    iget v1, p0, Lcom/lewa/guava/collect/RegularImmutableList;->size:I

    if-le v0, v1, :cond_0

    .line 110
    iget v0, p0, Lcom/lewa/guava/collect/RegularImmutableList;->size:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 252
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableList;,"Lcom/lewa/guava/collect/RegularImmutableList<TE;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lewa/guava/collect/RegularImmutableList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 253
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lewa/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v4, p0, Lcom/lewa/guava/collect/RegularImmutableList;->offset:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    iget v2, p0, Lcom/lewa/guava/collect/RegularImmutableList;->offset:I

    add-int/lit8 v0, v2, 0x1

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/lewa/guava/collect/RegularImmutableList;->offset:I

    iget v3, p0, Lcom/lewa/guava/collect/RegularImmutableList;->size:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 255
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lewa/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
