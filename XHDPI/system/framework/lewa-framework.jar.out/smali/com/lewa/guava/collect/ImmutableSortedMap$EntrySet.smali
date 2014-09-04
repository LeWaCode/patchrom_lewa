.class Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet;
.super Lcom/lewa/guava/collect/ImmutableSet;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ImmutableSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final transient map:Lcom/lewa/guava/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/ImmutableSortedMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 496
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet;,"Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet<TK;TV;>;"
    .local p1, map:Lcom/lewa/guava/collect/ImmutableSortedMap;,"Lcom/lewa/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableSet;-><init>()V

    .line 497
    iput-object p1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet;->map:Lcom/lewa/guava/collect/ImmutableSortedMap;

    .line 498
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .parameter "target"

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet;,"Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet<TK;TV;>;"
    const/4 v2, 0x0

    .line 509
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 510
    check-cast v0, Ljava/util/Map$Entry;

    .line 511
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet;->map:Lcom/lewa/guava/collect/ImmutableSortedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lewa/guava/collect/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 512
    .local v1, mappedValue:Ljava/lang/Object;,"TV;"
    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 514
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    .end local v1           #mappedValue:Ljava/lang/Object;,"TV;"
    :cond_0
    return v2
.end method

.method public iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 505
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet;,"Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet;->map:Lcom/lewa/guava/collect/ImmutableSortedMap;

    #getter for: Lcom/lewa/guava/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;
    invoke-static {v0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->access$200(Lcom/lewa/guava/collect/ImmutableSortedMap;)[Ljava/util/Map$Entry;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet;->map:Lcom/lewa/guava/collect/ImmutableSortedMap;

    #getter for: Lcom/lewa/guava/collect/ImmutableSortedMap;->fromIndex:I
    invoke-static {v1}, Lcom/lewa/guava/collect/ImmutableSortedMap;->access$300(Lcom/lewa/guava/collect/ImmutableSortedMap;)I

    move-result v1

    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/lewa/guava/collect/Iterators;->forArray([Ljava/lang/Object;II)Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 492
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet;,"Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet;->iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 501
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet;,"Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet;->map:Lcom/lewa/guava/collect/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 518
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet;,"Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet<TK;TV;>;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySetSerializedForm;

    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySet;->map:Lcom/lewa/guava/collect/ImmutableSortedMap;

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/ImmutableSortedMap$EntrySetSerializedForm;-><init>(Lcom/lewa/guava/collect/ImmutableSortedMap;)V

    return-object v0
.end method
