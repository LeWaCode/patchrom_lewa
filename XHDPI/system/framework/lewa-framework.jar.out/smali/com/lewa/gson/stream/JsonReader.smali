.class public Lcom/lewa/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/gson/stream/JsonReader$2;
    }
.end annotation


# static fields
.field private static final FALSE:Ljava/lang/String; = "false"

.field private static final NON_EXECUTE_PREFIX:[C = null

.field private static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field private final buffer:[C

.field private bufferStartColumn:I

.field private bufferStartLine:I

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private name:Ljava/lang/String;

.field private pos:I

.field private skipping:Z

.field private stack:[Lcom/lewa/gson/stream/JsonScope;

.field private stackSize:I

.field private final stringPool:Lcom/lewa/gson/stream/StringPool;

.field private token:Lcom/lewa/gson/stream/JsonToken;

.field private value:Ljava/lang/String;

.field private valueLength:I

.field private valuePos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/lewa/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    .line 1315
    new-instance v0, Lcom/lewa/gson/stream/JsonReader$1;

    invoke-direct {v0}, Lcom/lewa/gson/stream/JsonReader$1;-><init>()V

    sput-object v0, Lcom/lewa/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/lewa/gson/internal/JsonReaderInternalAccess;

    .line 1331
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Lcom/lewa/gson/stream/StringPool;

    invoke-direct {v0}, Lcom/lewa/gson/stream/StringPool;-><init>()V

    iput-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->stringPool:Lcom/lewa/gson/stream/StringPool;

    .line 204
    iput-boolean v1, p0, Lcom/lewa/gson/stream/JsonReader;->lenient:Z

    .line 212
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    .line 213
    iput v1, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 214
    iput v1, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    .line 219
    iput v2, p0, Lcom/lewa/gson/stream/JsonReader;->bufferStartLine:I

    .line 220
    iput v2, p0, Lcom/lewa/gson/stream/JsonReader;->bufferStartColumn:I

    .line 225
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/lewa/gson/stream/JsonScope;

    iput-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->stack:[Lcom/lewa/gson/stream/JsonScope;

    .line 226
    iput v1, p0, Lcom/lewa/gson/stream/JsonReader;->stackSize:I

    .line 228
    sget-object v0, Lcom/lewa/gson/stream/JsonScope;->EMPTY_DOCUMENT:Lcom/lewa/gson/stream/JsonScope;

    invoke-direct {p0, v0}, Lcom/lewa/gson/stream/JsonReader;->push(Lcom/lewa/gson/stream/JsonScope;)V

    .line 249
    iput-boolean v1, p0, Lcom/lewa/gson/stream/JsonReader;->skipping:Z

    .line 255
    if-nez p1, :cond_0

    .line 256
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    iput-object p1, p0, Lcom/lewa/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 259
    return-void
.end method

.method static synthetic access$000(Lcom/lewa/gson/stream/JsonReader;)Lcom/lewa/gson/stream/JsonToken;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lewa/gson/stream/JsonReader;Lcom/lewa/gson/stream/JsonToken;)Lcom/lewa/gson/stream/JsonToken;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lewa/gson/stream/JsonReader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getLineNumber()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/lewa/gson/stream/JsonReader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/lewa/gson/stream/JsonReader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lewa/gson/stream/JsonReader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/lewa/gson/stream/JsonReader;->name:Ljava/lang/String;

    return-object p1
.end method

.method private advance()Lcom/lewa/gson/stream/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 426
    invoke-virtual {p0}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    .line 428
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    .line 429
    .local v0, result:Lcom/lewa/gson/stream/JsonToken;
    iput-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    .line 430
    iput-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    .line 431
    iput-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->name:Ljava/lang/String;

    .line 432
    return-object v0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 962
    iget-boolean v0, p0, Lcom/lewa/gson/stream/JsonReader;->lenient:Z

    if-nez v0, :cond_0

    .line 963
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/lewa/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 965
    :cond_0
    return-void
.end method

.method private consumeNonExecutePrefix()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lewa/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 406
    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 408
    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    sget-object v2, Lcom/lewa/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    if-le v1, v2, :cond_1

    sget-object v1, Lcom/lewa/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    invoke-direct {p0, v1}, Lcom/lewa/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/lewa/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 413
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/lewa/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 419
    :cond_2
    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    sget-object v2, Lcom/lewa/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    goto :goto_0
.end method

.method private decodeLiteral()Lcom/lewa/gson/stream/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x55

    const/16 v6, 0x45

    const/4 v5, 0x4

    const/16 v4, 0x6c

    const/16 v3, 0x4c

    .line 1220
    iget v0, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1222
    sget-object v0, Lcom/lewa/gson/stream/JsonToken;->STRING:Lcom/lewa/gson/stream/JsonToken;

    .line 1247
    :goto_0
    return-object v0

    .line 1223
    :cond_0
    iget v0, p0, Lcom/lewa/gson/stream/JsonReader;->valueLength:I

    if-ne v0, v5, :cond_5

    const/16 v0, 0x6e

    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_1

    const/16 v0, 0x4e

    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_5

    :cond_1
    const/16 v0, 0x75

    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    if-ne v7, v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-eq v4, v0, :cond_3

    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-eq v4, v0, :cond_4

    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_5

    .line 1228
    :cond_4
    const-string v0, "null"

    iput-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    .line 1229
    sget-object v0, Lcom/lewa/gson/stream/JsonToken;->NULL:Lcom/lewa/gson/stream/JsonToken;

    goto :goto_0

    .line 1230
    :cond_5
    iget v0, p0, Lcom/lewa/gson/stream/JsonReader;->valueLength:I

    if-ne v0, v5, :cond_a

    const/16 v0, 0x74

    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_6

    const/16 v0, 0x54

    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_a

    :cond_6
    const/16 v0, 0x72

    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_7

    const/16 v0, 0x52

    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_a

    :cond_7
    const/16 v0, 0x75

    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v7, v0, :cond_a

    :cond_8
    const/16 v0, 0x65

    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v6, v0, :cond_a

    .line 1235
    :cond_9
    const-string v0, "true"

    iput-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    .line 1236
    sget-object v0, Lcom/lewa/gson/stream/JsonToken;->BOOLEAN:Lcom/lewa/gson/stream/JsonToken;

    goto/16 :goto_0

    .line 1237
    :cond_a
    iget v0, p0, Lcom/lewa/gson/stream/JsonReader;->valueLength:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    const/16 v0, 0x66

    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_b

    const/16 v0, 0x46

    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_10

    :cond_b
    const/16 v0, 0x61

    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_c

    const/16 v0, 0x41

    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_10

    :cond_c
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-eq v4, v0, :cond_d

    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_10

    :cond_d
    const/16 v0, 0x73

    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_e

    const/16 v0, 0x53

    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_10

    :cond_e
    const/16 v0, 0x65

    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x4

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    if-ne v6, v0, :cond_10

    .line 1243
    :cond_f
    const-string v0, "false"

    iput-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    .line 1244
    sget-object v0, Lcom/lewa/gson/stream/JsonToken;->BOOLEAN:Lcom/lewa/gson/stream/JsonToken;

    goto/16 :goto_0

    .line 1246
    :cond_10
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->stringPool:Lcom/lewa/gson/stream/StringPool;

    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    iget v3, p0, Lcom/lewa/gson/stream/JsonReader;->valueLength:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/gson/stream/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    .line 1247
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->valueLength:I

    invoke-direct {p0, v0, v1, v2}, Lcom/lewa/gson/stream/JsonReader;->decodeNumber([CII)Lcom/lewa/gson/stream/JsonToken;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private decodeNumber([CII)Lcom/lewa/gson/stream/JsonToken;
    .locals 6
    .parameter "chars"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v5, 0x2d

    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 1258
    move v1, p2

    .line 1259
    .local v1, i:I
    aget-char v0, p1, v1

    .line 1261
    .local v0, c:I
    if-ne v0, v5, :cond_0

    .line 1262
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1265
    :cond_0
    if-ne v0, v3, :cond_2

    .line 1266
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1276
    :cond_1
    const/16 v2, 0x2e

    if-ne v0, v2, :cond_4

    .line 1277
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1278
    :goto_0
    if-lt v0, v3, :cond_4

    if-gt v0, v4, :cond_4

    .line 1279
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_0

    .line 1267
    :cond_2
    const/16 v2, 0x31

    if-lt v0, v2, :cond_3

    if-gt v0, v4, :cond_3

    .line 1268
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1269
    :goto_1
    if-lt v0, v3, :cond_1

    if-gt v0, v4, :cond_1

    .line 1270
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_1

    .line 1273
    :cond_3
    sget-object v2, Lcom/lewa/gson/stream/JsonToken;->STRING:Lcom/lewa/gson/stream/JsonToken;

    .line 1301
    :goto_2
    return-object v2

    .line 1283
    :cond_4
    const/16 v2, 0x65

    if-eq v0, v2, :cond_5

    const/16 v2, 0x45

    if-ne v0, v2, :cond_9

    .line 1284
    :cond_5
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1285
    const/16 v2, 0x2b

    if-eq v0, v2, :cond_6

    if-ne v0, v5, :cond_7

    .line 1286
    :cond_6
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1288
    :cond_7
    if-lt v0, v3, :cond_8

    if-gt v0, v4, :cond_8

    .line 1289
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1290
    :goto_3
    if-lt v0, v3, :cond_9

    if-gt v0, v4, :cond_9

    .line 1291
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_3

    .line 1294
    :cond_8
    sget-object v2, Lcom/lewa/gson/stream/JsonToken;->STRING:Lcom/lewa/gson/stream/JsonToken;

    goto :goto_2

    .line 1298
    :cond_9
    add-int v2, p2, p3

    if-ne v1, v2, :cond_a

    .line 1299
    sget-object v2, Lcom/lewa/gson/stream/JsonToken;->NUMBER:Lcom/lewa/gson/stream/JsonToken;

    goto :goto_2

    .line 1301
    :cond_a
    sget-object v2, Lcom/lewa/gson/stream/JsonToken;->STRING:Lcom/lewa/gson/stream/JsonToken;

    goto :goto_2
.end method

.method private expect(Lcom/lewa/gson/stream/JsonToken;)V
    .locals 3
    .parameter "expected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    .line 338
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    if-eq v0, p1, :cond_0

    .line 339
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->advance()Lcom/lewa/gson/stream/JsonToken;

    .line 343
    return-void
.end method

.method private fillBuffer(I)Z
    .locals 12
    .parameter "minimum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 799
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    .line 803
    .local v0, buffer:[C
    iget v3, p0, Lcom/lewa/gson/stream/JsonReader;->bufferStartLine:I

    .line 804
    .local v3, line:I
    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->bufferStartColumn:I

    .line 805
    .local v1, column:I
    const/4 v2, 0x0

    .local v2, i:I
    iget v4, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .local v4, p:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 806
    aget-char v8, v0, v2

    const/16 v9, 0xa

    if-ne v8, v9, :cond_0

    .line 807
    add-int/lit8 v3, v3, 0x1

    .line 808
    const/4 v1, 0x1

    .line 805
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 810
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 813
    :cond_1
    iput v3, p0, Lcom/lewa/gson/stream/JsonReader;->bufferStartLine:I

    .line 814
    iput v1, p0, Lcom/lewa/gson/stream/JsonReader;->bufferStartColumn:I

    .line 816
    iget v8, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    iget v9, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    if-eq v8, v9, :cond_4

    .line 817
    iget v8, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    iget v9, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    .line 818
    iget v8, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    iget v9, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    invoke-static {v0, v8, v0, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 823
    :goto_2
    iput v7, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 825
    :cond_2
    iget-object v8, p0, Lcom/lewa/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget v9, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    array-length v10, v0

    iget v11, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    sub-int/2addr v10, v11

    invoke-virtual {v8, v0, v9, v10}, Ljava/io/Reader;->read([CII)I

    move-result v5

    .local v5, total:I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_5

    .line 826
    iget v8, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    .line 829
    iget v8, p0, Lcom/lewa/gson/stream/JsonReader;->bufferStartLine:I

    if-ne v8, v6, :cond_3

    iget v8, p0, Lcom/lewa/gson/stream/JsonReader;->bufferStartColumn:I

    if-ne v8, v6, :cond_3

    iget v8, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    if-lez v8, :cond_3

    aget-char v8, v0, v7

    const v9, 0xfeff

    if-ne v8, v9, :cond_3

    .line 830
    iget v8, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 831
    iget v8, p0, Lcom/lewa/gson/stream/JsonReader;->bufferStartColumn:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/lewa/gson/stream/JsonReader;->bufferStartColumn:I

    .line 834
    :cond_3
    iget v8, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    if-lt v8, p1, :cond_2

    .line 838
    :goto_3
    return v6

    .line 820
    .end local v5           #total:I
    :cond_4
    iput v7, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    goto :goto_2

    .restart local v5       #total:I
    :cond_5
    move v6, v7

    .line 838
    goto :goto_3
.end method

.method private getColumnNumber()I
    .locals 4

    .prologue
    .line 852
    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->bufferStartColumn:I

    .line 853
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    if-ge v0, v2, :cond_1

    .line 854
    iget-object v2, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 855
    const/4 v1, 0x1

    .line 853
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 857
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 860
    :cond_1
    return v1
.end method

.method private getLineNumber()I
    .locals 4

    .prologue
    .line 842
    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->bufferStartLine:I

    .line 843
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    if-ge v0, v2, :cond_1

    .line 844
    iget-object v2, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 845
    add-int/lit8 v1, v1, 0x1

    .line 843
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 848
    :cond_1
    return v1
.end method

.method private nextInArray(Z)Lcom/lewa/gson/stream/JsonToken;
    .locals 4
    .parameter "firstElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 660
    if-eqz p1, :cond_0

    .line 661
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->stack:[Lcom/lewa/gson/stream/JsonScope;

    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/lewa/gson/stream/JsonScope;->NONEMPTY_ARRAY:Lcom/lewa/gson/stream/JsonScope;

    aput-object v2, v0, v1

    .line 677
    :goto_0
    :sswitch_0
    invoke-direct {p0, v3}, Lcom/lewa/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 692
    iget v0, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 693
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->nextValue()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v0

    :goto_1
    return-object v0

    .line 664
    :cond_0
    invoke-direct {p0, v3}, Lcom/lewa/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 673
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/lewa/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 666
    :sswitch_1
    iget v0, p0, Lcom/lewa/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lewa/gson/stream/JsonReader;->stackSize:I

    .line 667
    sget-object v0, Lcom/lewa/gson/stream/JsonToken;->END_ARRAY:Lcom/lewa/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    goto :goto_1

    .line 669
    :sswitch_2
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->checkLenient()V

    goto :goto_0

    .line 679
    :sswitch_3
    if-eqz p1, :cond_1

    .line 680
    iget v0, p0, Lcom/lewa/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lewa/gson/stream/JsonReader;->stackSize:I

    .line 681
    sget-object v0, Lcom/lewa/gson/stream/JsonToken;->END_ARRAY:Lcom/lewa/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    goto :goto_1

    .line 687
    :cond_1
    :sswitch_4
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->checkLenient()V

    .line 688
    iget v0, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 689
    const-string v0, "null"

    iput-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    .line 690
    sget-object v0, Lcom/lewa/gson/stream/JsonToken;->NULL:Lcom/lewa/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    goto :goto_1

    .line 677
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_4
        0x3b -> :sswitch_4
        0x5d -> :sswitch_3
    .end sparse-switch

    .line 664
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextInObject(Z)Lcom/lewa/gson/stream/JsonToken;
    .locals 4
    .parameter "firstElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 704
    if-eqz p1, :cond_0

    .line 706
    invoke-direct {p0, v2}, Lcom/lewa/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 711
    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 727
    :sswitch_0
    invoke-direct {p0, v2}, Lcom/lewa/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 728
    .local v0, quote:I
    sparse-switch v0, :sswitch_data_0

    .line 735
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->checkLenient()V

    .line 736
    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 737
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lewa/gson/stream/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->name:Ljava/lang/String;

    .line 738
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 739
    const-string v1, "Expected name"

    invoke-direct {p0, v1}, Lcom/lewa/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 708
    .end local v0           #quote:I
    :pswitch_0
    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lewa/gson/stream/JsonReader;->stackSize:I

    .line 709
    sget-object v1, Lcom/lewa/gson/stream/JsonToken;->END_OBJECT:Lcom/lewa/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    .line 744
    :goto_0
    return-object v1

    .line 714
    :cond_0
    invoke-direct {p0, v2}, Lcom/lewa/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    .line 722
    const-string v1, "Unterminated object"

    invoke-direct {p0, v1}, Lcom/lewa/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 716
    :sswitch_1
    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lewa/gson/stream/JsonReader;->stackSize:I

    .line 717
    sget-object v1, Lcom/lewa/gson/stream/JsonToken;->END_OBJECT:Lcom/lewa/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    goto :goto_0

    .line 730
    .restart local v0       #quote:I
    :sswitch_2
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->checkLenient()V

    .line 732
    :sswitch_3
    int-to-char v1, v0

    invoke-direct {p0, v1}, Lcom/lewa/gson/stream/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->name:Ljava/lang/String;

    .line 743
    :cond_1
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->stack:[Lcom/lewa/gson/stream/JsonScope;

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/lewa/gson/stream/JsonScope;->DANGLING_NAME:Lcom/lewa/gson/stream/JsonScope;

    aput-object v3, v1, v2

    .line 744
    sget-object v1, Lcom/lewa/gson/stream/JsonToken;->NAME:Lcom/lewa/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    goto :goto_0

    .line 706
    nop

    :pswitch_data_0
    .packed-switch 0x7d
        :pswitch_0
    .end packed-switch

    .line 728
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
    .end sparse-switch

    .line 714
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextLiteral(Z)Ljava/lang/String;
    .locals 6
    .parameter "assignOffsetsOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1061
    const/4 v0, 0x0

    .line 1062
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v3, -0x1

    iput v3, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    .line 1063
    iput v5, p0, Lcom/lewa/gson/stream/JsonReader;->valueLength:I

    .line 1064
    const/4 v1, 0x0

    .line 1068
    .local v1, i:I
    :cond_0
    :goto_0
    iget v3, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    if-ge v3, v4, :cond_1

    .line 1069
    iget-object v3, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1068
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1075
    :sswitch_0
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->checkLenient()V

    .line 1119
    :goto_1
    :sswitch_1
    if-eqz p1, :cond_4

    if-nez v0, :cond_4

    .line 1120
    iget v3, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    iput v3, p0, Lcom/lewa/gson/stream/JsonReader;->valuePos:I

    .line 1121
    const/4 v2, 0x0

    .line 1130
    .local v2, result:Ljava/lang/String;
    :goto_2
    iget v3, p0, Lcom/lewa/gson/stream/JsonReader;->valueLength:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/lewa/gson/stream/JsonReader;->valueLength:I

    .line 1131
    iget v3, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 1132
    return-object v2

    .line 1096
    .end local v2           #result:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 1097
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/lewa/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1100
    iget-object v3, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    aput-char v5, v3, v4

    goto :goto_1

    .line 1106
    :cond_2
    if-nez v0, :cond_3

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1109
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    :cond_3
    iget-object v3, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1110
    iget v3, p0, Lcom/lewa/gson/stream/JsonReader;->valueLength:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/lewa/gson/stream/JsonReader;->valueLength:I

    .line 1111
    iget v3, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 1112
    const/4 v1, 0x0

    .line 1113
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/lewa/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1122
    :cond_4
    iget-boolean v3, p0, Lcom/lewa/gson/stream/JsonReader;->skipping:Z

    if-eqz v3, :cond_5

    .line 1123
    const-string v2, "skipped!"

    .restart local v2       #result:Ljava/lang/String;
    goto :goto_2

    .line 1124
    .end local v2           #result:Ljava/lang/String;
    :cond_5
    if-nez v0, :cond_6

    .line 1125
    iget-object v3, p0, Lcom/lewa/gson/stream/JsonReader;->stringPool:Lcom/lewa/gson/stream/StringPool;

    iget-object v4, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    invoke-virtual {v3, v4, v5, v1}, Lcom/lewa/gson/stream/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #result:Ljava/lang/String;
    goto :goto_2

    .line 1127
    .end local v2           #result:Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #result:Ljava/lang/String;
    goto :goto_2

    .line 1069
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextNonWhitespace(Z)I
    .locals 10
    .parameter "throwOnEof"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 878
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    .line 879
    .local v0, buffer:[C
    iget v4, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 880
    .local v4, p:I
    iget v3, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    .line 882
    .local v3, l:I
    :goto_0
    if-ne v4, v3, :cond_1

    .line 883
    iput v4, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 884
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/lewa/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 953
    if-eqz p1, :cond_4

    .line 954
    new-instance v7, Ljava/io/EOFException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "End of input at line "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getLineNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " column "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getColumnNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 887
    :cond_0
    iget v4, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 888
    iget v3, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    .line 891
    :cond_1
    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .local v5, p:I
    aget-char v1, v0, v4

    .line 892
    .local v1, c:I
    sparse-switch v1, :sswitch_data_0

    .line 949
    iput v5, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    move v4, v5

    .line 957
    .end local v1           #c:I
    .end local v5           #p:I
    .restart local v4       #p:I
    :goto_1
    return v1

    .end local v4           #p:I
    .restart local v1       #c:I
    .restart local v5       #p:I
    :sswitch_0
    move v4, v5

    .line 897
    .end local v5           #p:I
    .restart local v4       #p:I
    goto :goto_0

    .line 900
    .end local v4           #p:I
    .restart local v5       #p:I
    :sswitch_1
    iput v5, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 901
    if-ne v5, v3, :cond_2

    .line 902
    iget v7, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 903
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/lewa/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    .line 904
    .local v2, charsLoaded:Z
    iget v7, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 905
    if-nez v2, :cond_2

    move v4, v5

    .line 906
    .end local v5           #p:I
    .restart local v4       #p:I
    goto :goto_1

    .line 910
    .end local v2           #charsLoaded:Z
    .end local v4           #p:I
    .restart local v5       #p:I
    :cond_2
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->checkLenient()V

    .line 911
    iget v7, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    aget-char v6, v0, v7

    .line 912
    .local v6, peek:C
    sparse-switch v6, :sswitch_data_1

    move v4, v5

    .line 932
    .end local v5           #p:I
    .restart local v4       #p:I
    goto :goto_1

    .line 915
    .end local v4           #p:I
    .restart local v5       #p:I
    :sswitch_2
    iget v7, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 916
    const-string v7, "*/"

    invoke-direct {p0, v7}, Lcom/lewa/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 917
    const-string v7, "Unterminated comment"

    invoke-direct {p0, v7}, Lcom/lewa/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 919
    :cond_3
    iget v7, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v7, 0x2

    .line 920
    .end local v5           #p:I
    .restart local v4       #p:I
    iget v3, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    .line 921
    goto/16 :goto_0

    .line 925
    .end local v4           #p:I
    .restart local v5       #p:I
    :sswitch_3
    iget v7, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 926
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 927
    iget v4, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 928
    .end local v5           #p:I
    .restart local v4       #p:I
    iget v3, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    .line 929
    goto/16 :goto_0

    .line 936
    .end local v4           #p:I
    .end local v6           #peek:C
    .restart local v5       #p:I
    :sswitch_4
    iput v5, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 942
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->checkLenient()V

    .line 943
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 944
    iget v4, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 945
    .end local v5           #p:I
    .restart local v4       #p:I
    iget v3, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    .line 946
    goto/16 :goto_0

    .line 957
    .end local v1           #c:I
    :cond_4
    const/4 v1, -0x1

    goto :goto_1

    .line 892
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_4
        0x2f -> :sswitch_1
    .end sparse-switch

    .line 912
    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private nextString(C)Ljava/lang/String;
    .locals 9
    .parameter "quote"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    .line 1007
    .local v0, buffer:[C
    const/4 v1, 0x0

    .line 1009
    .local v1, builder:Ljava/lang/StringBuilder;
    :cond_0
    iget v4, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 1010
    .local v4, p:I
    iget v3, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    .line 1012
    .local v3, l:I
    move v6, v4

    .local v6, start:I
    move v5, v4

    .line 1013
    .end local v4           #p:I
    .local v5, p:I
    :goto_0
    if-ge v5, v3, :cond_6

    .line 1014
    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    aget-char v2, v0, v5

    .line 1016
    .local v2, c:I
    if-ne v2, p1, :cond_3

    .line 1017
    iput v4, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 1018
    iget-boolean v7, p0, Lcom/lewa/gson/stream/JsonReader;->skipping:Z

    if-eqz v7, :cond_1

    .line 1019
    const-string v7, "skipped!"

    .line 1024
    :goto_1
    return-object v7

    .line 1020
    :cond_1
    if-nez v1, :cond_2

    .line 1021
    iget-object v7, p0, Lcom/lewa/gson/stream/JsonReader;->stringPool:Lcom/lewa/gson/stream/StringPool;

    sub-int v8, v4, v6

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v0, v6, v8}, Lcom/lewa/gson/stream/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1023
    :cond_2
    sub-int v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1024
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1027
    :cond_3
    const/16 v7, 0x5c

    if-ne v2, v7, :cond_5

    .line 1028
    iput v4, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 1029
    if-nez v1, :cond_4

    .line 1030
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1032
    .restart local v1       #builder:Ljava/lang/StringBuilder;
    :cond_4
    sub-int v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1033
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1034
    iget v4, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 1035
    iget v3, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    .line 1036
    move v6, v4

    :cond_5
    move v5, v4

    .line 1038
    .end local v4           #p:I
    .restart local v5       #p:I
    goto :goto_0

    .line 1040
    .end local v2           #c:I
    :cond_6
    if-nez v1, :cond_7

    .line 1041
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1043
    .restart local v1       #builder:Ljava/lang/StringBuilder;
    :cond_7
    sub-int v7, v5, v6

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1044
    iput v5, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 1045
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/lewa/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1046
    const-string v7, "Unterminated string"

    invoke-direct {p0, v7}, Lcom/lewa/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v7

    throw v7
.end method

.method private nextValue()Lcom/lewa/gson/stream/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 771
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lewa/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 772
    .local v0, c:I
    sparse-switch v0, :sswitch_data_0

    .line 788
    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 789
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->readLiteral()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v1

    :goto_0
    return-object v1

    .line 774
    :sswitch_0
    sget-object v1, Lcom/lewa/gson/stream/JsonScope;->EMPTY_OBJECT:Lcom/lewa/gson/stream/JsonScope;

    invoke-direct {p0, v1}, Lcom/lewa/gson/stream/JsonReader;->push(Lcom/lewa/gson/stream/JsonScope;)V

    .line 775
    sget-object v1, Lcom/lewa/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/lewa/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    goto :goto_0

    .line 778
    :sswitch_1
    sget-object v1, Lcom/lewa/gson/stream/JsonScope;->EMPTY_ARRAY:Lcom/lewa/gson/stream/JsonScope;

    invoke-direct {p0, v1}, Lcom/lewa/gson/stream/JsonReader;->push(Lcom/lewa/gson/stream/JsonScope;)V

    .line 779
    sget-object v1, Lcom/lewa/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/lewa/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    goto :goto_0

    .line 782
    :sswitch_2
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->checkLenient()V

    .line 784
    :sswitch_3
    int-to-char v1, v0

    invoke-direct {p0, v1}, Lcom/lewa/gson/stream/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    .line 785
    sget-object v1, Lcom/lewa/gson/stream/JsonToken;->STRING:Lcom/lewa/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    goto :goto_0

    .line 772
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
        0x5b -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private objectValue()Lcom/lewa/gson/stream/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 752
    invoke-direct {p0, v2}, Lcom/lewa/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 762
    :pswitch_0
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/lewa/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 756
    :pswitch_1
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->checkLenient()V

    .line 757
    iget v0, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/lewa/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_1

    .line 758
    iget v0, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 765
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->stack:[Lcom/lewa/gson/stream/JsonScope;

    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/lewa/gson/stream/JsonScope;->NONEMPTY_OBJECT:Lcom/lewa/gson/stream/JsonScope;

    aput-object v2, v0, v1

    .line 766
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->nextValue()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v0

    return-object v0

    .line 752
    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private push(Lcom/lewa/gson/stream/JsonScope;)V
    .locals 4
    .parameter "newTop"

    .prologue
    const/4 v3, 0x0

    .line 650
    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->stackSize:I

    iget-object v2, p0, Lcom/lewa/gson/stream/JsonReader;->stack:[Lcom/lewa/gson/stream/JsonScope;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 651
    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Lcom/lewa/gson/stream/JsonScope;

    .line 652
    .local v0, newStack:[Lcom/lewa/gson/stream/JsonScope;
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->stack:[Lcom/lewa/gson/stream/JsonScope;

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->stackSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 653
    iput-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->stack:[Lcom/lewa/gson/stream/JsonScope;

    .line 655
    .end local v0           #newStack:[Lcom/lewa/gson/stream/JsonScope;
    :cond_0
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->stack:[Lcom/lewa/gson/stream/JsonScope;

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/lewa/gson/stream/JsonReader;->stackSize:I

    aput-object p1, v1, v2

    .line 656
    return-void
.end method

.method private readEscapeCharacter()C
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    .line 1150
    iget v5, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/lewa/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1151
    const-string v5, "Unterminated escape sequence"

    invoke-direct {p0, v5}, Lcom/lewa/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1154
    :cond_0
    iget-object v5, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v6, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    aget-char v2, v5, v6

    .line 1155
    .local v2, escaped:C
    sparse-switch v2, :sswitch_data_0

    move v4, v2

    .line 1197
    :goto_0
    return v4

    .line 1157
    :sswitch_0
    iget v5, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x4

    iget v6, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    if-le v5, v6, :cond_1

    invoke-direct {p0, v10}, Lcom/lewa/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1158
    const-string v5, "Unterminated escape sequence"

    invoke-direct {p0, v5}, Lcom/lewa/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1161
    :cond_1
    const/4 v4, 0x0

    .line 1162
    .local v4, result:C
    iget v3, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .local v3, i:I
    add-int/lit8 v1, v3, 0x4

    .local v1, end:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 1163
    iget-object v5, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    aget-char v0, v5, v3

    .line 1164
    .local v0, c:C
    shl-int/lit8 v5, v4, 0x4

    int-to-char v4, v5

    .line 1165
    const/16 v5, 0x30

    if-lt v0, v5, :cond_2

    const/16 v5, 0x39

    if-gt v0, v5, :cond_2

    .line 1166
    add-int/lit8 v5, v0, -0x30

    add-int/2addr v5, v4

    int-to-char v4, v5

    .line 1162
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1167
    :cond_2
    const/16 v5, 0x61

    if-lt v0, v5, :cond_3

    const/16 v5, 0x66

    if-gt v0, v5, :cond_3

    .line 1168
    add-int/lit8 v5, v0, -0x61

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v4, v5

    goto :goto_2

    .line 1169
    :cond_3
    const/16 v5, 0x41

    if-lt v0, v5, :cond_4

    const/16 v5, 0x46

    if-gt v0, v5, :cond_4

    .line 1170
    add-int/lit8 v5, v0, -0x41

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v4, v5

    goto :goto_2

    .line 1172
    :cond_4
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lewa/gson/stream/JsonReader;->stringPool:Lcom/lewa/gson/stream/StringPool;

    iget-object v8, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v9, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/lewa/gson/stream/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1175
    .end local v0           #c:C
    :cond_5
    iget v5, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 1179
    .end local v1           #end:I
    .end local v3           #i:I
    .end local v4           #result:C
    :sswitch_1
    const/16 v4, 0x9

    goto :goto_0

    .line 1182
    :sswitch_2
    const/16 v4, 0x8

    goto :goto_0

    .line 1185
    :sswitch_3
    const/16 v4, 0xa

    goto/16 :goto_0

    .line 1188
    :sswitch_4
    const/16 v4, 0xd

    goto/16 :goto_0

    .line 1191
    :sswitch_5
    const/16 v4, 0xc

    goto/16 :goto_0

    .line 1155
    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private readLiteral()Lcom/lewa/gson/stream/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1205
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lewa/gson/stream/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    .line 1206
    iget v0, p0, Lcom/lewa/gson/stream/JsonReader;->valueLength:I

    if-nez v0, :cond_0

    .line 1207
    const-string v0, "Expected literal value"

    invoke-direct {p0, v0}, Lcom/lewa/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1209
    :cond_0
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->decodeLiteral()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    .line 1210
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    sget-object v1, Lcom/lewa/gson/stream/JsonToken;->STRING:Lcom/lewa/gson/stream/JsonToken;

    if-ne v0, v1, :cond_1

    .line 1211
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->checkLenient()V

    .line 1213
    :cond_1
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    return-object v0
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 3
    .parameter "toFind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 983
    :goto_0
    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/lewa/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 984
    :cond_0
    const/4 v0, 0x0

    .local v0, c:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 985
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 983
    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    goto :goto_0

    .line 984
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 989
    :cond_2
    const/4 v1, 0x1

    .line 991
    .end local v0           #c:I
    :goto_2
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private skipToEndOfLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 973
    :cond_0
    iget v1, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->limit:I

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lewa/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 974
    :cond_1
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    aget-char v0, v1, v2

    .line 975
    .local v0, c:C
    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 979
    .end local v0           #c:C
    :cond_2
    return-void
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1310
    new-instance v0, Lcom/lewa/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    sget-object v0, Lcom/lewa/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/lewa/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/lewa/gson/stream/JsonReader;->expect(Lcom/lewa/gson/stream/JsonToken;)V

    .line 307
    return-void
.end method

.method public beginObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    sget-object v0, Lcom/lewa/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/lewa/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/lewa/gson/stream/JsonReader;->expect(Lcom/lewa/gson/stream/JsonToken;)V

    .line 323
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 620
    iput-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    .line 621
    iput-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    .line 622
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->stack:[Lcom/lewa/gson/stream/JsonScope;

    const/4 v1, 0x0

    sget-object v2, Lcom/lewa/gson/stream/JsonScope;->CLOSED:Lcom/lewa/gson/stream/JsonScope;

    aput-object v2, v0, v1

    .line 623
    const/4 v0, 0x1

    iput v0, p0, Lcom/lewa/gson/stream/JsonReader;->stackSize:I

    .line 624
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 625
    return-void
.end method

.method public endArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    sget-object v0, Lcom/lewa/gson/stream/JsonToken;->END_ARRAY:Lcom/lewa/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/lewa/gson/stream/JsonReader;->expect(Lcom/lewa/gson/stream/JsonToken;)V

    .line 315
    return-void
.end method

.method public endObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    sget-object v0, Lcom/lewa/gson/stream/JsonToken;->END_OBJECT:Lcom/lewa/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/lewa/gson/stream/JsonReader;->expect(Lcom/lewa/gson/stream/JsonToken;)V

    .line 331
    return-void
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    .line 350
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    sget-object v1, Lcom/lewa/gson/stream/JsonToken;->END_OBJECT:Lcom/lewa/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    sget-object v1, Lcom/lewa/gson/stream/JsonToken;->END_ARRAY:Lcom/lewa/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLenient()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/lewa/gson/stream/JsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    .line 482
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    sget-object v2, Lcom/lewa/gson/stream/JsonToken;->BOOLEAN:Lcom/lewa/gson/stream/JsonToken;

    if-eq v1, v2, :cond_0

    .line 483
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string v2, "true"

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 488
    .local v0, result:Z
    :goto_0
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->advance()Lcom/lewa/gson/stream/JsonToken;

    .line 489
    return v0

    .line 487
    .end local v0           #result:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextDouble()D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    .line 520
    iget-object v2, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    sget-object v3, Lcom/lewa/gson/stream/JsonToken;->STRING:Lcom/lewa/gson/stream/JsonToken;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    sget-object v3, Lcom/lewa/gson/stream/JsonToken;->NUMBER:Lcom/lewa/gson/stream/JsonToken;

    if-eq v2, v3, :cond_0

    .line 521
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a double but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getColumnNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 525
    :cond_0
    iget-object v2, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 527
    .local v0, result:D
    const-wide/high16 v2, 0x3ff0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 528
    new-instance v2, Lcom/lewa/gson/stream/MalformedJsonException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids octal prefixes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getColumnNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lewa/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 531
    :cond_1
    iget-boolean v2, p0, Lcom/lewa/gson/stream/JsonReader;->lenient:Z

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 532
    :cond_2
    new-instance v2, Lcom/lewa/gson/stream/MalformedJsonException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getColumnNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lewa/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 536
    :cond_3
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->advance()Lcom/lewa/gson/stream/JsonToken;

    .line 537
    return-wide v0
.end method

.method public nextInt()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    .line 590
    iget-object v4, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    sget-object v5, Lcom/lewa/gson/stream/JsonToken;->STRING:Lcom/lewa/gson/stream/JsonToken;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    sget-object v5, Lcom/lewa/gson/stream/JsonToken;->NUMBER:Lcom/lewa/gson/stream/JsonToken;

    if-eq v4, v5, :cond_0

    .line 591
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected an int but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " column "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getColumnNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 597
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 607
    .local v3, result:I
    :cond_1
    int-to-long v4, v3

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 608
    new-instance v4, Lcom/lewa/gson/stream/MalformedJsonException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSON forbids octal prefixes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " column "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getColumnNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/lewa/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 598
    .end local v3           #result:I
    :catch_0
    move-exception v2

    .line 599
    .local v2, ignored:Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 600
    .local v0, asDouble:D
    double-to-int v3, v0

    .line 601
    .restart local v3       #result:I
    int-to-double v4, v3

    cmpl-double v4, v4, v0

    if-eqz v4, :cond_1

    .line 602
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected an int but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " column "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getColumnNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 612
    .end local v0           #asDouble:D
    .end local v2           #ignored:Ljava/lang/NumberFormatException;
    :cond_2
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->advance()Lcom/lewa/gson/stream/JsonToken;

    .line 613
    return v3
.end method

.method public nextLong()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    .line 552
    iget-object v5, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    sget-object v6, Lcom/lewa/gson/stream/JsonToken;->STRING:Lcom/lewa/gson/stream/JsonToken;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    sget-object v6, Lcom/lewa/gson/stream/JsonToken;->NUMBER:Lcom/lewa/gson/stream/JsonToken;

    if-eq v5, v6, :cond_0

    .line 553
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 559
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 569
    .local v3, result:J
    :cond_1
    const-wide/16 v5, 0x1

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2

    iget-object v5, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 570
    new-instance v5, Lcom/lewa/gson/stream/MalformedJsonException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSON forbids octal prefixes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/lewa/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 560
    .end local v3           #result:J
    :catch_0
    move-exception v2

    .line 561
    .local v2, ignored:Ljava/lang/NumberFormatException;
    iget-object v5, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 562
    .local v0, asDouble:D
    double-to-long v3, v0

    .line 563
    .restart local v3       #result:J
    long-to-double v5, v3

    cmpl-double v5, v5, v0

    if-eqz v5, :cond_1

    .line 564
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 574
    .end local v0           #asDouble:D
    .end local v2           #ignored:Ljava/lang/NumberFormatException;
    :cond_2
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->advance()Lcom/lewa/gson/stream/JsonToken;

    .line 575
    return-wide v3
.end method

.method public nextName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    .line 444
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    sget-object v2, Lcom/lewa/gson/stream/JsonToken;->NAME:Lcom/lewa/gson/stream/JsonToken;

    if-eq v1, v2, :cond_0

    .line 445
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->name:Ljava/lang/String;

    .line 449
    .local v0, result:Ljava/lang/String;
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->advance()Lcom/lewa/gson/stream/JsonToken;

    .line 450
    return-object v0
.end method

.method public nextNull()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    .line 501
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    sget-object v1, Lcom/lewa/gson/stream/JsonToken;->NULL:Lcom/lewa/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    .line 502
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_0
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->advance()Lcom/lewa/gson/stream/JsonToken;

    .line 507
    return-void
.end method

.method public nextString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    .line 463
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    sget-object v2, Lcom/lewa/gson/stream/JsonToken;->STRING:Lcom/lewa/gson/stream/JsonToken;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    sget-object v2, Lcom/lewa/gson/stream/JsonToken;->NUMBER:Lcom/lewa/gson/stream/JsonToken;

    if-eq v1, v2, :cond_0

    .line 464
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a string but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;

    .line 469
    .local v0, result:Ljava/lang/String;
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->advance()Lcom/lewa/gson/stream/JsonToken;

    .line 470
    return-object v0
.end method

.method public peek()Lcom/lewa/gson/stream/JsonToken;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 357
    iget-object v2, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    if-eqz v2, :cond_1

    .line 358
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    .line 392
    :cond_0
    :goto_0
    return-object v1

    .line 361
    :cond_1
    sget-object v2, Lcom/lewa/gson/stream/JsonReader$2;->$SwitchMap$com$lewa$gson$stream$JsonScope:[I

    iget-object v3, p0, Lcom/lewa/gson/stream/JsonReader;->stack:[Lcom/lewa/gson/stream/JsonScope;

    iget v4, p0, Lcom/lewa/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/lewa/gson/stream/JsonScope;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 396
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 363
    :pswitch_0
    iget-boolean v2, p0, Lcom/lewa/gson/stream/JsonReader;->lenient:Z

    if-eqz v2, :cond_2

    .line 364
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    .line 366
    :cond_2
    iget-object v2, p0, Lcom/lewa/gson/stream/JsonReader;->stack:[Lcom/lewa/gson/stream/JsonScope;

    iget v3, p0, Lcom/lewa/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lcom/lewa/gson/stream/JsonScope;->NONEMPTY_DOCUMENT:Lcom/lewa/gson/stream/JsonScope;

    aput-object v4, v2, v3

    .line 367
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->nextValue()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v1

    .line 368
    .local v1, firstToken:Lcom/lewa/gson/stream/JsonToken;
    iget-boolean v2, p0, Lcom/lewa/gson/stream/JsonReader;->lenient:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    sget-object v3, Lcom/lewa/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/lewa/gson/stream/JsonToken;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    sget-object v3, Lcom/lewa/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/lewa/gson/stream/JsonToken;

    if-eq v2, v3, :cond_0

    .line 369
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getColumnNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    .end local v1           #firstToken:Lcom/lewa/gson/stream/JsonToken;
    :pswitch_1
    invoke-direct {p0, v6}, Lcom/lewa/gson/stream/JsonReader;->nextInArray(Z)Lcom/lewa/gson/stream/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 376
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/lewa/gson/stream/JsonReader;->nextInArray(Z)Lcom/lewa/gson/stream/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 378
    :pswitch_3
    invoke-direct {p0, v6}, Lcom/lewa/gson/stream/JsonReader;->nextInObject(Z)Lcom/lewa/gson/stream/JsonToken;

    move-result-object v1

    goto/16 :goto_0

    .line 380
    :pswitch_4
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->objectValue()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v1

    goto/16 :goto_0

    .line 382
    :pswitch_5
    invoke-direct {p0, v5}, Lcom/lewa/gson/stream/JsonReader;->nextInObject(Z)Lcom/lewa/gson/stream/JsonToken;

    move-result-object v1

    goto/16 :goto_0

    .line 384
    :pswitch_6
    invoke-direct {p0, v5}, Lcom/lewa/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    .line 385
    .local v0, c:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 386
    sget-object v1, Lcom/lewa/gson/stream/JsonToken;->END_DOCUMENT:Lcom/lewa/gson/stream/JsonToken;

    goto/16 :goto_0

    .line 388
    :cond_3
    iget v2, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lewa/gson/stream/JsonReader;->pos:I

    .line 389
    iget-boolean v2, p0, Lcom/lewa/gson/stream/JsonReader;->lenient:Z

    if-nez v2, :cond_4

    .line 390
    const-string v2, "Expected EOF"

    invoke-direct {p0, v2}, Lcom/lewa/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 392
    :cond_4
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->nextValue()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v1

    goto/16 :goto_0

    .line 394
    .end local v0           #c:I
    :pswitch_7
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "JsonReader is closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .locals 0
    .parameter "lenient"

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/lewa/gson/stream/JsonReader;->lenient:Z

    .line 292
    return-void
.end method

.method public skipValue()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 633
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lewa/gson/stream/JsonReader;->skipping:Z

    .line 635
    const/4 v0, 0x0

    .line 637
    .local v0, count:I
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->advance()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v1

    .line 638
    .local v1, token:Lcom/lewa/gson/stream/JsonToken;
    sget-object v2, Lcom/lewa/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/lewa/gson/stream/JsonToken;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/lewa/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/lewa/gson/stream/JsonToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_3

    .line 639
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 643
    :cond_2
    :goto_0
    if-nez v0, :cond_0

    .line 645
    iput-boolean v3, p0, Lcom/lewa/gson/stream/JsonReader;->skipping:Z

    .line 647
    return-void

    .line 640
    :cond_3
    :try_start_1
    sget-object v2, Lcom/lewa/gson/stream/JsonToken;->END_ARRAY:Lcom/lewa/gson/stream/JsonToken;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/lewa/gson/stream/JsonToken;->END_OBJECT:Lcom/lewa/gson/stream/JsonToken;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v2, :cond_2

    .line 641
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 645
    .end local v1           #token:Lcom/lewa/gson/stream/JsonToken;
    :catchall_0
    move-exception v2

    iput-boolean v3, p0, Lcom/lewa/gson/stream/JsonReader;->skipping:Z

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonReader;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
