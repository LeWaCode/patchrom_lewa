.class public abstract Lcom/lewa/guava/collect/ImmutableSet;
.super Lcom/lewa/guava/collect/ImmutableCollection;
.source "ImmutableSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/ImmutableSet$Builder;,
        Lcom/lewa/guava/collect/ImmutableSet$SerializedForm;,
        Lcom/lewa/guava/collect/ImmutableSet$TransformedImmutableSet;,
        Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ImmutableCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 249
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet<TE;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method public static builder()Lcom/lewa/guava/collect/ImmutableSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/lewa/guava/collect/ImmutableSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 477
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/lewa/guava/collect/ImmutableSet$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    instance-of v1, p0, Lcom/lewa/guava/collect/ImmutableSet;

    if-eqz v1, :cond_0

    instance-of v1, p0, Lcom/lewa/guava/collect/ImmutableSortedSet;

    if-nez v1, :cond_0

    move-object v0, p0

    .line 216
    check-cast v0, Lcom/lewa/guava/collect/ImmutableSet;

    .line 219
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/lewa/guava/collect/Collections2;->toCollection(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/lewa/guava/collect/ImmutableSet;->copyOfInternal(Ljava/util/Collection;)Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method public static copyOf(Ljava/util/Iterator;)Lcom/lewa/guava/collect/ImmutableSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, elements:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    invoke-static {p0}, Lcom/lewa/guava/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 231
    .local v0, list:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    invoke-static {v0}, Lcom/lewa/guava/collect/ImmutableSet;->copyOfInternal(Ljava/util/Collection;)Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v1

    return-object v1
.end method

.method private static copyOfInternal(Ljava/util/Collection;)Lcom/lewa/guava/collect/ImmutableSet;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 245
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {p0, v0}, Lcom/lewa/guava/collect/ImmutableSet;->create(Ljava/lang/Iterable;I)Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 240
    :pswitch_0
    invoke-static {}, Lcom/lewa/guava/collect/ImmutableSet;->of()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 243
    :pswitch_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static create(Ljava/lang/Iterable;I)Lcom/lewa/guava/collect/ImmutableSet;
    .locals 13
    .parameter
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;I)",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    invoke-static {p1}, Lcom/lewa/guava/collect/Hashing;->chooseTableSize(I)I

    move-result v9

    .line 289
    .local v9, tableSize:I
    new-array v8, v9, [Ljava/lang/Object;

    .line 290
    .local v8, table:[Ljava/lang/Object;
    add-int/lit8 v7, v9, -0x1

    .line 292
    .local v7, mask:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    .local v1, elements:Ljava/util/List;,"Ljava/util/List<TE;>;"
    const/4 v3, 0x0

    .line 295
    .local v3, hashCode:I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 296
    .local v0, element:Ljava/lang/Object;,"TE;"
    invoke-static {v0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 298
    .local v2, hash:I
    invoke-static {v2}, Lcom/lewa/guava/collect/Hashing;->smear(I)I

    move-result v4

    .line 299
    .local v4, i:I
    :goto_1
    and-int v6, v4, v7

    .line 300
    .local v6, index:I
    aget-object v10, v8, v6

    .line 301
    .local v10, value:Ljava/lang/Object;
    if-nez v10, :cond_1

    .line 303
    aput-object v0, v8, v6

    .line 304
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    add-int/2addr v3, v2

    .line 306
    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 298
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 313
    .end local v0           #element:Ljava/lang/Object;,"TE;"
    .end local v2           #hash:I
    .end local v4           #i:I
    .end local v6           #index:I
    .end local v10           #value:Ljava/lang/Object;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 315
    new-instance v11, Lcom/lewa/guava/collect/SingletonImmutableSet;

    const/4 v12, 0x0

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v11, v12, v3}, Lcom/lewa/guava/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;I)V

    .line 320
    :goto_2
    return-object v11

    .line 316
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Lcom/lewa/guava/collect/Hashing;->chooseTableSize(I)I

    move-result v11

    if-le v9, v11, :cond_4

    .line 318
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v1, v11}, Lcom/lewa/guava/collect/ImmutableSet;->create(Ljava/lang/Iterable;I)Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v11

    goto :goto_2

    .line 320
    :cond_4
    new-instance v11, Lcom/lewa/guava/collect/RegularImmutableSet;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v11, v12, v3, v8, v7}, Lcom/lewa/guava/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    goto :goto_2
.end method

.method private static varargs create([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, elements:[Ljava/lang/Object;,"[TE;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    array-length v1, p0

    invoke-static {v0, v1}, Lcom/lewa/guava/collect/ImmutableSet;->create(Ljava/lang/Iterable;I)Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static of()Lcom/lewa/guava/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 111
    sget-object v0, Lcom/lewa/guava/collect/EmptyImmutableSet;->INSTANCE:Lcom/lewa/guava/collect/EmptyImmutableSet;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, element:Ljava/lang/Object;,"TE;"
    new-instance v0, Lcom/lewa/guava/collect/SingletonImmutableSet;

    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/lewa/guava/collect/ImmutableSet;->create([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/lewa/guava/collect/ImmutableSet;->create([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    .local p3, e4:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/lewa/guava/collect/ImmutableSet;->create([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, e1:Ljava/lang/Object;,"TE;"
    .local p1, e2:Ljava/lang/Object;,"TE;"
    .local p2, e3:Ljava/lang/Object;,"TE;"
    .local p3, e4:Ljava/lang/Object;,"TE;"
    .local p4, e5:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Lcom/lewa/guava/collect/ImmutableSet;->create([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, elements:[Ljava/lang/Object;,"[TE;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 189
    invoke-static {p0}, Lcom/lewa/guava/collect/ImmutableSet;->create([Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 185
    :pswitch_0
    invoke-static {}, Lcom/lewa/guava/collect/ImmutableSet;->of()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 187
    :pswitch_1
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/lewa/guava/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 257
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet<TE;>;"
    if-ne p1, p0, :cond_0

    .line 258
    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    .line 260
    :cond_0
    instance-of v0, p1, Lcom/lewa/guava/collect/ImmutableSet;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/lewa/guava/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/lewa/guava/collect/ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSet;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 264
    const/4 v0, 0x0

    goto :goto_0

    .line 266
    :cond_1
    invoke-static {p0, p1}, Lcom/lewa/guava/collect/Collections2;->setEquals(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 270
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet<TE;>;"
    const/4 v0, 0x0

    .line 271
    .local v0, hashCode:I
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 272
    .local v2, o:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 274
    .end local v2           #o:Ljava/lang/Object;
    :cond_0
    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .prologue
    .line 253
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet<TE;>;"
    const/4 v0, 0x0

    return v0
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
    .line 98
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSet;->iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 469
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet<TE;>;"
    new-instance v0, Lcom/lewa/guava/collect/ImmutableSet$SerializedForm;

    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/ImmutableSet$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
