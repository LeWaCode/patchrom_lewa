.class public final Lcom/tencent/qqpim/sdk/apps/localsync/a/d;
.super Lcom/tencent/qqpim/sdk/apps/localsync/a/e;


# instance fields
.field private i:Ljava/util/List;

.field private j:Ljava/util/List;

.field private k:Ljava/util/List;

.field private final l:Ljava/util/List;

.field private m:I


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->l:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->m:I

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    return-void
.end method

.method private a(Ljava/io/File;)I
    .locals 7

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/utils/FileUtil;->getBufferedReader(Ljava/io/File;)Ljava/io/BufferedReader;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/defines/VCard;->getVCard(I)Lcom/tencent/qqpim/sdk/defines/VCard;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->i:Ljava/util/List;

    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ContactRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAllContactsFromFile():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-static {v3}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getBytesFromBase64Str(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/CryptorUtil;->decryptBytesToString([B[B)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BEGIN:VCARD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "END:VCARD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    if-eqz v4, :cond_4

    :try_start_3
    invoke-virtual {v1, v3}, Lcom/tencent/qqpim/sdk/defines/VCard;->parseVcard(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v3

    :try_start_4
    invoke-static {v3}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-boolean v3, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->e:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v3, :cond_2

    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_5
    :goto_2
    const/4 v0, -0x2

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_6
    const-string v4, "ContactRestoreOperator"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getAllContactsFromFile(),parse vcard"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_7
    const-string v3, "ContactRestoreOperator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getAllContactsFromFile()"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_0

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    const-string v2, "ContactRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAllContactsFromFile():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string v1, "ContactRestoreOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAllContactsFromFile():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_6

    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_6
    :goto_3
    throw v0

    :catch_5
    move-exception v1

    const-string v2, "ContactRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAllContactsFromFile():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private a(III)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;->onRestoreProcessBegin()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;->onRestoreProgressChange(II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    invoke-interface {v0, p3}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;->onRestoreProcessFinish(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a([I)Z
    .locals 5

    const/4 v0, 0x0

    array-length v2, p0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    aget v3, p0, v1

    sget-object v4, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v4

    if-eq v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b(Ljava/io/File;)I
    .locals 8

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/defines/VCard;->getVCard(I)Lcom/tencent/qqpim/sdk/defines/VCard;

    move-result-object v5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->i:Ljava/util/List;

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v3, 0x4

    :try_start_1
    new-array v6, v3, [B

    invoke-virtual {v2, v6}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result v3

    if-ne v3, v0, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "ContactRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAllContactsFromFile():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-static {v6}, Lcom/tencent/wscl/TextUtil;->fourByteToInt([B)I

    move-result v4

    new-array v3, v4, [B

    :goto_1
    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7, v4}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-result v4

    if-ne v4, v0, :cond_2

    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_5
    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/CryptorUtil;->decryptBytesToString([B[B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tencent/qqpim/sdk/defines/VCard;->parseVcard(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-boolean v3, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->e:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_3
    const/4 v0, -0x2

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ContactRestoreOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAllContactsFromFile():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_4
    :try_start_7
    invoke-virtual {v2, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-eq v3, v0, :cond_1

    invoke-static {v6}, Lcom/tencent/wscl/TextUtil;->fourByteToInt([B)I

    move-result v4

    new-array v3, v4, [B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v2, "ContactRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAllContactsFromFile():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v2, v3

    :goto_4
    :try_start_8
    const-string v3, "ContactRestoreOperator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getAllContactsFromFile()"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v2, :cond_5

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_5
    :goto_5
    move v0, v1

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string v2, "ContactRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAllContactsFromFile():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_6
    if-eqz v2, :cond_6

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_6
    :goto_7
    throw v0

    :catch_5
    move-exception v1

    const-string v2, "ContactRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAllContactsFromFile():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_4
.end method

.method private b(I)V
    .locals 1

    const/16 v0, 0x753c

    invoke-static {v0, p1}, Lcom/tencent/qqpim/sdk/c/a/e;->a(II)V

    const/16 v0, 0x75e8

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/e;->a(I)V

    const/16 v0, 0x75bf

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/e;->a(I)V

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->m:I

    if-nez v0, :cond_0

    const/16 v0, 0x7540

    invoke-static {v0, p1}, Lcom/tencent/qqpim/sdk/c/a/e;->a(II)V

    :cond_0
    return-void
.end method

.method private c()I
    .locals 11

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v4

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->j:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->i:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->k:Ljava/util/List;

    move v0, v3

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    const-string v0, "ContactRestoreOperator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "contact in db size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v3

    :goto_1
    if-lt v5, v9, :cond_4

    const-string v0, "ContactRestoreOperator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCurrentContactMap finish! time="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v5, v9, v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v5, Lcom/tencent/qqpim/sdk/apps/ContactMergerLogic;

    invoke-direct {v5}, Lcom/tencent/qqpim/sdk/apps/ContactMergerLogic;-><init>()V

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move v1, v3

    :goto_2
    if-lt v1, v2, :cond_6

    const-string v0, "ContactRestoreOperator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "generateInsertAndUpdateList() time = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v9

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->j:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->getNameFromEntity(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wscl/TextUtil;->isNullOrEmptyWithTrim(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, "no_name_18+(_*&)-=QqPiM~@!3"

    move-object v2, v0

    :goto_3
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-virtual {v5, v6, v0, v8}, Lcom/tencent/qqpim/sdk/apps/ContactMergerLogic;->compareAndMerge(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/tencent/qqpim/sdk/interfaces/IEntity;Ljava/util/Map;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-ne v7, v4, :cond_8

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->k:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_8
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->l:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    move-object v2, v0

    goto :goto_3
.end method

.method private c(I)I
    .locals 20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v2, 0x1

    sget-object v3, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v16

    div-int/lit8 v3, v16, 0x64

    rem-int/lit8 v2, v16, 0x64

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v17, v3, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->k:Ljava/util/List;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v10, v2

    :goto_1
    mul-int/lit8 v2, v10, 0x3c

    div-int v2, v2, p1

    add-int/lit8 v5, v2, 0x28

    const/4 v2, 0x1

    move v12, v2

    :goto_2
    move/from16 v0, v17

    if-le v12, v0, :cond_1

    const-string v2, "ContactRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "executeUpdate time:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v13

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    :goto_3
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move/from16 v0, v17

    if-eq v12, v0, :cond_2

    const/16 v2, 0x64

    move v11, v2

    :goto_4
    add-int/lit8 v2, v12, -0x1

    mul-int/lit8 v2, v2, 0x64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->l:Ljava/util/List;

    add-int v4, v2, v11

    invoke-interface {v3, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [I

    move-object/from16 v19, v0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    add-int/lit8 v2, v12, -0x1

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v2, v10

    add-int/2addr v2, v11

    mul-int/lit8 v2, v2, 0x3c

    div-int v2, v2, p1

    add-int/lit8 v6, v2, 0x28

    const-wide/16 v7, 0x3e8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->h:I

    add-int/lit8 v9, v2, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->h:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->a(ILcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;IIJI)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->update(Ljava/util/List;[I)Z

    invoke-static/range {v19 .. v19}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->a([I)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;->onRestoreProcessFinish(I)V

    const/4 v2, 0x3

    goto :goto_3

    :cond_2
    rem-int/lit8 v2, v16, 0x64

    if-nez v2, :cond_3

    const/16 v2, 0x64

    move v11, v2

    goto :goto_4

    :cond_3
    rem-int/lit8 v2, v16, 0x64

    move v11, v2

    goto :goto_4

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->b()V

    sget-boolean v2, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->e:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v12, -0x1

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v2, v10

    add-int/2addr v2, v11

    mul-int/lit8 v2, v2, 0x3c

    div-int v2, v2, p1

    add-int/lit8 v5, v2, 0x28

    const/16 v2, 0xf2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v3}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->a(III)V

    :cond_6
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_2

    :cond_7
    move v10, v2

    goto/16 :goto_1
.end method

.method private d(I)I
    .locals 20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v3, 0x1

    sget-object v4, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    div-int/lit8 v4, v15, 0x64

    rem-int/lit8 v3, v15, 0x64

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    add-int v16, v4, v3

    const/16 v6, 0x28

    const/4 v3, 0x1

    move v11, v3

    :goto_1
    move/from16 v0, v16

    if-le v11, v0, :cond_1

    const-string v3, "ContactRestoreOperator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "executeInsert time:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v12

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    :goto_2
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move/from16 v0, v16

    if-eq v11, v0, :cond_2

    const/16 v3, 0x64

    :goto_3
    new-array v0, v3, [I

    move-object/from16 v18, v0

    add-int/lit8 v3, v11, -0x1

    mul-int/lit8 v3, v3, 0x64

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->k:Ljava/util/List;

    move-object/from16 v0, v18

    array-length v5, v0

    add-int/2addr v5, v3

    invoke-interface {v4, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_6

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    add-int/lit8 v3, v11, -0x1

    mul-int/lit8 v3, v3, 0x64

    move-object/from16 v0, v18

    array-length v7, v0

    add-int/2addr v3, v7

    mul-int/lit8 v3, v3, 0x3c

    div-int v3, v3, p1

    add-int/lit8 v7, v3, 0x28

    const-wide/16 v8, 0x3e8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->h:I

    add-int/lit8 v10, v3, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->h:I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->a(ILcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;IIJI)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v14, v0, v1, v2}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->add(Ljava/util/List;Ljava/util/List;[I)Z

    invoke-static/range {v18 .. v18}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->a([I)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;->onRestoreProcessFinish(I)V

    const/4 v3, 0x3

    goto :goto_2

    :cond_2
    rem-int/lit8 v3, v15, 0x64

    if-nez v3, :cond_3

    const/16 v3, 0x64

    goto :goto_3

    :cond_3
    rem-int/lit8 v3, v15, 0x64

    goto :goto_3

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->b()V

    sget-boolean v3, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->e:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v11, -0x1

    mul-int/lit8 v3, v3, 0x64

    move-object/from16 v0, v18

    array-length v4, v0

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x3c

    div-int v3, v3, p1

    add-int/lit8 v6, v3, 0x28

    const/16 v3, 0xf2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v4}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->a(III)V

    :cond_6
    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(I)I
    .locals 8

    const/16 v0, 0xf2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->a(III)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    const/4 v3, 0x0

    const/16 v4, 0x14

    const-wide/16 v5, 0x1f4

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->h:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->h:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->a(ILcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;IIJI)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ContactUtil;->getAllContactsNoPhoto(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->j:Ljava/util/List;

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->b()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->m:I

    :cond_0
    sget-boolean v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->b(I)V

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xf2

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->a(III)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    const/16 v3, 0x14

    const/16 v4, 0x1e

    const-wide/16 v5, 0x1f4

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->h:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->h:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->a(ILcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;IIJI)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/contact2.bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->b(Ljava/io/File;)I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->b()V

    sget-boolean v1, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->e:Z

    if-eqz v1, :cond_4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->b(I)V

    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/contact.bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->a(Ljava/io/File;)I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    goto :goto_1

    :cond_4
    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->b(I)V

    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    const/16 v0, 0xf2

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->a(III)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    const/16 v3, 0x1e

    const/16 v4, 0x28

    const-wide/16 v5, 0x1f4

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->h:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->h:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->a(ILcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;IIJI)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->b()V

    sget-boolean v1, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->e:Z

    if-eqz v1, :cond_6

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->b(I)V

    const/4 v0, -0x2

    goto/16 :goto_0

    :cond_6
    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->b(I)V

    const/4 v0, -0x1

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0xf2

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->a(III)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->k:Ljava/util/List;

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_8
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->l:Ljava/util/List;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->k:Ljava/util/List;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    const-string v1, "ContactRestoreOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "toBeInserted size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->d(I)I

    move-result v1

    :cond_a
    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    :cond_b
    move v0, v1

    :cond_c
    :goto_2
    const/16 v1, 0xf3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->a(III)V

    sget-boolean v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->e:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->b(I)V

    const/4 v0, -0x2

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->l:Ljava/util/List;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f

    const-string v1, "ContactRestoreOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "toBeUpdated size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->c(I)I

    move-result v1

    move v0, v1

    :goto_3
    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x2

    goto :goto_2

    :cond_e
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/d;->b(I)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_f
    move v0, v1

    goto :goto_3
.end method
