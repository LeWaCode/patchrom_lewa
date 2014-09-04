.class final Lcom/lewa/guava/collect/LexicographicalOrdering;
.super Lcom/lewa/guava/collect/Ordering;
.source "LexicographicalOrdering.java"

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
        "<",
        "Ljava/lang/Iterable",
        "<TT;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final elementOrder:Lcom/lewa/guava/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/Ordering",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/Ordering;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/Ordering",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, this:Lcom/lewa/guava/collect/LexicographicalOrdering;,"Lcom/lewa/guava/collect/LexicographicalOrdering<TT;>;"
    .local p1, elementOrder:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<-TT;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/Ordering;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/lewa/guava/collect/LexicographicalOrdering;->elementOrder:Lcom/lewa/guava/collect/Ordering;

    .line 69
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lcom/lewa/guava/collect/LexicographicalOrdering;,"Lcom/lewa/guava/collect/LexicographicalOrdering<TT;>;"
    .local p1, leftIterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    .local p2, rightIterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 73
    .local v0, left:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 74
    .local v2, right:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    const/4 v1, 0x1

    .line 86
    :goto_0
    return v1

    .line 78
    :cond_1
    iget-object v3, p0, Lcom/lewa/guava/collect/LexicographicalOrdering;->elementOrder:Lcom/lewa/guava/collect/Ordering;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lewa/guava/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 79
    .local v1, result:I
    if-eqz v1, :cond_0

    goto :goto_0

    .line 83
    .end local v1           #result:I
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 84
    const/4 v1, -0x1

    goto :goto_0

    .line 86
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    .local p0, this:Lcom/lewa/guava/collect/LexicographicalOrdering;,"Lcom/lewa/guava/collect/LexicographicalOrdering<TT;>;"
    check-cast p1, Ljava/lang/Iterable;

    .end local p1
    check-cast p2, Ljava/lang/Iterable;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/LexicographicalOrdering;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 90
    .local p0, this:Lcom/lewa/guava/collect/LexicographicalOrdering;,"Lcom/lewa/guava/collect/LexicographicalOrdering<TT;>;"
    if-ne p1, p0, :cond_0

    .line 91
    const/4 v1, 0x1

    .line 97
    :goto_0
    return v1

    .line 93
    :cond_0
    instance-of v1, p1, Lcom/lewa/guava/collect/LexicographicalOrdering;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 94
    check-cast v0, Lcom/lewa/guava/collect/LexicographicalOrdering;

    .line 95
    .local v0, that:Lcom/lewa/guava/collect/LexicographicalOrdering;,"Lcom/lewa/guava/collect/LexicographicalOrdering<*>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/LexicographicalOrdering;->elementOrder:Lcom/lewa/guava/collect/Ordering;

    iget-object v2, v0, Lcom/lewa/guava/collect/LexicographicalOrdering;->elementOrder:Lcom/lewa/guava/collect/Ordering;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 97
    .end local v0           #that:Lcom/lewa/guava/collect/LexicographicalOrdering;,"Lcom/lewa/guava/collect/LexicographicalOrdering<*>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 101
    .local p0, this:Lcom/lewa/guava/collect/LexicographicalOrdering;,"Lcom/lewa/guava/collect/LexicographicalOrdering<TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/LexicographicalOrdering;->elementOrder:Lcom/lewa/guava/collect/Ordering;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x7bb78cf5

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    .local p0, this:Lcom/lewa/guava/collect/LexicographicalOrdering;,"Lcom/lewa/guava/collect/LexicographicalOrdering<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lewa/guava/collect/LexicographicalOrdering;->elementOrder:Lcom/lewa/guava/collect/Ordering;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lexicographical()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
