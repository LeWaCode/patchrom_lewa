.class public Lcom/lewa/guava/collect/ImmutableSet$Builder;
.super Lcom/lewa/guava/collect/ImmutableCollection$Builder;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ImmutableCollection$Builder",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 504
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSet$Builder<TE;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableCollection$Builder;-><init>()V

    .line 498
    invoke-static {}, Lcom/lewa/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/ImmutableSet$Builder;->contents:Ljava/util/ArrayList;

    .line 504
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 496
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 496
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/ImmutableSet$Builder;->add([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/lewa/guava/collect/ImmutableSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 516
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSet$Builder<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSet$Builder;->contents:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet$Builder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/lewa/guava/collect/ImmutableSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 530
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSet$Builder<TE;>;"
    .local p1, elements:[Ljava/lang/Object;,"[TE;"
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSet$Builder;->contents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableSet$Builder;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 532
    invoke-super {p0, p1}, Lcom/lewa/guava/collect/ImmutableCollection$Builder;->add([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableCollection$Builder;

    .line 533
    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 496
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lcom/lewa/guava/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 496
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/ImmutableSet$Builder;->addAll(Ljava/util/Iterator;)Lcom/lewa/guava/collect/ImmutableSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableSet$Builder;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/lewa/guava/collect/ImmutableSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 546
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSet$Builder<TE;>;"
    .local p1, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 547
    check-cast v0, Ljava/util/Collection;

    .line 548
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableSet$Builder;->contents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lewa/guava/collect/ImmutableSet$Builder;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 550
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :cond_0
    invoke-super {p0, p1}, Lcom/lewa/guava/collect/ImmutableCollection$Builder;->addAll(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableCollection$Builder;

    .line 551
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lcom/lewa/guava/collect/ImmutableSet$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/lewa/guava/collect/ImmutableSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 564
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSet$Builder<TE;>;"
    .local p1, elements:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    invoke-super {p0, p1}, Lcom/lewa/guava/collect/ImmutableCollection$Builder;->addAll(Ljava/util/Iterator;)Lcom/lewa/guava/collect/ImmutableCollection$Builder;

    .line 565
    return-object p0
.end method

.method public bridge synthetic build()Lcom/lewa/guava/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 496
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSet$Builder;->build()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/lewa/guava/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet$Builder;,"Lcom/lewa/guava/collect/ImmutableSet$Builder<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSet$Builder;->contents:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/lewa/guava/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
