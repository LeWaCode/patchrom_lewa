.class public final Lcom/lewa/guava/collect/Iterators;
.super Ljava/lang/Object;
.source "Iterators.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/Iterators$PeekingImpl;
    }
.end annotation


# static fields
.field static final EMPTY_ITERATOR:Lcom/lewa/guava/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/UnmodifiableIterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_MODIFIABLE_ITERATOR:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/lewa/guava/collect/Iterators$1;

    invoke-direct {v0}, Lcom/lewa/guava/collect/Iterators$1;-><init>()V

    sput-object v0, Lcom/lewa/guava/collect/Iterators;->EMPTY_ITERATOR:Lcom/lewa/guava/collect/UnmodifiableIterator;

    .line 108
    new-instance v0, Lcom/lewa/guava/collect/Iterators$2;

    invoke-direct {v0}, Lcom/lewa/guava/collect/Iterators$2;-><init>()V

    sput-object v0, Lcom/lewa/guava/collect/Iterators;->EMPTY_MODIFIABLE_ITERATOR:Ljava/util/Iterator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z
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
            "Ljava/util/Iterator",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, addTo:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    .local p1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, wasModified:Z
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 363
    :cond_0
    return v0
.end method

.method public static all(Ljava/util/Iterator;Lcom/lewa/guava/base/Predicate;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 687
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    .local p1, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 689
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 690
    .local v0, element:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v0}, Lcom/lewa/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 691
    const/4 v1, 0x0

    .line 694
    .end local v0           #element:Ljava/lang/Object;,"TT;"
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static any(Ljava/util/Iterator;Lcom/lewa/guava/base/Predicate;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 670
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    .local p1, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 672
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 673
    .local v0, element:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v0}, Lcom/lewa/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    const/4 v1, 0x1

    .line 677
    .end local v0           #element:Ljava/lang/Object;,"TT;"
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static asEnumeration(Ljava/util/Iterator;)Ljava/util/Enumeration;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;)",
            "Ljava/util/Enumeration",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 965
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    new-instance v0, Lcom/lewa/guava/collect/Iterators$14;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/Iterators$14;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static concat(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/util/Iterator",
            "<+TT;>;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 529
    .local p0, inputs:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/Iterator<+TT;>;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    new-instance v0, Lcom/lewa/guava/collect/Iterators$5;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/Iterators$5;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static concat(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, a:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    .local p1, b:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Iterator;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, a:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    .local p1, b:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    .local p2, c:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-static {p2}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Iterator;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;
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
            "Ljava/util/Iterator",
            "<+TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, a:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    .local p1, b:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    .local p2, c:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    .local p3, d:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    invoke-static {p2}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    invoke-static {p3}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/Iterator;

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

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Iterator",
            "<+TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 515
    .local p0, inputs:[Ljava/util/Iterator;,"[Ljava/util/Iterator<+TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/collect/ImmutableList;->of([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/collect/ImmutableList;->iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static consumingIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 827
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    new-instance v0, Lcom/lewa/guava/collect/Iterators$9;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/Iterators$9;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static contains(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .end parameter
    .parameter "element"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    const/4 v0, 0x1

    .line 168
    if-nez p1, :cond_1

    .line 169
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 181
    :goto_0
    return v0

    .line 175
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 181
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cycle(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    new-instance v0, Lcom/lewa/guava/collect/Iterators$4;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/Iterators$4;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs cycle([Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 447
    .local p0, elements:[Ljava/lang/Object;,"[TT;"
    invoke-static {p0}, Lcom/lewa/guava/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/Iterators;->cycle(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static elementsEqual(Ljava/util/Iterator;Ljava/util/Iterator;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/util/Iterator",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, iterator1:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .local p1, iterator2:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    const/4 v2, 0x0

    .line 264
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 265
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 274
    :cond_1
    :goto_0
    return v2

    .line 268
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 269
    .local v0, o1:Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 270
    .local v1, o2:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/lewa/guava/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 274
    .end local v0           #o1:Ljava/lang/Object;
    .end local v1           #o2:Ljava/lang/Object;
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static emptyIterator()Lcom/lewa/guava/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/lewa/guava/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 105
    sget-object v0, Lcom/lewa/guava/collect/Iterators;->EMPTY_ITERATOR:Lcom/lewa/guava/collect/UnmodifiableIterator;

    return-object v0
.end method

.method static emptyModifiableIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 132
    sget-object v0, Lcom/lewa/guava/collect/Iterators;->EMPTY_MODIFIABLE_ITERATOR:Ljava/util/Iterator;

    return-object v0
.end method

.method public static filter(Ljava/util/Iterator;Lcom/lewa/guava/base/Predicate;)Lcom/lewa/guava/collect/UnmodifiableIterator;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;)",
            "Lcom/lewa/guava/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 631
    .local p0, unfiltered:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    .local p1, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    new-instance v0, Lcom/lewa/guava/collect/Iterators$7;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Iterators$7;-><init>(Ljava/util/Iterator;Lcom/lewa/guava/base/Predicate;)V

    return-object v0
.end method

.method public static filter(Ljava/util/Iterator;Ljava/lang/Class;)Lcom/lewa/guava/collect/UnmodifiableIterator;
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
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/lewa/guava/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 660
    .local p0, unfiltered:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/lewa/guava/base/Predicates;->instanceOf(Ljava/lang/Class;)Lcom/lewa/guava/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lewa/guava/collect/Iterators;->filter(Ljava/util/Iterator;Lcom/lewa/guava/base/Predicate;)Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public static find(Ljava/util/Iterator;Lcom/lewa/guava/base/Predicate;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 710
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    .local p1, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    invoke-static {p0, p1}, Lcom/lewa/guava/collect/Iterators;->filter(Ljava/util/Iterator;Lcom/lewa/guava/base/Predicate;)Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs forArray([Ljava/lang/Object;)Lcom/lewa/guava/collect/UnmodifiableIterator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/lewa/guava/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 857
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    new-instance v0, Lcom/lewa/guava/collect/Iterators$10;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/Iterators$10;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method static forArray([Ljava/lang/Object;II)Lcom/lewa/guava/collect/UnmodifiableIterator;
    .locals 2
    .parameter
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Lcom/lewa/guava/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 891
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    if-ltz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/lewa/guava/base/Preconditions;->checkArgument(Z)V

    .line 892
    add-int v0, p1, p2

    .line 895
    .local v0, end:I
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/lewa/guava/base/Preconditions;->checkPositionIndexes(III)V

    .line 899
    new-instance v1, Lcom/lewa/guava/collect/Iterators$11;

    invoke-direct {v1, p1, v0, p0}, Lcom/lewa/guava/collect/Iterators$11;-><init>(II[Ljava/lang/Object;)V

    return-object v1

    .line 891
    .end local v0           #end:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static forEnumeration(Ljava/util/Enumeration;)Lcom/lewa/guava/collect/UnmodifiableIterator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration",
            "<TT;>;)",
            "Lcom/lewa/guava/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 946
    .local p0, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    new-instance v0, Lcom/lewa/guava/collect/Iterators$13;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/Iterators$13;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public static frequency(Ljava/util/Iterator;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .end parameter
    .parameter "element"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    const/4 v0, 0x0

    .line 375
    .local v0, result:I
    if-nez p1, :cond_1

    .line 376
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 377
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 383
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 388
    :cond_2
    return v0
.end method

.method public static get(Ljava/util/Iterator;I)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;I)TT;"
        }
    .end annotation

    .prologue
    .line 780
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    if-gez p1, :cond_0

    .line 781
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") must not be negative"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 785
    :cond_0
    const/4 v0, 0x0

    .line 786
    .local v0, skipped:I
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 787
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 788
    .local v2, t:Ljava/lang/Object;,"TT;"
    add-int/lit8 v1, v0, 0x1

    .end local v0           #skipped:I
    .local v1, skipped:I
    if-ne v0, p1, :cond_1

    .line 789
    return-object v2

    :cond_1
    move v0, v1

    .line 791
    .end local v1           #skipped:I
    .restart local v0       #skipped:I
    goto :goto_0

    .line 793
    .end local v2           #t:Ljava/lang/Object;,"TT;"
    :cond_2
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") must be less than the number of elements that remained ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getLast(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 806
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 807
    .local v0, current:Ljava/lang/Object;,"TT;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 808
    return-object v0
.end method

.method public static getOnlyElement(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 303
    .local v0, first:Ljava/lang/Object;,"TT;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 304
    return-object v0

    .line 307
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .local v2, sb:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected one element but was: <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 313
    const-string v3, ", ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_2
    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getOnlyElement(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;
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
            "Ljava/util/Iterator",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    .local p1, defaultValue:Ljava/lang/Object;,"TT;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/lewa/guava/collect/Iterators;->getOnlyElement(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object p1

    .end local p1           #defaultValue:Ljava/lang/Object;,"TT;"
    :cond_0
    return-object p1
.end method

.method public static indexOf(Ljava/util/Iterator;Lcom/lewa/guava/base/Predicate;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 731
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    .local p1, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    const-string v2, "predicate"

    invoke-static {p1, v2}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    const/4 v1, 0x0

    .line 733
    .local v1, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 734
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 735
    .local v0, current:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v0}, Lcom/lewa/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 740
    .end local v0           #current:Ljava/lang/Object;,"TT;"
    .end local v1           #i:I
    :goto_1
    return v1

    .line 738
    .restart local v0       #current:Ljava/lang/Object;,"TT;"
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 739
    goto :goto_0

    .line 740
    .end local v0           #current:Ljava/lang/Object;,"TT;"
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static paddedPartition(Ljava/util/Iterator;I)Lcom/lewa/guava/collect/UnmodifiableIterator;
    .locals 1
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;I)",
            "Lcom/lewa/guava/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 597
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/lewa/guava/collect/Iterators;->partitionImpl(Ljava/util/Iterator;IZ)Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public static partition(Ljava/util/Iterator;I)Lcom/lewa/guava/collect/UnmodifiableIterator;
    .locals 1
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;I)",
            "Lcom/lewa/guava/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lewa/guava/collect/Iterators;->partitionImpl(Ljava/util/Iterator;IZ)Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method private static partitionImpl(Ljava/util/Iterator;IZ)Lcom/lewa/guava/collect/UnmodifiableIterator;
    .locals 1
    .parameter
    .parameter "size"
    .parameter "pad"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;IZ)",
            "Lcom/lewa/guava/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 602
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/lewa/guava/base/Preconditions;->checkArgument(Z)V

    .line 604
    new-instance v0, Lcom/lewa/guava/collect/Iterators$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/lewa/guava/collect/Iterators$6;-><init>(Ljava/util/Iterator;IZ)V

    return-object v0

    .line 603
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static peekingIterator(Ljava/util/Iterator;)Lcom/lewa/guava/collect/PeekingIterator;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TT;>;)",
            "Lcom/lewa/guava/collect/PeekingIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1057
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    instance-of v1, p0, Lcom/lewa/guava/collect/Iterators$PeekingImpl;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 1061
    check-cast v0, Lcom/lewa/guava/collect/Iterators$PeekingImpl;

    .line 1064
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lewa/guava/collect/Iterators$PeekingImpl;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/Iterators$PeekingImpl;-><init>(Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public static removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, removeFrom:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .local p1, elementsToRemove:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, modified:Z
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 200
    const/4 v0, 0x1

    goto :goto_0

    .line 203
    :cond_1
    return v0
.end method

.method public static removeIf(Ljava/util/Iterator;Lcom/lewa/guava/base/Predicate;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, removeFrom:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    .local p1, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, modified:Z
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/lewa/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 224
    const/4 v0, 0x1

    goto :goto_0

    .line 227
    :cond_1
    return v0
.end method

.method public static retainAll(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, removeFrom:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .local p1, elementsToRetain:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, modified:Z
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 246
    const/4 v0, 0x1

    goto :goto_0

    .line 249
    :cond_1
    return v0
.end method

.method public static singletonIterator(Ljava/lang/Object;)Lcom/lewa/guava/collect/UnmodifiableIterator;
    .locals 1
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/lewa/guava/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 921
    .local p0, value:Ljava/lang/Object;,"TT;"
    new-instance v0, Lcom/lewa/guava/collect/Iterators$12;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/Iterators$12;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static size(Ljava/util/Iterator;)I
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
    .line 155
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    const/4 v0, 0x0

    .line 156
    .local v0, count:I
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    return v0
.end method

.method public static toArray(Ljava/util/Iterator;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation build Lcom/lewa/guava/annotations/GwtIncompatible;
        value = "Array.newArray"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<+TT;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 345
    .local v0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {v0, p1}, Lcom/lewa/guava/collect/Iterables;->toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static toString(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    const-string v1, "[]"

    .line 291
    :goto_0
    return-object v1

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 291
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static transform(Ljava/util/Iterator;Lcom/lewa/guava/base/Function;)Ljava/util/Iterator;
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
            "Ljava/util/Iterator",
            "<TF;>;",
            "Lcom/lewa/guava/base/Function",
            "<-TF;+TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 753
    .local p0, fromIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TF;>;"
    .local p1, function:Lcom/lewa/guava/base/Function;,"Lcom/lewa/guava/base/Function<-TF;+TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    new-instance v0, Lcom/lewa/guava/collect/Iterators$8;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Iterators$8;-><init>(Ljava/util/Iterator;Lcom/lewa/guava/base/Function;)V

    return-object v0
.end method

.method public static unmodifiableIterator(Ljava/util/Iterator;)Lcom/lewa/guava/collect/UnmodifiableIterator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;)",
            "Lcom/lewa/guava/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v0, Lcom/lewa/guava/collect/Iterators$3;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/Iterators$3;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method
