.class abstract Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;
.super Lcom/lewa/guava/collect/ImmutableSet;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ArrayImmutableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ImmutableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final transient elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .parameter "elements"

    .prologue
    .line 329
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableSet;-><init>()V

    .line 330
    iput-object p1, p0, Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    .line 331
    return-void
.end method


# virtual methods
.method public containsAll(Ljava/util/Collection;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    .local p1, targets:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 368
    if-ne p1, p0, :cond_1

    .line 382
    .end local p1           #targets:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :cond_0
    :goto_0
    return v4

    .line 371
    .restart local p1       #targets:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :cond_1
    instance-of v6, p1, Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;

    if-nez v6, :cond_2

    .line 372
    invoke-super {p0, p1}, Lcom/lewa/guava/collect/ImmutableSet;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    goto :goto_0

    .line 374
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;->size()I

    move-result v7

    if-le v6, v7, :cond_3

    move v4, v5

    .line 375
    goto :goto_0

    .line 377
    :cond_3
    check-cast p1, Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;

    .end local p1           #targets:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p1, Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 378
    .local v3, target:Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move v4, v5

    .line 379
    goto :goto_0

    .line 377
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method createAsList()Lcom/lewa/guava/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableAsList;

    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, Lcom/lewa/guava/collect/ImmutableAsList;-><init>([Ljava/lang/Object;Lcom/lewa/guava/collect/ImmutableCollection;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 338
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
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
    .line 347
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/lewa/guava/collect/Iterators;->forArray([Ljava/lang/Object;)Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 325
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;->iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 334
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    const/4 v3, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 352
    .local v0, array:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;->size()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Lcom/lewa/guava/collect/Platform;->unsafeArrayCopy([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 353
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
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    const/4 v2, 0x0

    .line 357
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;->size()I

    move-result v0

    .line 358
    .local v0, size:I
    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 359
    invoke-static {p1, v0}, Lcom/lewa/guava/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 363
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    invoke-static {v1, v2, p1, v2, v0}, Lcom/lewa/guava/collect/Platform;->unsafeArrayCopy([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 364
    return-object p1

    .line 360
    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_0

    .line 361
    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_0
.end method
