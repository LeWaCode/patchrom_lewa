.class final Lcom/lewa/guava/collect/RegularImmutableMap;
.super Lcom/lewa/guava/collect/ImmutableMap;
.source "RegularImmutableMap.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/RegularImmutableMap$Values;,
        Lcom/lewa/guava/collect/RegularImmutableMap$KeySet;,
        Lcom/lewa/guava/collect/RegularImmutableMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ImmutableMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient entries:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Lcom/lewa/guava/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Lcom/lewa/guava/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final transient keySetHashCode:I

.field private final transient mask:I

.field private final transient table:[Ljava/lang/Object;

.field private transient values:Lcom/lewa/guava/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>([Ljava/util/Map$Entry;)V
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableMap;,"Lcom/lewa/guava/collect/RegularImmutableMap<TK;TV;>;"
    .local p1, immutableEntries:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<**>;"
    invoke-direct/range {p0 .. p0}, Lcom/lewa/guava/collect/ImmutableMap;-><init>()V

    .line 76
    invoke-static/range {p1 .. p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/util/Map$Entry;

    move-object v12, v14

    check-cast v12, [Ljava/util/Map$Entry;

    .line 77
    .local v12, tmp:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<TK;TV;>;"
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lewa/guava/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    .line 79
    move-object/from16 v0, p1

    array-length v14, v0

    invoke-static {v14}, Lcom/lewa/guava/collect/Hashing;->chooseTableSize(I)I

    move-result v11

    .line 80
    .local v11, tableSize:I
    mul-int/lit8 v14, v11, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lewa/guava/collect/RegularImmutableMap;->table:[Ljava/lang/Object;

    .line 81
    add-int/lit8 v14, v11, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/lewa/guava/collect/RegularImmutableMap;->mask:I

    .line 83
    const/4 v9, 0x0

    .line 84
    .local v9, keySetHashCodeMutable:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lewa/guava/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    .local v1, arr$:[Ljava/util/Map$Entry;
    array-length v10, v1

    .local v10, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v10, :cond_2

    aget-object v2, v1, v5

    .line 85
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-static {v2}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 87
    .local v7, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v8

    .line 88
    .local v8, keyHashCode:I
    invoke-static {v8}, Lcom/lewa/guava/collect/Hashing;->smear(I)I

    move-result v4

    .line 89
    .local v4, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lewa/guava/collect/RegularImmutableMap;->mask:I

    and-int/2addr v14, v4

    mul-int/lit8 v6, v14, 0x2

    .line 90
    .local v6, index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lewa/guava/collect/RegularImmutableMap;->table:[Ljava/lang/Object;

    aget-object v3, v14, v6

    .line 91
    .local v3, existing:Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 92
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 93
    .local v13, value:Ljava/lang/Object;,"TV;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lewa/guava/collect/RegularImmutableMap;->table:[Ljava/lang/Object;

    aput-object v7, v14, v6

    .line 94
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lewa/guava/collect/RegularImmutableMap;->table:[Ljava/lang/Object;

    add-int/lit8 v15, v6, 0x1

    aput-object v13, v14, v15

    .line 95
    add-int/2addr v9, v8

    .line 84
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 97
    .end local v13           #value:Ljava/lang/Object;,"TV;"
    :cond_0
    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 98
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "duplicate key: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 88
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 102
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3           #existing:Ljava/lang/Object;
    .end local v4           #i:I
    .end local v6           #index:I
    .end local v7           #key:Ljava/lang/Object;,"TK;"
    .end local v8           #keyHashCode:I
    :cond_2
    move-object/from16 v0, p0

    iput v9, v0, Lcom/lewa/guava/collect/RegularImmutableMap;->keySetHashCode:I

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/lewa/guava/collect/RegularImmutableMap;)[Ljava/util/Map$Entry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lewa/guava/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lewa/guava/collect/RegularImmutableMap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/lewa/guava/collect/RegularImmutableMap;->keySetHashCode:I

    return v0
.end method


# virtual methods
.method public containsValue(Ljava/lang/Object;)Z
    .locals 6
    .parameter "value"

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableMap;,"Lcom/lewa/guava/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 133
    if-nez p1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v4

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/lewa/guava/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    .local v0, arr$:[Ljava/util/Map$Entry;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 137
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 138
    const/4 v4, 0x1

    goto :goto_0

    .line 136
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public entrySet()Lcom/lewa/guava/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableMap;,"Lcom/lewa/guava/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/RegularImmutableMap;->entrySet:Lcom/lewa/guava/collect/ImmutableSet;

    .line 153
    .local v0, es:Lcom/lewa/guava/collect/ImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/lewa/guava/collect/RegularImmutableMap$EntrySet;

    .end local v0           #es:Lcom/lewa/guava/collect/ImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/RegularImmutableMap$EntrySet;-><init>(Lcom/lewa/guava/collect/RegularImmutableMap;)V

    iput-object v0, p0, Lcom/lewa/guava/collect/RegularImmutableMap;->entrySet:Lcom/lewa/guava/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 63
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableMap;,"Lcom/lewa/guava/collect/RegularImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/RegularImmutableMap;->entrySet()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableMap;,"Lcom/lewa/guava/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 106
    if-nez p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-object v3

    .line 109
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Lcom/lewa/guava/collect/Hashing;->smear(I)I

    move-result v1

    .line 110
    .local v1, i:I
    :goto_1
    iget v4, p0, Lcom/lewa/guava/collect/RegularImmutableMap;->mask:I

    and-int/2addr v4, v1

    mul-int/lit8 v2, v4, 0x2

    .line 111
    .local v2, index:I
    iget-object v4, p0, Lcom/lewa/guava/collect/RegularImmutableMap;->table:[Ljava/lang/Object;

    aget-object v0, v4, v2

    .line 112
    .local v0, candidate:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 118
    iget-object v4, p0, Lcom/lewa/guava/collect/RegularImmutableMap;->table:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    aget-object v3, v4, v5

    .line 119
    .local v3, value:Ljava/lang/Object;,"TV;"
    goto :goto_0

    .line 109
    .end local v3           #value:Ljava/lang/Object;,"TV;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 129
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableMap;,"Lcom/lewa/guava/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public keySet()Lcom/lewa/guava/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableMap;,"Lcom/lewa/guava/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/RegularImmutableMap;->keySet:Lcom/lewa/guava/collect/ImmutableSet;

    .line 179
    .local v0, ks:Lcom/lewa/guava/collect/ImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet<TK;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/lewa/guava/collect/RegularImmutableMap$KeySet;

    .end local v0           #ks:Lcom/lewa/guava/collect/ImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet<TK;>;"
    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/RegularImmutableMap$KeySet;-><init>(Lcom/lewa/guava/collect/RegularImmutableMap;)V

    iput-object v0, p0, Lcom/lewa/guava/collect/RegularImmutableMap;->keySet:Lcom/lewa/guava/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 63
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableMap;,"Lcom/lewa/guava/collect/RegularImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/RegularImmutableMap;->keySet()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 125
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableMap;,"Lcom/lewa/guava/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 237
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableMap;,"Lcom/lewa/guava/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lewa/guava/collect/RegularImmutableMap;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    .local v0, result:Ljava/lang/StringBuilder;
    sget-object v1, Lcom/lewa/guava/collect/Collections2;->standardJoiner:Lcom/lewa/guava/base/Joiner;

    iget-object v2, p0, Lcom/lewa/guava/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    invoke-virtual {v1, v0, v2}, Lcom/lewa/guava/base/Joiner;->appendTo(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public values()Lcom/lewa/guava/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableMap;,"Lcom/lewa/guava/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/RegularImmutableMap;->values:Lcom/lewa/guava/collect/ImmutableCollection;

    .line 205
    .local v0, v:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TV;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/lewa/guava/collect/RegularImmutableMap$Values;

    .end local v0           #v:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TV;>;"
    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/RegularImmutableMap$Values;-><init>(Lcom/lewa/guava/collect/RegularImmutableMap;)V

    iput-object v0, p0, Lcom/lewa/guava/collect/RegularImmutableMap;->values:Lcom/lewa/guava/collect/ImmutableCollection;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 63
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableMap;,"Lcom/lewa/guava/collect/RegularImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/RegularImmutableMap;->values()Lcom/lewa/guava/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
