.class public Lcom/yulore/yellowsdkapi/util/BytesUtil;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x800

.field private static b:[B

.field private static c:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lcom/yulore/yellowsdkapi/util/BytesUtil;->b:[B

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lcom/yulore/yellowsdkapi/util/BytesUtil;->c:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArray2int([B)I
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/yulore/yellowsdkapi/util/BytesUtil;->b:[B

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v1, :cond_0

    sget-object v0, Lcom/yulore/yellowsdkapi/util/BytesUtil;->b:[B

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    sget-object v1, Lcom/yulore/yellowsdkapi/util/BytesUtil;->b:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    sget-object v2, Lcom/yulore/yellowsdkapi/util/BytesUtil;->b:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    sget-object v3, Lcom/yulore/yellowsdkapi/util/BytesUtil;->b:[B

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    return v0

    :cond_0
    if-ltz v0, :cond_1

    sget-object v2, Lcom/yulore/yellowsdkapi/util/BytesUtil;->b:[B

    aget-byte v3, p0, v0

    aput-byte v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/yulore/yellowsdkapi/util/BytesUtil;->b:[B

    aput-byte v4, v2, v1

    goto :goto_1
.end method

.method public static byteArray2int([BII)I
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/yulore/yellowsdkapi/util/BytesUtil;->b:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, p2, -0x1

    :goto_0
    if-gez v0, :cond_0

    sget-object v0, Lcom/yulore/yellowsdkapi/util/BytesUtil;->b:[B

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    sget-object v1, Lcom/yulore/yellowsdkapi/util/BytesUtil;->b:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    sget-object v2, Lcom/yulore/yellowsdkapi/util/BytesUtil;->b:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    sget-object v3, Lcom/yulore/yellowsdkapi/util/BytesUtil;->b:[B

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    return v0

    :cond_0
    if-lt v1, p1, :cond_1

    sget-object v2, Lcom/yulore/yellowsdkapi/util/BytesUtil;->b:[B

    aget-byte v3, p0, v1

    aput-byte v3, v2, v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/yulore/yellowsdkapi/util/BytesUtil;->b:[B

    aput-byte v4, v2, v0

    goto :goto_1
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    sget-object v0, Lcom/yulore/yellowsdkapi/util/BytesUtil;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    move v0, v1

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    sget-object v0, Lcom/yulore/yellowsdkapi/util/BytesUtil;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    sget-object v3, Lcom/yulore/yellowsdkapi/util/BytesUtil;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    sget-object v3, Lcom/yulore/yellowsdkapi/util/BytesUtil;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static bytesToHexString([BII)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/yulore/yellowsdkapi/util/BytesUtil;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_0
    if-lt p1, p2, :cond_0

    sget-object v0, Lcom/yulore/yellowsdkapi/util/BytesUtil;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    sget-object v1, Lcom/yulore/yellowsdkapi/util/BytesUtil;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    sget-object v1, Lcom/yulore/yellowsdkapi/util/BytesUtil;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static compare([B[B)I
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    :goto_1
    return v1

    :cond_0
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    if-le v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    if-ge v2, v3, :cond_2

    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static decompress([B)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x800

    new-array v3, v3, [B

    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x800

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    const-string v0, "UTF-8"

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :cond_0
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static int2byteArray(I)[B
    .locals 3

    sget-object v0, Lcom/yulore/yellowsdkapi/util/BytesUtil;->b:[B

    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    sget-object v0, Lcom/yulore/yellowsdkapi/util/BytesUtil;->b:[B

    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    sget-object v0, Lcom/yulore/yellowsdkapi/util/BytesUtil;->b:[B

    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    sget-object v0, Lcom/yulore/yellowsdkapi/util/BytesUtil;->b:[B

    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    sget-object v0, Lcom/yulore/yellowsdkapi/util/BytesUtil;->b:[B

    return-object v0
.end method
