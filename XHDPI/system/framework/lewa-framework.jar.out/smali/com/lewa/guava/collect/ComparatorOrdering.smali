.class final Lcom/lewa/guava/collect/ComparatorOrdering;
.super Lcom/lewa/guava/collect/Ordering;
.source "ComparatorOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/Ordering",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, this:Lcom/lewa/guava/collect/ComparatorOrdering;,"Lcom/lewa/guava/collect/ComparatorOrdering<TT;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TT;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/Ordering;-><init>()V

    .line 68
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/lewa/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    .line 69
    return-void
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
    .line 77
    .local p0, this:Lcom/lewa/guava/collect/ComparatorOrdering;,"Lcom/lewa/guava/collect/ComparatorOrdering<TT;>;"
    .local p1, sortedList:Ljava/util/List;,"Ljava/util/List<+TT;>;"
    .local p2, key:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-static {p1, p2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lcom/lewa/guava/collect/ComparatorOrdering;,"Lcom/lewa/guava/collect/ComparatorOrdering<TT;>;"
    .local p1, a:Ljava/lang/Object;,"TT;"
    .local p2, b:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 88
    .local p0, this:Lcom/lewa/guava/collect/ComparatorOrdering;,"Lcom/lewa/guava/collect/ComparatorOrdering<TT;>;"
    if-ne p1, p0, :cond_0

    .line 89
    const/4 v1, 0x1

    .line 95
    :goto_0
    return v1

    .line 91
    :cond_0
    instance-of v1, p1, Lcom/lewa/guava/collect/ComparatorOrdering;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 92
    check-cast v0, Lcom/lewa/guava/collect/ComparatorOrdering;

    .line 93
    .local v0, that:Lcom/lewa/guava/collect/ComparatorOrdering;,"Lcom/lewa/guava/collect/ComparatorOrdering<*>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    iget-object v2, v0, Lcom/lewa/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 95
    .end local v0           #that:Lcom/lewa/guava/collect/ComparatorOrdering;,"Lcom/lewa/guava/collect/ComparatorOrdering<*>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 99
    .local p0, this:Lcom/lewa/guava/collect/ComparatorOrdering;,"Lcom/lewa/guava/collect/ComparatorOrdering<TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public sortedCopy(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
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
    .line 82
    .local p0, this:Lcom/lewa/guava/collect/ComparatorOrdering;,"Lcom/lewa/guava/collect/ComparatorOrdering<TT;>;"
    .local p1, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    invoke-static {p1}, Lcom/lewa/guava/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 83
    .local v0, list:Ljava/util/List;,"Ljava/util/List<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 84
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    .local p0, this:Lcom/lewa/guava/collect/ComparatorOrdering;,"Lcom/lewa/guava/collect/ComparatorOrdering<TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
