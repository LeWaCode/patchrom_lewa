.class public final Lcom/lewa/guava/collect/Maps;
.super Ljava/lang/Object;
.source "Maps.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap;,
        Lcom/lewa/guava/collect/Maps$FilteredEntryMap;,
        Lcom/lewa/guava/collect/Maps$FilteredKeyMap;,
        Lcom/lewa/guava/collect/Maps$AbstractFilteredMap;,
        Lcom/lewa/guava/collect/Maps$TransformedValuesMap;,
        Lcom/lewa/guava/collect/Maps$UnmodifiableBiMap;,
        Lcom/lewa/guava/collect/Maps$UnmodifiableEntrySet;,
        Lcom/lewa/guava/collect/Maps$UnmodifiableEntries;,
        Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl;,
        Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;
    }
.end annotation


# static fields
.field static final standardJoiner:Lcom/lewa/guava/base/Joiner$MapJoiner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1366
    sget-object v0, Lcom/lewa/guava/collect/Collections2;->standardJoiner:Lcom/lewa/guava/base/Joiner;

    const-string v1, "="

    invoke-virtual {v0, v1}, Lcom/lewa/guava/base/Joiner;->withKeyValueSeparator(Ljava/lang/String;)Lcom/lewa/guava/base/Joiner$MapJoiner;

    move-result-object v0

    sput-object v0, Lcom/lewa/guava/collect/Maps;->standardJoiner:Lcom/lewa/guava/base/Joiner$MapJoiner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-static {p0}, Lcom/lewa/guava/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static capacity(I)I
    .locals 2
    .parameter "expectedSize"

    .prologue
    .line 139
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/lewa/guava/base/Preconditions;->checkArgument(Z)V

    .line 140
    mul-int/lit8 v0, p0, 0x2

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter "o"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 705
    .local p0, c:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 706
    const/4 v0, 0x0

    .line 708
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    invoke-static {p1}, Lcom/lewa/guava/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static difference(Ljava/util/Map;Ljava/util/Map;)Lcom/lewa/guava/collect/MapDifference;
    .locals 12
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
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lcom/lewa/guava/collect/MapDifference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, left:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    .local p1, right:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-static {}, Lcom/lewa/guava/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 325
    .local v2, onlyOnLeft:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 326
    .local v3, onlyOnRight:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    invoke-static {}, Lcom/lewa/guava/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 327
    .local v4, onBoth:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    invoke-static {}, Lcom/lewa/guava/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 328
    .local v5, differences:Ljava/util/Map;,"Ljava/util/Map<TK;Lcom/lewa/guava/collect/MapDifference$ValueDifference<TV;>;>;"
    const/4 v7, 0x1

    .line 330
    .local v7, eq:Z
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 331
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 332
    .local v9, leftKey:Ljava/lang/Object;,"TK;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 333
    .local v10, leftValue:Ljava/lang/Object;,"TV;"
    invoke-interface {p1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    invoke-interface {v3, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 335
    .local v11, rightValue:Ljava/lang/Object;,"TV;"
    invoke-static {v10, v11}, Lcom/lewa/guava/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 338
    :cond_0
    const/4 v7, 0x0

    .line 339
    new-instance v0, Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl;

    invoke-direct {v0, v10, v11}, Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 343
    .end local v11           #rightValue:Ljava/lang/Object;,"TV;"
    :cond_1
    const/4 v7, 0x0

    .line 344
    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 348
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v9           #leftKey:Ljava/lang/Object;,"TK;"
    .end local v10           #leftValue:Ljava/lang/Object;,"TV;"
    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 349
    .local v1, areEqual:Z
    :goto_1
    new-instance v0, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;

    invoke-direct/range {v0 .. v5}, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;-><init>(ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0

    .line 348
    .end local v1           #areEqual:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static filterEntries(Ljava/util/Map;Lcom/lewa/guava/base/Predicate;)Ljava/util/Map;
    .locals 2
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
            "<TK;TV;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 980
    .local p0, unfiltered:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    .local p1, entryPredicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    instance-of v0, p0, Lcom/lewa/guava/collect/Maps$AbstractFilteredMap;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/lewa/guava/collect/Maps$AbstractFilteredMap;

    .end local p0           #unfiltered:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/lewa/guava/collect/Maps;->filterFiltered(Lcom/lewa/guava/collect/Maps$AbstractFilteredMap;Lcom/lewa/guava/base/Predicate;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0       #unfiltered:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    :cond_0
    new-instance v1, Lcom/lewa/guava/collect/Maps$FilteredEntryMap;

    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0, p1}, Lcom/lewa/guava/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lcom/lewa/guava/base/Predicate;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static filterFiltered(Lcom/lewa/guava/collect/Maps$AbstractFilteredMap;Lcom/lewa/guava/base/Predicate;)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/collect/Maps$AbstractFilteredMap",
            "<TK;TV;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 993
    .local p0, map:Lcom/lewa/guava/collect/Maps$AbstractFilteredMap;,"Lcom/lewa/guava/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    .local p1, entryPredicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Maps$AbstractFilteredMap;->predicate:Lcom/lewa/guava/base/Predicate;

    invoke-static {v1, p1}, Lcom/lewa/guava/base/Predicates;->and(Lcom/lewa/guava/base/Predicate;Lcom/lewa/guava/base/Predicate;)Lcom/lewa/guava/base/Predicate;

    move-result-object v0

    .line 995
    .local v0, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/lewa/guava/collect/Maps$FilteredEntryMap;

    iget-object v2, p0, Lcom/lewa/guava/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    invoke-direct {v1, v2, v0}, Lcom/lewa/guava/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lcom/lewa/guava/base/Predicate;)V

    return-object v1
.end method

.method public static filterKeys(Ljava/util/Map;Lcom/lewa/guava/base/Predicate;)Ljava/util/Map;
    .locals 3
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
            "<TK;TV;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 905
    .local p0, unfiltered:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    .local p1, keyPredicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TK;>;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    new-instance v0, Lcom/lewa/guava/collect/Maps$2;

    invoke-direct {v0, p1}, Lcom/lewa/guava/collect/Maps$2;-><init>(Lcom/lewa/guava/base/Predicate;)V

    .line 911
    .local v0, entryPredicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    instance-of v1, p0, Lcom/lewa/guava/collect/Maps$AbstractFilteredMap;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/lewa/guava/collect/Maps$AbstractFilteredMap;

    .end local p0           #unfiltered:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, v0}, Lcom/lewa/guava/collect/Maps;->filterFiltered(Lcom/lewa/guava/collect/Maps$AbstractFilteredMap;Lcom/lewa/guava/base/Predicate;)Ljava/util/Map;

    move-result-object v1

    :goto_0
    return-object v1

    .restart local p0       #unfiltered:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    :cond_0
    new-instance v2, Lcom/lewa/guava/collect/Maps$FilteredKeyMap;

    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v2, v1, p1, v0}, Lcom/lewa/guava/collect/Maps$FilteredKeyMap;-><init>(Ljava/util/Map;Lcom/lewa/guava/base/Predicate;Lcom/lewa/guava/base/Predicate;)V

    move-object v1, v2

    goto :goto_0
.end method

.method public static filterValues(Ljava/util/Map;Lcom/lewa/guava/base/Predicate;)Ljava/util/Map;
    .locals 2
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
            "<TK;TV;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 943
    .local p0, unfiltered:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    .local p1, valuePredicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TV;>;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    new-instance v0, Lcom/lewa/guava/collect/Maps$3;

    invoke-direct {v0, p1}, Lcom/lewa/guava/collect/Maps$3;-><init>(Lcom/lewa/guava/base/Predicate;)V

    .line 949
    .local v0, entryPredicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p0, v0}, Lcom/lewa/guava/collect/Maps;->filterEntries(Ljava/util/Map;Lcom/lewa/guava/base/Predicate;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static fromProperties(Ljava/util/Properties;)Lcom/lewa/guava/collect/ImmutableMap;
    .locals 4
    .parameter "properties"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            ")",
            "Lcom/lewa/guava/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    invoke-static {}, Lcom/lewa/guava/collect/ImmutableMap;->builder()Lcom/lewa/guava/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 511
    .local v0, builder:Lcom/lewa/guava/collect/ImmutableMap$Builder;,"Lcom/lewa/guava/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 512
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 513
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/lewa/guava/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 516
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/lewa/guava/collect/ImmutableMap$Builder;->build()Lcom/lewa/guava/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method

.method public static immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 530
    .local p0, key:Ljava/lang/Object;,"TK;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newEnumMap(Ljava/lang/Class;)Ljava/util/EnumMap;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum",
            "<TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TK;>;)",
            "Ljava/util/EnumMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<TK;>;"
    new-instance v1, Ljava/util/EnumMap;

    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object v1
.end method

.method public static newEnumMap(Ljava/util/Map;)Ljava/util/EnumMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum",
            "<TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;+TV;>;)",
            "Ljava/util/EnumMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<TK;+TV;>;"
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p0}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static newHashMap(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 1
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
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newHashMapWithExpectedSize(I)Ljava/util/HashMap;
    .locals 2
    .parameter "expectedSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p0}, Lcom/lewa/guava/collect/Maps;->capacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method public static newIdentityHashMap()Ljava/util/IdentityHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/IdentityHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashMap(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 1
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
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newTreeMap()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method

.method public static newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;
    .locals 1
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "K:TC;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TC;>;)",
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TC;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static newTreeMap(Ljava/util/SortedMap;)Ljava/util/TreeMap;
    .locals 1
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
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, map:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;+TV;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method static removeEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter "o"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 725
    .local p0, c:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 726
    const/4 v0, 0x0

    .line 728
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    invoke-static {p1}, Lcom/lewa/guava/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1387
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1389
    :goto_0
    return v1

    .line 1388
    :catch_0
    move-exception v0

    .line 1389
    .local v0, e:Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1375
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<*TV;>;"
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1377
    :goto_0
    return-object v1

    .line 1376
    :catch_0
    move-exception v0

    .line 1377
    .local v0, e:Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static synchronizedBiMap(Lcom/lewa/guava/collect/BiMap;)Lcom/lewa/guava/collect/BiMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/collect/BiMap",
            "<TK;TV;>;)",
            "Lcom/lewa/guava/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, bimap:Lcom/lewa/guava/collect/BiMap;,"Lcom/lewa/guava/collect/BiMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lewa/guava/collect/Synchronized;->biMap(Lcom/lewa/guava/collect/BiMap;Ljava/lang/Object;)Lcom/lewa/guava/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public static transformValues(Ljava/util/Map;Lcom/lewa/guava/base/Function;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV1;>;",
            "Lcom/lewa/guava/base/Function",
            "<-TV1;TV2;>;)",
            "Ljava/util/Map",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 769
    .local p0, fromMap:Ljava/util/Map;,"Ljava/util/Map<TK;TV1;>;"
    .local p1, function:Lcom/lewa/guava/base/Function;,"Lcom/lewa/guava/base/Function<-TV1;TV2;>;"
    new-instance v0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Maps$TransformedValuesMap;-><init>(Ljava/util/Map;Lcom/lewa/guava/base/Function;)V

    return-object v0
.end method

.method public static uniqueIndex(Ljava/lang/Iterable;Lcom/lewa/guava/base/Function;)Lcom/lewa/guava/collect/ImmutableMap;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TV;>;",
            "Lcom/lewa/guava/base/Function",
            "<-TV;TK;>;)",
            "Lcom/lewa/guava/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 485
    .local p0, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TV;>;"
    .local p1, keyFunction:Lcom/lewa/guava/base/Function;,"Lcom/lewa/guava/base/Function<-TV;TK;>;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-static {}, Lcom/lewa/guava/collect/ImmutableMap;->builder()Lcom/lewa/guava/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 487
    .local v0, builder:Lcom/lewa/guava/collect/ImmutableMap$Builder;,"Lcom/lewa/guava/collect/ImmutableMap$Builder<TK;TV;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 488
    .local v2, value:Ljava/lang/Object;,"TV;"
    invoke-interface {p1, v2}, Lcom/lewa/guava/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/lewa/guava/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 490
    .end local v2           #value:Ljava/lang/Object;,"TV;"
    :cond_0
    invoke-virtual {v0}, Lcom/lewa/guava/collect/ImmutableMap$Builder;->build()Lcom/lewa/guava/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method

.method public static unmodifiableBiMap(Lcom/lewa/guava/collect/BiMap;)Lcom/lewa/guava/collect/BiMap;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/collect/BiMap",
            "<+TK;+TV;>;)",
            "Lcom/lewa/guava/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, bimap:Lcom/lewa/guava/collect/BiMap;,"Lcom/lewa/guava/collect/BiMap<+TK;+TV;>;"
    new-instance v0, Lcom/lewa/guava/collect/Maps$UnmodifiableBiMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lewa/guava/collect/Maps$UnmodifiableBiMap;-><init>(Lcom/lewa/guava/collect/BiMap;Lcom/lewa/guava/collect/BiMap;)V

    return-object v0
.end method

.method private static unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 558
    .local p0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    new-instance v0, Lcom/lewa/guava/collect/Maps$1;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/Maps$1;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method static unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 543
    .local p0, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lcom/lewa/guava/collect/Maps$UnmodifiableEntrySet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/Maps$UnmodifiableEntrySet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
