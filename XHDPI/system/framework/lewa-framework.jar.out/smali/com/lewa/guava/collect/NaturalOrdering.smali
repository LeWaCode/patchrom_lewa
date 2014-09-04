.class final Lcom/lewa/guava/collect/NaturalOrdering;
.super Lcom/lewa/guava/collect/Ordering;
.source "NaturalOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/Ordering",
        "<",
        "Ljava/lang/Comparable;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/lewa/guava/collect/NaturalOrdering;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/lewa/guava/collect/NaturalOrdering;

    invoke-direct {v0}, Lcom/lewa/guava/collect/NaturalOrdering;-><init>()V

    sput-object v0, Lcom/lewa/guava/collect/NaturalOrdering;->INSTANCE:Lcom/lewa/guava/collect/NaturalOrdering;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/lewa/guava/collect/Ordering;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/lewa/guava/collect/NaturalOrdering;->INSTANCE:Lcom/lewa/guava/collect/NaturalOrdering;

    return-object v0
.end method


# virtual methods
.method public binarySearch(Ljava/util/List;Ljava/lang/Comparable;)I
    .locals 1
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Comparable;",
            ">;",
            "Ljava/lang/Comparable;",
            ")I"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, sortedList:Ljava/util/List;,"Ljava/util/List<+Ljava/lang/Comparable;>;"
    invoke-static {p1, p2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic binarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    check-cast p2, Ljava/lang/Comparable;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/NaturalOrdering;->binarySearch(Ljava/util/List;Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .parameter "left"
    .parameter "right"

    .prologue
    .line 67
    invoke-static {p2}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    if-ne p1, p2, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    .line 73
    :cond_0
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 74
    .local v0, result:I
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    check-cast p2, Ljava/lang/Comparable;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/NaturalOrdering;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method

.method public reverse()Lcom/lewa/guava/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/lewa/guava/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 79
    sget-object v0, Lcom/lewa/guava/collect/ReverseNaturalOrdering;->INSTANCE:Lcom/lewa/guava/collect/ReverseNaturalOrdering;

    return-object v0
.end method

.method public sortedCopy(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    invoke-static {p1}, Lcom/lewa/guava/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 93
    .local v0, list:Ljava/util/List;,"Ljava/util/List<TE;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 94
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "Ordering.natural()"

    return-object v0
.end method
