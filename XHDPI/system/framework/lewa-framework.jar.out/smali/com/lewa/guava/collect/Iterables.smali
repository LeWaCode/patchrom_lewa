.class public final Lcom/lewa/guava/collect/Iterables;
.super Ljava/lang/Object;
.source "Iterables.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/Iterables$IterableWithToString;
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

.method public static addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, addTo:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    .local p1, elementsToAdd:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 287
    check-cast v0, Ljava/util/Collection;

    .line 288
    .local v0, c:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    invoke-interface {p0, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v1

    .line 290
    .end local v0           #c:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    :goto_0
    return v1

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/lewa/guava/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result v1

    goto :goto_0
.end method

.method public static all(Ljava/lang/Iterable;Lcom/lewa/guava/base/Predicate;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 581
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    .local p1, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lewa/guava/collect/Iterators;->all(Ljava/util/Iterator;Lcom/lewa/guava/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static any(Ljava/lang/Iterable;Lcom/lewa/guava/base/Predicate;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 572
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    .local p1, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lewa/guava/collect/Iterators;->any(Ljava/util/Iterator;Lcom/lewa/guava/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static concat(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Iterable",
            "<+TT;>;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, inputs:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Iterable<+TT;>;>;"
    new-instance v0, Lcom/lewa/guava/collect/Iterables$3;

    invoke-direct {v0}, Lcom/lewa/guava/collect/Iterables$3;-><init>()V

    .line 460
    .local v0, function:Lcom/lewa/guava/base/Function;,"Lcom/lewa/guava/base/Function<Ljava/lang/Iterable<+TT;>;Ljava/util/Iterator<+TT;>;>;"
    invoke-static {p0, v0}, Lcom/lewa/guava/collect/Iterables;->transform(Ljava/lang/Iterable;Lcom/lewa/guava/base/Function;)Ljava/lang/Iterable;

    move-result-object v1

    .line 462
    .local v1, iterators:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/util/Iterator<+TT;>;>;"
    new-instance v2, Lcom/lewa/guava/collect/Iterables$4;

    invoke-direct {v2, v1}, Lcom/lewa/guava/collect/Iterables$4;-><init>(Ljava/lang/Iterable;)V

    return-object v2
.end method

.method public static concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, a:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    .local p1, b:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/Iterables;->concat(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 388
    .local p0, a:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    .local p1, b:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    .local p2, c:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-static {p2}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/Iterables;->concat(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, a:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    .local p1, b:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    .local p2, c:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    .local p3, d:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-static {p2}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    invoke-static {p3}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/Iterables;->concat(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, inputs:[Ljava/lang/Iterable;,"[Ljava/lang/Iterable<+TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/collect/ImmutableList;->of([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/Iterables;->concat(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static consumingIterable(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 696
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    new-instance v0, Lcom/lewa/guava/collect/Iterables$10;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/Iterables$10;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .end parameter
    .parameter "element"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    const/4 v2, 0x0

    .line 118
    instance-of v3, p0, Ljava/util/Collection;

    if-eqz v3, :cond_0

    move-object v0, p0

    .line 119
    check-cast v0, Ljava/util/Collection;

    .line 121
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 128
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :goto_0
    return v2

    .line 122
    .restart local v0       #collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :catch_0
    move-exception v1

    .line 123
    .local v1, e:Ljava/lang/NullPointerException;
    goto :goto_0

    .line 124
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 125
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 128
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/lewa/guava/collect/Iterators;->contains(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public static cycle(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    new-instance v0, Lcom/lewa/guava/collect/Iterables$2;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/Iterables$2;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs cycle([Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, elements:[Ljava/lang/Object;,"[TT;"
    invoke-static {p0}, Lcom/lewa/guava/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/Iterables;->cycle(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static elementsEqual(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, iterable1:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    .local p1, iterable2:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lewa/guava/collect/Iterators;->elementsEqual(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v0

    return v0
.end method

.method public static filter(Ljava/lang/Iterable;Lcom/lewa/guava/base/Predicate;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 534
    .local p0, unfiltered:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    .local p1, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    new-instance v0, Lcom/lewa/guava/collect/Iterables$7;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Iterables$7;-><init>(Ljava/lang/Iterable;Lcom/lewa/guava/base/Predicate;)V

    return-object v0
.end method

.method public static filter(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/lang/Iterable;
    .locals 1
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
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, unfiltered:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    new-instance v0, Lcom/lewa/guava/collect/Iterables$8;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Iterables$8;-><init>(Ljava/lang/Iterable;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static find(Ljava/lang/Iterable;Lcom/lewa/guava/base/Predicate;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 593
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    .local p1, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lewa/guava/collect/Iterators;->find(Ljava/util/Iterator;Lcom/lewa/guava/base/Predicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static frequency(Ljava/lang/Iterable;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .end parameter
    .parameter "element"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    instance-of v0, p0, Lcom/lewa/guava/collect/Multiset;

    if-eqz v0, :cond_0

    .line 301
    check-cast p0, Lcom/lewa/guava/collect/Multiset;

    .end local p0           #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-interface {p0, p1}, Lcom/lewa/guava/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 306
    :goto_0
    return v0

    .line 303
    .restart local p0       #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 304
    check-cast p0, Ljava/util/Set;

    .end local p0           #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 306
    .restart local p0       #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lewa/guava/collect/Iterators;->frequency(Ljava/util/Iterator;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static get(Ljava/lang/Iterable;I)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;I)TT;"
        }
    .end annotation

    .prologue
    .line 640
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 642
    check-cast p0, Ljava/util/List;

    .end local p0           #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 656
    :goto_0
    return-object v1

    .line 645
    .restart local p0       #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    :cond_0
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_2

    move-object v0, p0

    .line 647
    check-cast v0, Ljava/util/Collection;

    .line 648
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/lewa/guava/base/Preconditions;->checkElementIndex(II)I

    .line 656
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/lewa/guava/collect/Iterators;->get(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 651
    :cond_2
    if-gez p1, :cond_1

    .line 652
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position cannot be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getLast(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 666
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    instance-of v2, p0, Ljava/util/List;

    if-eqz v2, :cond_1

    move-object v0, p0

    .line 667
    check-cast v0, Ljava/util/List;

    .line 670
    .local v0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 671
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 673
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 681
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :goto_0
    return-object v2

    .line 676
    :cond_1
    instance-of v2, p0, Ljava/util/SortedSet;

    if-eqz v2, :cond_2

    move-object v1, p0

    .line 677
    check-cast v1, Ljava/util/SortedSet;

    .line 678
    .local v1, sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TT;>;"
    invoke-interface {v1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 681
    .end local v1           #sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TT;>;"
    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2}, Lcom/lewa/guava/collect/Iterators;->getLast(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public static getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/Iterators;->getOnlyElement(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getOnlyElement(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    .local p1, defaultValue:Ljava/lang/Object;,"TT;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lewa/guava/collect/Iterators;->getOnlyElement(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static indexOf(Ljava/lang/Iterable;Lcom/lewa/guava/base/Predicate;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 609
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    .local p1, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lewa/guava/collect/Iterators;->indexOf(Ljava/util/Iterator;Lcom/lewa/guava/base/Predicate;)I

    move-result v0

    return v0
.end method

.method public static isEmpty(Ljava/lang/Iterable;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 751
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static paddedPartition(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;I)",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/lewa/guava/base/Preconditions;->checkArgument(Z)V

    .line 521
    new-instance v0, Lcom/lewa/guava/collect/Iterables$6;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Iterables$6;-><init>(Ljava/lang/Iterable;I)V

    return-object v0

    .line 520
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static partition(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;I)",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 491
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/lewa/guava/base/Preconditions;->checkArgument(Z)V

    .line 493
    new-instance v0, Lcom/lewa/guava/collect/Iterables$5;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Iterables$5;-><init>(Ljava/lang/Iterable;I)V

    return-object v0

    .line 492
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static remove(Ljava/lang/Iterable;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .end parameter
    .parameter "o"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 775
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 776
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/lewa/guava/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 778
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 779
    const/4 v1, 0x1

    .line 782
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static removeAll(Ljava/lang/Iterable;Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    .local p1, elementsToRemove:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    .end local p0           #removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p0       #removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lewa/guava/collect/Iterators;->removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public static removeIf(Ljava/lang/Iterable;Lcom/lewa/guava/base/Predicate;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    .local p1, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 183
    check-cast p0, Ljava/util/List;

    .end local p0           #removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/base/Predicate;

    invoke-static {p0, v0}, Lcom/lewa/guava/collect/Iterables;->removeIfFromRandomAccessList(Ljava/util/List;Lcom/lewa/guava/base/Predicate;)Z

    move-result v0

    .line 186
    :goto_0
    return v0

    .restart local p0       #removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lewa/guava/collect/Iterators;->removeIf(Ljava/util/Iterator;Lcom/lewa/guava/base/Predicate;)Z

    move-result v0

    goto :goto_0
.end method

.method private static removeIfFromRandomAccessList(Ljava/util/List;Lcom/lewa/guava/base/Predicate;)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p1, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    const/4 v1, 0x0

    .line 192
    .local v1, from:I
    const/4 v4, 0x0

    .line 194
    .local v4, to:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 195
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 196
    .local v0, element:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v0}, Lcom/lewa/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 197
    if-le v1, v4, :cond_0

    .line 198
    invoke-interface {p0, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 194
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v0           #element:Ljava/lang/Object;,"TT;"
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p0, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 208
    .local v3, iter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<TT;>;"
    sub-int v2, v1, v4

    .local v2, idx:I
    :goto_1
    if-lez v2, :cond_3

    .line 209
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 210
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 208
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 213
    :cond_3
    if-eq v1, v4, :cond_4

    const/4 v5, 0x1

    :goto_2
    return v5

    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static retainAll(Ljava/lang/Iterable;Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    .local p1, elementsToRetain:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    .end local p0           #removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p0       #removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lewa/guava/collect/Iterators;->retainAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public static reverse(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 722
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    new-instance v0, Lcom/lewa/guava/collect/Iterables$11;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/Iterables$11;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static size(Ljava/lang/Iterable;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    .end local p0           #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .restart local p0       #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    goto :goto_0
.end method

.method public static toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation build Lcom/lewa/guava/annotations/GwtIncompatible;
        value = "Array.newInstance(Class, int)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_0

    check-cast p0, Ljava/util/Collection;

    .end local p0           #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    move-object v1, p0

    .line 273
    .local v1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {p1, v2}, Lcom/lewa/guava/collect/ObjectArrays;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 274
    .local v0, array:[Ljava/lang/Object;,"[TT;"
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 270
    .end local v0           #array:[Ljava/lang/Object;,"[TT;"
    .end local v1           #collection:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    .restart local p0       #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    :cond_0
    invoke-static {p0}, Lcom/lewa/guava/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/Iterators;->toString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static transform(Ljava/lang/Iterable;Lcom/lewa/guava/base/Function;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TF;>;",
            "Lcom/lewa/guava/base/Function",
            "<-TF;+TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 622
    .local p0, fromIterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TF;>;"
    .local p1, function:Lcom/lewa/guava/base/Function;,"Lcom/lewa/guava/base/Function<-TF;+TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    new-instance v0, Lcom/lewa/guava/collect/Iterables$9;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Iterables$9;-><init>(Ljava/lang/Iterable;Lcom/lewa/guava/base/Function;)V

    return-object v0
.end method

.method public static unmodifiableIterable(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v0, Lcom/lewa/guava/collect/Iterables$1;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/Iterables$1;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method
