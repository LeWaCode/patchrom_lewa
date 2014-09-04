.class public final Lcom/lewa/gson/internal/StringMap;
.super Ljava/util/AbstractMap;
.source "StringMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/gson/internal/StringMap$1;,
        Lcom/lewa/gson/internal/StringMap$EntrySet;,
        Lcom/lewa/gson/internal/StringMap$Values;,
        Lcom/lewa/gson/internal/StringMap$KeySet;,
        Lcom/lewa/gson/internal/StringMap$LinkedHashIterator;,
        Lcom/lewa/gson/internal/StringMap$LinkedEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_TABLE:[Ljava/util/Map$Entry; = null

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final MINIMUM_CAPACITY:I = 0x4

.field private static final seed:I


# instance fields
.field private entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private header:Lcom/lewa/gson/internal/StringMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/gson/internal/StringMap$LinkedEntry",
            "<TV;>;"
        }
    .end annotation
.end field

.field private keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private size:I

.field private table:[Lcom/lewa/gson/internal/StringMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/lewa/gson/internal/StringMap$LinkedEntry",
            "<TV;>;"
        }
    .end annotation
.end field

.field private threshold:I

.field private values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    sput-object v0, Lcom/lewa/gson/internal/StringMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    .line 485
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    sput v0, Lcom/lewa/gson/internal/StringMap;->seed:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    .local p0, this:Lcom/lewa/gson/internal/StringMap;,"Lcom/lewa/gson/internal/StringMap<TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 92
    sget-object v0, Lcom/lewa/gson/internal/StringMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    check-cast v0, [Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    check-cast v0, [Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    iput-object v0, p0, Lcom/lewa/gson/internal/StringMap;->table:[Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/lewa/gson/internal/StringMap;->threshold:I

    .line 94
    new-instance v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    invoke-direct {v0}, Lcom/lewa/gson/internal/StringMap$LinkedEntry;-><init>()V

    iput-object v0, p0, Lcom/lewa/gson/internal/StringMap;->header:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .line 95
    return-void
.end method

.method static synthetic access$300(Lcom/lewa/gson/internal/StringMap;)Lcom/lewa/gson/internal/StringMap$LinkedEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lewa/gson/internal/StringMap;->header:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lewa/gson/internal/StringMap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/lewa/gson/internal/StringMap;->size:I

    return v0
.end method

.method static synthetic access$600(Lcom/lewa/gson/internal/StringMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/lewa/gson/internal/StringMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private addNewEntry(Ljava/lang/String;Ljava/lang/Object;II)V
    .locals 7
    .parameter "key"
    .parameter
    .parameter "hash"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;II)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, this:Lcom/lewa/gson/internal/StringMap;,"Lcom/lewa/gson/internal/StringMap<TV;>;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v5, p0, Lcom/lewa/gson/internal/StringMap;->header:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .line 159
    .local v5, header:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    iget-object v6, v5, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->prv:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .line 160
    .local v6, oldTail:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    new-instance v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    iget-object v1, p0, Lcom/lewa/gson/internal/StringMap;->table:[Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    aget-object v4, v1, p4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/lewa/gson/internal/StringMap$LinkedEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;ILcom/lewa/gson/internal/StringMap$LinkedEntry;Lcom/lewa/gson/internal/StringMap$LinkedEntry;Lcom/lewa/gson/internal/StringMap$LinkedEntry;)V

    .line 162
    .local v0, newTail:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    iget-object v1, p0, Lcom/lewa/gson/internal/StringMap;->table:[Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    iput-object v0, v5, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->prv:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    iput-object v0, v6, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    aput-object v0, v1, p4

    .line 163
    return-void
.end method

.method private doubleCapacity()[Lcom/lewa/gson/internal/StringMap$LinkedEntry;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/lewa/gson/internal/StringMap$LinkedEntry",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, this:Lcom/lewa/gson/internal/StringMap;,"Lcom/lewa/gson/internal/StringMap<TV;>;"
    iget-object v9, p0, Lcom/lewa/gson/internal/StringMap;->table:[Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .line 185
    .local v9, oldTable:[Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"[Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    array-length v8, v9

    .line 186
    .local v8, oldCapacity:I
    const/high16 v10, 0x4000

    if-ne v8, v10, :cond_1

    move-object v6, v9

    .line 223
    :cond_0
    return-object v6

    .line 189
    :cond_1
    mul-int/lit8 v5, v8, 0x2

    .line 190
    .local v5, newCapacity:I
    invoke-direct {p0, v5}, Lcom/lewa/gson/internal/StringMap;->makeTable(I)[Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    move-result-object v6

    .line 191
    .local v6, newTable:[Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"[Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    iget v10, p0, Lcom/lewa/gson/internal/StringMap;->size:I

    if-eqz v10, :cond_0

    .line 195
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 200
    aget-object v1, v9, v3

    .line 201
    .local v1, e:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    if-nez v1, :cond_3

    .line 195
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 204
    :cond_3
    iget v10, v1, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->hash:I

    and-int v2, v10, v8

    .line 205
    .local v2, highBit:I
    const/4 v0, 0x0

    .line 206
    .local v0, broken:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    or-int v10, v3, v2

    aput-object v1, v6, v10

    .line 207
    iget-object v4, v1, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->next:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .local v4, n:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    :goto_2
    if-eqz v4, :cond_6

    .line 208
    iget v10, v4, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->hash:I

    and-int v7, v10, v8

    .line 209
    .local v7, nextHighBit:I
    if-eq v7, v2, :cond_4

    .line 210
    if-nez v0, :cond_5

    .line 211
    or-int v10, v3, v7

    aput-object v4, v6, v10

    .line 215
    :goto_3
    move-object v0, v1

    .line 216
    move v2, v7

    .line 207
    :cond_4
    move-object v1, v4

    iget-object v4, v4, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->next:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    goto :goto_2

    .line 213
    :cond_5
    iput-object v4, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->next:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    goto :goto_3

    .line 219
    .end local v7           #nextHighBit:I
    :cond_6
    if-eqz v0, :cond_2

    .line 220
    const/4 v10, 0x0

    iput-object v10, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->next:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    goto :goto_1
.end method

.method private getEntry(Ljava/lang/String;)Lcom/lewa/gson/internal/StringMap$LinkedEntry;
    .locals 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lewa/gson/internal/StringMap$LinkedEntry",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/lewa/gson/internal/StringMap;,"Lcom/lewa/gson/internal/StringMap<TV;>;"
    const/4 v4, 0x0

    .line 115
    if-nez p1, :cond_1

    move-object v0, v4

    .line 127
    :cond_0
    :goto_0
    return-object v0

    .line 119
    :cond_1
    invoke-static {p1}, Lcom/lewa/gson/internal/StringMap;->hash(Ljava/lang/String;)I

    move-result v2

    .line 120
    .local v2, hash:I
    iget-object v3, p0, Lcom/lewa/gson/internal/StringMap;->table:[Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .line 121
    .local v3, tab:[Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"[Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v2

    aget-object v0, v3, v5

    .local v0, e:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    :goto_1
    if-eqz v0, :cond_3

    .line 122
    iget-object v1, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->key:Ljava/lang/String;

    .line 123
    .local v1, eKey:Ljava/lang/String;
    if-eq v1, p1, :cond_0

    iget v5, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->hash:I

    if-ne v5, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 121
    :cond_2
    iget-object v0, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->next:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    goto :goto_1

    .end local v1           #eKey:Ljava/lang/String;
    :cond_3
    move-object v0, v4

    .line 127
    goto :goto_0
.end method

.method private static hash(Ljava/lang/String;)I
    .locals 6
    .parameter "key"

    .prologue
    .line 498
    sget v0, Lcom/lewa/gson/internal/StringMap;->seed:I

    .line 499
    .local v0, h:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 500
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v1, v0, v4

    .line 501
    .local v1, h2:I
    add-int v4, v1, v1

    shl-int/lit8 v2, v4, 0xa

    .line 502
    .local v2, h3:I
    ushr-int/lit8 v4, v2, 0x6

    xor-int v0, v2, v4

    .line 499
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 509
    .end local v1           #h2:I
    .end local v2           #h3:I
    :cond_0
    ushr-int/lit8 v4, v0, 0x14

    ushr-int/lit8 v5, v0, 0xc

    xor-int/2addr v4, v5

    xor-int/2addr v0, v4

    .line 510
    ushr-int/lit8 v4, v0, 0x7

    xor-int/2addr v4, v0

    ushr-int/lit8 v5, v0, 0x4

    xor-int/2addr v4, v5

    return v4
.end method

.method private makeTable(I)[Lcom/lewa/gson/internal/StringMap$LinkedEntry;
    .locals 3
    .parameter "newCapacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/lewa/gson/internal/StringMap$LinkedEntry",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, this:Lcom/lewa/gson/internal/StringMap;,"Lcom/lewa/gson/internal/StringMap<TV;>;"
    new-array v0, p1, [Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    check-cast v0, [Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .line 172
    .local v0, newTable:[Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"[Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    iput-object v0, p0, Lcom/lewa/gson/internal/StringMap;->table:[Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .line 173
    shr-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lewa/gson/internal/StringMap;->threshold:I

    .line 174
    return-object v0
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .parameter "key"
    .parameter "value"

    .prologue
    .local p0, this:Lcom/lewa/gson/internal/StringMap;,"Lcom/lewa/gson/internal/StringMap<TV;>;"
    const/4 v6, 0x0

    .line 349
    if-eqz p1, :cond_0

    instance-of v5, p1, Ljava/lang/String;

    if-nez v5, :cond_1

    :cond_0
    move v5, v6

    .line 371
    :goto_0
    return v5

    :cond_1
    move-object v5, p1

    .line 353
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/lewa/gson/internal/StringMap;->hash(Ljava/lang/String;)I

    move-result v1

    .line 354
    .local v1, hash:I
    iget-object v4, p0, Lcom/lewa/gson/internal/StringMap;->table:[Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .line 355
    .local v4, tab:[Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"[Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    .line 356
    .local v2, index:I
    aget-object v0, v4, v2

    .local v0, e:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    const/4 v3, 0x0

    .local v3, prev:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    :goto_1
    if-eqz v0, :cond_7

    .line 357
    iget v5, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->hash:I

    if-ne v5, v1, :cond_6

    iget-object v5, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 358
    if-nez p2, :cond_3

    iget-object v5, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    if-eqz v5, :cond_4

    :cond_2
    move v5, v6

    .line 359
    goto :goto_0

    .line 358
    :cond_3
    iget-object v5, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 361
    :cond_4
    if-nez v3, :cond_5

    .line 362
    iget-object v5, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->next:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    aput-object v5, v4, v2

    .line 366
    :goto_2
    iget v5, p0, Lcom/lewa/gson/internal/StringMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/lewa/gson/internal/StringMap;->size:I

    .line 367
    invoke-direct {p0, v0}, Lcom/lewa/gson/internal/StringMap;->unlink(Lcom/lewa/gson/internal/StringMap$LinkedEntry;)V

    .line 368
    const/4 v5, 0x1

    goto :goto_0

    .line 364
    :cond_5
    iget-object v5, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->next:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    iput-object v5, v3, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->next:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    goto :goto_2

    .line 356
    :cond_6
    move-object v3, v0

    iget-object v0, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->next:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    goto :goto_1

    :cond_7
    move v5, v6

    .line 371
    goto :goto_0
.end method

.method private unlink(Lcom/lewa/gson/internal/StringMap$LinkedEntry;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/gson/internal/StringMap$LinkedEntry",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, this:Lcom/lewa/gson/internal/StringMap;,"Lcom/lewa/gson/internal/StringMap<TV;>;"
    .local p1, e:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    iget-object v0, p1, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->prv:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    iget-object v1, p1, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    iput-object v1, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .line 251
    iget-object v0, p1, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    iget-object v1, p1, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->prv:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    iput-object v1, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->prv:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .line 252
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->prv:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    iput-object v0, p1, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .line 253
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .local p0, this:Lcom/lewa/gson/internal/StringMap;,"Lcom/lewa/gson/internal/StringMap<TV;>;"
    const/4 v4, 0x0

    .line 256
    iget v3, p0, Lcom/lewa/gson/internal/StringMap;->size:I

    if-eqz v3, :cond_0

    .line 257
    iget-object v3, p0, Lcom/lewa/gson/internal/StringMap;->table:[Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 258
    const/4 v3, 0x0

    iput v3, p0, Lcom/lewa/gson/internal/StringMap;->size:I

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/lewa/gson/internal/StringMap;->header:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .line 263
    .local v1, header:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    iget-object v0, v1, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .local v0, e:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    :goto_0
    if-eq v0, v1, :cond_1

    .line 264
    iget-object v2, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .line 265
    .local v2, nxt:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    iput-object v4, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->prv:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    iput-object v4, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .line 266
    move-object v0, v2

    .line 267
    goto :goto_0

    .line 269
    .end local v2           #nxt:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    :cond_1
    iput-object v1, v1, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->prv:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    iput-object v1, v1, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .line 270
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 102
    .local p0, this:Lcom/lewa/gson/internal/StringMap;,"Lcom/lewa/gson/internal/StringMap<TV;>;"
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p0, p1}, Lcom/lewa/gson/internal/StringMap;->getEntry(Ljava/lang/String;)Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, this:Lcom/lewa/gson/internal/StringMap;,"Lcom/lewa/gson/internal/StringMap<TV;>;"
    iget-object v0, p0, Lcom/lewa/gson/internal/StringMap;->entrySet:Ljava/util/Set;

    .line 284
    .local v0, es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;TV;>;>;"
    if-eqz v0, :cond_0

    .end local v0           #es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;TV;>;>;"
    :goto_0
    return-object v0

    .restart local v0       #es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;TV;>;>;"
    :cond_0
    new-instance v0, Lcom/lewa/gson/internal/StringMap$EntrySet;

    .end local v0           #es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;TV;>;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lewa/gson/internal/StringMap$EntrySet;-><init>(Lcom/lewa/gson/internal/StringMap;Lcom/lewa/gson/internal/StringMap$1;)V

    iput-object v0, p0, Lcom/lewa/gson/internal/StringMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/lewa/gson/internal/StringMap;,"Lcom/lewa/gson/internal/StringMap<TV;>;"
    const/4 v1, 0x0

    .line 106
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 107
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p0, p1}, Lcom/lewa/gson/internal/StringMap;->getEntry(Ljava/lang/String;)Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    move-result-object v0

    .line 108
    .local v0, entry:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    .line 110
    .end local v0           #entry:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    :cond_0
    return-object v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, this:Lcom/lewa/gson/internal/StringMap;,"Lcom/lewa/gson/internal/StringMap<TV;>;"
    iget-object v0, p0, Lcom/lewa/gson/internal/StringMap;->keySet:Ljava/util/Set;

    .line 274
    .local v0, ks:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .end local v0           #ks:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .restart local v0       #ks:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Lcom/lewa/gson/internal/StringMap$KeySet;

    .end local v0           #ks:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lewa/gson/internal/StringMap$KeySet;-><init>(Lcom/lewa/gson/internal/StringMap;Lcom/lewa/gson/internal/StringMap$1;)V

    iput-object v0, p0, Lcom/lewa/gson/internal/StringMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    .local p0, this:Lcom/lewa/gson/internal/StringMap;,"Lcom/lewa/gson/internal/StringMap<TV;>;"
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/lewa/gson/internal/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, this:Lcom/lewa/gson/internal/StringMap;,"Lcom/lewa/gson/internal/StringMap<TV;>;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p1, :cond_0

    .line 132
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "key == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 135
    :cond_0
    invoke-static {p1}, Lcom/lewa/gson/internal/StringMap;->hash(Ljava/lang/String;)I

    move-result v1

    .line 136
    .local v1, hash:I
    iget-object v4, p0, Lcom/lewa/gson/internal/StringMap;->table:[Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .line 137
    .local v4, tab:[Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"[Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    .line 138
    .local v2, index:I
    aget-object v0, v4, v2

    .local v0, e:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 139
    iget v5, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->hash:I

    if-ne v5, v1, :cond_1

    iget-object v5, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 140
    iget-object v3, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    .line 141
    .local v3, oldValue:Ljava/lang/Object;,"TV;"
    iput-object p2, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    .line 152
    .end local v3           #oldValue:Ljava/lang/Object;,"TV;"
    :goto_1
    return-object v3

    .line 138
    :cond_1
    iget-object v0, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->next:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    goto :goto_0

    .line 147
    :cond_2
    iget v5, p0, Lcom/lewa/gson/internal/StringMap;->size:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/lewa/gson/internal/StringMap;->size:I

    iget v6, p0, Lcom/lewa/gson/internal/StringMap;->threshold:I

    if-le v5, v6, :cond_3

    .line 148
    invoke-direct {p0}, Lcom/lewa/gson/internal/StringMap;->doubleCapacity()[Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    move-result-object v4

    .line 149
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    .line 151
    :cond_3
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/lewa/gson/internal/StringMap;->addNewEntry(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 152
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/lewa/gson/internal/StringMap;,"Lcom/lewa/gson/internal/StringMap<TV;>;"
    const/4 v6, 0x0

    .line 227
    if-eqz p1, :cond_0

    instance-of v5, p1, Ljava/lang/String;

    if-nez v5, :cond_1

    :cond_0
    move-object v5, v6

    .line 246
    :goto_0
    return-object v5

    :cond_1
    move-object v5, p1

    .line 230
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/lewa/gson/internal/StringMap;->hash(Ljava/lang/String;)I

    move-result v1

    .line 231
    .local v1, hash:I
    iget-object v4, p0, Lcom/lewa/gson/internal/StringMap;->table:[Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    .line 232
    .local v4, tab:[Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"[Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    .line 233
    .local v2, index:I
    aget-object v0, v4, v2

    .local v0, e:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    const/4 v3, 0x0

    .line 234
    .local v3, prev:Lcom/lewa/gson/internal/StringMap$LinkedEntry;,"Lcom/lewa/gson/internal/StringMap$LinkedEntry<TV;>;"
    :goto_1
    if-eqz v0, :cond_4

    .line 235
    iget v5, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->hash:I

    if-ne v5, v1, :cond_3

    iget-object v5, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 236
    if-nez v3, :cond_2

    .line 237
    iget-object v5, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->next:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    aput-object v5, v4, v2

    .line 241
    :goto_2
    iget v5, p0, Lcom/lewa/gson/internal/StringMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/lewa/gson/internal/StringMap;->size:I

    .line 242
    invoke-direct {p0, v0}, Lcom/lewa/gson/internal/StringMap;->unlink(Lcom/lewa/gson/internal/StringMap$LinkedEntry;)V

    .line 243
    iget-object v5, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 239
    :cond_2
    iget-object v5, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->next:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    iput-object v5, v3, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->next:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    goto :goto_2

    .line 234
    :cond_3
    move-object v3, v0

    iget-object v0, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->next:Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    goto :goto_1

    :cond_4
    move-object v5, v6

    .line 246
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 98
    .local p0, this:Lcom/lewa/gson/internal/StringMap;,"Lcom/lewa/gson/internal/StringMap<TV;>;"
    iget v0, p0, Lcom/lewa/gson/internal/StringMap;->size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, this:Lcom/lewa/gson/internal/StringMap;,"Lcom/lewa/gson/internal/StringMap<TV;>;"
    iget-object v0, p0, Lcom/lewa/gson/internal/StringMap;->values:Ljava/util/Collection;

    .line 279
    .local v0, vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .end local v0           #vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :goto_0
    return-object v0

    .restart local v0       #vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :cond_0
    new-instance v0, Lcom/lewa/gson/internal/StringMap$Values;

    .end local v0           #vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lewa/gson/internal/StringMap$Values;-><init>(Lcom/lewa/gson/internal/StringMap;Lcom/lewa/gson/internal/StringMap$1;)V

    iput-object v0, p0, Lcom/lewa/gson/internal/StringMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method
