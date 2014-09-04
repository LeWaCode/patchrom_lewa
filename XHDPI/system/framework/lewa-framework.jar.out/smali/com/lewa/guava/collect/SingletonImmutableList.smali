.class final Lcom/lewa/guava/collect/SingletonImmutableList;
.super Lcom/lewa/guava/collect/ImmutableList;
.source "SingletonImmutableList.java"


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
.field final transient element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableList;,"Lcom/lewa/guava/collect/SingletonImmutableList<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableList;-><init>()V

    .line 73
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    .line 74
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 112
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableList;,"Lcom/lewa/guava/collect/SingletonImmutableList<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableList;,"Lcom/lewa/guava/collect/SingletonImmutableList<TE;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    if-ne p1, p0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 119
    :cond_1
    instance-of v3, p1, Ljava/util/List;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 120
    check-cast v0, Ljava/util/List;

    .line 121
    .local v0, that:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/lewa/guava/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #that:Ljava/util/List;,"Ljava/util/List<*>;"
    :cond_3
    move v1, v2

    .line 123
    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableList;,"Lcom/lewa/guava/collect/SingletonImmutableList<TE;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lewa/guava/base/Preconditions;->checkElementIndex(II)I

    .line 78
    iget-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 129
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableList;,"Lcom/lewa/guava/collect/SingletonImmutableList<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 82
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableList;,"Lcom/lewa/guava/collect/SingletonImmutableList<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 133
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableList;,"Lcom/lewa/guava/collect/SingletonImmutableList<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableList;,"Lcom/lewa/guava/collect/SingletonImmutableList<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-static {v0}, Lcom/lewa/guava/collect/Iterators;->singletonIterator(Ljava/lang/Object;)Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 67
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableList;,"Lcom/lewa/guava/collect/SingletonImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/SingletonImmutableList;->iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 90
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableList;,"Lcom/lewa/guava/collect/SingletonImmutableList<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
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
    .line 94
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableList;,"Lcom/lewa/guava/collect/SingletonImmutableList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lewa/guava/collect/SingletonImmutableList;->listIterator(I)Ljava/util/ListIterator;

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
    .line 99
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableList;,"Lcom/lewa/guava/collect/SingletonImmutableList<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 103
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableList;,"Lcom/lewa/guava/collect/SingletonImmutableList<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public subList(II)Lcom/lewa/guava/collect/ImmutableList;
    .locals 1
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
    .line 107
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableList;,"Lcom/lewa/guava/collect/SingletonImmutableList<TE;>;"
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/lewa/guava/base/Preconditions;->checkPositionIndexes(III)V

    .line 108
    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/lewa/guava/collect/ImmutableList;->of()Lcom/lewa/guava/collect/ImmutableList;

    move-result-object p0

    .end local p0           #this:Lcom/lewa/guava/collect/SingletonImmutableList;,"Lcom/lewa/guava/collect/SingletonImmutableList<TE;>;"
    :cond_0
    return-object p0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableList;,"Lcom/lewa/guava/collect/SingletonImmutableList<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/SingletonImmutableList;->subList(II)Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 137
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableList;,"Lcom/lewa/guava/collect/SingletonImmutableList<TE;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lewa/guava/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableList;,"Lcom/lewa/guava/collect/SingletonImmutableList<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    const/4 v2, 0x1

    .line 141
    array-length v1, p1

    if-nez v1, :cond_1

    .line 142
    invoke-static {p1, v2}, Lcom/lewa/guava/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 147
    :cond_0
    :goto_0
    move-object v0, p1

    .line 148
    .local v0, objectArray:[Ljava/lang/Object;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lewa/guava/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 149
    return-object p1

    .line 143
    .end local v0           #objectArray:[Ljava/lang/Object;
    :cond_1
    array-length v1, p1

    if-le v1, v2, :cond_0

    .line 144
    const/4 v1, 0x0

    aput-object v1, p1, v2

    goto :goto_0
.end method
