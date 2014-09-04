.class public final Lcom/lewa/eaio/util/lang/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static final DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lewa/eaio/util/lang/Hex;->DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static append(Ljava/lang/Appendable;I)Ljava/lang/Appendable;
    .locals 3
    .parameter "a"
    .parameter "in"

    .prologue
    .line 56
    int-to-long v0, p1

    const/16 v2, 0x8

    invoke-static {p0, v0, v1, v2}, Lcom/lewa/eaio/util/lang/Hex;->append(Ljava/lang/Appendable;JI)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static append(Ljava/lang/Appendable;II)Ljava/lang/Appendable;
    .locals 2
    .parameter "a"
    .parameter "in"
    .parameter "length"

    .prologue
    .line 68
    int-to-long v0, p1

    invoke-static {p0, v0, v1, p2}, Lcom/lewa/eaio/util/lang/Hex;->append(Ljava/lang/Appendable;JI)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static append(Ljava/lang/Appendable;J)Ljava/lang/Appendable;
    .locals 1
    .parameter "a"
    .parameter "in"

    .prologue
    .line 79
    const/16 v0, 0x10

    invoke-static {p0, p1, p2, v0}, Lcom/lewa/eaio/util/lang/Hex;->append(Ljava/lang/Appendable;JI)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static append(Ljava/lang/Appendable;JI)Ljava/lang/Appendable;
    .locals 4
    .parameter "a"
    .parameter "in"
    .parameter "length"

    .prologue
    .line 92
    shl-int/lit8 v1, p3, 0x2

    add-int/lit8 v0, v1, -0x4

    .line 93
    .local v0, lim:I
    :goto_0
    if-ltz v0, :cond_0

    .line 94
    :try_start_0
    sget-object v1, Lcom/lewa/eaio/util/lang/Hex;->DIGITS:[C

    shr-long v2, p1, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    add-int/lit8 v0, v0, -0x4

    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 101
    :cond_0
    return-object p0
.end method

.method public static append(Ljava/lang/Appendable;S)Ljava/lang/Appendable;
    .locals 3
    .parameter "a"
    .parameter "in"

    .prologue
    .line 33
    int-to-long v0, p1

    const/4 v2, 0x4

    invoke-static {p0, v0, v1, v2}, Lcom/lewa/eaio/util/lang/Hex;->append(Ljava/lang/Appendable;JI)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static append(Ljava/lang/Appendable;SI)Ljava/lang/Appendable;
    .locals 2
    .parameter "a"
    .parameter "in"
    .parameter "length"

    .prologue
    .line 45
    int-to-long v0, p1

    invoke-static {p0, v0, v1, p2}, Lcom/lewa/eaio/util/lang/Hex;->append(Ljava/lang/Appendable;JI)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static append(Ljava/lang/Appendable;[B)Ljava/lang/Appendable;
    .locals 6
    .parameter "a"
    .parameter "bytes"

    .prologue
    .line 113
    move-object v0, p1

    .local v0, arr$:[B
    :try_start_0
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 114
    .local v1, b:B
    sget-object v4, Lcom/lewa/eaio/util/lang/Hex;->DIGITS:[C

    and-int/lit16 v5, v1, 0xf0

    shr-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aget-char v4, v4, v5

    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 115
    sget-object v4, Lcom/lewa/eaio/util/lang/Hex;->DIGITS:[C

    and-int/lit8 v5, v1, 0xf

    int-to-byte v5, v5

    aget-char v4, v4, v5

    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v1           #b:B
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catch_0
    move-exception v4

    .line 121
    :cond_0
    return-object p0
.end method

.method public static parseLong(Ljava/lang/CharSequence;)J
    .locals 8
    .parameter "s"

    .prologue
    const/4 v7, 0x4

    .line 135
    const-wide/16 v2, 0x0

    .line 136
    .local v2, out:J
    const/4 v4, 0x0

    .line 138
    .local v4, shifts:B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    const/16 v5, 0x10

    if-ge v4, v5, :cond_3

    .line 139
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 140
    .local v0, c:C
    const/16 v5, 0x2f

    if-le v0, v5, :cond_1

    const/16 v5, 0x3a

    if-ge v0, v5, :cond_1

    .line 141
    add-int/lit8 v5, v4, 0x1

    int-to-byte v4, v5

    .line 142
    shl-long/2addr v2, v7

    .line 143
    add-int/lit8 v5, v0, -0x30

    int-to-long v5, v5

    or-long/2addr v2, v5

    .line 138
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_1
    const/16 v5, 0x40

    if-le v0, v5, :cond_2

    const/16 v5, 0x47

    if-ge v0, v5, :cond_2

    .line 146
    add-int/lit8 v5, v4, 0x1

    int-to-byte v4, v5

    .line 147
    shl-long/2addr v2, v7

    .line 148
    add-int/lit8 v5, v0, -0x37

    int-to-long v5, v5

    or-long/2addr v2, v5

    goto :goto_1

    .line 150
    :cond_2
    const/16 v5, 0x60

    if-le v0, v5, :cond_0

    const/16 v5, 0x67

    if-ge v0, v5, :cond_0

    .line 151
    add-int/lit8 v5, v4, 0x1

    int-to-byte v4, v5

    .line 152
    shl-long/2addr v2, v7

    .line 153
    add-int/lit8 v5, v0, -0x57

    int-to-long v5, v5

    or-long/2addr v2, v5

    goto :goto_1

    .line 156
    .end local v0           #c:C
    :cond_3
    return-wide v2
.end method

.method public static parseShort(Ljava/lang/String;)S
    .locals 5
    .parameter "s"

    .prologue
    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, out:S
    const/4 v3, 0x0

    .line 173
    .local v3, shifts:B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_3

    .line 174
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 175
    .local v0, c:C
    const/16 v4, 0x2f

    if-le v0, v4, :cond_1

    const/16 v4, 0x3a

    if-ge v0, v4, :cond_1

    .line 176
    add-int/lit8 v4, v3, 0x1

    int-to-byte v3, v4

    .line 177
    shl-int/lit8 v4, v2, 0x4

    int-to-short v2, v4

    .line 178
    add-int/lit8 v4, v0, -0x30

    or-int/2addr v4, v2

    int-to-short v2, v4

    .line 173
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_1
    const/16 v4, 0x40

    if-le v0, v4, :cond_2

    const/16 v4, 0x47

    if-ge v0, v4, :cond_2

    .line 181
    add-int/lit8 v4, v3, 0x1

    int-to-byte v3, v4

    .line 182
    shl-int/lit8 v4, v2, 0x4

    int-to-short v2, v4

    .line 183
    add-int/lit8 v4, v0, -0x37

    or-int/2addr v4, v2

    int-to-short v2, v4

    goto :goto_1

    .line 185
    :cond_2
    const/16 v4, 0x60

    if-le v0, v4, :cond_0

    const/16 v4, 0x67

    if-ge v0, v4, :cond_0

    .line 186
    add-int/lit8 v4, v3, 0x1

    int-to-byte v3, v4

    .line 187
    shl-int/lit8 v4, v2, 0x4

    int-to-short v2, v4

    .line 188
    add-int/lit8 v4, v0, -0x57

    or-int/2addr v4, v2

    int-to-short v2, v4

    goto :goto_1

    .line 191
    .end local v0           #c:C
    :cond_3
    return v2
.end method
