.class public abstract Lcom/lewa/guava/collect/ImmutableCollection;
.super Ljava/lang/Object;
.source "ImmutableCollection.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/ImmutableCollection$1;,
        Lcom/lewa/guava/collect/ImmutableCollection$Builder;,
        Lcom/lewa/guava/collect/ImmutableCollection$SerializedForm;,
        Lcom/lewa/guava/collect/ImmutableCollection$ArrayImmutableCollection;,
        Lcom/lewa/guava/collect/ImmutableCollection$EmptyImmutableCollection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final EMPTY_IMMUTABLE_COLLECTION:Lcom/lewa/guava/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/ImmutableCollection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient asList:Lcom/lewa/guava/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/lewa/guava/collect/ImmutableCollection$EmptyImmutableCollection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/ImmutableCollection$EmptyImmutableCollection;-><init>(Lcom/lewa/guava/collect/ImmutableCollection$1;)V

    sput-object v0, Lcom/lewa/guava/collect/ImmutableCollection;->EMPTY_IMMUTABLE_COLLECTION:Lcom/lewa/guava/collect/ImmutableCollection;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    .local p0, this:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, this:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, this:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TE;>;"
    .local p1, newElements:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public asList()Lcom/lewa/guava/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, this:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableCollection;->asList:Lcom/lewa/guava/collect/ImmutableList;

    .line 206
    .local v0, list:Lcom/lewa/guava/collect/ImmutableList;,"Lcom/lewa/guava/collect/ImmutableList<TE;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableCollection;->createAsList()Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    .end local v0           #list:Lcom/lewa/guava/collect/ImmutableList;,"Lcom/lewa/guava/collect/ImmutableList<TE;>;"
    iput-object v0, p0, Lcom/lewa/guava/collect/ImmutableCollection;->asList:Lcom/lewa/guava/collect/ImmutableList;

    :cond_0
    return-object v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 192
    .local p0, this:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TE;>;"
    const/4 v2, 0x0

    .line 111
    if-nez p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v2

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 115
    .local v0, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, this:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TE;>;"
    .local p1, targets:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 124
    .local v1, target:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/lewa/guava/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    const/4 v2, 0x0

    .line 128
    .end local v1           #target:Ljava/lang/Object;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method createAsList()Lcom/lewa/guava/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, this:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableCollection;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 216
    new-instance v0, Lcom/lewa/guava/collect/ImmutableAsList;

    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/lewa/guava/collect/ImmutableAsList;-><init>([Ljava/lang/Object;Lcom/lewa/guava/collect/ImmutableCollection;)V

    :goto_0
    return-object v0

    .line 212
    :pswitch_0
    invoke-static {}, Lcom/lewa/guava/collect/ImmutableList;->of()Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 214
    :pswitch_1
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableCollection;->iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 132
    .local p0, this:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableCollection;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 74
    .local p0, this:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableCollection;->iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 156
    .local p0, this:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
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
    .line 174
    .local p0, this:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TE;>;"
    .local p1, oldElements:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
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
    .line 183
    .local p0, this:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TE;>;"
    .local p1, elementsToKeep:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 89
    .local p0, this:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableCollection;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 90
    .local v0, newArray:[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/lewa/guava/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, this:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TE;>;"
    .local p1, other:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableCollection;->size()I

    move-result v5

    .line 95
    .local v5, size:I
    array-length v6, p1

    if-ge v6, v5, :cond_1

    .line 96
    invoke-static {p1, v5}, Lcom/lewa/guava/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 102
    :cond_0
    :goto_0
    move-object v4, p1

    .line 103
    .local v4, otherAsObjectArray:[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 104
    .local v2, index:I
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 105
    .local v0, element:Ljava/lang/Object;,"TE;"
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    aput-object v0, v4, v2

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_1

    .line 97
    .end local v0           #element:Ljava/lang/Object;,"TE;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #index:I
    .end local v4           #otherAsObjectArray:[Ljava/lang/Object;
    :cond_1
    array-length v6, p1

    if-le v6, v5, :cond_0

    .line 98
    const/4 v6, 0x0

    aput-object v6, p1, v5

    goto :goto_0

    .line 107
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #index:I
    .restart local v4       #otherAsObjectArray:[Ljava/lang/Object;
    :cond_2
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    .local p0, this:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TE;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableCollection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    .local v0, sb:Ljava/lang/StringBuilder;
    sget-object v1, Lcom/lewa/guava/collect/Collections2;->standardJoiner:Lcom/lewa/guava/base/Joiner;

    invoke-virtual {v1, v0, p0}, Lcom/lewa/guava/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 138
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 291
    .local p0, this:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TE;>;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableCollection$SerializedForm;

    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/ImmutableCollection$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
