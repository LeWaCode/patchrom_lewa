.class public final Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;
.super Lcom/lewa/guava/collect/ImmutableMap$Builder;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ImmutableMap$Builder",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
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
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableMap$Builder;-><init>()V

    .line 364
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    .line 365
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/lewa/guava/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 356
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->build()Lcom/lewa/guava/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/lewa/guava/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->entries:Ljava/util/List;

    iget-object v2, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Map$Entry;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 400
    .local v0, entryArray:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    #calls: Lcom/lewa/guava/collect/ImmutableSortedMap;->sortEntries([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    invoke-static {v0, v1}, Lcom/lewa/guava/collect/ImmutableSortedMap;->access$000([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    .line 401
    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    #calls: Lcom/lewa/guava/collect/ImmutableSortedMap;->validateEntries([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    invoke-static {v0, v1}, Lcom/lewa/guava/collect/ImmutableSortedMap;->access$100([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    .line 402
    new-instance v1, Lcom/lewa/guava/collect/ImmutableSortedMap;

    iget-object v2, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    invoke-direct {v1, v0, v2}, Lcom/lewa/guava/collect/ImmutableSortedMap;-><init>([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableMap$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 356
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/lewa/guava/collect/ImmutableSortedMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->entries:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/lewa/guava/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    return-object p0
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)Lcom/lewa/guava/collect/ImmutableMap$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 356
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->putAll(Ljava/util/Map;)Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lcom/lewa/guava/collect/ImmutableSortedMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;,"Lcom/lewa/guava/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 386
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSortedMap$Builder;

    goto :goto_0

    .line 388
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-object p0
.end method
