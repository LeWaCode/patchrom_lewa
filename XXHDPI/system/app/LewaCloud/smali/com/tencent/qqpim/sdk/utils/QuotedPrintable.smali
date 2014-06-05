.class public Lcom/tencent/qqpim/sdk/utils/QuotedPrintable;
.super Ljava/lang/Object;


# static fields
.field private static final CR:B = 0xdt

.field private static final EQUALS:B = 0x3dt

.field private static final LF:B = 0xat

.field private static final LIT_END:B = 0x7et

.field private static final LIT_START:B = 0x21t

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final TAB:B = 0x9t

.field private static mCurrentLineLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/qqpim/sdk/utils/QuotedPrintable;->mCurrentLineLength:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkLineLength(ILjava/lang/StringBuilder;)V
    .locals 2

    sget v0, Lcom/tencent/qqpim/sdk/utils/QuotedPrintable;->mCurrentLineLength:I

    add-int/2addr v0, p0

    const/16 v1, 0x4b

    if-le v0, v1, :cond_0

    const-string v0, "=/r/n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sput p0, Lcom/tencent/qqpim/sdk/utils/QuotedPrintable;->mCurrentLineLength:I

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/tencent/qqpim/sdk/utils/QuotedPrintable;->mCurrentLineLength:I

    add-int/2addr v0, p0

    sput v0, Lcom/tencent/qqpim/sdk/utils/QuotedPrintable;->mCurrentLineLength:I

    goto :goto_0
.end method

.method public static decode([B)I
    .locals 8

    const/16 v7, 0xd

    const/16 v6, 0xa

    const/4 v0, 0x0

    array-length v3, p0

    move v1, v0

    :goto_0
    if-lt v0, v3, :cond_0

    return v1

    :cond_0
    aget-byte v2, p0, v0

    const/16 v4, 0x3d

    if-ne v2, v4, :cond_4

    sub-int v2, v3, v0

    const/4 v4, 0x2

    if-le v2, v4, :cond_4

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    if-ne v2, v7, :cond_2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    if-ne v2, v6, :cond_2

    add-int/lit8 v0, v0, 0x2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/utils/QuotedPrintable;->isHexDigit(B)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/utils/QuotedPrintable;->isHexDigit(B)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    invoke-static {v4}, Lcom/tencent/qqpim/sdk/utils/QuotedPrintable;->getHexValue(B)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/tencent/qqpim/sdk/utils/QuotedPrintable;->getHexValue(B)B

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p0, v1

    add-int/lit8 v0, v0, 0x2

    move v1, v2

    goto :goto_1

    :cond_3
    const-string v2, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "decode: Invalid sequence = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    aget-byte v2, p0, v0

    const/16 v4, 0x20

    if-lt v2, v4, :cond_5

    aget-byte v2, p0, v0

    const/16 v4, 0x7f

    if-le v2, v4, :cond_6

    :cond_5
    aget-byte v2, p0, v0

    const/16 v4, 0x9

    if-eq v2, v4, :cond_6

    aget-byte v2, p0, v0

    if-eq v2, v7, :cond_6

    aget-byte v2, p0, v0

    if-ne v2, v6, :cond_1

    :cond_6
    add-int/lit8 v2, v1, 0x1

    aget-byte v4, p0, v0

    aput-byte v4, p0, v1

    move v1, v2

    goto :goto_1
.end method

.method public static decode([BLjava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/tencent/qqpim/sdk/utils/QuotedPrintable;->decode([B)I

    move-result v1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/QuotedPrintable;->encode([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_1
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x3d

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sput v1, Lcom/tencent/qqpim/sdk/utils/QuotedPrintable;->mCurrentLineLength:I

    move v0, v1

    :goto_1
    array-length v3, p0

    if-lt v0, v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-byte v3, p0, v0

    const/16 v4, 0x21

    if-lt v3, v4, :cond_2

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_2

    if-eq v3, v7, :cond_2

    invoke-static {v6, v2}, Lcom/tencent/qqpim/sdk/utils/QuotedPrintable;->checkLineLength(ILjava/lang/StringBuilder;)V

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    invoke-static {v4, v2}, Lcom/tencent/qqpim/sdk/utils/QuotedPrintable;->checkLineLength(ILjava/lang/StringBuilder;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "%02X"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private static getHexValue(B)B
    .locals 2

    int-to-char v0, p0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method private static isHexDigit(B)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
