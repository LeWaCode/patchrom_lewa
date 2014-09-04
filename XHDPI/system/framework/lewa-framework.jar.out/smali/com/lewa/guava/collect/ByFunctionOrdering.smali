.class final Lcom/lewa/guava/collect/ByFunctionOrdering;
.super Lcom/lewa/guava/collect/Ordering;
.source "ByFunctionOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/Ordering",
        "<TF;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final function:Lcom/lewa/guava/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/base/Function",
            "<TF;+TT;>;"
        }
    .end annotation
.end field

.field final ordering:Lcom/lewa/guava/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/Ordering",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lewa/guava/base/Function;Lcom/lewa/guava/collect/Ordering;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/base/Function",
            "<TF;+TT;>;",
            "Lcom/lewa/guava/collect/Ordering",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lcom/lewa/guava/collect/ByFunctionOrdering;,"Lcom/lewa/guava/collect/ByFunctionOrdering<TF;TT;>;"
    .local p1, function:Lcom/lewa/guava/base/Function;,"Lcom/lewa/guava/base/Function<TF;+TT;>;"
    .local p2, ordering:Lcom/lewa/guava/collect/Ordering;,"Lcom/lewa/guava/collect/Ordering<TT;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/Ordering;-><init>()V

    .line 73
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/base/Function;

    iput-object v0, p0, Lcom/lewa/guava/collect/ByFunctionOrdering;->function:Lcom/lewa/guava/base/Function;

    .line 74
    invoke-static {p2}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/collect/Ordering;

    iput-object v0, p0, Lcom/lewa/guava/collect/ByFunctionOrdering;->ordering:Lcom/lewa/guava/collect/Ordering;

    .line 75
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TF;)I"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lcom/lewa/guava/collect/ByFunctionOrdering;,"Lcom/lewa/guava/collect/ByFunctionOrdering<TF;TT;>;"
    .local p1, left:Ljava/lang/Object;,"TF;"
    .local p2, right:Ljava/lang/Object;,"TF;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ByFunctionOrdering;->ordering:Lcom/lewa/guava/collect/Ordering;

    iget-object v1, p0, Lcom/lewa/guava/collect/ByFunctionOrdering;->function:Lcom/lewa/guava/base/Function;

    invoke-interface {v1, p1}, Lcom/lewa/guava/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/lewa/guava/collect/ByFunctionOrdering;->function:Lcom/lewa/guava/base/Function;

    invoke-interface {v2, p2}, Lcom/lewa/guava/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lewa/guava/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/ByFunctionOrdering;,"Lcom/lewa/guava/collect/ByFunctionOrdering<TF;TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    if-ne p1, p0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    instance-of v3, p1, Lcom/lewa/guava/collect/ByFunctionOrdering;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 86
    check-cast v0, Lcom/lewa/guava/collect/ByFunctionOrdering;

    .line 87
    .local v0, that:Lcom/lewa/guava/collect/ByFunctionOrdering;,"Lcom/lewa/guava/collect/ByFunctionOrdering<**>;"
    iget-object v3, p0, Lcom/lewa/guava/collect/ByFunctionOrdering;->function:Lcom/lewa/guava/base/Function;

    iget-object v4, v0, Lcom/lewa/guava/collect/ByFunctionOrdering;->function:Lcom/lewa/guava/base/Function;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lewa/guava/collect/ByFunctionOrdering;->ordering:Lcom/lewa/guava/collect/Ordering;

    iget-object v4, v0, Lcom/lewa/guava/collect/ByFunctionOrdering;->ordering:Lcom/lewa/guava/collect/Ordering;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #that:Lcom/lewa/guava/collect/ByFunctionOrdering;,"Lcom/lewa/guava/collect/ByFunctionOrdering<**>;"
    :cond_3
    move v1, v2

    .line 90
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 94
    .local p0, this:Lcom/lewa/guava/collect/ByFunctionOrdering;,"Lcom/lewa/guava/collect/ByFunctionOrdering<TF;TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lewa/guava/collect/ByFunctionOrdering;->function:Lcom/lewa/guava/base/Function;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lewa/guava/collect/ByFunctionOrdering;->ordering:Lcom/lewa/guava/collect/Ordering;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/lewa/guava/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    .local p0, this:Lcom/lewa/guava/collect/ByFunctionOrdering;,"Lcom/lewa/guava/collect/ByFunctionOrdering<TF;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lewa/guava/collect/ByFunctionOrdering;->ordering:Lcom/lewa/guava/collect/Ordering;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onResultOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/guava/collect/ByFunctionOrdering;->function:Lcom/lewa/guava/base/Function;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
