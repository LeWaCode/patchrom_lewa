.class public Lcom/lewa/bi/common/util/ByteUtil;
.super Ljava/lang/Object;
.source "ByteUtil.java"


# static fields
.field public static final CHARSET_UTF8:Ljava/nio/charset/Charset; = null

.field private static final HEXES:Ljava/lang/String; = "0123456789ABCDEF"

.field public static final STRING_UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/lewa/bi/common/util/ByteUtil;->CHARSET_UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final fromString(Ljava/lang/String;)[B
    .locals 2
    .parameter "value"

    .prologue
    .line 34
    invoke-static {p0}, Lcom/lewa/bi/common/util/ObjectUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const/4 v1, 0x0

    .line 40
    :goto_0
    return-object v1

    .line 38
    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static getHex([B)Ljava/lang/String;
    .locals 8
    .parameter "raw"

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 v5, 0x0

    .line 30
    :goto_0
    return-object v5

    .line 25
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 26
    .local v2, hex:Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-byte v1, v0, v3

    .line 27
    .local v1, b:B
    const-string v5, "0123456789ABCDEF"

    and-int/lit16 v6, v1, 0xf0

    shr-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0123456789ABCDEF"

    and-int/lit8 v7, v1, 0xf

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 30
    .end local v1           #b:B
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static isEmpty([B)Z
    .locals 1
    .parameter "bytes"

    .prologue
    .line 45
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final toByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "value"

    .prologue
    .line 53
    invoke-static {p0}, Lcom/lewa/bi/common/util/ByteUtil;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    .line 54
    .local v0, bytes:[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0
.end method

.method public static final toByteBuffer([B)Ljava/nio/ByteBuffer;
    .locals 1
    .parameter "bytes"

    .prologue
    .line 49
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public static toBytes(Ljava/nio/ByteBuffer;)[B
    .locals 5
    .parameter "byteBuffer"

    .prologue
    .line 58
    if-nez p0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int v2, v3, v4

    .line 62
    .local v2, length:I
    new-array v0, v2, [B

    .line 64
    .local v0, bytes:[B
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static toString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 83
    invoke-static {p0}, Lcom/lewa/bi/common/util/ByteUtil;->toBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/bi/common/util/ByteUtil;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final toString([B)Ljava/lang/String;
    .locals 3
    .parameter "bytes"

    .prologue
    .line 72
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 73
    :cond_0
    const/4 v1, 0x0

    .line 78
    :goto_0
    return-object v1

    .line 76
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method
