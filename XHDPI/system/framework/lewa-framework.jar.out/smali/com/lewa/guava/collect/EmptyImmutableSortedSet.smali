.class Lcom/lewa/guava/collect/EmptyImmutableSortedSet;
.super Lcom/lewa/guava/collect/ImmutableSortedSet;
.source "EmptyImmutableSortedSet.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ImmutableSortedSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/lewa/guava/collect/EmptyImmutableSortedSet;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lcom/lewa/guava/collect/EmptyImmutableSortedSet;,"Lcom/lewa/guava/collect/EmptyImmutableSortedSet<TE;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 70
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 81
    .local p0, this:Lcom/lewa/guava/collect/EmptyImmutableSortedSet;,"Lcom/lewa/guava/collect/EmptyImmutableSortedSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, this:Lcom/lewa/guava/collect/EmptyImmutableSortedSet;,"Lcom/lewa/guava/collect/EmptyImmutableSortedSet<TE;>;"
    .local p1, targets:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 106
    .local p0, this:Lcom/lewa/guava/collect/EmptyImmutableSortedSet;,"Lcom/lewa/guava/collect/EmptyImmutableSortedSet<TE;>;"
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 107
    check-cast v0, Ljava/util/Set;

    .line 108
    .local v0, that:Ljava/util/Set;,"Ljava/util/Set<*>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    .line 110
    .end local v0           #that:Ljava/util/Set;,"Ljava/util/Set<*>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, this:Lcom/lewa/guava/collect/EmptyImmutableSortedSet;,"Lcom/lewa/guava/collect/EmptyImmutableSortedSet<TE;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method hasPartialArray()Z
    .locals 1

    .prologue
    .line 142
    .local p0, this:Lcom/lewa/guava/collect/EmptyImmutableSortedSet;,"Lcom/lewa/guava/collect/EmptyImmutableSortedSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 114
    .local p0, this:Lcom/lewa/guava/collect/EmptyImmutableSortedSet;,"Lcom/lewa/guava/collect/EmptyImmutableSortedSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method headSetImpl(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, this:Lcom/lewa/guava/collect/EmptyImmutableSortedSet;,"Lcom/lewa/guava/collect/EmptyImmutableSortedSet<TE;>;"
    .local p1, toElement:Ljava/lang/Object;,"TE;"
    return-object p0
.end method

.method indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "target"

    .prologue
    .line 146
    .local p0, this:Lcom/lewa/guava/collect/EmptyImmutableSortedSet;,"Lcom/lewa/guava/collect/EmptyImmutableSortedSet<TE;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 77
    .local p0, this:Lcom/lewa/guava/collect/EmptyImmutableSortedSet;,"Lcom/lewa/guava/collect/EmptyImmutableSortedSet<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Lcom/lewa/guava/collect/EmptyImmutableSortedSet;,"Lcom/lewa/guava/collect/EmptyImmutableSortedSet<TE;>;"
    invoke-static {}, Lcom/lewa/guava/collect/Iterators;->emptyIterator()Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 65
    .local p0, this:Lcom/lewa/guava/collect/EmptyImmutableSortedSet;,"Lcom/lewa/guava/collect/EmptyImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/EmptyImmutableSortedSet;->iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, this:Lcom/lewa/guava/collect/EmptyImmutableSortedSet;,"Lcom/lewa/guava/collect/EmptyImmutableSortedSet<TE;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 73
    .local p0, this:Lcom/lewa/guava/collect/EmptyImmutableSortedSet;,"Lcom/lewa/guava/collect/EmptyImmutableSortedSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method subSetImpl(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, this:Lcom/lewa/guava/collect/EmptyImmutableSortedSet;,"Lcom/lewa/guava/collect/EmptyImmutableSortedSet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    .local p2, toElement:Ljava/lang/Object;,"TE;"
    return-object p0
.end method

.method tailSetImpl(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedSet;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/lewa/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, this:Lcom/lewa/guava/collect/EmptyImmutableSortedSet;,"Lcom/lewa/guava/collect/EmptyImmutableSortedSet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    return-object p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    .local p0, this:Lcom/lewa/guava/collect/EmptyImmutableSortedSet;,"Lcom/lewa/guava/collect/EmptyImmutableSortedSet<TE;>;"
    sget-object v0, Lcom/lewa/guava/collect/EmptyImmutableSortedSet;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, this:Lcom/lewa/guava/collect/EmptyImmutableSortedSet;,"Lcom/lewa/guava/collect/EmptyImmutableSortedSet<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    array-length v0, p1

    if-lez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 98
    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    .local p0, this:Lcom/lewa/guava/collect/EmptyImmutableSortedSet;,"Lcom/lewa/guava/collect/EmptyImmutableSortedSet<TE;>;"
    const-string v0, "[]"

    return-object v0
.end method
