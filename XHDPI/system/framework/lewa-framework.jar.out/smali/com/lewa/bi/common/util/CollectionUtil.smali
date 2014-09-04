.class public Lcom/lewa/bi/common/util/CollectionUtil;
.super Ljava/lang/Object;
.source "CollectionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;TT;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, base:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    .local p1, toAdd:Ljava/lang/Object;,"TT;"
    if-eqz p1, :cond_0

    .line 37
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    return-object p0
.end method

.method public static addAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, base:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    .local p1, toAdd:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    invoke-static {p1}, Lcom/lewa/bi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 52
    :cond_0
    return-object p0
.end method

.method public static cast(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .parameter "src"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    return-object p0
.end method

.method public static cast(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "src"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    return-object p0
.end method

.method public static contains(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, items:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p0}, Lcom/lewa/bi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static containsType(Ljava/util/Collection;Ljava/lang/Class;)Z
    .locals 4
    .parameter
    .parameter
    .annotation build Lcom/lewa/guava/annotations/GwtIncompatible;
        value = "Class.isInstance"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, items:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 83
    if-nez p0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v2

    .line 86
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 87
    .local v1, object:Ljava/lang/Object;
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static count(Ljava/util/Iterator;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    const/4 v0, 0x0

    .line 96
    .local v0, count:I
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    add-int/lit8 v0, v0, 0x1

    .line 98
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 100
    :cond_0
    return v0
.end method

.method public static countersToString(Lcom/lewa/guava/collect/Multiset;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/Multiset",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, counts:Lcom/lewa/guava/collect/Multiset;,"Lcom/lewa/guava/collect/Multiset<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lcom/lewa/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/collect/Multiset$Entry;

    .line 106
    .local v0, entry:Lcom/lewa/guava/collect/Multiset$Entry;,"Lcom/lewa/guava/collect/Multiset$Entry<*>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/lewa/guava/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/lewa/guava/collect/Multiset$Entry;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 108
    .end local v0           #entry:Lcom/lewa/guava/collect/Multiset$Entry;,"Lcom/lewa/guava/collect/Multiset$Entry<*>;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static varargs createNonNullList([Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, elements:[Ljava/lang/Object;,"[TT;"
    invoke-static {}, Lcom/lewa/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 116
    .local v3, result:Ljava/util/List;,"Ljava/util/List<TT;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 117
    .local v4, t:Ljava/lang/Object;,"TT;"
    if-eqz v4, :cond_0

    .line 118
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v4           #t:Ljava/lang/Object;,"TT;"
    :cond_1
    return-object v3
.end method

.method public static equals(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, list1:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    .local p1, list2:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 128
    invoke-static {p0}, Lcom/lewa/bi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    invoke-static {p1}, Lcom/lewa/bi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    if-eqz p1, :cond_0

    .line 133
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static equals(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, list1:Ljava/util/List;,"Ljava/util/List<*>;"
    .local p1, list2:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v2, 0x0

    .line 138
    invoke-static {p0}, Lcom/lewa/bi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    invoke-static {p1}, Lcom/lewa/bi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    .line 152
    :cond_0
    :goto_0
    return v2

    .line 140
    :cond_1
    if-eqz p1, :cond_0

    .line 143
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 144
    .local v1, size:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 147
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 148
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lewa/guava/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static findFirstIndex(Ljava/util/Collection;Ljava/lang/Comparable;)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/util/Collection",
            "<TT;>;TT;)I"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, ids:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    .local p1, id:Ljava/lang/Comparable;,"TT;"
    const/4 v2, 0x0

    .line 164
    .local v2, index:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 165
    .local v1, id2:Ljava/lang/Comparable;,"TT;"
    invoke-interface {v1, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 170
    .end local v1           #id2:Ljava/lang/Comparable;,"TT;"
    .end local v2           #index:I
    :goto_1
    return v2

    .line 168
    .restart local v1       #id2:Ljava/lang/Comparable;,"TT;"
    .restart local v2       #index:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v1           #id2:Ljava/lang/Comparable;,"TT;"
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static getAroundRange(Ljava/util/List;II)Ljava/util/List;
    .locals 7
    .parameter
    .parameter "fetchSize"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, items:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 182
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 183
    .local v3, totalSize:I
    if-ltz p2, :cond_0

    if-ge p2, v3, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/lewa/guava/base/Preconditions;->checkArgument(Z)V

    .line 184
    if-lt p1, v3, :cond_1

    .line 201
    .end local p0           #items:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :goto_1
    return-object p0

    .restart local p0       #items:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :cond_0
    move v4, v6

    .line 183
    goto :goto_0

    .line 187
    :cond_1
    add-int/lit8 v4, p1, 0x1

    div-int/lit8 v4, v4, 0x2

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 188
    .local v1, halfSize:I
    sub-int v4, p2, v1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 189
    .local v2, startIndex:I
    add-int/lit8 v4, v3, -0x1

    add-int v5, p2, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 190
    .local v0, endIndex:I
    sub-int v4, v0, v2

    add-int/lit8 v4, v4, 0x1

    if-le v4, p1, :cond_2

    .line 191
    add-int v4, v2, p1

    add-int/lit8 v0, v4, -0x1

    .line 193
    :cond_2
    sub-int v4, v0, v2

    add-int/lit8 v4, v4, 0x1

    if-ge v4, p1, :cond_3

    .line 195
    if-nez v2, :cond_4

    .line 196
    add-int/lit8 v4, v3, -0x1

    add-int/lit8 v5, p1, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 201
    :cond_3
    :goto_2
    sub-int v4, v0, v2

    add-int/lit8 v4, v4, 0x1

    invoke-static {p0, v2, v4}, Lcom/lewa/bi/common/util/CollectionUtil;->subList(Ljava/util/Collection;II)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    .line 197
    :cond_4
    add-int/lit8 v4, v3, -0x1

    if-ne v0, v4, :cond_3

    .line 198
    sub-int v4, v3, p1

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2
.end method

.method public static getEntitiesByIds(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KT:",
            "Lcom/lewa/bi/common/data/BaseId;",
            "T::",
            "Lcom/lewa/bi/common/data/WithId",
            "<TKT;>;>(",
            "Ljava/util/Map",
            "<TKT;TT;>;",
            "Ljava/util/Collection",
            "<TKT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, entitieMap:Ljava/util/Map;,"Ljava/util/Map<TKT;TT;>;"
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<TKT;>;"
    invoke-static {}, Lcom/lewa/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 210
    .local v3, results:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewa/bi/common/data/BaseId;

    .line 211
    .local v1, id:Lcom/lewa/bi/common/data/BaseId;
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lewa/bi/common/data/WithId;

    .line 212
    .local v2, result:Lcom/lewa/bi/common/data/WithId;,"TT;"
    if-eqz v2, :cond_0

    .line 213
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    .end local v1           #id:Lcom/lewa/bi/common/data/BaseId;
    .end local v2           #result:Lcom/lewa/bi/common/data/WithId;,"TT;"
    :cond_1
    return-object v3
.end method

.method public static getEntitiesOfExactType(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    .local p1, classType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/lewa/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 227
    .local v2, subEntities:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 228
    .local v0, element:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    .end local v0           #element:Ljava/lang/Object;
    :cond_1
    return-object v2
.end method

.method public static getEntitiesOfType(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .annotation build Lcom/lewa/guava/annotations/GwtIncompatible;
        value = "Class.isInstance"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    .local p1, classType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/lewa/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 244
    .local v2, result:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 245
    .local v0, element:Ljava/lang/Object;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    .end local v0           #element:Ljava/lang/Object;
    :cond_1
    return-object v2
.end method

.method public static getFirstEntity(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, entities:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    invoke-static {p0}, Lcom/lewa/bi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x0

    .line 260
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static getIdMap(Ljava/util/Collection;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KT:",
            "Lcom/lewa/bi/common/data/BaseId;",
            "T::",
            "Lcom/lewa/bi/common/data/WithId",
            "<TKT;>;>(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Map",
            "<TKT;TT;>;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, entities:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    invoke-static {}, Lcom/lewa/guava/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 274
    .local v2, result:Ljava/util/Map;,"Ljava/util/Map<TKT;TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/bi/common/data/WithId;

    .line 275
    .local v0, entity:Lcom/lewa/bi/common/data/WithId;,"TT;"
    invoke-interface {v0}, Lcom/lewa/bi/common/data/WithId;->getId()Lcom/lewa/bi/common/data/BaseId;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 277
    .end local v0           #entity:Lcom/lewa/bi/common/data/WithId;,"TT;"
    :cond_0
    return-object v2
.end method

.method public static getIds(Ljava/util/Collection;)Ljava/util/Set;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KT:",
            "Lcom/lewa/bi/common/data/BaseId;",
            "T::",
            "Lcom/lewa/bi/common/data/WithId",
            "<TKT;>;>(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TKT;>;"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, entities:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    invoke-static {}, Lcom/lewa/guava/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 290
    .local v2, result:Ljava/util/Set;,"Ljava/util/Set<TKT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/bi/common/data/WithId;

    .line 291
    .local v0, entity:Lcom/lewa/bi/common/data/WithId;,"TT;"
    invoke-interface {v0}, Lcom/lewa/bi/common/data/WithId;->getId()Lcom/lewa/bi/common/data/BaseId;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    .end local v0           #entity:Lcom/lewa/bi/common/data/WithId;,"TT;"
    :cond_0
    return-object v2
.end method

.method public static getIdsPreserveOrder(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KT:",
            "Lcom/lewa/bi/common/data/BaseId;",
            "T::",
            "Lcom/lewa/bi/common/data/WithId",
            "<TKT;>;>(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/List",
            "<TKT;>;"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, entities:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    invoke-static {}, Lcom/lewa/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 307
    .local v2, result:Ljava/util/List;,"Ljava/util/List<TKT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/bi/common/data/WithId;

    .line 308
    .local v0, entity:Lcom/lewa/bi/common/data/WithId;,"TT;"
    invoke-interface {v0}, Lcom/lewa/bi/common/data/WithId;->getId()Lcom/lewa/bi/common/data/BaseId;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    .end local v0           #entity:Lcom/lewa/bi/common/data/WithId;,"TT;"
    :cond_0
    return-object v2
.end method

.method public static getInOrder(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KT:",
            "Lcom/lewa/bi/common/data/BaseId;",
            "T::",
            "Lcom/lewa/bi/common/data/WithId",
            "<TKT;>;>(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/List",
            "<TKT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, entities:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    .local p1, orderedIds:Ljava/util/List;,"Ljava/util/List<TKT;>;"
    invoke-static {p0}, Lcom/lewa/bi/common/util/CollectionUtil;->getIdMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    .line 320
    .local v1, entityMap:Ljava/util/Map;,"Ljava/util/Map<TKT;TT;>;"
    invoke-static {}, Lcom/lewa/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 321
    .local v4, result:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lewa/bi/common/data/BaseId;

    .line 322
    .local v3, id:Lcom/lewa/bi/common/data/BaseId;,"TKT;"
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/bi/common/data/WithId;

    .line 323
    .local v0, entity:Lcom/lewa/bi/common/data/WithId;,"TT;"
    if-eqz v0, :cond_0

    .line 324
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    .end local v0           #entity:Lcom/lewa/bi/common/data/WithId;,"TT;"
    .end local v3           #id:Lcom/lewa/bi/common/data/BaseId;,"TKT;"
    :cond_1
    return-object v4
.end method

.method public static getItem(Ljava/util/Collection;I)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;I)TT;"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, items:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    const/4 v0, 0x0

    .line 338
    .local v0, i:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 339
    .local v2, item:Ljava/lang/Object;,"TT;"
    if-nez p1, :cond_0

    .line 344
    .end local v2           #item:Ljava/lang/Object;,"TT;"
    :goto_1
    return-object v2

    .line 342
    .restart local v2       #item:Ljava/lang/Object;,"TT;"
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 344
    .end local v2           #item:Ljava/lang/Object;,"TT;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getKeysWithoutValue(Ljava/util/Map;)Ljava/util/Set;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TT;*>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, entities:Ljava/util/Map;,"Ljava/util/Map<TT;*>;"
    invoke-static {}, Lcom/lewa/guava/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 352
    .local v2, result:Ljava/util/HashSet;,"Ljava/util/HashSet<TT;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 353
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TT;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 354
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 357
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TT;*>;"
    :cond_1
    return-object v2
.end method

.method public static getNullIfEmpty(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, collection:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/lewa/bi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const/4 p0, 0x0

    .line 367
    .end local p0           #collection:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :cond_0
    return-object p0
.end method

.method public static intersection(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, col1:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    .local p1, col2:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    invoke-static {}, Lcom/lewa/guava/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 372
    .local v2, result:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    invoke-static {p0}, Lcom/lewa/bi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lcom/lewa/bi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 380
    :cond_0
    return-object v2

    .line 375
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 376
    .local v1, item:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 377
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/util/Map;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 388
    .local p0, collection:Ljava/util/Map;,"Ljava/util/Map<**>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnlyContains(Ljava/util/Collection;Ljava/lang/Class;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, entities:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    .local p1, entiyType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v2, 0x1

    .line 396
    invoke-static {p0}, Lcom/lewa/bi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v2

    .line 399
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 400
    .local v0, element:Ljava/lang/Object;,"TT;"
    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 404
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static removeAll(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Set;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TT;*>;",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<TT;*>;"
    .local p1, keys:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 415
    :cond_0
    invoke-static {}, Lcom/lewa/guava/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 424
    :cond_1
    return-object v2

    .line 417
    :cond_2
    invoke-static {}, Lcom/lewa/guava/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 418
    .local v2, result:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 419
    .local v1, key:Ljava/lang/Object;,"TT;"
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 420
    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static reverse(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TF;TT;>;)",
            "Ljava/util/Map",
            "<TT;TF;>;"
        }
    .end annotation

    .prologue
    .line 431
    .local p0, src:Ljava/util/Map;,"Ljava/util/Map<TF;TT;>;"
    invoke-static {}, Lcom/lewa/guava/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 432
    .local v2, result:Ljava/util/Map;,"Ljava/util/Map<TT;TF;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 433
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TF;TT;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 435
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TF;TT;>;"
    :cond_0
    return-object v2
.end method

.method public static subList(Ljava/util/Collection;I)Ljava/util/List;
    .locals 1
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, items:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/lewa/bi/common/util/CollectionUtil;->subList(Ljava/util/Collection;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static subList(Ljava/util/Collection;II)Ljava/util/List;
    .locals 6
    .parameter
    .parameter "startIndex"
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, items:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    invoke-static {}, Lcom/lewa/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 444
    .local v4, result:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 445
    .local v1, index:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 446
    .local v3, item:Ljava/lang/Object;,"TT;"
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    if-ge v1, p1, :cond_0

    move v1, v2

    .line 447
    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_0

    .line 449
    .end local v1           #index:I
    .restart local v2       #index:I
    :cond_0
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, p2, :cond_2

    move v1, v2

    .line 454
    .end local v2           #index:I
    .end local v3           #item:Ljava/lang/Object;,"TT;"
    .restart local v1       #index:I
    :cond_1
    return-object v4

    .end local v1           #index:I
    .restart local v2       #index:I
    .restart local v3       #item:Ljava/lang/Object;,"TT;"
    :cond_2
    move v1, v2

    .line 451
    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_0
.end method

.method public static validate(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/lewa/bi/common/data/Validatable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, entities:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/lewa/bi/common/data/Validatable;>;"
    if-eqz p0, :cond_0

    .line 459
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/bi/common/data/Validatable;

    .line 460
    .local v0, entity:Lcom/lewa/bi/common/data/Validatable;
    invoke-interface {v0}, Lcom/lewa/bi/common/data/Validatable;->validate()V

    goto :goto_0

    .line 463
    .end local v0           #entity:Lcom/lewa/bi/common/data/Validatable;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method
