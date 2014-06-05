.class public final Lcom/qq/taf/jce/JceUtil;
.super Ljava/lang/Object;
.source "JceUtil.java"


# static fields
.field private static final highDigits:[B = null

.field private static final iConstant:I = 0x25

.field private static final iTotal:I = 0x11

.field private static final lowDigits:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    .line 370
    const/16 v4, 0x10

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    .line 373
    .local v0, digits:[B
    new-array v1, v5, [B

    .line 374
    .local v1, high:[B
    new-array v3, v5, [B

    .line 376
    .local v3, low:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 377
    ushr-int/lit8 v4, v2, 0x4

    aget-byte v4, v0, v4

    aput-byte v4, v1, v2

    .line 378
    and-int/lit8 v4, v2, 0xf

    aget-byte v4, v0, v4

    aput-byte v4, v3, v2

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    :cond_0
    sput-object v1, Lcom/qq/taf/jce/JceUtil;->highDigits:[B

    .line 382
    sput-object v3, Lcom/qq/taf/jce/JceUtil;->lowDigits:[B

    .line 383
    return-void

    .line 370
    :array_0
    .array-data 0x1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareTo(BB)I
    .locals 1
    .parameter "l"
    .parameter "r"

    .prologue
    .line 60
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compareTo(CC)I
    .locals 1
    .parameter "l"
    .parameter "r"

    .prologue
    .line 64
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compareTo(DD)I
    .locals 1
    .parameter "l"
    .parameter "r"

    .prologue
    .line 84
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmpl-double v0, p0, p2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compareTo(FF)I
    .locals 1
    .parameter "l"
    .parameter "r"

    .prologue
    .line 80
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compareTo(II)I
    .locals 1
    .parameter "l"
    .parameter "r"

    .prologue
    .line 72
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compareTo(JJ)I
    .locals 1
    .parameter "l"
    .parameter "r"

    .prologue
    .line 76
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, l:Ljava/lang/Comparable;,"TT;"
    .local p1, r:Ljava/lang/Comparable;,"TT;"
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static compareTo(Ljava/util/List;Ljava/util/List;)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, l:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p1, r:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, li:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 93
    .local v2, ri:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 95
    .local v1, n:I
    if-eqz v1, :cond_0

    .line 98
    .end local v1           #n:I
    :goto_0
    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(ZZ)I

    move-result v1

    goto :goto_0
.end method

.method public static compareTo(SS)I
    .locals 1
    .parameter "l"
    .parameter "r"

    .prologue
    .line 68
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compareTo(ZZ)I
    .locals 3
    .parameter "l"
    .parameter "r"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    if-eqz p0, :cond_0

    move v2, v0

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    sub-int v0, v2, v0

    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static compareTo([B[B)I
    .locals 5
    .parameter "l"
    .parameter "r"

    .prologue
    .line 120
    const/4 v0, 0x0

    .local v0, li:I
    const/4 v2, 0x0

    .local v2, ri:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 121
    aget-byte v3, p0, v0

    aget-byte v4, p1, v2

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(BB)I

    move-result v1

    .line 122
    .local v1, n:I
    if-eqz v1, :cond_0

    .line 125
    .end local v1           #n:I
    :goto_1
    return v1

    .line 120
    .restart local v1       #n:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v1           #n:I
    :cond_1
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(II)I

    move-result v1

    goto :goto_1
.end method

.method public static compareTo([C[C)I
    .locals 5
    .parameter "l"
    .parameter "r"

    .prologue
    .line 129
    const/4 v0, 0x0

    .local v0, li:I
    const/4 v2, 0x0

    .local v2, ri:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 130
    aget-char v3, p0, v0

    aget-char v4, p1, v2

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(CC)I

    move-result v1

    .line 131
    .local v1, n:I
    if-eqz v1, :cond_0

    .line 134
    .end local v1           #n:I
    :goto_1
    return v1

    .line 129
    .restart local v1       #n:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    .end local v1           #n:I
    :cond_1
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(II)I

    move-result v1

    goto :goto_1
.end method

.method public static compareTo([D[D)I
    .locals 7
    .parameter "l"
    .parameter "r"

    .prologue
    .line 174
    const/4 v0, 0x0

    .local v0, li:I
    const/4 v2, 0x0

    .local v2, ri:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 175
    aget-wide v3, p0, v0

    aget-wide v5, p1, v2

    invoke-static {v3, v4, v5, v6}, Lcom/qq/taf/jce/JceUtil;->compareTo(DD)I

    move-result v1

    .line 176
    .local v1, n:I
    if-eqz v1, :cond_0

    .line 179
    .end local v1           #n:I
    :goto_1
    return v1

    .line 174
    .restart local v1       #n:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    .end local v1           #n:I
    :cond_1
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(II)I

    move-result v1

    goto :goto_1
.end method

.method public static compareTo([F[F)I
    .locals 5
    .parameter "l"
    .parameter "r"

    .prologue
    .line 165
    const/4 v0, 0x0

    .local v0, li:I
    const/4 v2, 0x0

    .local v2, ri:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 166
    aget v3, p0, v0

    aget v4, p1, v2

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(FF)I

    move-result v1

    .line 167
    .local v1, n:I
    if-eqz v1, :cond_0

    .line 170
    .end local v1           #n:I
    :goto_1
    return v1

    .line 165
    .restart local v1       #n:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v1           #n:I
    :cond_1
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(II)I

    move-result v1

    goto :goto_1
.end method

.method public static compareTo([I[I)I
    .locals 5
    .parameter "l"
    .parameter "r"

    .prologue
    .line 147
    const/4 v0, 0x0

    .local v0, li:I
    const/4 v2, 0x0

    .local v2, ri:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 148
    aget v3, p0, v0

    aget v4, p1, v2

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(II)I

    move-result v1

    .line 149
    .local v1, n:I
    if-eqz v1, :cond_0

    .line 152
    .end local v1           #n:I
    :goto_1
    return v1

    .line 147
    .restart local v1       #n:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v1           #n:I
    :cond_1
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(II)I

    move-result v1

    goto :goto_1
.end method

.method public static compareTo([J[J)I
    .locals 7
    .parameter "l"
    .parameter "r"

    .prologue
    .line 156
    const/4 v0, 0x0

    .local v0, li:I
    const/4 v2, 0x0

    .local v2, ri:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 157
    aget-wide v3, p0, v0

    aget-wide v5, p1, v2

    invoke-static {v3, v4, v5, v6}, Lcom/qq/taf/jce/JceUtil;->compareTo(JJ)I

    move-result v1

    .line 158
    .local v1, n:I
    if-eqz v1, :cond_0

    .line 161
    .end local v1           #n:I
    :goto_1
    return v1

    .line 156
    .restart local v1       #n:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v1           #n:I
    :cond_1
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(II)I

    move-result v1

    goto :goto_1
.end method

.method public static compareTo([Ljava/lang/Comparable;[Ljava/lang/Comparable;)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>([TT;[TT;)I"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, l:[Ljava/lang/Comparable;,"[TT;"
    .local p1, r:[Ljava/lang/Comparable;,"[TT;"
    const/4 v0, 0x0

    .local v0, li:I
    const/4 v2, 0x0

    .local v2, ri:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 103
    aget-object v3, p0, v0

    aget-object v4, p1, v2

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 104
    .local v1, n:I
    if-eqz v1, :cond_0

    .line 107
    .end local v1           #n:I
    :goto_1
    return v1

    .line 102
    .restart local v1       #n:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v1           #n:I
    :cond_1
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(II)I

    move-result v1

    goto :goto_1
.end method

.method public static compareTo([S[S)I
    .locals 5
    .parameter "l"
    .parameter "r"

    .prologue
    .line 138
    const/4 v0, 0x0

    .local v0, li:I
    const/4 v2, 0x0

    .local v2, ri:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 139
    aget-short v3, p0, v0

    aget-short v4, p1, v2

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(SS)I

    move-result v1

    .line 140
    .local v1, n:I
    if-eqz v1, :cond_0

    .line 143
    .end local v1           #n:I
    :goto_1
    return v1

    .line 138
    .restart local v1       #n:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v1           #n:I
    :cond_1
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(II)I

    move-result v1

    goto :goto_1
.end method

.method public static compareTo([Z[Z)I
    .locals 5
    .parameter "l"
    .parameter "r"

    .prologue
    .line 111
    const/4 v0, 0x0

    .local v0, li:I
    const/4 v2, 0x0

    .local v2, ri:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 112
    aget-boolean v3, p0, v0

    aget-boolean v4, p1, v2

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(ZZ)I

    move-result v1

    .line 113
    .local v1, n:I
    if-eqz v1, :cond_0

    .line 116
    .end local v1           #n:I
    :goto_1
    return v1

    .line 111
    .restart local v1       #n:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v1           #n:I
    :cond_1
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(II)I

    move-result v1

    goto :goto_1
.end method

.method public static equals(BB)Z
    .locals 1
    .parameter "l"
    .parameter "r"

    .prologue
    .line 24
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equals(CC)Z
    .locals 1
    .parameter "l"
    .parameter "r"

    .prologue
    .line 28
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equals(DD)Z
    .locals 1
    .parameter "l"
    .parameter "r"

    .prologue
    .line 48
    cmpl-double v0, p0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equals(FF)Z
    .locals 1
    .parameter "l"
    .parameter "r"

    .prologue
    .line 44
    cmpl-float v0, p0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equals(II)Z
    .locals 1
    .parameter "l"
    .parameter "r"

    .prologue
    .line 36
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equals(JJ)Z
    .locals 1
    .parameter "l"
    .parameter "r"

    .prologue
    .line 40
    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "l"
    .parameter "r"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equals(SS)Z
    .locals 1
    .parameter "l"
    .parameter "r"

    .prologue
    .line 32
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equals(ZZ)Z
    .locals 1
    .parameter "l"
    .parameter "r"

    .prologue
    .line 20
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHexdump(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 5
    .parameter "in"

    .prologue
    .line 390
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 391
    .local v3, size:I
    if-nez v3, :cond_0

    .line 392
    const-string v4, "empty"

    .line 409
    :goto_0
    return-object v4

    .line 394
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 395
    .local v2, out:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 397
    .local v1, mark:I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 398
    .local v0, byteValue:I
    sget-object v4, Lcom/qq/taf/jce/JceUtil;->highDigits:[B

    aget-byte v4, v4, v0

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 399
    sget-object v4, Lcom/qq/taf/jce/JceUtil;->lowDigits:[B

    aget-byte v4, v4, v0

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 400
    add-int/lit8 v3, v3, -0x1

    .line 402
    :goto_1
    if-lez v3, :cond_1

    .line 403
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 404
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 405
    sget-object v4, Lcom/qq/taf/jce/JceUtil;->highDigits:[B

    aget-byte v4, v4, v0

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 406
    sget-object v4, Lcom/qq/taf/jce/JceUtil;->lowDigits:[B

    aget-byte v4, v4, v0

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 402
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 408
    :cond_1
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 409
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getHexdump([B)Ljava/lang/String;
    .locals 1
    .parameter "array"

    .prologue
    .line 386
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/taf/jce/JceUtil;->getHexdump(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJceBufArray(Ljava/nio/ByteBuffer;)[B
    .locals 4
    .parameter "buffer"

    .prologue
    const/4 v3, 0x0

    .line 359
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    new-array v0, v1, [B

    .line 360
    .local v0, bytes:[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    return-object v0
.end method

.method public static hashCode(B)I
    .locals 1
    .parameter "o"

    .prologue
    .line 199
    add-int/lit16 v0, p0, 0x275

    return v0
.end method

.method public static hashCode(C)I
    .locals 1
    .parameter "o"

    .prologue
    .line 215
    add-int/lit16 v0, p0, 0x275

    return v0
.end method

.method public static hashCode(D)I
    .locals 2
    .parameter "o"

    .prologue
    .line 231
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public static hashCode(F)I
    .locals 1
    .parameter "o"

    .prologue
    .line 247
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    return v0
.end method

.method public static hashCode(I)I
    .locals 1
    .parameter "o"

    .prologue
    .line 280
    add-int/lit16 v0, p0, 0x275

    return v0
.end method

.method public static hashCode(J)I
    .locals 2
    .parameter "o"

    .prologue
    .line 296
    const/16 v0, 0x20

    shr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x275

    return v0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 325
    if-nez p0, :cond_0

    .line 326
    const/16 v0, 0x275

    .line 353
    :goto_0
    return v0

    .line 328
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 329
    instance-of v0, p0, [J

    if-eqz v0, :cond_1

    .line 330
    check-cast p0, [J

    .end local p0
    check-cast p0, [J

    invoke-static {p0}, Lcom/qq/taf/jce/JceUtil;->hashCode([J)I

    move-result v0

    goto :goto_0

    .line 331
    .restart local p0
    :cond_1
    instance-of v0, p0, [I

    if-eqz v0, :cond_2

    .line 332
    check-cast p0, [I

    .end local p0
    check-cast p0, [I

    invoke-static {p0}, Lcom/qq/taf/jce/JceUtil;->hashCode([I)I

    move-result v0

    goto :goto_0

    .line 333
    .restart local p0
    :cond_2
    instance-of v0, p0, [S

    if-eqz v0, :cond_3

    .line 334
    check-cast p0, [S

    .end local p0
    check-cast p0, [S

    invoke-static {p0}, Lcom/qq/taf/jce/JceUtil;->hashCode([S)I

    move-result v0

    goto :goto_0

    .line 335
    .restart local p0
    :cond_3
    instance-of v0, p0, [C

    if-eqz v0, :cond_4

    .line 336
    check-cast p0, [C

    .end local p0
    check-cast p0, [C

    invoke-static {p0}, Lcom/qq/taf/jce/JceUtil;->hashCode([C)I

    move-result v0

    goto :goto_0

    .line 337
    .restart local p0
    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_5

    .line 338
    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    invoke-static {p0}, Lcom/qq/taf/jce/JceUtil;->hashCode([B)I

    move-result v0

    goto :goto_0

    .line 339
    .restart local p0
    :cond_5
    instance-of v0, p0, [D

    if-eqz v0, :cond_6

    .line 340
    check-cast p0, [D

    .end local p0
    check-cast p0, [D

    invoke-static {p0}, Lcom/qq/taf/jce/JceUtil;->hashCode([D)I

    move-result v0

    goto :goto_0

    .line 341
    .restart local p0
    :cond_6
    instance-of v0, p0, [F

    if-eqz v0, :cond_7

    .line 342
    check-cast p0, [F

    .end local p0
    check-cast p0, [F

    invoke-static {p0}, Lcom/qq/taf/jce/JceUtil;->hashCode([F)I

    move-result v0

    goto :goto_0

    .line 343
    .restart local p0
    :cond_7
    instance-of v0, p0, [Z

    if-eqz v0, :cond_8

    .line 344
    check-cast p0, [Z

    .end local p0
    check-cast p0, [Z

    invoke-static {p0}, Lcom/qq/taf/jce/JceUtil;->hashCode([Z)I

    move-result v0

    goto :goto_0

    .line 345
    .restart local p0
    :cond_8
    instance-of v0, p0, [Lcom/qq/taf/jce/JceStruct;

    if-eqz v0, :cond_9

    .line 346
    check-cast p0, [Lcom/qq/taf/jce/JceStruct;

    .end local p0
    check-cast p0, [Lcom/qq/taf/jce/JceStruct;

    invoke-static {p0}, Lcom/qq/taf/jce/JceUtil;->hashCode([Lcom/qq/taf/jce/JceStruct;)I

    move-result v0

    goto :goto_0

    .line 348
    .restart local p0
    :cond_9
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/qq/taf/jce/JceUtil;->hashCode(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    .line 350
    .restart local p0
    :cond_a
    instance-of v0, p0, Lcom/qq/taf/jce/JceStruct;

    if-eqz v0, :cond_b

    .line 351
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_0

    .line 353
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    goto/16 :goto_0
.end method

.method public static hashCode(S)I
    .locals 1
    .parameter "o"

    .prologue
    .line 263
    add-int/lit16 v0, p0, 0x275

    return v0
.end method

.method public static hashCode(Z)I
    .locals 1
    .parameter "o"

    .prologue
    .line 183
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v0, v0, 0x275

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hashCode([B)I
    .locals 4
    .parameter "array"

    .prologue
    .line 203
    if-nez p0, :cond_1

    .line 204
    const/16 v1, 0x275

    .line 210
    :cond_0
    return v1

    .line 206
    :cond_1
    const/16 v1, 0x11

    .line 207
    .local v1, tempTotal:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 208
    mul-int/lit8 v2, v1, 0x25

    aget-byte v3, p0, v0

    add-int v1, v2, v3

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hashCode([C)I
    .locals 4
    .parameter "array"

    .prologue
    .line 219
    if-nez p0, :cond_1

    .line 220
    const/16 v1, 0x275

    .line 226
    :cond_0
    return v1

    .line 222
    :cond_1
    const/16 v1, 0x11

    .line 223
    .local v1, tempTotal:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 224
    mul-int/lit8 v2, v1, 0x25

    aget-char v3, p0, v0

    add-int v1, v2, v3

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hashCode([D)I
    .locals 8
    .parameter "array"

    .prologue
    .line 235
    if-nez p0, :cond_1

    .line 236
    const/16 v1, 0x275

    .line 242
    :cond_0
    return v1

    .line 238
    :cond_1
    const/16 v1, 0x11

    .line 239
    .local v1, tempTotal:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 240
    mul-int/lit8 v2, v1, 0x25

    aget-wide v3, p0, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    aget-wide v5, p0, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    const/16 v7, 0x20

    shr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hashCode([F)I
    .locals 4
    .parameter "array"

    .prologue
    .line 251
    if-nez p0, :cond_1

    .line 252
    const/16 v1, 0x275

    .line 258
    :cond_0
    return v1

    .line 254
    :cond_1
    const/16 v1, 0x11

    .line 255
    .local v1, tempTotal:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 256
    mul-int/lit8 v2, v1, 0x25

    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hashCode([I)I
    .locals 4
    .parameter "array"

    .prologue
    .line 284
    if-nez p0, :cond_1

    .line 285
    const/16 v1, 0x275

    .line 291
    :cond_0
    return v1

    .line 287
    :cond_1
    const/16 v1, 0x11

    .line 288
    .local v1, tempTotal:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 289
    mul-int/lit8 v2, v1, 0x25

    aget v3, p0, v0

    add-int v1, v2, v3

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hashCode([J)I
    .locals 8
    .parameter "array"

    .prologue
    .line 300
    if-nez p0, :cond_1

    .line 301
    const/16 v1, 0x275

    .line 307
    :cond_0
    return v1

    .line 303
    :cond_1
    const/16 v1, 0x11

    .line 304
    .local v1, tempTotal:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 305
    mul-int/lit8 v2, v1, 0x25

    aget-wide v3, p0, v0

    aget-wide v5, p0, v0

    const/16 v7, 0x20

    shr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hashCode([Lcom/qq/taf/jce/JceStruct;)I
    .locals 4
    .parameter "array"

    .prologue
    .line 312
    if-nez p0, :cond_1

    .line 313
    const/16 v1, 0x275

    .line 319
    :cond_0
    return v1

    .line 315
    :cond_1
    const/16 v1, 0x11

    .line 316
    .local v1, tempTotal:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 317
    mul-int/lit8 v2, v1, 0x25

    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hashCode([S)I
    .locals 4
    .parameter "array"

    .prologue
    .line 267
    if-nez p0, :cond_1

    .line 268
    const/16 v1, 0x275

    .line 274
    :cond_0
    return v1

    .line 270
    :cond_1
    const/16 v1, 0x11

    .line 271
    .local v1, tempTotal:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 272
    mul-int/lit8 v2, v1, 0x25

    aget-short v3, p0, v0

    add-int v1, v2, v3

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hashCode([Z)I
    .locals 4
    .parameter "array"

    .prologue
    .line 187
    if-nez p0, :cond_1

    .line 188
    const/16 v1, 0x275

    .line 194
    :cond_0
    return v1

    .line 190
    :cond_1
    const/16 v1, 0x11

    .line 191
    .local v1, tempTotal:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 192
    mul-int/lit8 v3, v1, 0x25

    aget-boolean v2, p0, v0

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    add-int v1, v3, v2

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method
