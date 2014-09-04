.class public abstract Lcom/lewa/guava/collect/Ordering;
.super Ljava/lang/Object;
.source "Ordering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/Ordering$ArbitraryOrdering;,
        Lcom/lewa/guava/collect/Ordering$ArbitraryOrderingHolder;,
        Lcom/lewa/guava/collect/Ordering$IncomparableValueException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final LEFT_IS_GREATER:I = 0x1

.field static final RIGHT_IS_GREATER:I = -0x1


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 318
    .local p0, this:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arbitrary()Lcom/lewa/guava/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/Ordering",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    sget-object v0, Lcom/lewa/guava/collect/Ordering$ArbitraryOrderingHolder;->ARBITRARY_ORDERING:Lcom/lewa/guava/collect/Ordering;

    return-object v0
.end method

.method public static compound(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/Ordering;
    .locals 1
    .parameter
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/util/Comparator",
            "<-TT;>;>;)",
            "Lcom/lewa/guava/collect/Ordering",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, comparators:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/util/Comparator<-TT;>;>;"
    new-instance v0, Lcom/lewa/guava/collect/CompoundOrdering;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/CompoundOrdering;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs explicit(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/lewa/guava/collect/Ordering;
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;)",
            "Lcom/lewa/guava/collect/Ordering",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, leastValue:Ljava/lang/Object;,"TT;"
    .local p1, remainingValuesInOrder:[Ljava/lang/Object;,"[TT;"
    invoke-static {p0, p1}, Lcom/lewa/guava/collect/Lists;->asList(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/Ordering;->explicit(Ljava/util/List;)Lcom/lewa/guava/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public static explicit(Ljava/util/List;)Lcom/lewa/guava/collect/Ordering;
    .locals 1
    .parameter
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lcom/lewa/guava/collect/Ordering",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, valuesInOrder:Ljava/util/List;,"Ljava/util/List<TT;>;"
    new-instance v0, Lcom/lewa/guava/collect/ExplicitOrdering;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/ExplicitOrdering;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static from(Lcom/lewa/guava/collect/Ordering;)Lcom/lewa/guava/collect/Ordering;
    .locals 1
    .parameter
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/collect/Ordering",
            "<TT;>;)",
            "Lcom/lewa/guava/collect/Ordering",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    .local p0, ordering:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/collect/Ordering;

    return-object v0
.end method

.method public static from(Ljava/util/Comparator;)Lcom/lewa/guava/collect/Ordering;
    .locals 1
    .parameter
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Lcom/lewa/guava/collect/Ordering",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    instance-of v0, p0, Lcom/lewa/guava/collect/Ordering;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/lewa/guava/collect/Ordering;

    .end local p0           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    :goto_0
    return-object p0

    .restart local p0       #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    :cond_0
    new-instance v0, Lcom/lewa/guava/collect/ComparatorOrdering;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/ComparatorOrdering;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static natural()Lcom/lewa/guava/collect/Ordering;
    .locals 1
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/lewa/guava/collect/Ordering",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 109
    sget-object v0, Lcom/lewa/guava/collect/NaturalOrdering;->INSTANCE:Lcom/lewa/guava/collect/NaturalOrdering;

    return-object v0
.end method

.method public static usingToString()Lcom/lewa/guava/collect/Ordering;
    .locals 1
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/Ordering",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    sget-object v0, Lcom/lewa/guava/collect/UsingToStringOrdering;->INSTANCE:Lcom/lewa/guava/collect/UsingToStringOrdering;

    return-object v0
.end method


# virtual methods
.method public binarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;TT;)I"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, this:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<TT;>;"
    .local p1, sortedList:Ljava/util/List;,"Ljava/util/List<+TT;>;"
    .local p2, key:Ljava/lang/Object;,"TT;"
    invoke-static {p1, p2, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public compound(Ljava/util/Comparator;)Lcom/lewa/guava/collect/Ordering;
    .locals 2
    .parameter
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;>(",
            "Ljava/util/Comparator",
            "<-TU;>;)",
            "Lcom/lewa/guava/collect/Ordering",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, this:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<TT;>;"
    .local p1, secondaryComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TU;>;"
    new-instance v1, Lcom/lewa/guava/collect/CompoundOrdering;

    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-direct {v1, p0, v0}, Lcom/lewa/guava/collect/CompoundOrdering;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public isOrdered(Ljava/lang/Iterable;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 452
    .local p0, this:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<TT;>;"
    .local p1, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 453
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 454
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 455
    .local v2, prev:Ljava/lang/Object;,"TT;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 456
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 457
    .local v1, next:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, v2, v1}, Lcom/lewa/guava/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    .line 458
    const/4 v3, 0x0

    .line 463
    .end local v1           #next:Ljava/lang/Object;,"TT;"
    .end local v2           #prev:Ljava/lang/Object;,"TT;"
    :goto_1
    return v3

    .line 460
    .restart local v1       #next:Ljava/lang/Object;,"TT;"
    .restart local v2       #prev:Ljava/lang/Object;,"TT;"
    :cond_0
    move-object v2, v1

    .line 461
    goto :goto_0

    .line 463
    .end local v1           #next:Ljava/lang/Object;,"TT;"
    .end local v2           #prev:Ljava/lang/Object;,"TT;"
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public isStrictlyOrdered(Ljava/lang/Iterable;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, this:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<TT;>;"
    .local p1, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 474
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 475
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 476
    .local v2, prev:Ljava/lang/Object;,"TT;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 477
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 478
    .local v1, next:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, v2, v1}, Lcom/lewa/guava/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 479
    const/4 v3, 0x0

    .line 484
    .end local v1           #next:Ljava/lang/Object;,"TT;"
    .end local v2           #prev:Ljava/lang/Object;,"TT;"
    :goto_1
    return v3

    .line 481
    .restart local v1       #next:Ljava/lang/Object;,"TT;"
    .restart local v2       #prev:Ljava/lang/Object;,"TT;"
    :cond_0
    move-object v2, v1

    .line 482
    goto :goto_0

    .line 484
    .end local v1           #next:Ljava/lang/Object;,"TT;"
    .end local v2           #prev:Ljava/lang/Object;,"TT;"
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public lexicographical()Lcom/lewa/guava/collect/Ordering;
    .locals 1
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/lewa/guava/collect/Ordering",
            "<",
            "Ljava/lang/Iterable",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, this:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<TT;>;"
    new-instance v0, Lcom/lewa/guava/collect/LexicographicalOrdering;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/LexicographicalOrdering;-><init>(Lcom/lewa/guava/collect/Ordering;)V

    return-object v0
.end method

.method public max(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, this:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<TT;>;"
    .local p1, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 500
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 502
    .local v1, maxSoFar:Ljava/lang/Object;,"TE;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/lewa/guava/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 506
    :cond_0
    return-object v1
.end method

.method public max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;)TE;"
        }
    .end annotation

    .prologue
    .line 544
    .local p0, this:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<TT;>;"
    .local p1, a:Ljava/lang/Object;,"TE;"
    .local p2, b:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .end local p1           #a:Ljava/lang/Object;,"TE;"
    :goto_0
    return-object p1

    .restart local p1       #a:Ljava/lang/Object;,"TE;"
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method public varargs max(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;TE;[TE;)TE;"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, this:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<TT;>;"
    .local p1, a:Ljava/lang/Object;,"TE;"
    .local p2, b:Ljava/lang/Object;,"TE;"
    .local p3, c:Ljava/lang/Object;,"TE;"
    .local p4, rest:[Ljava/lang/Object;,"[TE;"
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, p3}, Lcom/lewa/guava/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 523
    .local v3, maxSoFar:Ljava/lang/Object;,"TE;"
    move-object v0, p4

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 524
    .local v4, r:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, v3, v4}, Lcom/lewa/guava/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 527
    .end local v4           #r:Ljava/lang/Object;,"TE;"
    :cond_0
    return-object v3
.end method

.method public min(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, this:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<TT;>;"
    .local p1, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 560
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 562
    .local v1, minSoFar:Ljava/lang/Object;,"TE;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 563
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/lewa/guava/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 566
    :cond_0
    return-object v1
.end method

.method public min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;)TE;"
        }
    .end annotation

    .prologue
    .line 604
    .local p0, this:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<TT;>;"
    .local p1, a:Ljava/lang/Object;,"TE;"
    .local p2, b:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    .end local p1           #a:Ljava/lang/Object;,"TE;"
    :goto_0
    return-object p1

    .restart local p1       #a:Ljava/lang/Object;,"TE;"
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method public varargs min(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;TE;[TE;)TE;"
        }
    .end annotation

    .prologue
    .line 581
    .local p0, this:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<TT;>;"
    .local p1, a:Ljava/lang/Object;,"TE;"
    .local p2, b:Ljava/lang/Object;,"TE;"
    .local p3, c:Ljava/lang/Object;,"TE;"
    .local p4, rest:[Ljava/lang/Object;,"[TE;"
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, p3}, Lcom/lewa/guava/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 583
    .local v3, minSoFar:Ljava/lang/Object;,"TE;"
    move-object v0, p4

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 584
    .local v4, r:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, v3, v4}, Lcom/lewa/guava/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 587
    .end local v4           #r:Ljava/lang/Object;,"TE;"
    :cond_0
    return-object v3
.end method

.method public nullsFirst()Lcom/lewa/guava/collect/Ordering;
    .locals 1
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/lewa/guava/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 401
    .local p0, this:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<TT;>;"
    new-instance v0, Lcom/lewa/guava/collect/NullsFirstOrdering;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/NullsFirstOrdering;-><init>(Lcom/lewa/guava/collect/Ordering;)V

    return-object v0
.end method

.method public nullsLast()Lcom/lewa/guava/collect/Ordering;
    .locals 1
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/lewa/guava/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, this:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<TT;>;"
    new-instance v0, Lcom/lewa/guava/collect/NullsLastOrdering;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/NullsLastOrdering;-><init>(Lcom/lewa/guava/collect/Ordering;)V

    return-object v0
.end method

.method public onResultOf(Lcom/lewa/guava/base/Function;)Lcom/lewa/guava/collect/Ordering;
    .locals 1
    .parameter
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/base/Function",
            "<TF;+TT;>;)",
            "Lcom/lewa/guava/collect/Ordering",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, this:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<TT;>;"
    .local p1, function:Lcom/lewa/guava/base/Function;,"Lcom/lewa/guava/base/Function<TF;+TT;>;"
    new-instance v0, Lcom/lewa/guava/collect/ByFunctionOrdering;

    invoke-direct {v0, p1, p0}, Lcom/lewa/guava/collect/ByFunctionOrdering;-><init>(Lcom/lewa/guava/base/Function;Lcom/lewa/guava/collect/Ordering;)V

    return-object v0
.end method

.method public reverse()Lcom/lewa/guava/collect/Ordering;
    .locals 1
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/lewa/guava/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, this:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<TT;>;"
    new-instance v0, Lcom/lewa/guava/collect/ReverseOrdering;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/ReverseOrdering;-><init>(Lcom/lewa/guava/collect/Ordering;)V

    return-object v0
.end method

.method public sortedCopy(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, this:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<TT;>;"
    .local p1, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    invoke-static {p1}, Lcom/lewa/guava/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 441
    .local v0, list:Ljava/util/List;,"Ljava/util/List<TE;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 442
    return-object v0
.end method
