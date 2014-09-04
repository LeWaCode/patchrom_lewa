.class public abstract Lcom/lewa/guava/collect/ImmutableMap;
.super Ljava/lang/Object;
.source "ImmutableMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/ImmutableMap$SerializedForm;,
        Lcom/lewa/guava/collect/ImmutableMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 289
    .local p0, this:Lcom/lewa/guava/collect/ImmutableMap;,"Lcom/lewa/guava/collect/ImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/lewa/guava/collect/ImmutableMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/lewa/guava/collect/ImmutableMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Lcom/lewa/guava/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/lewa/guava/collect/ImmutableMap$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Ljava/util/Map;)Lcom/lewa/guava/collect/ImmutableMap;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lcom/lewa/guava/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    const/4 v7, 0x0

    .line 265
    instance-of v5, p0, Lcom/lewa/guava/collect/ImmutableMap;

    if-eqz v5, :cond_0

    instance-of v5, p0, Lcom/lewa/guava/collect/ImmutableSortedMap;

    if-nez v5, :cond_0

    move-object v3, p0

    .line 267
    check-cast v3, Lcom/lewa/guava/collect/ImmutableMap;

    .line 285
    :goto_0
    return-object v3

    .line 272
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    new-array v6, v7, [Ljava/util/Map$Entry;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 273
    .local v0, entries:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<TK;TV;>;"
    array-length v5, v0

    packed-switch v5, :pswitch_data_0

    .line 280
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 281
    aget-object v5, v0, v1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 282
    .local v2, k:Ljava/lang/Object;,"TK;"
    aget-object v5, v0, v1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 283
    .local v4, v:Ljava/lang/Object;,"TV;"
    invoke-static {v2, v4}, Lcom/lewa/guava/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    aput-object v5, v0, v1

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 275
    .end local v1           #i:I
    .end local v2           #k:Ljava/lang/Object;,"TK;"
    .end local v4           #v:Ljava/lang/Object;,"TV;"
    :pswitch_0
    invoke-static {}, Lcom/lewa/guava/collect/ImmutableMap;->of()Lcom/lewa/guava/collect/ImmutableMap;

    move-result-object v3

    goto :goto_0

    .line 277
    :pswitch_1
    new-instance v3, Lcom/lewa/guava/collect/SingletonImmutableMap;

    aget-object v5, v0, v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aget-object v6, v0, v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lewa/guava/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/lewa/guava/collect/SingletonImmutableMap;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_0

    .line 285
    .restart local v1       #i:I
    :cond_1
    new-instance v3, Lcom/lewa/guava/collect/RegularImmutableMap;

    invoke-direct {v3, v0}, Lcom/lewa/guava/collect/RegularImmutableMap;-><init>([Ljava/util/Map$Entry;)V

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, key:Ljava/lang/Object;,"TK;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lewa/guava/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public static of()Lcom/lewa/guava/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/lewa/guava/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 96
    sget-object v0, Lcom/lewa/guava/collect/EmptyImmutableMap;->INSTANCE:Lcom/lewa/guava/collect/EmptyImmutableMap;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableMap;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/lewa/guava/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, k1:Ljava/lang/Object;,"TK;"
    .local p1, v1:Ljava/lang/Object;,"TV;"
    new-instance v0, Lcom/lewa/guava/collect/SingletonImmutableMap;

    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lewa/guava/collect/SingletonImmutableMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableMap;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lcom/lewa/guava/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, k1:Ljava/lang/Object;,"TK;"
    .local p1, v1:Ljava/lang/Object;,"TV;"
    .local p2, k2:Ljava/lang/Object;,"TK;"
    .local p3, v2:Ljava/lang/Object;,"TV;"
    new-instance v0, Lcom/lewa/guava/collect/RegularImmutableMap;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/Map$Entry;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/lewa/guava/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lcom/lewa/guava/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/RegularImmutableMap;-><init>([Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableMap;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lcom/lewa/guava/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, k1:Ljava/lang/Object;,"TK;"
    .local p1, v1:Ljava/lang/Object;,"TV;"
    .local p2, k2:Ljava/lang/Object;,"TK;"
    .local p3, v2:Ljava/lang/Object;,"TV;"
    .local p4, k3:Ljava/lang/Object;,"TK;"
    .local p5, v3:Ljava/lang/Object;,"TV;"
    new-instance v0, Lcom/lewa/guava/collect/RegularImmutableMap;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/util/Map$Entry;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/lewa/guava/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lcom/lewa/guava/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lcom/lewa/guava/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/RegularImmutableMap;-><init>([Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableMap;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/lewa/guava/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, k1:Ljava/lang/Object;,"TK;"
    .local p1, v1:Ljava/lang/Object;,"TV;"
    .local p2, k2:Ljava/lang/Object;,"TK;"
    .local p3, v2:Ljava/lang/Object;,"TV;"
    .local p4, k3:Ljava/lang/Object;,"TK;"
    .local p5, v3:Ljava/lang/Object;,"TV;"
    .local p6, k4:Ljava/lang/Object;,"TK;"
    .local p7, v4:Ljava/lang/Object;,"TV;"
    new-instance v0, Lcom/lewa/guava/collect/RegularImmutableMap;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/util/Map$Entry;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/lewa/guava/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lcom/lewa/guava/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lcom/lewa/guava/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p6, p7}, Lcom/lewa/guava/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/RegularImmutableMap;-><init>([Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableMap;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/lewa/guava/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, k1:Ljava/lang/Object;,"TK;"
    .local p1, v1:Ljava/lang/Object;,"TV;"
    .local p2, k2:Ljava/lang/Object;,"TK;"
    .local p3, v2:Ljava/lang/Object;,"TV;"
    .local p4, k3:Ljava/lang/Object;,"TK;"
    .local p5, v3:Ljava/lang/Object;,"TV;"
    .local p6, k4:Ljava/lang/Object;,"TK;"
    .local p7, v4:Ljava/lang/Object;,"TV;"
    .local p8, k5:Ljava/lang/Object;,"TK;"
    .local p9, v5:Ljava/lang/Object;,"TV;"
    new-instance v0, Lcom/lewa/guava/collect/RegularImmutableMap;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/util/Map$Entry;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/lewa/guava/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lcom/lewa/guava/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lcom/lewa/guava/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p6, p7}, Lcom/lewa/guava/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p8, p9}, Lcom/lewa/guava/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/RegularImmutableMap;-><init>([Ljava/util/Map$Entry;)V

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 324
    .local p0, this:Lcom/lewa/guava/collect/ImmutableMap;,"Lcom/lewa/guava/collect/ImmutableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 332
    .local p0, this:Lcom/lewa/guava/collect/ImmutableMap;,"Lcom/lewa/guava/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract containsValue(Ljava/lang/Object;)Z
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract entrySet()Lcom/lewa/guava/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 84
    .local p0, this:Lcom/lewa/guava/collect/ImmutableMap;,"Lcom/lewa/guava/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableMap;->entrySet()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 360
    .local p0, this:Lcom/lewa/guava/collect/ImmutableMap;,"Lcom/lewa/guava/collect/ImmutableMap<TK;TV;>;"
    if-ne p1, p0, :cond_0

    .line 361
    const/4 v1, 0x1

    .line 367
    :goto_0
    return v1

    .line 363
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 364
    check-cast v0, Ljava/util/Map;

    .line 365
    .local v0, that:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableMap;->entrySet()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lewa/guava/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 367
    .end local v0           #that:Ljava/util/Map;,"Ljava/util/Map<**>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 373
    .local p0, this:Lcom/lewa/guava/collect/ImmutableMap;,"Lcom/lewa/guava/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableMap;->entrySet()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/collect/ImmutableSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 328
    .local p0, this:Lcom/lewa/guava/collect/ImmutableMap;,"Lcom/lewa/guava/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract keySet()Lcom/lewa/guava/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<TK;>;"
        }
    .end annotation
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 84
    .local p0, this:Lcom/lewa/guava/collect/ImmutableMap;,"Lcom/lewa/guava/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableMap;->keySet()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, this:Lcom/lewa/guava/collect/ImmutableMap;,"Lcom/lewa/guava/collect/ImmutableMap<TK;TV;>;"
    .local p1, k:Ljava/lang/Object;,"TK;"
    .local p2, v:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, this:Lcom/lewa/guava/collect/ImmutableMap;,"Lcom/lewa/guava/collect/ImmutableMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "o"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, this:Lcom/lewa/guava/collect/ImmutableMap;,"Lcom/lewa/guava/collect/ImmutableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 377
    .local p0, this:Lcom/lewa/guava/collect/ImmutableMap;,"Lcom/lewa/guava/collect/ImmutableMap<TK;TV;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableMap;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 378
    .local v0, result:Ljava/lang/StringBuilder;
    sget-object v1, Lcom/lewa/guava/collect/Maps;->standardJoiner:Lcom/lewa/guava/base/Joiner$MapJoiner;

    invoke-virtual {v1, v0, p0}, Lcom/lewa/guava/base/Joiner$MapJoiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 379
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract values()Lcom/lewa/guava/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 84
    .local p0, this:Lcom/lewa/guava/collect/ImmutableMap;,"Lcom/lewa/guava/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableMap;->values()Lcom/lewa/guava/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 414
    .local p0, this:Lcom/lewa/guava/collect/ImmutableMap;,"Lcom/lewa/guava/collect/ImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableMap$SerializedForm;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/ImmutableMap$SerializedForm;-><init>(Lcom/lewa/guava/collect/ImmutableMap;)V

    return-object v0
.end method
