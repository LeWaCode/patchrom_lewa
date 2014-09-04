.class public abstract Lcom/lewa/guava/collect/ImmutableSortedSet;
.super Lcom/lewa/guava/collect/ImmutableSortedSetFauxverideShim;
.source "ImmutableSortedSet.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/ImmutableSortedSet$SerializedForm;,
        Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ImmutableSortedSetFauxverideShim",
        "<TE;>;",
        "Ljava/util/SortedSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final NATURAL_EMPTY_SET:Lcom/lewa/guava/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATURAL_ORDER:Ljava/util/Comparator;


# instance fields
.field final transient comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lcom/lewa/guava/collect/Ordering;->natural()Lcom/lewa/guava/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/lewa/guava/collect/ImmutableSortedSet;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 124
    new-instance v0, Lcom/lewa/guava/collect/EmptyImmutableSortedSet;

    sget-object v1, Lcom/lewa/guava/collect/ImmutableSortedSet;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/EmptyImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/lewa/guava/collect/ImmutableSortedSet;->NATURAL_EMPTY_SET:Lcom/lewa/guava/collect/ImmutableSortedSet;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 604
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet;,"Lcom/lewa/guava/collect/ImmutableSortedSet<TE;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableSortedSetFauxverideShim;-><init>()V

    .line 605
    iput-object p1, p0, Lcom/lewa/guava/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    .line 606
    return-void
.end method

.method static synthetic access$000(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-static {p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedSet;->copyOfInternal(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    invoke-static {}, Lcom/lewa/guava/collect/Ordering;->natural()Lcom/lewa/guava/collect/Ordering;

    move-result-object v0

    .line 309
    .local v0, naturalOrder:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<TE;>;"
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/lewa/guava/collect/ImmutableSortedSet;->copyOfInternal(Ljava/util/Comparator;Ljava/lang/Iterable;Z)Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    .local p1, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lewa/guava/collect/ImmutableSortedSet;->copyOfInternal(Ljava/util/Comparator;Ljava/lang/Iterable;Z)Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    .local p1, elements:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-static {p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedSet;->copyOfInternal(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Iterator;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, elements:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    invoke-static {}, Lcom/lewa/guava/collect/Ordering;->natural()Lcom/lewa/guava/collect/Ordering;

    move-result-object v0

    .line 329
    .local v0, naturalOrder:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<TE;>;"
    invoke-static {v0, p0}, Lcom/lewa/guava/collect/ImmutableSortedSet;->copyOfInternal(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v1

    return-object v1
.end method

.method private static copyOfInternal(Ljava/util/Comparator;Ljava/lang/Iterable;Z)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 8
    .parameter
    .parameter
    .parameter "fromSortedSet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/lang/Iterable",
            "<+TE;>;Z)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 388
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    .local p1, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    if-nez p2, :cond_0

    invoke-static {p1, p0}, Lcom/lewa/guava/collect/ImmutableSortedSet;->hasSameComparator(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 391
    .local v3, hasSameComparator:Z
    :goto_0
    if-eqz v3, :cond_2

    instance-of v7, p1, Lcom/lewa/guava/collect/ImmutableSortedSet;

    if-eqz v7, :cond_2

    move-object v6, p1

    .line 393
    check-cast v6, Lcom/lewa/guava/collect/ImmutableSortedSet;

    .line 394
    .local v6, result:Lcom/lewa/guava/collect/ImmutableSortedSet;,"Lcom/lewa/guava/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {v6}, Lcom/lewa/guava/collect/ImmutableSortedSet;->hasPartialArray()Z

    move-result v7

    if-nez v7, :cond_2

    .line 411
    .end local v6           #result:Lcom/lewa/guava/collect/ImmutableSortedSet;,"Lcom/lewa/guava/collect/ImmutableSortedSet<TE;>;"
    :goto_1
    return-object v6

    .line 388
    .end local v3           #hasSameComparator:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 399
    .restart local v3       #hasSameComparator:Z
    :cond_2
    invoke-static {p1}, Lcom/lewa/guava/collect/ImmutableSortedSet;->newObjectArray(Ljava/lang/Iterable;)[Ljava/lang/Object;

    move-result-object v1

    .line 400
    .local v1, array:[Ljava/lang/Object;
    array-length v7, v1

    if-nez v7, :cond_3

    .line 401
    invoke-static {p0}, Lcom/lewa/guava/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v6

    goto :goto_1

    .line 404
    :cond_3
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v2, v0, v4

    .line 405
    .local v2, e:Ljava/lang/Object;
    invoke-static {v2}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 407
    .end local v2           #e:Ljava/lang/Object;
    :cond_4
    if-nez v3, :cond_5

    .line 408
    invoke-static {v1, p0}, Lcom/lewa/guava/collect/ImmutableSortedSet;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 409
    invoke-static {v1, p0}, Lcom/lewa/guava/collect/ImmutableSortedSet;->removeDupes([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object v1

    .line 411
    :cond_5
    new-instance v6, Lcom/lewa/guava/collect/RegularImmutableSortedSet;

    invoke-direct {v6, v1, p0}, Lcom/lewa/guava/collect/RegularImmutableSortedSet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method private static copyOfInternal(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    .local p1, elements:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 425
    invoke-static {p0}, Lcom/lewa/guava/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v2

    .line 434
    :goto_0
    return-object v2

    .line 427
    :cond_0
    invoke-static {}, Lcom/lewa/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 428
    .local v1, list:Ljava/util/List;,"Ljava/util/List<TE;>;"
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 429
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 431
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 432
    .local v0, array:[Ljava/lang/Object;
    invoke-static {v0, p0}, Lcom/lewa/guava/collect/ImmutableSortedSet;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 433
    invoke-static {v0, p0}, Lcom/lewa/guava/collect/ImmutableSortedSet;->removeDupes([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object v0

    .line 434
    new-instance v2, Lcom/lewa/guava/collect/RegularImmutableSortedSet;

    invoke-direct {v2, v0, p0}, Lcom/lewa/guava/collect/RegularImmutableSortedSet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public static copyOfSorted(Ljava/util/SortedSet;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TE;>;"
    invoke-interface {p0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 379
    .local v0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    if-nez v0, :cond_0

    .line 380
    sget-object v0, Lcom/lewa/guava/collect/ImmutableSortedSet;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 382
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/lewa/guava/collect/ImmutableSortedSet;->copyOfInternal(Ljava/util/Comparator;Ljava/lang/Iterable;Z)Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v1

    return-object v1
.end method

.method private static emptySet()Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 129
    sget-object v0, Lcom/lewa/guava/collect/ImmutableSortedSet;->NATURAL_EMPTY_SET:Lcom/lewa/guava/collect/ImmutableSortedSet;

    return-object v0
.end method

.method static emptySet(Ljava/util/Comparator;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    sget-object v0, Lcom/lewa/guava/collect/ImmutableSortedSet;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lcom/lewa/guava/collect/ImmutableSortedSet;->emptySet()Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lewa/guava/collect/EmptyImmutableSortedSet;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/EmptyImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method static hasSameComparator(Ljava/lang/Iterable;Ljava/util/Comparator;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/util/Comparator",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    const/4 v2, 0x0

    .line 446
    instance-of v3, p0, Ljava/util/SortedSet;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 447
    check-cast v1, Ljava/util/SortedSet;

    .line 448
    .local v1, sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<*>;"
    invoke-interface {v1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 449
    .local v0, comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    if-nez v0, :cond_1

    invoke-static {}, Lcom/lewa/guava/collect/Ordering;->natural()Lcom/lewa/guava/collect/Ordering;

    move-result-object v3

    if-ne p1, v3, :cond_0

    const/4 v2, 0x1

    .line 453
    .end local v0           #comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    .end local v1           #sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<*>;"
    :cond_0
    :goto_0
    return v2

    .line 449
    .restart local v0       #comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    .restart local v1       #sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<*>;"
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public static naturalOrder()Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<TE;>;>()",
            "Lcom/lewa/guava/collect/ImmutableSortedSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 494
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;

    invoke-static {}, Lcom/lewa/guava/collect/Ordering;->natural()Lcom/lewa/guava/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static newObjectArray(Ljava/lang/Iterable;)[Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_0

    check-cast p0, Ljava/util/Collection;

    .end local p0           #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    move-object v1, p0

    .line 418
    .local v1, collection:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    .restart local p0       #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .end local p0           #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    move-result v2

    new-array v0, v2, [Ljava/lang/Object;

    .line 419
    .local v0, array:[Ljava/lang/Object;
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 416
    .end local v0           #array:[Ljava/lang/Object;
    .end local v1           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    .restart local p0       #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    :cond_0
    invoke-static {p0}, Lcom/lewa/guava/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public static of()Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {}, Lcom/lewa/guava/collect/ImmutableSortedSet;->emptySet()Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, element:Ljava/lang/Comparable;,"TE;"
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 154
    .local v0, array:[Ljava/lang/Object;
    new-instance v1, Lcom/lewa/guava/collect/RegularImmutableSortedSet;

    invoke-static {}, Lcom/lewa/guava/collect/Ordering;->natural()Lcom/lewa/guava/collect/Ordering;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/lewa/guava/collect/RegularImmutableSortedSet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, e1:Ljava/lang/Comparable;,"TE;"
    .local p1, e2:Ljava/lang/Comparable;,"TE;"
    invoke-static {}, Lcom/lewa/guava/collect/Ordering;->natural()Lcom/lewa/guava/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/lewa/guava/collect/ImmutableSortedSet;->ofInternal(Ljava/util/Comparator;[Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;TE;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, e1:Ljava/lang/Comparable;,"TE;"
    .local p1, e2:Ljava/lang/Comparable;,"TE;"
    .local p2, e3:Ljava/lang/Comparable;,"TE;"
    invoke-static {}, Lcom/lewa/guava/collect/Ordering;->natural()Lcom/lewa/guava/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/lewa/guava/collect/ImmutableSortedSet;->ofInternal(Ljava/util/Comparator;[Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;TE;TE;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, e1:Ljava/lang/Comparable;,"TE;"
    .local p1, e2:Ljava/lang/Comparable;,"TE;"
    .local p2, e3:Ljava/lang/Comparable;,"TE;"
    .local p3, e4:Ljava/lang/Comparable;,"TE;"
    invoke-static {}, Lcom/lewa/guava/collect/Ordering;->natural()Lcom/lewa/guava/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/lewa/guava/collect/ImmutableSortedSet;->ofInternal(Ljava/util/Comparator;[Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;TE;TE;TE;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, e1:Ljava/lang/Comparable;,"TE;"
    .local p1, e2:Ljava/lang/Comparable;,"TE;"
    .local p2, e3:Ljava/lang/Comparable;,"TE;"
    .local p3, e4:Ljava/lang/Comparable;,"TE;"
    .local p4, e5:Ljava/lang/Comparable;,"TE;"
    invoke-static {}, Lcom/lewa/guava/collect/Ordering;->natural()Lcom/lewa/guava/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lcom/lewa/guava/collect/ImmutableSortedSet;->ofInternal(Ljava/util/Comparator;[Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Comparable;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>([TE;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, elements:[Ljava/lang/Comparable;,"[TE;"
    invoke-static {}, Lcom/lewa/guava/collect/Ordering;->natural()Lcom/lewa/guava/collect/Ordering;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/lewa/guava/collect/ImmutableSortedSet;->ofInternal(Ljava/util/Comparator;[Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method private static varargs ofInternal(Ljava/util/Comparator;[Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;[TE;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    .local p1, elements:[Ljava/lang/Object;,"[TE;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    array-length v2, p1

    packed-switch v2, :pswitch_data_0

    .line 236
    array-length v2, p1

    new-array v0, v2, [Ljava/lang/Object;

    .line 237
    .local v0, array:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 238
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    .end local v0           #array:[Ljava/lang/Object;
    .end local v1           #i:I
    :pswitch_0
    invoke-static {p0}, Lcom/lewa/guava/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v2

    .line 242
    :goto_1
    return-object v2

    .line 240
    .restart local v0       #array:[Ljava/lang/Object;
    .restart local v1       #i:I
    :cond_0
    invoke-static {v0, p0}, Lcom/lewa/guava/collect/ImmutableSortedSet;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 241
    invoke-static {v0, p0}, Lcom/lewa/guava/collect/ImmutableSortedSet;->removeDupes([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object v0

    .line 242
    new-instance v2, Lcom/lewa/guava/collect/RegularImmutableSortedSet;

    invoke-direct {v2, v0, p0}, Lcom/lewa/guava/collect/RegularImmutableSortedSet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_1

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TE;>;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TE;>;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 710
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet;,"Lcom/lewa/guava/collect/ImmutableSortedSet<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Use SerializedForm"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static removeDupes([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;
    .locals 6
    .parameter "array"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<-TE;>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    const/4 v5, 0x0

    .line 260
    const/4 v3, 0x1

    .line 261
    .local v3, size:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    .line 262
    aget-object v1, p0, v2

    .line 263
    .local v1, element:Ljava/lang/Object;
    add-int/lit8 v4, v3, -0x1

    aget-object v4, p0, v4

    invoke-static {p1, v4, v1}, Lcom/lewa/guava/collect/ImmutableSortedSet;->unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    aput-object v1, p0, v3

    .line 265
    add-int/lit8 v3, v3, 0x1

    .line 261
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v1           #element:Ljava/lang/Object;
    :cond_1
    array-length v4, p0

    if-ne v3, v4, :cond_2

    .line 275
    .end local p0
    :goto_1
    return-object p0

    .line 273
    .restart local p0
    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    .line 274
    .local v0, copy:[Ljava/lang/Object;
    invoke-static {p0, v5, v0, v5, v3}, Lcom/lewa/guava/collect/Platform;->unsafeArrayCopy([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    move-object p0, v0

    .line 275
    goto :goto_1
.end method

.method public static reverseOrder()Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<TE;>;>()",
            "Lcom/lewa/guava/collect/ImmutableSortedSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 478
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;

    invoke-static {}, Lcom/lewa/guava/collect/Ordering;->natural()Lcom/lewa/guava/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lewa/guava/collect/Ordering;->reverse()Lcom/lewa/guava/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 0
    .parameter "array"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    invoke-static {p0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 251
    return-void
.end method

.method static unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter "a"
    .parameter "b"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    move-object v0, p0

    .line 599
    .local v0, unsafeComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/Object;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 616
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet;,"Lcom/lewa/guava/collect/ImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method abstract hasPartialArray()Z
.end method

.method public headSet(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 631
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet;,"Lcom/lewa/guava/collect/ImmutableSortedSet<TE;>;"
    .local p1, toElement:Ljava/lang/Object;,"TE;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lewa/guava/collect/ImmutableSortedSet;->headSetImpl(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet;,"Lcom/lewa/guava/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method abstract headSetImpl(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation
.end method

.method abstract indexOf(Ljava/lang/Object;)I
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 648
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet;,"Lcom/lewa/guava/collect/ImmutableSortedSet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    .local p2, toElement:Ljava/lang/Object;,"TE;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    invoke-static {p2}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/lewa/guava/base/Preconditions;->checkArgument(Z)V

    .line 651
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/ImmutableSortedSet;->subSetImpl(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0

    .line 650
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet;,"Lcom/lewa/guava/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/ImmutableSortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method abstract subSetImpl(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation
.end method

.method public tailSet(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 666
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet;,"Lcom/lewa/guava/collect/ImmutableSortedSet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lewa/guava/collect/ImmutableSortedSet;->tailSetImpl(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet;,"Lcom/lewa/guava/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method abstract tailSetImpl(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation
.end method

.method unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 589
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet;,"Lcom/lewa/guava/collect/ImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v0, p1, p2}, Lcom/lewa/guava/collect/ImmutableSortedSet;->unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 714
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet;,"Lcom/lewa/guava/collect/ImmutableSortedSet<TE;>;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSortedSet$SerializedForm;

    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSortedSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lewa/guava/collect/ImmutableSortedSet$SerializedForm;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;)V

    return-object v0
.end method
