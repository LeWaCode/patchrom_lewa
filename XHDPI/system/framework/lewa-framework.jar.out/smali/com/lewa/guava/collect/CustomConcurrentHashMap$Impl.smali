.class Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;
.super Ljava/util/AbstractMap;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Fields;,
        Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$EntrySet;,
        Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Values;,
        Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$KeySet;,
        Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$EntryIterator;,
        Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;,
        Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$ValueIterator;,
        Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$KeyIterator;,
        Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$HashIterator;,
        Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;,
        Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$InternalsImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final RETRIES_BEFORE_LOCK:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl",
            "<TK;TV;TE;>.Segment;"
        }
    .end annotation
.end field

.field final strategy:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy",
            "<TK;TV;TE;>;"
        }
    .end annotation
.end field

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy;Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;)V
    .locals 9
    .parameter
    .parameter "builder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy",
            "<TK;TV;TE;>;",
            "Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 627
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    .local p1, strategy:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 628
    invoke-virtual {p2}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;->getConcurrencyLevel()I

    move-result v0

    .line 629
    .local v0, concurrencyLevel:I
    invoke-virtual {p2}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Builder;->getInitialCapacity()I

    move-result v2

    .line 631
    .local v2, initialCapacity:I
    const/high16 v7, 0x1

    if-le v0, v7, :cond_0

    .line 632
    const/high16 v0, 0x1

    .line 636
    :cond_0
    const/4 v5, 0x0

    .line 637
    .local v5, segmentShift:I
    const/4 v4, 0x1

    .line 638
    .local v4, segmentCount:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 639
    add-int/lit8 v5, v5, 0x1

    .line 640
    shl-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 642
    :cond_1
    rsub-int/lit8 v7, v5, 0x20

    iput v7, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segmentShift:I

    .line 643
    add-int/lit8 v7, v4, -0x1

    iput v7, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segmentMask:I

    .line 644
    invoke-virtual {p0, v4}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->newSegmentArray(I)[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v7

    iput-object v7, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    .line 646
    const/high16 v7, 0x4000

    if-le v2, v7, :cond_2

    .line 647
    const/high16 v2, 0x4000

    .line 650
    :cond_2
    div-int v3, v2, v4

    .line 651
    .local v3, segmentCapacity:I
    mul-int v7, v3, v4

    if-ge v7, v2, :cond_3

    .line 652
    add-int/lit8 v3, v3, 0x1

    .line 655
    :cond_3
    const/4 v6, 0x1

    .line 656
    .local v6, segmentSize:I
    :goto_1
    if-ge v6, v3, :cond_4

    .line 657
    shl-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 659
    :cond_4
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v7, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v7, v7

    if-ge v1, v7, :cond_5

    .line 660
    iget-object v7, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    new-instance v8, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    invoke-direct {v8, p0, v6}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;-><init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;I)V

    aput-object v8, v7, v1

    .line 659
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 663
    :cond_5
    iput-object p1, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy;

    .line 665
    new-instance v7, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$InternalsImpl;

    invoke-direct {v7, p0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$InternalsImpl;-><init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;)V

    invoke-interface {p1, v7}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy;->setInternals(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;)V

    .line 666
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 13
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1957
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 1958
    .local v3, initialCapacity:I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1959
    .local v0, concurrencyLevel:I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy;

    .line 1961
    .local v9, strategy:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    const/high16 v11, 0x1

    if-le v0, v11, :cond_0

    .line 1962
    const/high16 v0, 0x1

    .line 1966
    :cond_0
    const/4 v7, 0x0

    .line 1967
    .local v7, segmentShift:I
    const/4 v6, 0x1

    .line 1968
    .local v6, segmentCount:I
    :goto_0
    if-ge v6, v0, :cond_1

    .line 1969
    add-int/lit8 v7, v7, 0x1

    .line 1970
    shl-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1972
    :cond_1
    sget-object v11, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Fields;->segmentShift:Ljava/lang/reflect/Field;

    rsub-int/lit8 v12, v7, 0x20

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, p0, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1973
    sget-object v11, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Fields;->segmentMask:Ljava/lang/reflect/Field;

    add-int/lit8 v12, v6, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, p0, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1974
    sget-object v11, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Fields;->segments:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v6}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->newSegmentArray(I)[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v12

    invoke-virtual {v11, p0, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1976
    const/high16 v11, 0x4000

    if-le v3, v11, :cond_2

    .line 1977
    const/high16 v3, 0x4000

    .line 1980
    :cond_2
    div-int v5, v3, v6

    .line 1981
    .local v5, segmentCapacity:I
    mul-int v11, v5, v6

    if-ge v11, v3, :cond_3

    .line 1982
    add-int/lit8 v5, v5, 0x1

    .line 1985
    :cond_3
    const/4 v8, 0x1

    .line 1986
    .local v8, segmentSize:I
    :goto_1
    if-ge v8, v5, :cond_4

    .line 1987
    shl-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1989
    :cond_4
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v11, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v11, v11

    if-ge v2, v11, :cond_5

    .line 1990
    iget-object v11, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    new-instance v12, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    invoke-direct {v12, p0, v8}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;-><init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;I)V

    aput-object v12, v11, v2

    .line 1989
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1993
    :cond_5
    sget-object v11, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Fields;->strategy:Ljava/lang/reflect/Field;

    invoke-virtual {v11, p0, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1996
    :goto_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 1997
    .local v4, key:Ljava/lang/Object;,"TK;"
    if-nez v4, :cond_6

    .line 2006
    return-void

    .line 2000
    :cond_6
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    .line 2001
    .local v10, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, v4, v10}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 2003
    .end local v0           #concurrencyLevel:I
    .end local v2           #i:I
    .end local v3           #initialCapacity:I
    .end local v4           #key:Ljava/lang/Object;,"TK;"
    .end local v5           #segmentCapacity:I
    .end local v6           #segmentCount:I
    .end local v7           #segmentShift:I
    .end local v8           #segmentSize:I
    .end local v9           #strategy:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy<TK;TV;TE;>;"
    .end local v10           #value:Ljava/lang/Object;,"TV;"
    :catch_0
    move-exception v1

    .line 2004
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v11
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1920
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1921
    iget-object v2, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v2, v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1922
    iget-object v2, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1923
    invoke-virtual {p0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->entrySet()Ljava/util/Set;

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

    .line 1924
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1925
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 1927
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1928
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 1575
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    .local v0, arr$:[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1576
    .local v3, segment:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    invoke-virtual {v3}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->clear()V

    .line 1575
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1578
    .end local v3           #segment:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 1376
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    if-nez p1, :cond_0

    .line 1377
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1379
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1380
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v1

    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 14
    .parameter "value"

    .prologue
    .line 1394
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    if-nez p1, :cond_0

    .line 1395
    new-instance v12, Ljava/lang/NullPointerException;

    const-string v13, "value"

    invoke-direct {v12, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1400
    :cond_0
    iget-object v11, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    .line 1401
    .local v11, segments:[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;,"[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    array-length v12, v11

    new-array v8, v12, [I

    .line 1404
    .local v8, mc:[I
    const/4 v6, 0x0

    .local v6, k:I
    :goto_0
    const/4 v12, 0x2

    if-ge v6, v12, :cond_7

    .line 1405
    const/4 v9, 0x0

    .line 1406
    .local v9, mcsum:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v12, v11

    if-ge v4, v12, :cond_3

    .line 1408
    aget-object v12, v11, v4

    iget v1, v12, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 1409
    .local v1, c:I
    aget-object v12, v11, v4

    iget v12, v12, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v12, v8, v4

    add-int/2addr v9, v12

    .line 1410
    aget-object v12, v11, v4

    invoke-virtual {v12, p1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->containsValue(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1411
    const/4 v3, 0x1

    .line 1446
    .end local v1           #c:I
    .end local v4           #i:I
    .end local v9           #mcsum:I
    :cond_1
    :goto_2
    return v3

    .line 1406
    .restart local v1       #c:I
    .restart local v4       #i:I
    .restart local v9       #mcsum:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1414
    .end local v1           #c:I
    :cond_3
    const/4 v2, 0x1

    .line 1415
    .local v2, cleanSweep:Z
    if-eqz v9, :cond_4

    .line 1416
    const/4 v4, 0x0

    :goto_3
    array-length v12, v11

    if-ge v4, v12, :cond_4

    .line 1418
    aget-object v12, v11, v4

    iget v1, v12, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 1419
    .restart local v1       #c:I
    aget v12, v8, v4

    aget-object v13, v11, v4

    iget v13, v13, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-eq v12, v13, :cond_5

    .line 1420
    const/4 v2, 0x0

    .line 1425
    .end local v1           #c:I
    :cond_4
    if-eqz v2, :cond_6

    .line 1426
    const/4 v3, 0x0

    goto :goto_2

    .line 1416
    .restart local v1       #c:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1404
    .end local v1           #c:I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1430
    .end local v2           #cleanSweep:Z
    .end local v4           #i:I
    .end local v9           #mcsum:I
    :cond_7
    move-object v0, v11

    .local v0, arr$:[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_4
    if-ge v5, v7, :cond_8

    aget-object v10, v0, v5

    .line 1431
    .local v10, segment:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    invoke-virtual {v10}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1430
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1433
    .end local v10           #segment:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    :cond_8
    const/4 v3, 0x0

    .line 1435
    .local v3, found:Z
    move-object v0, v11

    :try_start_0
    array-length v7, v0

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v7, :cond_9

    aget-object v10, v0, v5

    .line 1436
    .restart local v10       #segment:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    invoke-virtual {v10, p1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-eqz v12, :cond_a

    .line 1437
    const/4 v3, 0x1

    .line 1442
    .end local v10           #segment:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    :cond_9
    move-object v0, v11

    array-length v7, v0

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v7, :cond_1

    aget-object v10, v0, v5

    .line 1443
    .restart local v10       #segment:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    invoke-virtual {v10}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1442
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1435
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1442
    .end local v10           #segment:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    :catchall_0
    move-exception v12

    move-object v0, v11

    array-length v7, v0

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v7, :cond_b

    aget-object v10, v0, v5

    .line 1443
    .restart local v10       #segment:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    invoke-virtual {v10}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1442
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .end local v10           #segment:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    :cond_b
    throw v12
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1642
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->entrySet:Ljava/util/Set;

    .line 1643
    .local v0, es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    .end local v0           #es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    return-object v0

    .restart local v0       #es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    new-instance v0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$EntrySet;

    .end local v0           #es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$EntrySet;-><init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;)V

    iput-object v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->entrySet:Ljava/util/Set;

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
    .line 1359
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    if-nez p1, :cond_0

    .line 1360
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1362
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1363
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method hash(Ljava/lang/Object;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 669
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v1, p1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy;->hashKey(Ljava/lang/Object;)I

    move-result v0

    .line 670
    .local v0, h:I
    #calls: Lcom/lewa/guava/collect/CustomConcurrentHashMap;->rehash(I)I
    invoke-static {v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap;->access$000(I)I

    move-result v1

    return v1
.end method

.method public isEmpty()Z
    .locals 7

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    const/4 v4, 0x0

    .line 1260
    iget-object v3, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    .line 1270
    .local v3, segments:[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;,"[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    array-length v5, v3

    new-array v1, v5, [I

    .line 1271
    .local v1, mc:[I
    const/4 v2, 0x0

    .line 1272
    .local v2, mcsum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 1273
    aget-object v5, v3, v0

    iget v5, v5, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v5, :cond_1

    .line 1290
    :cond_0
    :goto_1
    return v4

    .line 1276
    :cond_1
    aget-object v5, v3, v0

    iget v5, v5, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v5, v1, v0

    add-int/2addr v2, v5

    .line 1272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1282
    :cond_2
    if-eqz v2, :cond_3

    .line 1283
    const/4 v0, 0x0

    :goto_2
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 1284
    aget-object v5, v3, v0

    iget v5, v5, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-nez v5, :cond_0

    aget v5, v1, v0

    aget-object v6, v3, v0

    iget v6, v6, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-ne v5, v6, :cond_0

    .line 1283
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1290
    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1598
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->keySet:Ljava/util/Set;

    .line 1599
    .local v0, ks:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    .end local v0           #ks:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    :goto_0
    return-object v0

    .restart local v0       #ks:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    :cond_0
    new-instance v0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$KeySet;

    .end local v0           #ks:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$KeySet;-><init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;)V

    iput-object v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method newSegmentArray(I)[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;
    .locals 1
    .parameter "ssize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl",
            "<TK;TV;TE;>.Segment;"
        }
    .end annotation

    .prologue
    .line 709
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    const-class v0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    check-cast v0, [Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1463
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p1, :cond_0

    .line 1464
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1466
    :cond_0
    if-nez p2, :cond_1

    .line 1467
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1469
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1470
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1499
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    .local p1, m:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
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

    .line 1500
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1502
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1481
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p1, :cond_0

    .line 1482
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1484
    :cond_0
    if-nez p2, :cond_1

    .line 1485
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1487
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1488
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 1514
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    if-nez p1, :cond_0

    .line 1515
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1517
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1518
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1527
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    if-nez p1, :cond_0

    .line 1528
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1530
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1531
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1561
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p1, :cond_0

    .line 1562
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1564
    :cond_0
    if-nez p2, :cond_1

    .line 1565
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1567
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1568
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 1540
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, oldValue:Ljava/lang/Object;,"TV;"
    .local p3, newValue:Ljava/lang/Object;,"TV;"
    if-nez p1, :cond_0

    .line 1541
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1543
    :cond_0
    if-nez p2, :cond_1

    .line 1544
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "oldValue"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1546
    :cond_1
    if-nez p3, :cond_2

    .line 1547
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "newValue"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1549
    :cond_2
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1550
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method segmentFor(I)Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;
    .locals 3
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl",
            "<TK;TV;TE;>.Segment;"
        }
    .end annotation

    .prologue
    .line 721
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    iget v1, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 15

    .prologue
    .line 1301
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    iget-object v10, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    .line 1302
    .local v10, segments:[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;,"[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    const-wide/16 v11, 0x0

    .line 1303
    .local v11, sum:J
    const-wide/16 v1, 0x0

    .line 1304
    .local v1, check:J
    array-length v13, v10

    new-array v7, v13, [I

    .line 1307
    .local v7, mc:[I
    const/4 v5, 0x0

    .local v5, k:I
    :goto_0
    const/4 v13, 0x2

    if-ge v5, v13, :cond_2

    .line 1308
    const-wide/16 v1, 0x0

    .line 1309
    const-wide/16 v11, 0x0

    .line 1310
    const/4 v8, 0x0

    .line 1311
    .local v8, mcsum:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v13, v10

    if-ge v3, v13, :cond_0

    .line 1312
    aget-object v13, v10, v3

    iget v13, v13, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v13, v13

    add-long/2addr v11, v13

    .line 1313
    aget-object v13, v10, v3

    iget v13, v13, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v13, v7, v3

    add-int/2addr v8, v13

    .line 1311
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1315
    :cond_0
    if-eqz v8, :cond_1

    .line 1316
    const/4 v3, 0x0

    :goto_2
    array-length v13, v10

    if-ge v3, v13, :cond_1

    .line 1317
    aget-object v13, v10, v3

    iget v13, v13, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v13, v13

    add-long/2addr v1, v13

    .line 1318
    aget v13, v7, v3

    aget-object v14, v10, v3

    iget v14, v14, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-eq v13, v14, :cond_3

    .line 1319
    const-wide/16 v1, -0x1

    .line 1324
    :cond_1
    cmp-long v13, v1, v11

    if-nez v13, :cond_4

    .line 1328
    .end local v3           #i:I
    .end local v8           #mcsum:I
    :cond_2
    cmp-long v13, v1, v11

    if-eqz v13, :cond_7

    .line 1329
    const-wide/16 v11, 0x0

    .line 1330
    move-object v0, v10

    .local v0, arr$:[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_3
    if-ge v4, v6, :cond_5

    aget-object v9, v0, v4

    .line 1331
    .local v9, segment:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    invoke-virtual {v9}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1330
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1316
    .end local v0           #arr$:[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v9           #segment:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    .restart local v3       #i:I
    .restart local v8       #mcsum:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1307
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1333
    .end local v3           #i:I
    .end local v8           #mcsum:I
    .restart local v0       #arr$:[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    :cond_5
    move-object v0, v10

    array-length v6, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_6

    aget-object v9, v0, v4

    .line 1334
    .restart local v9       #segment:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    iget v13, v9, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v13, v13

    add-long/2addr v11, v13

    .line 1333
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1336
    .end local v9           #segment:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    :cond_6
    move-object v0, v10

    array-length v6, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v6, :cond_7

    aget-object v9, v0, v4

    .line 1337
    .restart local v9       #segment:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    invoke-virtual {v9}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1336
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1340
    .end local v0           #arr$:[Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v9           #segment:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Segment;"
    :cond_7
    const-wide/32 v13, 0x7fffffff

    cmp-long v13, v11, v13

    if-lez v13, :cond_8

    .line 1341
    const v13, 0x7fffffff

    .line 1343
    :goto_6
    return v13

    :cond_8
    long-to-int v13, v11

    goto :goto_6
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1620
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->values:Ljava/util/Collection;

    .line 1621
    .local v0, vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .end local v0           #vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :goto_0
    return-object v0

    .restart local v0       #vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :cond_0
    new-instance v0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Values;

    .end local v0           #vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Values;-><init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;)V

    iput-object v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->values:Ljava/util/Collection;

    goto :goto_0
.end method
