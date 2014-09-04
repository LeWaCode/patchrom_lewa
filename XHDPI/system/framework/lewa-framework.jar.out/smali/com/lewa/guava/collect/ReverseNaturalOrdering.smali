.class final Lcom/lewa/guava/collect/ReverseNaturalOrdering;
.super Lcom/lewa/guava/collect/Ordering;
.source "ReverseNaturalOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/Ordering",
        "<",
        "Ljava/lang/Comparable;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/lewa/guava/collect/ReverseNaturalOrdering;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/lewa/guava/collect/ReverseNaturalOrdering;

    invoke-direct {v0}, Lcom/lewa/guava/collect/ReverseNaturalOrdering;-><init>()V

    sput-object v0, Lcom/lewa/guava/collect/ReverseNaturalOrdering;->INSTANCE:Lcom/lewa/guava/collect/ReverseNaturalOrdering;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/lewa/guava/collect/Ordering;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/lewa/guava/collect/ReverseNaturalOrdering;->INSTANCE:Lcom/lewa/guava/collect/ReverseNaturalOrdering;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .parameter "left"
    .parameter "right"

    .prologue
    .line 65
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    if-ne p1, p2, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    .line 71
    :cond_0
    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 72
    .local v0, result:I
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    check-cast p2, Ljava/lang/Comparable;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/ReverseNaturalOrdering;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method

.method public max(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(TE;TE;)TE;"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, a:Ljava/lang/Comparable;,"TE;"
    .local p2, b:Ljava/lang/Comparable;,"TE;"
    sget-object v0, Lcom/lewa/guava/collect/NaturalOrdering;->INSTANCE:Lcom/lewa/guava/collect/NaturalOrdering;

    invoke-virtual {v0, p1, p2}, Lcom/lewa/guava/collect/NaturalOrdering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public varargs max(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;[Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(TE;TE;TE;[TE;)TE;"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, a:Ljava/lang/Comparable;,"TE;"
    .local p2, b:Ljava/lang/Comparable;,"TE;"
    .local p3, c:Ljava/lang/Comparable;,"TE;"
    .local p4, rest:[Ljava/lang/Comparable;,"[TE;"
    sget-object v0, Lcom/lewa/guava/collect/NaturalOrdering;->INSTANCE:Lcom/lewa/guava/collect/NaturalOrdering;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lewa/guava/collect/NaturalOrdering;->min(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public max(Ljava/lang/Iterable;)Ljava/lang/Comparable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    sget-object v0, Lcom/lewa/guava/collect/NaturalOrdering;->INSTANCE:Lcom/lewa/guava/collect/NaturalOrdering;

    invoke-virtual {v0, p1}, Lcom/lewa/guava/collect/NaturalOrdering;->min(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic max(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/ReverseNaturalOrdering;->max(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    check-cast p2, Ljava/lang/Comparable;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/ReverseNaturalOrdering;->max(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic max(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    check-cast p2, Ljava/lang/Comparable;

    .end local p2
    check-cast p3, Ljava/lang/Comparable;

    .end local p3
    check-cast p4, [Ljava/lang/Comparable;

    .end local p4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lewa/guava/collect/ReverseNaturalOrdering;->max(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;[Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public min(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(TE;TE;)TE;"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, a:Ljava/lang/Comparable;,"TE;"
    .local p2, b:Ljava/lang/Comparable;,"TE;"
    sget-object v0, Lcom/lewa/guava/collect/NaturalOrdering;->INSTANCE:Lcom/lewa/guava/collect/NaturalOrdering;

    invoke-virtual {v0, p1, p2}, Lcom/lewa/guava/collect/NaturalOrdering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public varargs min(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;[Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(TE;TE;TE;[TE;)TE;"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, a:Ljava/lang/Comparable;,"TE;"
    .local p2, b:Ljava/lang/Comparable;,"TE;"
    .local p3, c:Ljava/lang/Comparable;,"TE;"
    .local p4, rest:[Ljava/lang/Comparable;,"[TE;"
    sget-object v0, Lcom/lewa/guava/collect/NaturalOrdering;->INSTANCE:Lcom/lewa/guava/collect/NaturalOrdering;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lewa/guava/collect/NaturalOrdering;->max(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public min(Ljava/lang/Iterable;)Ljava/lang/Comparable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    sget-object v0, Lcom/lewa/guava/collect/NaturalOrdering;->INSTANCE:Lcom/lewa/guava/collect/NaturalOrdering;

    invoke-virtual {v0, p1}, Lcom/lewa/guava/collect/NaturalOrdering;->max(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic min(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/ReverseNaturalOrdering;->min(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    check-cast p2, Ljava/lang/Comparable;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/ReverseNaturalOrdering;->min(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic min(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    check-cast p2, Ljava/lang/Comparable;

    .end local p2
    check-cast p3, Ljava/lang/Comparable;

    .end local p3
    check-cast p4, [Ljava/lang/Comparable;

    .end local p4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lewa/guava/collect/ReverseNaturalOrdering;->min(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;[Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lcom/lewa/guava/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/lewa/guava/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lcom/lewa/guava/collect/Ordering;->natural()Lcom/lewa/guava/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "Ordering.natural().reverse()"

    return-object v0
.end method
