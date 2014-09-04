.class public final Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;
.super Lcom/lewa/guava/collect/ImmutableSet$Builder;
.source "ImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/ImmutableSortedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ImmutableSet$Builder",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedSet$Builder<TE;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableSet$Builder;-><init>()V

    .line 522
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    .line 523
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 514
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 514
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;->add([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 514
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 514
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;->add([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 536
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedSet$Builder<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-super {p0, p1}, Lcom/lewa/guava/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet$Builder;

    .line 537
    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedSet$Builder<TE;>;"
    .local p1, elements:[Ljava/lang/Object;,"[TE;"
    invoke-super {p0, p1}, Lcom/lewa/guava/collect/ImmutableSet$Builder;->add([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet$Builder;

    .line 550
    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 514
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lcom/lewa/guava/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 514
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;->addAll(Ljava/util/Iterator;)Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableSet$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 514
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lcom/lewa/guava/collect/ImmutableSet$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 514
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;->addAll(Ljava/util/Iterator;)Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 562
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedSet$Builder<TE;>;"
    .local p1, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    invoke-super {p0, p1}, Lcom/lewa/guava/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableSet$Builder;

    .line 563
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 575
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedSet$Builder<TE;>;"
    .local p1, elements:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    invoke-super {p0, p1}, Lcom/lewa/guava/collect/ImmutableSet$Builder;->addAll(Ljava/util/Iterator;)Lcom/lewa/guava/collect/ImmutableSet$Builder;

    .line 576
    return-object p0
.end method

.method public bridge synthetic build()Lcom/lewa/guava/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 514
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;->build()Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/lewa/guava/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 514
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;->build()Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 584
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedSet$Builder<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableSortedSet$Builder;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    #calls: Lcom/lewa/guava/collect/ImmutableSortedSet;->copyOfInternal(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    invoke-static {v0, v1}, Lcom/lewa/guava/collect/ImmutableSortedSet;->access$000(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/lewa/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method
