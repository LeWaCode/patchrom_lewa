.class public final Lcom/lewa/guava/collect/Lists;
.super Ljava/lang/Object;
.source "Lists.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/Lists$RandomAccessPartition;,
        Lcom/lewa/guava/collect/Lists$Partition;,
        Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList;,
        Lcom/lewa/guava/collect/Lists$TransformingSequentialList;,
        Lcom/lewa/guava/collect/Lists$TwoPlusArrayList;,
        Lcom/lewa/guava/collect/Lists$OnePlusArrayList;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asList(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;[TE;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, first:Ljava/lang/Object;,"TE;"
    .local p1, second:Ljava/lang/Object;,"TE;"
    .local p2, rest:[Ljava/lang/Object;,"[TE;"
    new-instance v0, Lcom/lewa/guava/collect/Lists$TwoPlusArrayList;

    invoke-direct {v0, p0, p1, p2}, Lcom/lewa/guava/collect/Lists$TwoPlusArrayList;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static asList(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;[TE;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, first:Ljava/lang/Object;,"TE;"
    .local p1, rest:[Ljava/lang/Object;,"[TE;"
    new-instance v0, Lcom/lewa/guava/collect/Lists$OnePlusArrayList;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Lists$OnePlusArrayList;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static computeArrayListCapacity(I)I
    .locals 4
    .parameter "arraySize"
    .annotation build Lcom/lewa/guava/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 122
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/lewa/guava/base/Preconditions;->checkArgument(Z)V

    .line 125
    const-wide/16 v0, 0x5

    int-to-long v2, p0

    add-long/2addr v0, v2

    div-int/lit8 v2, p0, 0xa

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    .locals 2
    .parameter
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 144
    check-cast v0, Ljava/util/Collection;

    .line 145
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 147
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/lewa/guava/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public static newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;
    .locals 2
    .parameter
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, elements:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {}, Lcom/lewa/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 165
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    :cond_0
    return-object v0
.end method

.method public static varargs newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, elements:[Ljava/lang/Object;,"[TE;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    array-length v2, p0

    invoke-static {v2}, Lcom/lewa/guava/collect/Lists;->computeArrayListCapacity(I)I

    move-result v0

    .line 116
    .local v0, capacity:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 118
    return-object v1
.end method

.method public static newArrayListWithCapacity(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "initialArraySize"
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static newArrayListWithExpectedSize(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "estimatedSize"
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/lewa/guava/collect/Lists;->computeArrayListCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static newLinkedList()Ljava/util/LinkedList;
    .locals 1
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public static newLinkedList(Ljava/lang/Iterable;)Ljava/util/LinkedList;
    .locals 4
    .parameter
    .annotation build Lcom/lewa/guava/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    invoke-static {}, Lcom/lewa/guava/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v2

    .line 243
    .local v2, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 244
    .local v0, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    .end local v0           #element:Ljava/lang/Object;,"TE;"
    :cond_0
    return-object v2
.end method

.method public static partition(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 498
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/lewa/guava/base/Preconditions;->checkArgument(Z)V

    .line 500
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/lewa/guava/collect/Lists$RandomAccessPartition;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Lists$RandomAccessPartition;-><init>(Ljava/util/List;I)V

    :goto_1
    return-object v0

    .line 499
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 500
    :cond_1
    new-instance v0, Lcom/lewa/guava/collect/Lists$Partition;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Lists$Partition;-><init>(Ljava/util/List;I)V

    goto :goto_1
.end method

.method public static transform(Ljava/util/List;Lcom/lewa/guava/base/Function;)Ljava/util/List;
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
            "Ljava/util/List",
            "<TF;>;",
            "Lcom/lewa/guava/base/Function",
            "<-TF;+TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, fromList:Ljava/util/List;,"Ljava/util/List<TF;>;"
    .local p1, function:Lcom/lewa/guava/base/Function;,"Lcom/lewa/guava/base/Function<-TF;+TT;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Lists$TransformingRandomAccessList;-><init>(Ljava/util/List;Lcom/lewa/guava/base/Function;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lewa/guava/collect/Lists$TransformingSequentialList;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/collect/Lists$TransformingSequentialList;-><init>(Ljava/util/List;Lcom/lewa/guava/base/Function;)V

    goto :goto_0
.end method
