.class final Lcom/lewa/guava/collect/ImmutableEnumSet;
.super Lcom/lewa/guava/collect/ImmutableSet;
.source "ImmutableEnumSet.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/ImmutableEnumSet$EnumSerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ImmutableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient delegate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient hashCode:I


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Lcom/lewa/guava/collect/ImmutableEnumSet;,"Lcom/lewa/guava/collect/ImmutableEnumSet<TE;>;"
    .local p1, delegate:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableSet;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/lewa/guava/collect/ImmutableEnumSet;->delegate:Ljava/util/Set;

    .line 87
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 98
    .local p0, this:Lcom/lewa/guava/collect/ImmutableEnumSet;,"Lcom/lewa/guava/collect/ImmutableEnumSet<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableEnumSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

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
    .local p0, this:Lcom/lewa/guava/collect/ImmutableEnumSet;,"Lcom/lewa/guava/collect/ImmutableEnumSet<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableEnumSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 118
    .local p0, this:Lcom/lewa/guava/collect/ImmutableEnumSet;,"Lcom/lewa/guava/collect/ImmutableEnumSet<TE;>;"
    if-eq p1, p0, :cond_0

    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableEnumSet;->delegate:Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 124
    .local p0, this:Lcom/lewa/guava/collect/ImmutableEnumSet;,"Lcom/lewa/guava/collect/ImmutableEnumSet<TE;>;"
    iget v0, p0, Lcom/lewa/guava/collect/ImmutableEnumSet;->hashCode:I

    .line 125
    .local v0, result:I
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableEnumSet;->delegate:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .end local v0           #result:I
    iput v0, p0, Lcom/lewa/guava/collect/ImmutableEnumSet;->hashCode:I

    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 106
    .local p0, this:Lcom/lewa/guava/collect/ImmutableEnumSet;,"Lcom/lewa/guava/collect/ImmutableEnumSet<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableEnumSet;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

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
    .line 90
    .local p0, this:Lcom/lewa/guava/collect/ImmutableEnumSet;,"Lcom/lewa/guava/collect/ImmutableEnumSet<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableEnumSet;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 64
    .local p0, this:Lcom/lewa/guava/collect/ImmutableEnumSet;,"Lcom/lewa/guava/collect/ImmutableEnumSet<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableEnumSet;->iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 94
    .local p0, this:Lcom/lewa/guava/collect/ImmutableEnumSet;,"Lcom/lewa/guava/collect/ImmutableEnumSet<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableEnumSet;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    .local p0, this:Lcom/lewa/guava/collect/ImmutableEnumSet;,"Lcom/lewa/guava/collect/ImmutableEnumSet<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableEnumSet;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, this:Lcom/lewa/guava/collect/ImmutableEnumSet;,"Lcom/lewa/guava/collect/ImmutableEnumSet<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableEnumSet;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    .local p0, this:Lcom/lewa/guava/collect/ImmutableEnumSet;,"Lcom/lewa/guava/collect/ImmutableEnumSet<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableEnumSet;->delegate:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 135
    .local p0, this:Lcom/lewa/guava/collect/ImmutableEnumSet;,"Lcom/lewa/guava/collect/ImmutableEnumSet<TE;>;"
    new-instance v1, Lcom/lewa/guava/collect/ImmutableEnumSet$EnumSerializedForm;

    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableEnumSet;->delegate:Ljava/util/Set;

    check-cast v0, Ljava/util/EnumSet;

    invoke-direct {v1, v0}, Lcom/lewa/guava/collect/ImmutableEnumSet$EnumSerializedForm;-><init>(Ljava/util/EnumSet;)V

    return-object v1
.end method
