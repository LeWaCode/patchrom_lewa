.class Lcom/lewa/guava/collect/ImmutableMap$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final keys:[Ljava/lang/Object;

.field private final values:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/ImmutableMap;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/ImmutableMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p1, map:Lcom/lewa/guava/collect/ImmutableMap;,"Lcom/lewa/guava/collect/ImmutableMap<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    invoke-virtual {p1}, Lcom/lewa/guava/collect/ImmutableMap;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/lewa/guava/collect/ImmutableMap$SerializedForm;->keys:[Ljava/lang/Object;

    .line 392
    invoke-virtual {p1}, Lcom/lewa/guava/collect/ImmutableMap;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/lewa/guava/collect/ImmutableMap$SerializedForm;->values:[Ljava/lang/Object;

    .line 393
    const/4 v1, 0x0

    .line 394
    .local v1, i:I
    invoke-virtual {p1}, Lcom/lewa/guava/collect/ImmutableMap;->entrySet()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lewa/guava/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 395
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lcom/lewa/guava/collect/ImmutableMap$SerializedForm;->keys:[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    .line 396
    iget-object v3, p0, Lcom/lewa/guava/collect/ImmutableMap$SerializedForm;->values:[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 399
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    :cond_0
    return-void
.end method


# virtual methods
.method createMap(Lcom/lewa/guava/collect/ImmutableMap$Builder;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/ImmutableMap$Builder",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, builder:Lcom/lewa/guava/collect/ImmutableMap$Builder;,"Lcom/lewa/guava/collect/ImmutableMap$Builder<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableMap$SerializedForm;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableMap$SerializedForm;->keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/lewa/guava/collect/ImmutableMap$SerializedForm;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/lewa/guava/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableMap$Builder;

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {p1}, Lcom/lewa/guava/collect/ImmutableMap$Builder;->build()Lcom/lewa/guava/collect/ImmutableMap;

    move-result-object v1

    return-object v1
.end method

.method readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 401
    new-instance v0, Lcom/lewa/guava/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/lewa/guava/collect/ImmutableMap$Builder;-><init>()V

    .line 402
    .local v0, builder:Lcom/lewa/guava/collect/ImmutableMap$Builder;,"Lcom/lewa/guava/collect/ImmutableMap$Builder<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lcom/lewa/guava/collect/ImmutableMap$SerializedForm;->createMap(Lcom/lewa/guava/collect/ImmutableMap$Builder;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
