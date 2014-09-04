.class final Lcom/lewa/guava/collect/NullsFirstOrdering;
.super Lcom/lewa/guava/collect/Ordering;
.source "NullsFirstOrdering.java"

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
.field final ordering:Lcom/lewa/guava/collect/Ordering;
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
    .line 62
    .local p0, this:Lcom/lewa/guava/collect/NullsFirstOrdering;,"Lcom/lewa/guava/collect/NullsFirstOrdering<TT;>;"
    .local p1, ordering:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<-TT;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/Ordering;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/lewa/guava/collect/NullsFirstOrdering;->ordering:Lcom/lewa/guava/collect/Ordering;

    .line 64
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, this:Lcom/lewa/guava/collect/NullsFirstOrdering;,"Lcom/lewa/guava/collect/NullsFirstOrdering<TT;>;"
    .local p1, left:Ljava/lang/Object;,"TT;"
    .local p2, right:Ljava/lang/Object;,"TT;"
    if-ne p1, p2, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    .line 70
    :cond_0
    if-nez p1, :cond_1

    .line 71
    const/4 v0, -0x1

    goto :goto_0

    .line 73
    :cond_1
    if-nez p2, :cond_2

    .line 74
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/lewa/guava/collect/NullsFirstOrdering;->ordering:Lcom/lewa/guava/collect/Ordering;

    invoke-virtual {v0, p1, p2}, Lcom/lewa/guava/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 94
    .local p0, this:Lcom/lewa/guava/collect/NullsFirstOrdering;,"Lcom/lewa/guava/collect/NullsFirstOrdering<TT;>;"
    if-ne p1, p0, :cond_0

    .line 95
    const/4 v1, 0x1

    .line 101
    :goto_0
    return v1

    .line 97
    :cond_0
    instance-of v1, p1, Lcom/lewa/guava/collect/NullsFirstOrdering;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 98
    check-cast v0, Lcom/lewa/guava/collect/NullsFirstOrdering;

    .line 99
    .local v0, that:Lcom/lewa/guava/collect/NullsFirstOrdering;,"Lcom/lewa/guava/collect/NullsFirstOrdering<*>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/NullsFirstOrdering;->ordering:Lcom/lewa/guava/collect/Ordering;

    iget-object v2, v0, Lcom/lewa/guava/collect/NullsFirstOrdering;->ordering:Lcom/lewa/guava/collect/Ordering;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 101
    .end local v0           #that:Lcom/lewa/guava/collect/NullsFirstOrdering;,"Lcom/lewa/guava/collect/NullsFirstOrdering<*>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 105
    .local p0, this:Lcom/lewa/guava/collect/NullsFirstOrdering;,"Lcom/lewa/guava/collect/NullsFirstOrdering<TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/NullsFirstOrdering;->ordering:Lcom/lewa/guava/collect/Ordering;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x39153a74

    xor-int/2addr v0, v1

    return v0
.end method

.method public nullsFirst()Lcom/lewa/guava/collect/Ordering;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/lewa/guava/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, this:Lcom/lewa/guava/collect/NullsFirstOrdering;,"Lcom/lewa/guava/collect/NullsFirstOrdering<TT;>;"
    return-object p0
.end method

.method public nullsLast()Lcom/lewa/guava/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/lewa/guava/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, this:Lcom/lewa/guava/collect/NullsFirstOrdering;,"Lcom/lewa/guava/collect/NullsFirstOrdering<TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/NullsFirstOrdering;->ordering:Lcom/lewa/guava/collect/Ordering;

    invoke-virtual {v0}, Lcom/lewa/guava/collect/Ordering;->nullsLast()Lcom/lewa/guava/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lcom/lewa/guava/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/lewa/guava/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, this:Lcom/lewa/guava/collect/NullsFirstOrdering;,"Lcom/lewa/guava/collect/NullsFirstOrdering<TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/NullsFirstOrdering;->ordering:Lcom/lewa/guava/collect/Ordering;

    invoke-virtual {v0}, Lcom/lewa/guava/collect/Ordering;->reverse()Lcom/lewa/guava/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/collect/Ordering;->nullsLast()Lcom/lewa/guava/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    .local p0, this:Lcom/lewa/guava/collect/NullsFirstOrdering;,"Lcom/lewa/guava/collect/NullsFirstOrdering<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lewa/guava/collect/NullsFirstOrdering;->ordering:Lcom/lewa/guava/collect/Ordering;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".nullsFirst()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
