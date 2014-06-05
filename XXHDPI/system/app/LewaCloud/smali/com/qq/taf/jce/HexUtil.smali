.class public Lcom/qq/taf/jce/HexUtil;
.super Ljava/lang/Object;
.source "HexUtil.java"


# static fields
.field private static final digits:[C

.field public static final emptybytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/qq/taf/jce/HexUtil;->digits:[C

    .line 12
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/qq/taf/jce/HexUtil;->emptybytes:[B

    return-void

    .line 7
    nop

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
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2HexStr(B)Ljava/lang/String;
    .locals 4
    .parameter "b"

    .prologue
    .line 21
    const/4 v1, 0x2

    new-array v0, v1, [C

    .line 22
    .local v0, buf:[C
    const/4 v1, 0x1

    sget-object v2, Lcom/qq/taf/jce/HexUtil;->digits:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 23
    ushr-int/lit8 v1, p0, 0x4

    int-to-byte p0, v1

    .line 24
    const/4 v1, 0x0

    sget-object v2, Lcom/qq/taf/jce/HexUtil;->digits:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 25
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static bytes2HexStr([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    .line 35
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 37
    :cond_0
    const/4 v3, 0x0

    .line 48
    :goto_0
    return-object v3

    .line 40
    :cond_1
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [C

    .line 41
    .local v1, buf:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 43
    aget-byte v0, p0, v2

    .line 44
    .local v0, b:B
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/qq/taf/jce/HexUtil;->digits:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 45
    ushr-int/lit8 v3, v0, 0x4

    int-to-byte v0, v3

    .line 46
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x0

    sget-object v4, Lcom/qq/taf/jce/HexUtil;->digits:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 48
    .end local v0           #b:B
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static char2Byte(C)B
    .locals 1
    .parameter "ch"

    .prologue
    .line 75
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 77
    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    .line 89
    :goto_0
    return v0

    .line 79
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 81
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 83
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 85
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 89
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hexStr2Byte(Ljava/lang/String;)B
    .locals 3
    .parameter "str"

    .prologue
    const/4 v0, 0x0

    .line 58
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/qq/taf/jce/HexUtil;->char2Byte(C)B

    move-result v0

    .line 64
    :cond_0
    return v0
.end method

.method public static hexStr2Bytes(Ljava/lang/String;)[B
    .locals 6
    .parameter "str"

    .prologue
    .line 95
    if-eqz p0, :cond_0

    const-string v4, ""

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 97
    :cond_0
    sget-object v0, Lcom/qq/taf/jce/HexUtil;->emptybytes:[B

    .line 107
    :cond_1
    return-object v0

    .line 100
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 101
    .local v0, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 103
    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 104
    .local v1, high:C
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 105
    .local v3, low:C
    invoke-static {v1}, Lcom/qq/taf/jce/HexUtil;->char2Byte(C)B

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    invoke-static {v3}, Lcom/qq/taf/jce/HexUtil;->char2Byte(C)B

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .parameter "args"

    .prologue
    .line 114
    :try_start_0
    const-string v2, "Hello WebSocket World?"

    const-string v3, "gbk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 115
    .local v0, bytes:[B
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lcom/qq/taf/jce/HexUtil;->bytes2HexStr([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v0           #bytes:[B
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v1

    .line 120
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
