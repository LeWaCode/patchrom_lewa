.class public final Lcom/lewa/guava/base/Predicates;
.super Ljava/lang/Object;
.source "Predicates.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/base/Predicates$1;,
        Lcom/lewa/guava/base/Predicates$CompositionPredicate;,
        Lcom/lewa/guava/base/Predicates$InPredicate;,
        Lcom/lewa/guava/base/Predicates$NotNullPredicate;,
        Lcom/lewa/guava/base/Predicates$IsNullPredicate;,
        Lcom/lewa/guava/base/Predicates$InstanceOfPredicate;,
        Lcom/lewa/guava/base/Predicates$IsEqualToPredicate;,
        Lcom/lewa/guava/base/Predicates$OrPredicate;,
        Lcom/lewa/guava/base/Predicates$AndPredicate;,
        Lcom/lewa/guava/base/Predicates$NotPredicate;,
        Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;,
        Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;
    }
.end annotation


# static fields
.field private static final commaJoiner:Lcom/lewa/guava/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 308
    const-string v0, ","

    invoke-static {v0}, Lcom/lewa/guava/base/Joiner;->on(Ljava/lang/String;)Lcom/lewa/guava/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/lewa/guava/base/Predicates;->commaJoiner:Lcom/lewa/guava/base/Joiner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/lewa/guava/base/Predicates;->iterableElementsEqual(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Lcom/lewa/guava/base/Joiner;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/lewa/guava/base/Predicates;->commaJoiner:Lcom/lewa/guava/base/Joiner;

    return-object v0
.end method

.method public static alwaysFalse()Lcom/lewa/guava/base/Predicate;
    .locals 1
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/lewa/guava/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 96
    sget-object v0, Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;->INSTANCE:Lcom/lewa/guava/base/Predicates$AlwaysFalsePredicate;

    return-object v0
.end method

.method public static alwaysTrue()Lcom/lewa/guava/base/Predicate;
    .locals 1
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/lewa/guava/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 87
    sget-object v0, Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;->INSTANCE:Lcom/lewa/guava/base/Predicates$AlwaysTruePredicate;

    return-object v0
.end method

.method public static and(Lcom/lewa/guava/base/Predicate;Lcom/lewa/guava/base/Predicate;)Lcom/lewa/guava/base/Predicate;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;)",
            "Lcom/lewa/guava/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, first:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    .local p1, second:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    new-instance v2, Lcom/lewa/guava/base/Predicates$AndPredicate;

    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/base/Predicate;

    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewa/guava/base/Predicate;

    invoke-static {v0, v1}, Lcom/lewa/guava/base/Predicates;->asList(Lcom/lewa/guava/base/Predicate;Lcom/lewa/guava/base/Predicate;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/lewa/guava/base/Predicates$AndPredicate;-><init>(Ljava/lang/Iterable;Lcom/lewa/guava/base/Predicates$1;)V

    return-object v2
.end method

.method public static and(Ljava/lang/Iterable;)Lcom/lewa/guava/base/Predicate;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;>;)",
            "Lcom/lewa/guava/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, components:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/lewa/guava/base/Predicate<-TT;>;>;"
    new-instance v0, Lcom/lewa/guava/base/Predicates$AndPredicate;

    invoke-static {p0}, Lcom/lewa/guava/base/Predicates;->defensiveCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lewa/guava/base/Predicates$AndPredicate;-><init>(Ljava/lang/Iterable;Lcom/lewa/guava/base/Predicates$1;)V

    return-object v0
.end method

.method public static varargs and([Lcom/lewa/guava/base/Predicate;)Lcom/lewa/guava/base/Predicate;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;)",
            "Lcom/lewa/guava/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, components:[Lcom/lewa/guava/base/Predicate;,"[Lcom/lewa/guava/base/Predicate<-TT;>;"
    new-instance v0, Lcom/lewa/guava/base/Predicates$AndPredicate;

    invoke-static {p0}, Lcom/lewa/guava/base/Predicates;->defensiveCopy([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lewa/guava/base/Predicates$AndPredicate;-><init>(Ljava/lang/Iterable;Lcom/lewa/guava/base/Predicates$1;)V

    return-object v0
.end method

.method private static asList(Lcom/lewa/guava/base/Predicate;Lcom/lewa/guava/base/Predicate;)Ljava/util/List;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;>;"
        }
    .end annotation

    .prologue
    .line 574
    .local p0, first:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    .local p1, second:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lewa/guava/base/Predicate;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static compose(Lcom/lewa/guava/base/Predicate;Lcom/lewa/guava/base/Function;)Lcom/lewa/guava/base/Predicate;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/base/Predicate",
            "<TB;>;",
            "Lcom/lewa/guava/base/Function",
            "<TA;+TB;>;)",
            "Lcom/lewa/guava/base/Predicate",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<TB;>;"
    .local p1, function:Lcom/lewa/guava/base/Function;,"Lcom/lewa/guava/base/Function<TA;+TB;>;"
    new-instance v0, Lcom/lewa/guava/base/Predicates$CompositionPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/lewa/guava/base/Predicates$CompositionPredicate;-><init>(Lcom/lewa/guava/base/Predicate;Lcom/lewa/guava/base/Function;Lcom/lewa/guava/base/Predicates$1;)V

    return-object v0
.end method

.method static defensiveCopy(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 582
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 583
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 584
    .local v0, element:Ljava/lang/Object;,"TT;"
    invoke-static {v0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 586
    .end local v0           #element:Ljava/lang/Object;,"TT;"
    :cond_0
    return-object v2
.end method

.method private static varargs defensiveCopy([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
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
    .line 578
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/base/Predicates;->defensiveCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static equalTo(Ljava/lang/Object;)Lcom/lewa/guava/base/Predicate;
    .locals 2
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/lewa/guava/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, target:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    invoke-static {}, Lcom/lewa/guava/base/Predicates;->isNull()Lcom/lewa/guava/base/Predicate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lewa/guava/base/Predicates$IsEqualToPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lewa/guava/base/Predicates$IsEqualToPredicate;-><init>(Ljava/lang/Object;Lcom/lewa/guava/base/Predicates$1;)V

    goto :goto_0
.end method

.method public static in(Ljava/util/Collection;)Lcom/lewa/guava/base/Predicate;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Lcom/lewa/guava/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, target:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    new-instance v0, Lcom/lewa/guava/base/Predicates$InPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lewa/guava/base/Predicates$InPredicate;-><init>(Ljava/util/Collection;Lcom/lewa/guava/base/Predicates$1;)V

    return-object v0
.end method

.method public static instanceOf(Ljava/lang/Class;)Lcom/lewa/guava/base/Predicate;
    .locals 2
    .parameter
    .annotation build Lcom/lewa/guava/annotations/GwtIncompatible;
        value = "Class.isInstance"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/lewa/guava/base/Predicate",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lcom/lewa/guava/base/Predicates$InstanceOfPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lewa/guava/base/Predicates$InstanceOfPredicate;-><init>(Ljava/lang/Class;Lcom/lewa/guava/base/Predicates$1;)V

    return-object v0
.end method

.method public static isNull()Lcom/lewa/guava/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/lewa/guava/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 105
    sget-object v0, Lcom/lewa/guava/base/Predicates$IsNullPredicate;->INSTANCE:Lcom/lewa/guava/base/Predicates$IsNullPredicate;

    return-object v0
.end method

.method private static iterableElementsEqual(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .locals 5
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
    .local p0, iterable1:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    .local p1, iterable2:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    const/4 v2, 0x0

    .line 558
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 559
    .local v0, iterator1:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 560
    .local v1, iterator2:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 561
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 568
    :cond_1
    :goto_0
    return v2

    .line 564
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 568
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static not(Lcom/lewa/guava/base/Predicate;)Lcom/lewa/guava/base/Predicate;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/base/Predicate",
            "<TT;>;)",
            "Lcom/lewa/guava/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<TT;>;"
    new-instance v0, Lcom/lewa/guava/base/Predicates$NotPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lewa/guava/base/Predicates$NotPredicate;-><init>(Lcom/lewa/guava/base/Predicate;Lcom/lewa/guava/base/Predicates$1;)V

    return-object v0
.end method

.method public static notNull()Lcom/lewa/guava/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/lewa/guava/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 114
    sget-object v0, Lcom/lewa/guava/base/Predicates$NotNullPredicate;->INSTANCE:Lcom/lewa/guava/base/Predicates$NotNullPredicate;

    return-object v0
.end method

.method public static or(Lcom/lewa/guava/base/Predicate;Lcom/lewa/guava/base/Predicate;)Lcom/lewa/guava/base/Predicate;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;)",
            "Lcom/lewa/guava/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, first:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    .local p1, second:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    new-instance v2, Lcom/lewa/guava/base/Predicates$OrPredicate;

    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/base/Predicate;

    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewa/guava/base/Predicate;

    invoke-static {v0, v1}, Lcom/lewa/guava/base/Predicates;->asList(Lcom/lewa/guava/base/Predicate;Lcom/lewa/guava/base/Predicate;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/lewa/guava/base/Predicates$OrPredicate;-><init>(Ljava/lang/Iterable;Lcom/lewa/guava/base/Predicates$1;)V

    return-object v2
.end method

.method public static or(Ljava/lang/Iterable;)Lcom/lewa/guava/base/Predicate;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;>;)",
            "Lcom/lewa/guava/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, components:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/lewa/guava/base/Predicate<-TT;>;>;"
    new-instance v0, Lcom/lewa/guava/base/Predicates$OrPredicate;

    invoke-static {p0}, Lcom/lewa/guava/base/Predicates;->defensiveCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lewa/guava/base/Predicates$OrPredicate;-><init>(Ljava/lang/Iterable;Lcom/lewa/guava/base/Predicates$1;)V

    return-object v0
.end method

.method public static varargs or([Lcom/lewa/guava/base/Predicate;)Lcom/lewa/guava/base/Predicate;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;)",
            "Lcom/lewa/guava/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, components:[Lcom/lewa/guava/base/Predicate;,"[Lcom/lewa/guava/base/Predicate<-TT;>;"
    new-instance v0, Lcom/lewa/guava/base/Predicates$OrPredicate;

    invoke-static {p0}, Lcom/lewa/guava/base/Predicates;->defensiveCopy([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lewa/guava/base/Predicates$OrPredicate;-><init>(Ljava/lang/Iterable;Lcom/lewa/guava/base/Predicates$1;)V

    return-object v0
.end method
