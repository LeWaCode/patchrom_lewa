.class final Lcom/lewa/guava/collect/ExplicitOrdering;
.super Lcom/lewa/guava/collect/Ordering;
.source "ExplicitOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/Ordering",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final rankMap:Lcom/lewa/guava/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/ImmutableMap",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/ImmutableMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/ImmutableMap",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, this:Lcom/lewa/guava/collect/ExplicitOrdering;,"Lcom/lewa/guava/collect/ExplicitOrdering<TT;>;"
    .local p1, rankMap:Lcom/lewa/guava/collect/ImmutableMap;,"Lcom/lewa/guava/collect/ImmutableMap<TT;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/Ordering;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/lewa/guava/collect/ExplicitOrdering;->rankMap:Lcom/lewa/guava/collect/ImmutableMap;

    .line 69
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, this:Lcom/lewa/guava/collect/ExplicitOrdering;,"Lcom/lewa/guava/collect/ExplicitOrdering<TT;>;"
    .local p1, valuesInOrder:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {p1}, Lcom/lewa/guava/collect/ExplicitOrdering;->buildRankMap(Ljava/util/List;)Lcom/lewa/guava/collect/ImmutableMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lewa/guava/collect/ExplicitOrdering;-><init>(Lcom/lewa/guava/collect/ImmutableMap;)V

    .line 65
    return-void
.end method

.method private static buildRankMap(Ljava/util/List;)Lcom/lewa/guava/collect/ImmutableMap;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lcom/lewa/guava/collect/ImmutableMap",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, valuesInOrder:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/lewa/guava/collect/ImmutableMap;->builder()Lcom/lewa/guava/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 86
    .local v0, builder:Lcom/lewa/guava/collect/ImmutableMap$Builder;,"Lcom/lewa/guava/collect/ImmutableMap$Builder<TT;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 87
    .local v2, rank:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 88
    .local v4, value:Ljava/lang/Object;,"TT;"
    add-int/lit8 v3, v2, 0x1

    .end local v2           #rank:I
    .local v3, rank:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/lewa/guava/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableMap$Builder;

    move v2, v3

    .end local v3           #rank:I
    .restart local v2       #rank:I
    goto :goto_0

    .line 90
    .end local v4           #value:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {v0}, Lcom/lewa/guava/collect/ImmutableMap$Builder;->build()Lcom/lewa/guava/collect/ImmutableMap;

    move-result-object v5

    return-object v5
.end method

.method private rank(Ljava/lang/Object;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, this:Lcom/lewa/guava/collect/ExplicitOrdering;,"Lcom/lewa/guava/collect/ExplicitOrdering<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/lewa/guava/collect/ExplicitOrdering;->rankMap:Lcom/lewa/guava/collect/ImmutableMap;

    invoke-virtual {v1, p1}, Lcom/lewa/guava/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 77
    .local v0, rank:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 78
    new-instance v1, Lcom/lewa/guava/collect/Ordering$IncomparableValueException;

    invoke-direct {v1, p1}, Lcom/lewa/guava/collect/Ordering$IncomparableValueException;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 80
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lcom/lewa/guava/collect/ExplicitOrdering;,"Lcom/lewa/guava/collect/ExplicitOrdering<TT;>;"
    .local p1, left:Ljava/lang/Object;,"TT;"
    .local p2, right:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p1}, Lcom/lewa/guava/collect/ExplicitOrdering;->rank(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/lewa/guava/collect/ExplicitOrdering;->rank(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 94
    .local p0, this:Lcom/lewa/guava/collect/ExplicitOrdering;,"Lcom/lewa/guava/collect/ExplicitOrdering<TT;>;"
    instance-of v1, p1, Lcom/lewa/guava/collect/ExplicitOrdering;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 95
    check-cast v0, Lcom/lewa/guava/collect/ExplicitOrdering;

    .line 96
    .local v0, that:Lcom/lewa/guava/collect/ExplicitOrdering;,"Lcom/lewa/guava/collect/ExplicitOrdering<*>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/ExplicitOrdering;->rankMap:Lcom/lewa/guava/collect/ImmutableMap;

    iget-object v2, v0, Lcom/lewa/guava/collect/ExplicitOrdering;->rankMap:Lcom/lewa/guava/collect/ImmutableMap;

    invoke-virtual {v1, v2}, Lcom/lewa/guava/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 98
    .end local v0           #that:Lcom/lewa/guava/collect/ExplicitOrdering;,"Lcom/lewa/guava/collect/ExplicitOrdering<*>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 102
    .local p0, this:Lcom/lewa/guava/collect/ExplicitOrdering;,"Lcom/lewa/guava/collect/ExplicitOrdering<TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ExplicitOrdering;->rankMap:Lcom/lewa/guava/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/lewa/guava/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    .local p0, this:Lcom/lewa/guava/collect/ExplicitOrdering;,"Lcom/lewa/guava/collect/ExplicitOrdering<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ordering.explicit("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/guava/collect/ExplicitOrdering;->rankMap:Lcom/lewa/guava/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/lewa/guava/collect/ImmutableMap;->keySet()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
