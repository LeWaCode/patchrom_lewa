.class public final Lcom/lewa/guava/collect/Collections2;
.super Ljava/lang/Object;
.source "Collections2.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/Collections2$TransformedCollection;,
        Lcom/lewa/guava/collect/Collections2$FilteredCollection;
    }
.end annotation


# static fields
.field static final standardJoiner:Lcom/lewa/guava/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 332
    const-string v0, ", "

    invoke-static {v0}, Lcom/lewa/guava/base/Joiner;->on(Ljava/lang/String;)Lcom/lewa/guava/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/lewa/guava/collect/Collections2;->standardJoiner:Lcom/lewa/guava/base/Joiner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static containsAll(Ljava/util/Collection;Ljava/util/Collection;)Z
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
    .line 93
    .local p0, self:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 95
    .local v1, o:Ljava/lang/Object;
    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    const/4 v2, 0x0

    .line 99
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static filter(Ljava/util/Collection;Lcom/lewa/guava/base/Predicate;)Ljava/util/Collection;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, unfiltered:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    .local p1, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TE;>;"
    instance-of v0, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;

    if-eqz v0, :cond_0

    .line 139
    check-cast p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;

    .end local p0           #unfiltered:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->createCombined(Lcom/lewa/guava/base/Predicate;)Lcom/lewa/guava/collect/Collections2$FilteredCollection;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .restart local p0       #unfiltered:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    :cond_0
    new-instance v2, Lcom/lewa/guava/collect/Collections2$FilteredCollection;

    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewa/guava/base/Predicate;

    invoke-direct {v2, v0, v1}, Lcom/lewa/guava/collect/Collections2$FilteredCollection;-><init>(Ljava/util/Collection;Lcom/lewa/guava/base/Predicate;)V

    move-object v0, v2

    goto :goto_0
.end method

.method static safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter "object"
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
    .line 152
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 154
    :goto_0
    return v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static setEquals(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .end parameter
    .parameter "object"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, thisSet:Ljava/util/Set;,"Ljava/util/Set<*>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 321
    if-ne p1, p0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v1

    .line 324
    :cond_1
    instance-of v3, p1, Ljava/util/Set;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 325
    check-cast v0, Ljava/util/Set;

    .line 326
    .local v0, thatSet:Ljava/util/Set;,"Ljava/util/Set<*>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-interface {p0, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #thatSet:Ljava/util/Set;,"Ljava/util/Set<*>;"
    :cond_3
    move v1, v2

    .line 329
    goto :goto_0
.end method

.method static toCollection(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    .end local p0           #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    :goto_0
    return-object p0

    .restart local p0       #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    :cond_0
    invoke-static {p0}, Lcom/lewa/guava/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0
.end method

.method public static transform(Ljava/util/Collection;Lcom/lewa/guava/base/Function;)Ljava/util/Collection;
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
            "Ljava/util/Collection",
            "<TF;>;",
            "Lcom/lewa/guava/base/Function",
            "<-TF;TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, fromCollection:Ljava/util/Collection;,"Ljava/util/Collection<TF;>;"
    .local p1, function:Lcom/lewa/guava/base/Function;,"Lcom/lewa/guava/base/Function<-TF;TT;>;"
    new-instance v0, Lcom/lewa/guava/collect/Collections2$TransformedCollection;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Collections2$TransformedCollection;-><init>(Ljava/util/Collection;Lcom/lewa/guava/base/Function;)V

    return-object v0
.end method
