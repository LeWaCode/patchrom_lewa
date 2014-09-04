.class public Lcom/yulore/yellowsdkapi/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:I


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/yulore/yellowsdkapi/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yulore/yellowsdkapi/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/yulore/yellowsdkapi/a/a;->g:I

    return-void
.end method

.method private a(II)Lcom/yulore/yellowsdkapi/entity/ShopItem;
    .locals 6

    const/4 v0, 0x2

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yulore/yellowsdkapi/a/a;->d:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yulore/yellowsdkapi/a/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file not exists "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yulore/yellowsdkapi/a/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulore/yellowsdkapi/a/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v1, 0x800

    new-array v1, v1, [B

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0x800

    invoke-virtual {v2, v1, v4, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    add-int/lit8 v2, p2, 0x8

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x1f

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, -0x75

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x8

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    const/4 v3, 0x6

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    const/4 v3, 0x7

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    const/16 v3, 0x8

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    const/16 v3, 0x9

    const/4 v4, 0x3

    aput-byte v4, v2, v3

    :goto_0
    if-lt v0, p2, :cond_2

    invoke-static {v2}, Lcom/yulore/yellowsdkapi/util/BytesUtil;->decompress([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yulore/yellowsdkapi/a/a;->a(Ljava/lang/String;I)Lcom/yulore/yellowsdkapi/entity/ShopItem;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    add-int/lit8 v3, v0, 0x8

    aget-byte v4, v1, v0

    aput-byte v4, v2, v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;I)Lcom/yulore/yellowsdkapi/entity/ShopItem;
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Lcom/yulore/yellowsdkapi/entity/ShopItem;

    invoke-direct {v0}, Lcom/yulore/yellowsdkapi/entity/ShopItem;-><init>()V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "id"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yulore/yellowsdkapi/entity/ShopItem;->setId(Ljava/lang/String;)V

    const-string v2, "name"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yulore/yellowsdkapi/entity/ShopItem;->setName(Ljava/lang/String;)V

    const-string v2, "logo"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "logo"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yulore/yellowsdkapi/entity/ShopItem;->setLogo(Ljava/lang/String;)V

    :cond_0
    const-string v2, "cat_id"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "cat_id"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v5, v2, [Ljava/lang/String;

    move v2, v1

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v2, v6, :cond_3

    invoke-virtual {v0, v5}, Lcom/yulore/yellowsdkapi/entity/ShopItem;->setCatIds([Ljava/lang/String;)V

    :cond_1
    const-string v2, "tel"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "tel"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Lcom/yulore/yellowsdkapi/entity/TelephoneNum;

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_4

    invoke-virtual {v0, v3}, Lcom/yulore/yellowsdkapi/entity/ShopItem;->setTels([Lcom/yulore/yellowsdkapi/entity/TelephoneNum;)V

    :cond_2
    invoke-virtual {v0, p1}, Lcom/yulore/yellowsdkapi/entity/ShopItem;->setOffset(I)V

    :goto_2
    return-object v0

    :cond_3
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;

    invoke-direct {v5}, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;-><init>()V

    const-string v6, "tel_des"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;->setTelDesc(Ljava/lang/String;)V

    const-string v6, "tel_num"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;->setTelNum(Ljava/lang/String;)V

    const-string v6, "tel_type"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/yulore/yellowsdkapi/entity/TelephoneNum;->setTelType(I)V

    aput-object v5, v3, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_2
.end method

.method private a(I)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/yulore/yellowsdkapi/a/a;->d:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/yulore/yellowsdkapi/a/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file not exists "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yulore/yellowsdkapi/a/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulore/yellowsdkapi/a/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v1, 0x800

    new-array v1, v1, [B

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x800

    invoke-virtual {v3, v1, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    move v1, v2

    :goto_0
    if-lt v1, v5, :cond_3

    move v1, v2

    :cond_2
    add-int/lit8 v2, v1, 0x8

    new-array v2, v2, [B

    const/4 v4, 0x0

    const/16 v5, 0x1f

    aput-byte v5, v2, v4

    const/4 v4, 0x1

    const/16 v5, -0x75

    aput-byte v5, v2, v4

    const/4 v4, 0x2

    const/16 v5, 0x8

    aput-byte v5, v2, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput-byte v5, v2, v4

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput-byte v5, v2, v4

    const/4 v4, 0x5

    const/4 v5, 0x0

    aput-byte v5, v2, v4

    const/4 v4, 0x6

    const/4 v5, 0x0

    aput-byte v5, v2, v4

    const/4 v4, 0x7

    const/4 v5, 0x0

    aput-byte v5, v2, v4

    const/16 v4, 0x8

    const/4 v5, 0x0

    aput-byte v5, v2, v4

    const/16 v4, 0x9

    const/4 v5, 0x3

    aput-byte v5, v2, v4

    :goto_1
    if-lt v0, v1, :cond_5

    invoke-static {v2}, Lcom/yulore/yellowsdkapi/util/BytesUtil;->decompress([B)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    aget-byte v4, v3, v1

    if-eqz v4, :cond_4

    if-le v1, v7, :cond_4

    add-int/lit8 v4, v1, -0x2

    aget-byte v4, v3, v4

    add-int/lit8 v6, v1, -0x1

    aget-byte v6, v3, v6

    or-int/2addr v4, v6

    if-eqz v4, :cond_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v4, v0, 0x8

    aget-byte v5, v3, v0

    aput-byte v5, v2, v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x6

    const/4 v8, 0x1

    const/16 v7, 0x1000

    const/4 v2, 0x0

    sget-object v1, Lcom/yulore/yellowsdkapi/a/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dirPath="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",icFileName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/yulore/yellowsdkapi/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file not exists "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    const/4 v5, 0x0

    const/16 v6, 0x1000

    invoke-virtual {v4, v1, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    move v1, v2

    :goto_0
    if-lt v1, v7, :cond_3

    move v1, v2

    :cond_2
    sput v1, Lcom/yulore/yellowsdkapi/a/a;->c:I

    add-int/lit8 v2, v1, 0x4

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v5, 0x1f

    aput-byte v5, v2, v3

    const/4 v3, 0x1

    const/16 v5, -0x75

    aput-byte v5, v2, v3

    const/4 v3, 0x2

    const/16 v5, 0x8

    aput-byte v5, v2, v3

    const/4 v3, 0x3

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    const/4 v3, 0x4

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    const/4 v3, 0x5

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    const/4 v3, 0x6

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    const/4 v3, 0x7

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    const/16 v3, 0x8

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    const/16 v3, 0x9

    const/4 v5, 0x3

    aput-byte v5, v2, v3

    :goto_1
    if-lt v0, v1, :cond_5

    invoke-static {v2}, Lcom/yulore/yellowsdkapi/util/BytesUtil;->decompress([B)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    aget-byte v3, v4, v1

    if-eqz v3, :cond_4

    if-le v1, v8, :cond_4

    add-int/lit8 v3, v1, -0x2

    aget-byte v3, v4, v3

    add-int/lit8 v5, v1, -0x1

    aget-byte v5, v4, v5

    or-int/2addr v3, v5

    if-eqz v3, :cond_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v0, 0x4

    aget-byte v5, v4, v0

    aput-byte v5, v2, v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yulore/yellowsdkapi/entity/ShopItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yulore/yellowsdkapi/a/a;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yulore/yellowsdkapi/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file not exists "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    sget-object v0, Lcom/yulore/yellowsdkapi/a/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/yulore/yellowsdkapi/a/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/yulore/yellowsdkapi/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "decompress "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yulore/yellowsdkapi/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " header failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/yellowsdkapi/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yulore/yellowsdkapi/entity/ShopItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    const/4 v8, 0x1

    const/16 v7, 0x800

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    sget-object v3, Lcom/yulore/yellowsdkapi/a/a;->b:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yulore/yellowsdkapi/a/a;->d:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/yulore/yellowsdkapi/a/a;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file not exists "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yulore/yellowsdkapi/a/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulore/yellowsdkapi/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget v3, Lcom/yulore/yellowsdkapi/a/a;->c:I

    add-int/2addr v1, v3

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v1, 0x800

    new-array v1, v1, [B

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x800

    invoke-virtual {v4, v1, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    move v1, v2

    :goto_2
    if-lt v1, v7, :cond_3

    move v1, v2

    :cond_2
    add-int/lit8 v2, v1, 0x4

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v5, 0x1f

    aput-byte v5, v2, v3

    const/4 v3, 0x1

    const/16 v5, -0x75

    aput-byte v5, v2, v3

    const/4 v3, 0x2

    const/16 v5, 0x8

    aput-byte v5, v2, v3

    const/4 v3, 0x3

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    const/4 v3, 0x4

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    const/4 v3, 0x5

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    const/4 v3, 0x6

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    const/4 v3, 0x7

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    const/16 v3, 0x8

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    const/16 v3, 0x9

    const/4 v5, 0x3

    aput-byte v5, v2, v3

    :goto_3
    if-lt v0, v1, :cond_5

    invoke-static {v2}, Lcom/yulore/yellowsdkapi/util/BytesUtil;->decompress([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulore/yellowsdkapi/a/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_3
    aget-byte v3, v4, v1

    if-eqz v3, :cond_4

    if-le v1, v8, :cond_4

    add-int/lit8 v3, v1, -0x2

    aget-byte v3, v4, v3

    add-int/lit8 v5, v1, -0x1

    aget-byte v5, v4, v5

    or-int/2addr v3, v5

    if-eqz v3, :cond_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v0, 0x4

    aget-byte v5, v4, v0

    aput-byte v5, v2, v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yulore/yellowsdkapi/entity/ShopItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v4, v1, [I

    move v1, v2

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v1, v5, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    array-length v3, v4

    div-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    mul-int/lit8 v3, v2, 0x2

    aget v3, v4, v3

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v4, v5

    invoke-direct {p0, v3, v5}, Lcom/yulore/yellowsdkapi/a/a;->a(II)Lcom/yulore/yellowsdkapi/entity/ShopItem;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yulore/yellowsdkapi/entity/ShopItem;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/yulore/yellowsdkapi/a/a;->g:I

    if-eq p1, v0, :cond_0

    iput-object p2, p0, Lcom/yulore/yellowsdkapi/a/a;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/yulore/yellowsdkapi/a/a;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/yulore/yellowsdkapi/a/a;->f:Ljava/lang/String;

    iput p1, p0, Lcom/yulore/yellowsdkapi/a/a;->g:I

    sget-object v0, Lcom/yulore/yellowsdkapi/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new CategoryDatDecoder instance cityId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/yellowsdkapi/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/yulore/yellowsdkapi/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yulore/yellowsdkapi/a/a;->b:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/yulore/yellowsdkapi/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "decodeDataById cityId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "***categoryId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/yellowsdkapi/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p5}, Lcom/yulore/yellowsdkapi/a/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
