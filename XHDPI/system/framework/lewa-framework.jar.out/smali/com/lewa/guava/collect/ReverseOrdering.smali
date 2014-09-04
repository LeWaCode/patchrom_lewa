.class final Lcom/lewa/guava/collect/ReverseOrdering;
.super Lcom/lewa/guava/collect/Ordering;
.source "ReverseOrdering.java"

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
.field final forwardOrder:Lcom/lewa/guava/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/Ordering",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/Ordering;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/Ordering",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, this:Lcom/lewa/guava/collect/ReverseOrdering;,"Lcom/lewa/guava/collect/ReverseOrdering<TT;>;"
    .local p1, forwardOrder:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<-TT;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/Ordering;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/collect/Ordering;

    iput-object v0, p0, Lcom/lewa/guava/collect/ReverseOrdering;->forwardOrder:Lcom/lewa/guava/collect/Ordering;

    .line 66
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
    .line 69
    .local p0, this:Lcom/lewa/guava/collect/ReverseOrdering;,"Lcom/lewa/guava/collect/ReverseOrdering<TT;>;"
    .local p1, a:Ljava/lang/Object;,"TT;"
    .local p2, b:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ReverseOrdering;->forwardOrder:Lcom/lewa/guava/collect/Ordering;

    invoke-virtual {v0, p2, p1}, Lcom/lewa/guava/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

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
    .line 108
    .local p0, this:Lcom/lewa/guava/collect/ReverseOrdering;,"Lcom/lewa/guava/collect/ReverseOrdering<TT;>;"
    if-ne p1, p0, :cond_0

    .line 109
    const/4 v1, 0x1

    .line 115
    :goto_0
    return v1

    .line 111
    :cond_0
    instance-of v1, p1, Lcom/lewa/guava/collect/ReverseOrdering;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 112
    check-cast v0, Lcom/lewa/guava/collect/ReverseOrdering;

    .line 113
    .local v0, that:Lcom/lewa/guava/collect/ReverseOrdering;,"Lcom/lewa/guava/collect/ReverseOrdering<*>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/ReverseOrdering;->forwardOrder:Lcom/lewa/guava/collect/Ordering;

    iget-object v2, v0, Lcom/lewa/guava/collect/ReverseOrdering;->forwardOrder:Lcom/lewa/guava/collect/Ordering;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 115
    .end local v0           #that:Lcom/lewa/guava/collect/ReverseOrdering;,"Lcom/lewa/guava/collect/ReverseOrdering<*>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 104
    .local p0, this:Lcom/lewa/guava/collect/ReverseOrdering;,"Lcom/lewa/guava/collect/ReverseOrdering<TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ReverseOrdering;->forwardOrder:Lcom/lewa/guava/collect/Ordering;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public max(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, this:Lcom/lewa/guava/collect/ReverseOrdering;,"Lcom/lewa/guava/collect/ReverseOrdering<TT;>;"
    .local p1, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ReverseOrdering;->forwardOrder:Lcom/lewa/guava/collect/Ordering;

    invoke-virtual {v0, p1}, Lcom/lewa/guava/collect/Ordering;->min(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;)TE;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/lewa/guava/collect/ReverseOrdering;,"Lcom/lewa/guava/collect/ReverseOrdering<TT;>;"
    .local p1, a:Ljava/lang/Object;,"TE;"
    .local p2, b:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ReverseOrdering;->forwardOrder:Lcom/lewa/guava/collect/Ordering;

    invoke-virtual {v0, p1, p2}, Lcom/lewa/guava/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs max(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;TE;[TE;)TE;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, this:Lcom/lewa/guava/collect/ReverseOrdering;,"Lcom/lewa/guava/collect/ReverseOrdering<TT;>;"
    .local p1, a:Ljava/lang/Object;,"TE;"
    .local p2, b:Ljava/lang/Object;,"TE;"
    .local p3, c:Ljava/lang/Object;,"TE;"
    .local p4, rest:[Ljava/lang/Object;,"[TE;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ReverseOrdering;->forwardOrder:Lcom/lewa/guava/collect/Ordering;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lewa/guava/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public min(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, this:Lcom/lewa/guava/collect/ReverseOrdering;,"Lcom/lewa/guava/collect/ReverseOrdering<TT;>;"
    .local p1, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ReverseOrdering;->forwardOrder:Lcom/lewa/guava/collect/Ordering;

    invoke-virtual {v0, p1}, Lcom/lewa/guava/collect/Ordering;->max(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;)TE;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, this:Lcom/lewa/guava/collect/ReverseOrdering;,"Lcom/lewa/guava/collect/ReverseOrdering<TT;>;"
    .local p1, a:Ljava/lang/Object;,"TE;"
    .local p2, b:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ReverseOrdering;->forwardOrder:Lcom/lewa/guava/collect/Ordering;

    invoke-virtual {v0, p1, p2}, Lcom/lewa/guava/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs min(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;TE;[TE;)TE;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, this:Lcom/lewa/guava/collect/ReverseOrdering;,"Lcom/lewa/guava/collect/ReverseOrdering<TT;>;"
    .local p1, a:Ljava/lang/Object;,"TE;"
    .local p2, b:Ljava/lang/Object;,"TE;"
    .local p3, c:Ljava/lang/Object;,"TE;"
    .local p4, rest:[Ljava/lang/Object;,"[TE;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ReverseOrdering;->forwardOrder:Lcom/lewa/guava/collect/Ordering;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lewa/guava/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 74
    .local p0, this:Lcom/lewa/guava/collect/ReverseOrdering;,"Lcom/lewa/guava/collect/ReverseOrdering<TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ReverseOrdering;->forwardOrder:Lcom/lewa/guava/collect/Ordering;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    .local p0, this:Lcom/lewa/guava/collect/ReverseOrdering;,"Lcom/lewa/guava/collect/ReverseOrdering<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lewa/guava/collect/ReverseOrdering;->forwardOrder:Lcom/lewa/guava/collect/Ordering;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".reverse()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
