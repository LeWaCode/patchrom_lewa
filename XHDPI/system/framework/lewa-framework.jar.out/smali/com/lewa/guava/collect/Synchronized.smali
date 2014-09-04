.class final Lcom/lewa/guava/collect/Synchronized;
.super Ljava/lang/Object;
.source "Synchronized.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues;,
        Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMap;,
        Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;,
        Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;,
        Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;,
        Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;,
        Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;,
        Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;,
        Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;,
        Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;,
        Lcom/lewa/guava/collect/Synchronized$SynchronizedRandomAccessList;,
        Lcom/lewa/guava/collect/Synchronized$SynchronizedList;,
        Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;,
        Lcom/lewa/guava/collect/Synchronized$SynchronizedSet;,
        Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;,
        Lcom/lewa/guava/collect/Synchronized$SynchronizedObject;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-static {p0, p1}, Lcom/lewa/guava/collect/Synchronized;->typePreservingCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/lewa/guava/collect/Multiset;Ljava/lang/Object;)Lcom/lewa/guava/collect/Multiset;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-static {p0, p1}, Lcom/lewa/guava/collect/Synchronized;->multiset(Lcom/lewa/guava/collect/Multiset;Ljava/lang/Object;)Lcom/lewa/guava/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public static biMap(Lcom/lewa/guava/collect/BiMap;Ljava/lang/Object;)Lcom/lewa/guava/collect/BiMap;
    .locals 2
    .parameter
    .end parameter
    .parameter "mutex"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/collect/BiMap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/lewa/guava/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1281
    .local p0, bimap:Lcom/lewa/guava/collect/BiMap;,"Lcom/lewa/guava/collect/BiMap<TK;TV;>;"
    new-instance v0, Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/lewa/guava/collect/Synchronized$SynchronizedBiMap;-><init>(Lcom/lewa/guava/collect/BiMap;Ljava/lang/Object;Lcom/lewa/guava/collect/BiMap;)V

    return-object v0
.end method

.method static collection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter
    .end parameter
    .parameter "mutex"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    new-instance v0, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0
.end method

.method static list(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter
    .end parameter
    .parameter "mutex"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TE;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lewa/guava/collect/Synchronized$SynchronizedRandomAccessList;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Synchronized$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Synchronized$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static listMultimap(Lcom/lewa/guava/collect/ListMultimap;Ljava/lang/Object;)Lcom/lewa/guava/collect/ListMultimap;
    .locals 1
    .parameter
    .end parameter
    .parameter "mutex"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/collect/ListMultimap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/lewa/guava/collect/ListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 818
    .local p0, multimap:Lcom/lewa/guava/collect/ListMultimap;,"Lcom/lewa/guava/collect/ListMultimap<TK;TV;>;"
    new-instance v0, Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Synchronized$SynchronizedListMultimap;-><init>(Lcom/lewa/guava/collect/ListMultimap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static map(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter
    .end parameter
    .parameter "mutex"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1134
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    new-instance v0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static multimap(Lcom/lewa/guava/collect/Multimap;Ljava/lang/Object;)Lcom/lewa/guava/collect/Multimap;
    .locals 1
    .parameter
    .end parameter
    .parameter "mutex"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/collect/Multimap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/lewa/guava/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 645
    .local p0, multimap:Lcom/lewa/guava/collect/Multimap;,"Lcom/lewa/guava/collect/Multimap<TK;TV;>;"
    new-instance v0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultimap;-><init>(Lcom/lewa/guava/collect/Multimap;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static multiset(Lcom/lewa/guava/collect/Multiset;Ljava/lang/Object;)Lcom/lewa/guava/collect/Multiset;
    .locals 1
    .parameter
    .end parameter
    .parameter "mutex"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/collect/Multiset",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/lewa/guava/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 533
    .local p0, multiset:Lcom/lewa/guava/collect/Multiset;,"Lcom/lewa/guava/collect/Multiset<TE;>;"
    new-instance v0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMultiset;-><init>(Lcom/lewa/guava/collect/Multiset;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter
    .end parameter
    .parameter "mutex"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, set:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    new-instance v0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSet;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static setMultimap(Lcom/lewa/guava/collect/SetMultimap;Ljava/lang/Object;)Lcom/lewa/guava/collect/SetMultimap;
    .locals 1
    .parameter
    .end parameter
    .parameter "mutex"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/collect/SetMultimap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/lewa/guava/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 861
    .local p0, multimap:Lcom/lewa/guava/collect/SetMultimap;,"Lcom/lewa/guava/collect/SetMultimap<TK;TV;>;"
    new-instance v0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSetMultimap;-><init>(Lcom/lewa/guava/collect/SetMultimap;Ljava/lang/Object;)V

    return-object v0
.end method

.method static sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter
    .end parameter
    .parameter "mutex"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, set:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TE;>;"
    new-instance v0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static sortedSetMultimap(Lcom/lewa/guava/collect/SortedSetMultimap;Ljava/lang/Object;)Lcom/lewa/guava/collect/SortedSetMultimap;
    .locals 1
    .parameter
    .end parameter
    .parameter "mutex"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/collect/SortedSetMultimap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/lewa/guava/collect/SortedSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 913
    .local p0, multimap:Lcom/lewa/guava/collect/SortedSetMultimap;,"Lcom/lewa/guava/collect/SortedSetMultimap<TK;TV;>;"
    new-instance v0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSortedSetMultimap;-><init>(Lcom/lewa/guava/collect/SortedSetMultimap;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static typePreservingCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter
    .end parameter
    .parameter "mutex"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 980
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 981
    check-cast p0, Ljava/util/SortedSet;

    .end local p0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    invoke-static {p0, p1}, Lcom/lewa/guava/collect/Synchronized;->sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 987
    :goto_0
    return-object v0

    .line 982
    .restart local p0       #collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 983
    check-cast p0, Ljava/util/Set;

    .end local p0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    invoke-static {p0, p1}, Lcom/lewa/guava/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 984
    .restart local p0       #collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 985
    check-cast p0, Ljava/util/List;

    .end local p0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    invoke-static {p0, p1}, Lcom/lewa/guava/collect/Synchronized;->list(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 987
    .restart local p0       #collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    :cond_2
    invoke-static {p0, p1}, Lcom/lewa/guava/collect/Synchronized;->collection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public static typePreservingSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter
    .end parameter
    .parameter "mutex"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1020
    .local p0, set:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 1021
    check-cast p0, Ljava/util/SortedSet;

    .end local p0           #set:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    invoke-static {p0, p1}, Lcom/lewa/guava/collect/Synchronized;->sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 1023
    :goto_0
    return-object v0

    .restart local p0       #set:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    :cond_0
    invoke-static {p0, p1}, Lcom/lewa/guava/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method
