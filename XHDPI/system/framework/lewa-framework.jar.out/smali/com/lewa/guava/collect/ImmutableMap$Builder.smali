.class public Lcom/lewa/guava/collect/ImmutableMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 199
    .local p0, this:Lcom/lewa/guava/collect/ImmutableMap$Builder;,"Lcom/lewa/guava/collect/ImmutableMap$Builder<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-static {}, Lcom/lewa/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/ImmutableMap$Builder;->entries:Ljava/util/List;

    .line 199
    return-void
.end method

.method private static fromEntryList(Ljava/util/List;)Lcom/lewa/guava/collect/ImmutableMap;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lcom/lewa/guava/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, entries:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 238
    .local v1, size:I
    packed-switch v1, :pswitch_data_0

    .line 244
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Map$Entry;

    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 246
    .local v0, entryArray:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<**>;"
    new-instance v2, Lcom/lewa/guava/collect/RegularImmutableMap;

    invoke-direct {v2, v0}, Lcom/lewa/guava/collect/RegularImmutableMap;-><init>([Ljava/util/Map$Entry;)V

    .end local v0           #entryArray:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<**>;"
    :goto_0
    return-object v2

    .line 240
    :pswitch_0
    invoke-static {}, Lcom/lewa/guava/collect/ImmutableMap;->of()Lcom/lewa/guava/collect/ImmutableMap;

    move-result-object v2

    goto :goto_0

    .line 242
    :pswitch_1
    new-instance v3, Lcom/lewa/guava/collect/SingletonImmutableMap;

    invoke-static {p0}, Lcom/lewa/guava/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v3, v2}, Lcom/lewa/guava/collect/SingletonImmutableMap;-><init>(Ljava/util/Map$Entry;)V

    move-object v2, v3

    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public build()Lcom/lewa/guava/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, this:Lcom/lewa/guava/collect/ImmutableMap$Builder;,"Lcom/lewa/guava/collect/ImmutableMap$Builder<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableMap$Builder;->entries:Ljava/util/List;

    invoke-static {v0}, Lcom/lewa/guava/collect/ImmutableMap$Builder;->fromEntryList(Ljava/util/List;)Lcom/lewa/guava/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableMap$Builder;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/lewa/guava/collect/ImmutableMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, this:Lcom/lewa/guava/collect/ImmutableMap$Builder;,"Lcom/lewa/guava/collect/ImmutableMap$Builder<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableMap$Builder;->entries:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/lewa/guava/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lcom/lewa/guava/collect/ImmutableMap$Builder;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lcom/lewa/guava/collect/ImmutableMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, this:Lcom/lewa/guava/collect/ImmutableMap$Builder;,"Lcom/lewa/guava/collect/ImmutableMap$Builder<TK;TV;>;"
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

    .line 218
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/lewa/guava/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 220
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-object p0
.end method
