.class final Lcom/lewa/guava/collect/EmptyImmutableSet;
.super Lcom/lewa/guava/collect/ImmutableSet;
.source "EmptyImmutableSet.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/ImmutableSet",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;

.field static final INSTANCE:Lcom/lewa/guava/collect/EmptyImmutableSet;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/lewa/guava/collect/EmptyImmutableSet;

    invoke-direct {v0}, Lcom/lewa/guava/collect/EmptyImmutableSet;-><init>()V

    sput-object v0, Lcom/lewa/guava/collect/EmptyImmutableSet;->INSTANCE:Lcom/lewa/guava/collect/EmptyImmutableSet;

    .line 85
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/lewa/guava/collect/EmptyImmutableSet;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 78
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
    .line 99
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
    .line 103
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 104
    check-cast v0, Ljava/util/Set;

    .line 105
    .local v0, that:Ljava/util/Set;,"Ljava/util/Set<*>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    .line 107
    .end local v0           #that:Ljava/util/Set;,"Ljava/util/Set<*>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/UnmodifiableIterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Lcom/lewa/guava/collect/Iterators;->emptyIterator()Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/lewa/guava/collect/EmptyImmutableSet;->iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/lewa/guava/collect/EmptyImmutableSet;->INSTANCE:Lcom/lewa/guava/collect/EmptyImmutableSet;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/lewa/guava/collect/EmptyImmutableSet;->EMPTY_ARRAY:[Ljava/lang/Object;

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
    .line 92
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    array-length v0, p1

    if-lez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 95
    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "[]"

    return-object v0
.end method
