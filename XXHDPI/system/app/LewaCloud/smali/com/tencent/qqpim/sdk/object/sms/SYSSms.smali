.class public Lcom/tencent/qqpim/sdk/object/sms/SYSSms;
.super Lcom/tencent/qqpim/sdk/object/f;


# static fields
.field public static final TAG_FOLDER:Ljava/lang/String; = "FOLDER"

.field public static final TAG_INFORMATION:Ljava/lang/String; = "INFORMATION"

.field public static final TAG_SENDER_RECEIVER:Ljava/lang/String; = "SENDER"

.field public static final TAG_SEND_DATE:Ljava/lang/String; = "SENDDATE"

.field public static final TAG_SEND_RECEIVER_NAME:Ljava/lang/String; = "SENDNAME"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/object/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckSum()I
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/c;->a:Lcom/tencent/qqpim/sdk/interfaces/c;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/object/sms/SYSSms;->getCheckSum(Lcom/tencent/qqpim/sdk/interfaces/c;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getCheckSum(Lcom/tencent/qqpim/sdk/interfaces/c;)J
    .locals 5

    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/sms/SYSSms;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    :goto_1
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/sms/SYSSms;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/d;

    if-eqz v0, :cond_1

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public getEntityType()Lcom/tencent/qqpim/sdk/interfaces/b;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/b;->b:Lcom/tencent/qqpim/sdk/interfaces/b;

    return-object v0
.end method
