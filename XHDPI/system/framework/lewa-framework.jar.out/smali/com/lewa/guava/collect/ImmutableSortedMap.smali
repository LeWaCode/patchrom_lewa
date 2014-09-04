.class public Lcom/lewa/guava/collect/ImmutableSortedMap;
.super Lcom/lewa/guava/collect/ImmutableSortedMapFauxverideShim;
.source "ImmutableSortedMap.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/ImmutableSortedMap$SerializedForm;,
        Lcom/lewa/guava/collect/ImmutableSortedMap$ValuesSerializedForm;,
        Lcom/lewa/guava/collect/ImmutableSortedMap$Values;,
        Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySetSerializedForm;,
        Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet;,
        Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ImmutableSortedMapFauxverideShim",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<**>;"
        }
    .end annotation
.end field

.field private static final NATURAL_EMPTY_MAP:Lcom/lewa/guava/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/ImmutableMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATURAL_ORDER:Ljava/util/Comparator;

.field private static final serialVersionUID:J


# instance fields
.field private final transient comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private final transient entries:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Lcom/lewa/guava/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final transient fromIndex:I

.field private transient keySet:Lcom/lewa/guava/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final transient toIndex:I

.field private transient values:Lcom/lewa/guava/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    invoke-static {}, Lcom/lewa/guava/collect/Ordering;->natural()Lcom/lewa/guava/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/lewa/guava/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 97
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map$Entry;

    sput-object v0, Lcom/lewa/guava/collect/ImmutableSortedMap;->EMPTY_ARRAY:[Ljava/util/Map$Entry;

    .line 100
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSortedMap;

    sget-object v1, Lcom/lewa/guava/collect/ImmutableSortedMap;->EMPTY_ARRAY:[Ljava/util/Map$Entry;

    sget-object v2, Lcom/lewa/guava/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/lewa/guava/collect/ImmutableSortedMap;-><init>([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    sput-object v0, Lcom/lewa/guava/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lcom/lewa/guava/collect/ImmutableMap;

    return-void
.end method

.method constructor <init>([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<**>;",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, entries:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<**>;"
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/lewa/guava/collect/ImmutableSortedMap;-><init>([Ljava/util/Map$Entry;Ljava/util/Comparator;II)V

    .line 425
    return-void
.end method

.method private constructor <init>([Ljava/util/Map$Entry;Ljava/util/Comparator;II)V
    .locals 1
    .parameter
    .parameter
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<**>;",
            "Ljava/util/Comparator",
            "<-TK;>;II)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, entries:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<**>;"
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableSortedMapFauxverideShim;-><init>()V

    move-object v0, p1

    .line 415
    check-cast v0, [Ljava/util/Map$Entry;

    .line 416
    .local v0, tmp:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<TK;TV;>;"
    iput-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    .line 417
    iput-object p2, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    .line 418
    iput p3, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->fromIndex:I

    .line 419
    iput p4, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->toIndex:I

    .line 420
    return-void
.end method

.method static synthetic access$000([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-static {p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedMap;->sortEntries([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic access$100([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-static {p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedMap;->validateEntries([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lewa/guava/collect/ImmutableSortedMap;)[Ljava/util/Map$Entry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lewa/guava/collect/ImmutableSortedMap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->fromIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/lewa/guava/collect/ImmutableSortedMap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->toIndex:I

    return v0
.end method

.method private binarySearch(Ljava/lang/Object;)I
    .locals 6
    .parameter "key"

    .prologue
    .line 445
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    iget v1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->fromIndex:I

    .line 446
    .local v1, lower:I
    iget v4, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->toIndex:I

    add-int/lit8 v3, v4, -0x1

    .line 448
    .local v3, upper:I
    :goto_0
    if-gt v1, v3, :cond_1

    .line 449
    sub-int v4, v3, v1

    div-int/lit8 v4, v4, 0x2

    add-int v2, v1, v4

    .line 450
    .local v2, middle:I
    iget-object v4, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    iget-object v5, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    aget-object v5, v5, v2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, p1, v5}, Lcom/lewa/guava/collect/ImmutableSortedSet;->unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 452
    .local v0, c:I
    if-gez v0, :cond_0

    .line 453
    add-int/lit8 v3, v2, -0x1

    goto :goto_0

    .line 454
    :cond_0
    if-lez v0, :cond_2

    .line 455
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 461
    .end local v0           #c:I
    .end local v2           #middle:I
    :cond_1
    neg-int v4, v1

    add-int/lit8 v2, v4, -0x1

    :cond_2
    return v2
.end method

.method public static copyOf(Ljava/util/Map;)Lcom/lewa/guava/collect/ImmutableSortedMap;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-static {}, Lcom/lewa/guava/collect/Ordering;->natural()Lcom/lewa/guava/collect/Ordering;

    move-result-object v0

    .line 204
    .local v0, naturalOrder:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<TK;>;"
    invoke-static {p0, v0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lcom/lewa/guava/collect/ImmutableSortedMap;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf(Ljava/util/Map;Ljava/util/Comparator;)Lcom/lewa/guava/collect/ImmutableSortedMap;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p0, v0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lcom/lewa/guava/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method private static copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lcom/lewa/guava/collect/ImmutableSortedMap;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    const/4 v6, 0x0

    .line 245
    .local v6, sameComparator:Z
    instance-of v8, p0, Ljava/util/SortedMap;

    if-eqz v8, :cond_0

    move-object v7, p0

    .line 246
    check-cast v7, Ljava/util/SortedMap;

    .line 247
    .local v7, sortedMap:Ljava/util/SortedMap;,"Ljava/util/SortedMap<**>;"
    invoke-interface {v7}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 248
    .local v0, comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    if-nez v0, :cond_2

    sget-object v8, Lcom/lewa/guava/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne p1, v8, :cond_1

    const/4 v6, 0x1

    .line 253
    .end local v0           #comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    .end local v7           #sortedMap:Ljava/util/SortedMap;,"Ljava/util/SortedMap<**>;"
    :cond_0
    :goto_0
    if-eqz v6, :cond_3

    instance-of v8, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;

    if-eqz v8, :cond_3

    move-object v4, p0

    .line 257
    check-cast v4, Lcom/lewa/guava/collect/ImmutableSortedMap;

    .line 273
    :goto_1
    return-object v4

    .line 248
    .restart local v0       #comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    .restart local v7       #sortedMap:Ljava/util/SortedMap;,"Ljava/util/SortedMap<**>;"
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0

    .line 262
    .end local v0           #comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    .end local v7           #sortedMap:Ljava/util/SortedMap;,"Ljava/util/SortedMap<**>;"
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v8

    invoke-static {v8}, Lcom/lewa/guava/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 263
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map$Entry<**>;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 264
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lewa/guava/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 266
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/util/Map$Entry;

    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/Map$Entry;

    .line 268
    .local v2, entryArray:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<**>;"
    if-nez v6, :cond_5

    .line 269
    invoke-static {v2, p1}, Lcom/lewa/guava/collect/ImmutableSortedMap;->sortEntries([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    .line 270
    invoke-static {v2, p1}, Lcom/lewa/guava/collect/ImmutableSortedMap;->validateEntries([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    .line 273
    :cond_5
    new-instance v4, Lcom/lewa/guava/collect/ImmutableSortedMap;

    invoke-direct {v4, v2, p1}, Lcom/lewa/guava/collect/ImmutableSortedMap;-><init>([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method public static copyOfSorted(Ljava/util/SortedMap;)Lcom/lewa/guava/collect/ImmutableSortedMap;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, map:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;+TV;>;"
    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/lewa/guava/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 239
    .local v0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    :goto_0
    invoke-static {p0, v0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lcom/lewa/guava/collect/ImmutableSortedMap;

    move-result-object v1

    return-object v1

    .line 237
    .end local v0           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    :cond_0
    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0
.end method

.method private createEntrySet()Lcom/lewa/guava/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 488
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lewa/guava/collect/ImmutableSet;->of()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet;-><init>(Lcom/lewa/guava/collect/ImmutableSortedMap;)V

    goto :goto_0
.end method

.method private createKeySet()Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 544
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-static {v2}, Lcom/lewa/guava/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v2

    .line 553
    :goto_0
    return-object v2

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/Object;

    .line 550
    .local v0, array:[Ljava/lang/Object;
    iget v1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->fromIndex:I

    .local v1, i:I
    :goto_1
    iget v2, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->toIndex:I

    if-ge v1, v2, :cond_1

    .line 551
    iget v2, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->fromIndex:I

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    aget-object v3, v3, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 553
    :cond_1
    new-instance v2, Lcom/lewa/guava/collect/RegularImmutableSortedSet;

    iget-object v3, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v2, v0, v3}, Lcom/lewa/guava/collect/RegularImmutableSortedSet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private createSubmap(II)Lcom/lewa/guava/collect/ImmutableSortedMap;
    .locals 3
    .parameter "newFromIndex"
    .parameter "newToIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 693
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    if-ge p1, p2, :cond_0

    .line 694
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSortedMap;

    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/lewa/guava/collect/ImmutableSortedMap;-><init>([Ljava/util/Map$Entry;Ljava/util/Comparator;II)V

    .line 697
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lcom/lewa/guava/collect/ImmutableSortedMap;

    move-result-object v0

    goto :goto_0
.end method

.method private static emptyMap(Ljava/util/Comparator;)Lcom/lewa/guava/collect/ImmutableSortedMap;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    sget-object v0, Lcom/lewa/guava/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lcom/lewa/guava/collect/ImmutableSortedMap;->of()Lcom/lewa/guava/collect/ImmutableSortedMap;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSortedMap;

    sget-object v1, Lcom/lewa/guava/collect/ImmutableSortedMap;->EMPTY_ARRAY:[Ljava/util/Map$Entry;

    invoke-direct {v0, v1, p0}, Lcom/lewa/guava/collect/ImmutableSortedMap;-><init>([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private findSubmapIndex(Ljava/lang/Object;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 687
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedMap;->binarySearch(Ljava/lang/Object;)I

    move-result v0

    .line 688
    .local v0, index:I
    if-ltz v0, :cond_0

    .end local v0           #index:I
    :goto_0
    return v0

    .restart local v0       #index:I
    :cond_0
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method public static naturalOrder()Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<TK;>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/lewa/guava/collect/ImmutableSortedMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    invoke-static {}, Lcom/lewa/guava/collect/Ordering;->natural()Lcom/lewa/guava/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of()Lcom/lewa/guava/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 109
    sget-object v0, Lcom/lewa/guava/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lcom/lewa/guava/collect/ImmutableMap;

    check-cast v0, Lcom/lewa/guava/collect/ImmutableSortedMap;

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, k1:Ljava/lang/Comparable;,"TK;"
    .local p1, v1:Ljava/lang/Object;,"TV;"
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    .line 127
    .local v0, entries:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<**>;"
    new-instance v1, Lcom/lewa/guava/collect/ImmutableSortedMap;

    invoke-static {}, Lcom/lewa/guava/collect/Ordering;->natural()Lcom/lewa/guava/collect/Ordering;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/lewa/guava/collect/ImmutableSortedMap;-><init>([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, k1:Ljava/lang/Comparable;,"TK;"
    .local p1, v1:Ljava/lang/Object;,"TV;"
    .local p2, k2:Ljava/lang/Comparable;,"TK;"
    .local p3, v2:Ljava/lang/Object;,"TV;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    invoke-static {}, Lcom/lewa/guava/collect/Ordering;->natural()Lcom/lewa/guava/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->build()Lcom/lewa/guava/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, k1:Ljava/lang/Comparable;,"TK;"
    .local p1, v1:Ljava/lang/Object;,"TV;"
    .local p2, k2:Ljava/lang/Comparable;,"TK;"
    .local p3, v2:Ljava/lang/Object;,"TV;"
    .local p4, k3:Ljava/lang/Comparable;,"TK;"
    .local p5, v3:Ljava/lang/Object;,"TV;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    invoke-static {}, Lcom/lewa/guava/collect/Ordering;->natural()Lcom/lewa/guava/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->build()Lcom/lewa/guava/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, k1:Ljava/lang/Comparable;,"TK;"
    .local p1, v1:Ljava/lang/Object;,"TV;"
    .local p2, k2:Ljava/lang/Comparable;,"TK;"
    .local p3, v2:Ljava/lang/Object;,"TV;"
    .local p4, k3:Ljava/lang/Comparable;,"TK;"
    .local p5, v3:Ljava/lang/Object;,"TV;"
    .local p6, k4:Ljava/lang/Comparable;,"TK;"
    .local p7, v4:Ljava/lang/Object;,"TV;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    invoke-static {}, Lcom/lewa/guava/collect/Ordering;->natural()Lcom/lewa/guava/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->build()Lcom/lewa/guava/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, k1:Ljava/lang/Comparable;,"TK;"
    .local p1, v1:Ljava/lang/Object;,"TV;"
    .local p2, k2:Ljava/lang/Comparable;,"TK;"
    .local p3, v2:Ljava/lang/Object;,"TV;"
    .local p4, k3:Ljava/lang/Comparable;,"TK;"
    .local p5, v3:Ljava/lang/Object;,"TV;"
    .local p6, k4:Ljava/lang/Comparable;,"TK;"
    .local p7, v4:Ljava/lang/Object;,"TV;"
    .local p8, k5:Ljava/lang/Comparable;,"TK;"
    .local p9, v5:Ljava/lang/Object;,"TV;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    invoke-static {}, Lcom/lewa/guava/collect/Ordering;->natural()Lcom/lewa/guava/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p8, p9}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->build()Lcom/lewa/guava/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/lewa/guava/collect/ImmutableSortedMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TK;>;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static reverseOrder()Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<TK;>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/lewa/guava/collect/ImmutableSortedMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 335
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    invoke-static {}, Lcom/lewa/guava/collect/Ordering;->natural()Lcom/lewa/guava/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lewa/guava/collect/Ordering;->reverse()Lcom/lewa/guava/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static sortEntries([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<**>;",
            "Ljava/util/Comparator",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, entryArray:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<**>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSortedMap$1;

    invoke-direct {v0, p1}, Lcom/lewa/guava/collect/ImmutableSortedMap$1;-><init>(Ljava/util/Comparator;)V

    .line 284
    .local v0, entryComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/util/Map$Entry<**>;>;"
    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 285
    return-void
.end method

.method private static validateEntries([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<**>;",
            "Ljava/util/Comparator",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, entryArray:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<**>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 290
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p0, v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    aget-object v2, p0, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/lewa/guava/collect/ImmutableSortedSet;->unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    .line 292
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate keys in mappings "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_1
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 617
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .parameter "value"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 465
    if-nez p1, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v1

    .line 468
    :cond_1
    iget v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->fromIndex:I

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->toIndex:I

    if-ge v0, v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 470
    const/4 v1, 0x1

    goto :goto_0

    .line 468
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public entrySet()Lcom/lewa/guava/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 483
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->entrySet:Lcom/lewa/guava/collect/ImmutableSet;

    .line 484
    .local v0, es:Lcom/lewa/guava/collect/ImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->createEntrySet()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    .end local v0           #es:Lcom/lewa/guava/collect/ImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    iput-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->entrySet:Lcom/lewa/guava/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 85
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->entrySet()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 621
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    iget v1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->fromIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 432
    if-nez p1, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-object v2

    .line 437
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedMap;->binarySearch(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 441
    .local v1, i:I
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 438
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 439
    .local v0, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public headMap(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 645
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, toKey:Ljava/lang/Object;,"TK;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lewa/guava/collect/ImmutableSortedMap;->findSubmapIndex(Ljava/lang/Object;)I

    move-result v0

    .line 646
    .local v0, newToIndex:I
    iget v1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->fromIndex:I

    invoke-direct {p0, v1, v0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->createSubmap(II)Lcom/lewa/guava/collect/ImmutableSortedMap;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lcom/lewa/guava/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 85
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->keySet()Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->keySet:Lcom/lewa/guava/collect/ImmutableSortedSet;

    .line 540
    .local v0, ks:Lcom/lewa/guava/collect/ImmutableSortedSet;,"Lcom/lewa/guava/collect/ImmutableSortedSet<TK;>;"
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->createKeySet()Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    .end local v0           #ks:Lcom/lewa/guava/collect/ImmutableSortedSet;,"Lcom/lewa/guava/collect/ImmutableSortedSet<TK;>;"
    iput-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->keySet:Lcom/lewa/guava/collect/ImmutableSortedSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 85
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->keySet()Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 628
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    iget v1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->toIndex:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 428
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    iget v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->toIndex:I

    iget v1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->fromIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 663
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    .local p2, toKey:Ljava/lang/Object;,"TK;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    invoke-static {p2}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    iget-object v2, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v2, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/lewa/guava/base/Preconditions;->checkArgument(Z)V

    .line 666
    invoke-direct {p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedMap;->findSubmapIndex(Ljava/lang/Object;)I

    move-result v0

    .line 667
    .local v0, newFromIndex:I
    invoke-direct {p0, p2}, Lcom/lewa/guava/collect/ImmutableSortedMap;->findSubmapIndex(Ljava/lang/Object;)I

    move-result v1

    .line 668
    .local v1, newToIndex:I
    invoke-direct {p0, v0, v1}, Lcom/lewa/guava/collect/ImmutableSortedMap;->createSubmap(II)Lcom/lewa/guava/collect/ImmutableSortedMap;

    move-result-object v2

    return-object v2

    .line 665
    .end local v0           #newFromIndex:I
    .end local v1           #newToIndex:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 682
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lewa/guava/collect/ImmutableSortedMap;->findSubmapIndex(Ljava/lang/Object;)I

    move-result v0

    .line 683
    .local v0, newFromIndex:I
    iget v1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->toIndex:I

    invoke-direct {p0, v0, v1}, Lcom/lewa/guava/collect/ImmutableSortedMap;->createSubmap(II)Lcom/lewa/guava/collect/ImmutableSortedMap;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/lewa/guava/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 563
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->values:Lcom/lewa/guava/collect/ImmutableCollection;

    .line 564
    .local v0, v:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TV;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/lewa/guava/collect/ImmutableSortedMap$Values;

    .end local v0           #v:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TV;>;"
    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/ImmutableSortedMap$Values;-><init>(Lcom/lewa/guava/collect/ImmutableSortedMap;)V

    iput-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;->values:Lcom/lewa/guava/collect/ImmutableCollection;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 85
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->values()Lcom/lewa/guava/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 722
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSortedMap$SerializedForm;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/ImmutableSortedMap$SerializedForm;-><init>(Lcom/lewa/guava/collect/ImmutableSortedMap;)V

    return-object v0
.end method
