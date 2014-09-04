.class final Lcom/lewa/guava/collect/CompoundOrdering;
.super Lcom/lewa/guava/collect/Ordering;
.source "CompoundOrdering.java"

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
.field final comparators:Lcom/lewa/guava/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/ImmutableList",
            "<",
            "Ljava/util/Comparator",
            "<-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/util/Comparator",
            "<-TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, this:Lcom/lewa/guava/collect/CompoundOrdering;,"Lcom/lewa/guava/collect/CompoundOrdering<TT;>;"
    .local p1, comparators:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/util/Comparator<-TT;>;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/Ordering;-><init>()V

    .line 69
    invoke-static {p1}, Lcom/lewa/guava/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/CompoundOrdering;->comparators:Lcom/lewa/guava/collect/ImmutableList;

    .line 70
    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lcom/lewa/guava/collect/CompoundOrdering;,"Lcom/lewa/guava/collect/CompoundOrdering<TT;>;"
    .local p1, primary:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    .local p2, secondary:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/Ordering;-><init>()V

    .line 64
    invoke-static {p1, p2}, Lcom/lewa/guava/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/CompoundOrdering;->comparators:Lcom/lewa/guava/collect/ImmutableList;

    .line 66
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Comparator",
            "<-TT;>;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lcom/lewa/guava/collect/CompoundOrdering;,"Lcom/lewa/guava/collect/CompoundOrdering<TT;>;"
    .local p1, comparators:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Comparator<-TT;>;>;"
    .local p2, lastComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/Ordering;-><init>()V

    .line 74
    new-instance v0, Lcom/lewa/guava/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/lewa/guava/collect/ImmutableList$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/lewa/guava/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableList$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lewa/guava/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/collect/ImmutableList$Builder;->build()Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/CompoundOrdering;->comparators:Lcom/lewa/guava/collect/ImmutableList;

    .line 76
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, this:Lcom/lewa/guava/collect/CompoundOrdering;,"Lcom/lewa/guava/collect/CompoundOrdering<TT;>;"
    .local p1, left:Ljava/lang/Object;,"TT;"
    .local p2, right:Ljava/lang/Object;,"TT;"
    iget-object v3, p0, Lcom/lewa/guava/collect/CompoundOrdering;->comparators:Lcom/lewa/guava/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/lewa/guava/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 80
    .local v0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 81
    .local v2, result:I
    if-eqz v2, :cond_0

    .line 85
    .end local v0           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    .end local v2           #result:I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"

    .prologue
    .line 89
    .local p0, this:Lcom/lewa/guava/collect/CompoundOrdering;,"Lcom/lewa/guava/collect/CompoundOrdering<TT;>;"
    if-ne p1, p0, :cond_0

    .line 90
    const/4 v1, 0x1

    .line 96
    :goto_0
    return v1

    .line 92
    :cond_0
    instance-of v1, p1, Lcom/lewa/guava/collect/CompoundOrdering;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 93
    check-cast v0, Lcom/lewa/guava/collect/CompoundOrdering;

    .line 94
    .local v0, that:Lcom/lewa/guava/collect/CompoundOrdering;,"Lcom/lewa/guava/collect/CompoundOrdering<*>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/CompoundOrdering;->comparators:Lcom/lewa/guava/collect/ImmutableList;

    iget-object v2, v0, Lcom/lewa/guava/collect/CompoundOrdering;->comparators:Lcom/lewa/guava/collect/ImmutableList;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 96
    .end local v0           #that:Lcom/lewa/guava/collect/CompoundOrdering;,"Lcom/lewa/guava/collect/CompoundOrdering<*>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 100
    .local p0, this:Lcom/lewa/guava/collect/CompoundOrdering;,"Lcom/lewa/guava/collect/CompoundOrdering<TT;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/CompoundOrdering;->comparators:Lcom/lewa/guava/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    .local p0, this:Lcom/lewa/guava/collect/CompoundOrdering;,"Lcom/lewa/guava/collect/CompoundOrdering<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ordering.compound("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/guava/collect/CompoundOrdering;->comparators:Lcom/lewa/guava/collect/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
