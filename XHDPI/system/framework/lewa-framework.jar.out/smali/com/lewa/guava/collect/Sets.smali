.class public final Lcom/lewa/guava/collect/Sets;
.super Ljava/lang/Object;
.source "Sets.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/Sets$CartesianSet;,
        Lcom/lewa/guava/collect/Sets$FilteredSet;,
        Lcom/lewa/guava/collect/Sets$SetView;,
        Lcom/lewa/guava/collect/Sets$SetFromMap;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cartesianProduct(Ljava/util/List;)Ljava/util/Set;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Set",
            "<+TB;>;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/List",
            "<TB;>;>;"
        }
    .end annotation

    .prologue
    .line 800
    .local p0, sets:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Set<+TB;>;>;"
    new-instance v0, Lcom/lewa/guava/collect/Sets$CartesianSet;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/Sets$CartesianSet;-><init>(Ljava/util/List;)V

    .line 801
    .local v0, cartesianSet:Lcom/lewa/guava/collect/Sets$CartesianSet;,"Lcom/lewa/guava/collect/Sets$CartesianSet<TB;>;"
    invoke-virtual {v0}, Lcom/lewa/guava/collect/Sets$CartesianSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lewa/guava/collect/ImmutableSet;->of()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    .end local v0           #cartesianSet:Lcom/lewa/guava/collect/Sets$CartesianSet;,"Lcom/lewa/guava/collect/Sets$CartesianSet<TB;>;"
    :cond_0
    return-object v0
.end method

.method public static varargs cartesianProduct([Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Set",
            "<+TB;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/List",
            "<TB;>;>;"
        }
    .end annotation

    .prologue
    .line 845
    .local p0, sets:[Ljava/util/Set;,"[Ljava/util/Set<+TB;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/Sets;->cartesianProduct(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static complementOf(Ljava/util/Collection;)Ljava/util/EnumSet;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    instance-of v1, p0, Ljava/util/EnumSet;

    if-eqz v1, :cond_0

    .line 380
    check-cast p0, Ljava/util/EnumSet;

    .end local p0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    invoke-static {p0}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v1

    .line 385
    .local v0, type:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    .restart local p0       #collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    :goto_0
    return-object v1

    .line 382
    .end local v0           #type:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    const-string v2, "collection is empty; use the other version of this method"

    invoke-static {v1, v2}, Lcom/lewa/guava/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 384
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 385
    .restart local v0       #type:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    invoke-static {p0, v0}, Lcom/lewa/guava/collect/Sets;->makeComplementByHand(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    goto :goto_0

    .line 382
    .end local v0           #type:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static complementOf(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    instance-of v0, p0, Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/EnumSet;

    .end local p0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    invoke-static {p0}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0       #collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    :cond_0
    invoke-static {p0, p1}, Lcom/lewa/guava/collect/Sets;->makeComplementByHand(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0
.end method

.method public static difference(Ljava/util/Set;Ljava/util/Set;)Lcom/lewa/guava/collect/Sets$SetView;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/util/Set",
            "<*>;)",
            "Lcom/lewa/guava/collect/Sets$SetView",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 684
    .local p0, set1:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    .local p1, set2:Ljava/util/Set;,"Ljava/util/Set<*>;"
    const-string v1, "set1"

    invoke-static {p0, v1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    const-string v1, "set2"

    invoke-static {p1, v1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    invoke-static {p1}, Lcom/lewa/guava/base/Predicates;->in(Ljava/util/Collection;)Lcom/lewa/guava/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lcom/lewa/guava/base/Predicates;->not(Lcom/lewa/guava/base/Predicate;)Lcom/lewa/guava/base/Predicate;

    move-result-object v0

    .line 691
    .local v0, notInSet2:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<Ljava/lang/Object;>;"
    new-instance v1, Lcom/lewa/guava/collect/Sets$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/lewa/guava/collect/Sets$3;-><init>(Ljava/util/Set;Lcom/lewa/guava/base/Predicate;Ljava/util/Set;)V

    return-object v1
.end method

.method public static filter(Ljava/util/Set;Lcom/lewa/guava/base/Predicate;)Ljava/util/Set;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 730
    .local p0, unfiltered:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    .local p1, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TE;>;"
    instance-of v2, p0, Lcom/lewa/guava/collect/Sets$FilteredSet;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 733
    check-cast v1, Lcom/lewa/guava/collect/Sets$FilteredSet;

    .line 734
    .local v1, filtered:Lcom/lewa/guava/collect/Sets$FilteredSet;,"Lcom/lewa/guava/collect/Sets$FilteredSet<TE;>;"
    iget-object v2, v1, Lcom/lewa/guava/collect/Sets$FilteredSet;->predicate:Lcom/lewa/guava/base/Predicate;

    invoke-static {v2, p1}, Lcom/lewa/guava/base/Predicates;->and(Lcom/lewa/guava/base/Predicate;Lcom/lewa/guava/base/Predicate;)Lcom/lewa/guava/base/Predicate;

    move-result-object v0

    .line 736
    .local v0, combinedPredicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<TE;>;"
    new-instance v3, Lcom/lewa/guava/collect/Sets$FilteredSet;

    iget-object v2, v1, Lcom/lewa/guava/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    check-cast v2, Ljava/util/Set;

    invoke-direct {v3, v2, v0}, Lcom/lewa/guava/collect/Sets$FilteredSet;-><init>(Ljava/util/Set;Lcom/lewa/guava/base/Predicate;)V

    move-object v2, v3

    .line 740
    .end local v0           #combinedPredicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<TE;>;"
    .end local v1           #filtered:Lcom/lewa/guava/collect/Sets$FilteredSet;,"Lcom/lewa/guava/collect/Sets$FilteredSet<TE;>;"
    :goto_0
    return-object v2

    :cond_0
    new-instance v4, Lcom/lewa/guava/collect/Sets$FilteredSet;

    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lewa/guava/base/Predicate;

    invoke-direct {v4, v2, v3}, Lcom/lewa/guava/collect/Sets$FilteredSet;-><init>(Ljava/util/Set;Lcom/lewa/guava/base/Predicate;)V

    move-object v2, v4

    goto :goto_0
.end method

.method static hashCodeImpl(Ljava/util/Set;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 975
    .local p0, s:Ljava/util/Set;,"Ljava/util/Set<*>;"
    const/4 v0, 0x0

    .line 976
    .local v0, hashCode:I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 977
    .local v2, o:Ljava/lang/Object;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 979
    .end local v2           #o:Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public static varargs immutableEnumSet(Ljava/lang/Enum;[Ljava/lang/Enum;)Lcom/lewa/guava/collect/ImmutableSet;
    .locals 2
    .parameter
    .parameter
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;[TE;)",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, anElement:Ljava/lang/Enum;,"TE;"
    .local p1, otherElements:[Ljava/lang/Enum;,"[TE;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableEnumSet;

    invoke-static {p0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/ImmutableEnumSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static immutableEnumSet(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableSet;
    .locals 5
    .parameter
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 130
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 131
    invoke-static {}, Lcom/lewa/guava/collect/ImmutableSet;->of()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v4

    .line 142
    .end local p0           #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    :goto_0
    return-object v4

    .line 133
    .restart local p0       #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    :cond_0
    instance-of v4, p0, Ljava/util/EnumSet;

    if-eqz v4, :cond_1

    .line 134
    check-cast p0, Ljava/util/EnumSet;

    .end local p0           #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    .line 135
    .local v0, enumSetClone:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    new-instance v4, Lcom/lewa/guava/collect/ImmutableEnumSet;

    invoke-direct {v4, v0}, Lcom/lewa/guava/collect/ImmutableEnumSet;-><init>(Ljava/util/Set;)V

    goto :goto_0

    .line 137
    .end local v0           #enumSetClone:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    .restart local p0       #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 138
    .local v1, first:Ljava/lang/Enum;,"TE;"
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 139
    .local v3, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 140
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 142
    :cond_2
    new-instance v4, Lcom/lewa/guava/collect/ImmutableEnumSet;

    invoke-direct {v4, v3}, Lcom/lewa/guava/collect/ImmutableEnumSet;-><init>(Ljava/util/Set;)V

    goto :goto_0
.end method

.method public static intersection(Ljava/util/Set;Ljava/util/Set;)Lcom/lewa/guava/collect/Sets$SetView;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/util/Set",
            "<*>;)",
            "Lcom/lewa/guava/collect/Sets$SetView",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 644
    .local p0, set1:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    .local p1, set2:Ljava/util/Set;,"Ljava/util/Set<*>;"
    const-string v1, "set1"

    invoke-static {p0, v1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    const-string v1, "set2"

    invoke-static {p1, v1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    invoke-static {p1}, Lcom/lewa/guava/base/Predicates;->in(Ljava/util/Collection;)Lcom/lewa/guava/base/Predicate;

    move-result-object v0

    .line 651
    .local v0, inSet2:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<Ljava/lang/Object;>;"
    new-instance v1, Lcom/lewa/guava/collect/Sets$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/lewa/guava/collect/Sets$2;-><init>(Ljava/util/Set;Lcom/lewa/guava/base/Predicate;Ljava/util/Set;)V

    return-object v1
.end method

.method private static makeComplementByHand(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 410
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    invoke-static {p1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 411
    .local v0, result:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    .line 412
    return-object v0
.end method

.method public static newEnumSet(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Iterable",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    .local p1, elementType:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 168
    .local v0, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<TE;>;"
    invoke-static {v0, p0}, Lcom/lewa/guava/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 169
    return-object v0
.end method

.method public static newHashSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public static newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 238
    check-cast v0, Ljava/util/Collection;

    .line 239
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 241
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/lewa/guava/collect/Sets;->newHashSet(Ljava/util/Iterator;)Ljava/util/HashSet;

    move-result-object v1

    goto :goto_0
.end method

.method public static newHashSet(Ljava/util/Iterator;)Ljava/util/HashSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, elements:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    invoke-static {}, Lcom/lewa/guava/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 260
    .local v0, set:Ljava/util/HashSet;,"Ljava/util/HashSet<TE;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_0
    return-object v0
.end method

.method public static varargs newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, elements:[Ljava/lang/Object;,"[TE;"
    array-length v2, p0

    invoke-static {v2}, Lcom/lewa/guava/collect/Maps;->capacity(I)I

    move-result v0

    .line 204
    .local v0, capacity:I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 205
    .local v1, set:Ljava/util/HashSet;,"Ljava/util/HashSet<TE;>;"
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 206
    return-object v1
.end method

.method public static newHashSetWithExpectedSize(I)Ljava/util/HashSet;
    .locals 2
    .parameter "expectedSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 219
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lcom/lewa/guava/collect/Maps;->capacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method

.method public static newLinkedHashSet()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedHashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashSet(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/LinkedHashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    instance-of v4, p0, Ljava/util/Collection;

    if-eqz v4, :cond_1

    move-object v0, p0

    .line 295
    check-cast v0, Ljava/util/Collection;

    .line 296
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 302
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    :cond_0
    return-object v3

    .line 298
    :cond_1
    invoke-static {}, Lcom/lewa/guava/collect/Sets;->newLinkedHashSet()Ljava/util/LinkedHashSet;

    move-result-object v3

    .line 299
    .local v3, set:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<TE;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 300
    .local v1, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {v3, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static newSetFromMap(Ljava/util/Map;)Ljava/util/Set;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 455
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<TE;Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/lewa/guava/collect/Sets$SetFromMap;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/Sets$SetFromMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newTreeSet()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">()",
            "Ljava/util/TreeSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 319
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    return-object v0
.end method

.method public static newTreeSet(Ljava/lang/Iterable;)Ljava/util/TreeSet;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/TreeSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    invoke-static {}, Lcom/lewa/guava/collect/Sets;->newTreeSet()Ljava/util/TreeSet;

    move-result-object v2

    .line 341
    .local v2, set:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 342
    .local v0, element:Ljava/lang/Comparable;,"TE;"
    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 344
    .end local v0           #element:Ljava/lang/Comparable;,"TE;"
    :cond_0
    return-object v2
.end method

.method public static newTreeSet(Ljava/util/Comparator;)Ljava/util/TreeSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Ljava/util/TreeSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    new-instance v1, Ljava/util/TreeSet;

    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v1
.end method

.method public static union(Ljava/util/Set;Ljava/util/Set;)Lcom/lewa/guava/collect/Sets$SetView;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TE;>;",
            "Ljava/util/Set",
            "<+TE;>;)",
            "Lcom/lewa/guava/collect/Sets$SetView",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 582
    .local p0, set1:Ljava/util/Set;,"Ljava/util/Set<+TE;>;"
    .local p1, set2:Ljava/util/Set;,"Ljava/util/Set<+TE;>;"
    const-string v1, "set1"

    invoke-static {p0, v1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string v1, "set2"

    invoke-static {p1, v1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    invoke-static {p1, p0}, Lcom/lewa/guava/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lcom/lewa/guava/collect/Sets$SetView;

    move-result-object v0

    .line 590
    .local v0, set2minus1:Ljava/util/Set;,"Ljava/util/Set<+TE;>;"
    new-instance v1, Lcom/lewa/guava/collect/Sets$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/lewa/guava/collect/Sets$1;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object v1
.end method
