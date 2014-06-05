.class public final Lcom/tencent/qqpim/sdk/apps/localsync/a/i;
.super Lcom/tencent/qqpim/sdk/apps/localsync/a/e;


# instance fields
.field private final i:Ljava/util/Set;

.field private j:Ljava/util/List;

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->i:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->j:Ljava/util/List;

    iput v1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->k:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->l:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->m:I

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    return-void
.end method

.method private a(Ljava/io/File;)I
    .locals 10

    const/16 v4, 0x5f

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/utils/FileUtil;->getBufferedReader(Ljava/io/File;)Ljava/io/BufferedReader;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "SMSRestoreOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readFileAndUpdateDB,SMSMD5Set size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->i:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->j:Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/defines/VCard;->getVCard(I)Lcom/tencent/qqpim/sdk/defines/VCard;

    move-result-object v6

    const/4 v1, 0x0

    move-object v2, v1

    move v1, v0

    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_3
    if-eqz v5, :cond_0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SMSRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readFileAndUpdateDB():"

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

    :cond_4
    :try_start_2
    invoke-static {v3}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getBytesFromBase64Str(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v7

    invoke-static {v3, v7}, Lcom/tencent/qqpim/sdk/utils/CryptorUtil;->decryptBytesToString([B[B)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v3, "BEGIN:VMESSAGE"

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "END:VMESSAGE"

    invoke-virtual {v7, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v3, v1, 0x1

    :try_start_3
    const-string v1, "UTF-8"

    invoke-virtual {v7, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/tencent/qqpim/sdk/defines/VCard;->parseVcard([B)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_b

    :try_start_4
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->i:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->i:Ljava/util/Set;

    invoke-virtual {v6, v2}, Lcom/tencent/qqpim/sdk/defines/VCard;->composeVcard4LocalSync(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/qqpim/sdk/utils/MD5Util;->encrypt_bytes([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_5
    const-string v1, "SMSRestoreOperator"

    const-string v7, "add entity to insert list"

    invoke-static {v1, v7}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->j:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v7, 0x32

    if-lt v1, v7, :cond_b

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->c()V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v3

    :goto_3
    sget-boolean v3, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->e:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v3, :cond_9

    if-eqz v5, :cond_6

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_6
    :goto_4
    const/4 v0, -0x2

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_6
    const-string v7, "SMSRestoreOperator"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "readFileAndUpdateDB(),parse vcard"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_7
    const-string v2, "SMSRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readFileAndUpdateDB(),read vcard file"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v5, :cond_0

    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    const-string v2, "SMSRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readFileAndUpdateDB():"

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

    :cond_7
    :try_start_9
    const-string v3, "SMSRestoreOperator"

    const-string v7, "s is not a message"

    invoke-static {v3, v7}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v5, :cond_8

    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_8
    :goto_5
    throw v0

    :catch_4
    move-exception v0

    const-string v1, "SMSRestoreOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readFileAndUpdateDB():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :cond_9
    :try_start_b
    const-string v3, "SMSRestoreOperator"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "count="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",restoreCount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->m:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v3, v1, 0x4b

    iget v7, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->m:I

    div-int/2addr v3, v7

    add-int/lit8 v3, v3, 0x14

    if-le v3, v4, :cond_a

    move v3, v4

    :cond_a
    invoke-direct {p0, v3}, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->b(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_1

    :catch_5
    move-exception v1

    const-string v2, "SMSRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readFileAndUpdateDB():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :cond_b
    move v1, v3

    goto/16 :goto_3
.end method

.method private b(Ljava/io/File;)I
    .locals 12

    const/16 v7, 0x5f

    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x0

    const-string v2, "SMSRestoreOperator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "readFileAndUpdateDB2,SMSMD5Set size:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->i:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->j:Ljava/util/List;

    invoke-static {v6}, Lcom/tencent/qqpim/sdk/defines/VCard;->getVCard(I)Lcom/tencent/qqpim/sdk/defines/VCard;

    move-result-object v8

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    const/4 v3, 0x4

    :try_start_1
    new-array v9, v3, [B

    invoke-virtual {v2, v9}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

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

    const-string v2, "SMSRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readFileAndUpdateDB():"

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
    invoke-static {v9}, Lcom/tencent/wscl/TextUtil;->fourByteToInt([B)I

    move-result v4

    new-array v3, v4, [B

    move v5, v1

    :cond_1
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    if-ne v6, v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_4
    :try_start_5
    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v6

    invoke-static {v3, v6}, Lcom/tencent/qqpim/sdk/utils/CryptorUtil;->decryptBytesToString([B[B)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v8, v6}, Lcom/tencent/qqpim/sdk/defines/VCard;->parseVcard(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->i:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->i:Ljava/util/Set;

    invoke-virtual {v8, v3}, Lcom/tencent/qqpim/sdk/defines/VCard;->composeVcard4LocalSync(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/qqpim/sdk/utils/MD5Util;->encrypt_bytes([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    const-string v4, "SMSRestoreOperator"

    const-string v6, "add entity to insert list"

    invoke-static {v4, v6}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x32

    if-lt v3, v4, :cond_6

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->c()V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_6
    invoke-virtual {v2, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-eq v3, v0, :cond_2

    invoke-static {v9}, Lcom/tencent/wscl/TextUtil;->fourByteToInt([B)I

    move-result v4

    new-array v3, v4, [B

    sget-boolean v6, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->e:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v6, :cond_7

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_3
    const/4 v0, -0x2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "SMSRestoreOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readFileAndUpdateDB():"

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

    :cond_7
    :try_start_7
    const-string v6, "SMSRestoreOperator"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "count="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",restoreCount="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->m:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v6, v5, 0x4b

    iget v10, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->m:I

    div-int/2addr v6, v10

    add-int/lit8 v6, v6, 0x14

    if-le v6, v7, :cond_8

    move v6, v7

    :cond_8
    invoke-direct {p0, v6}, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->b(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :goto_4
    :try_start_8
    const-string v3, "SMSRestoreOperator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "readFileAndUpdateDB(),read vcard file"

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

    if-eqz v2, :cond_9

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_9
    :goto_5
    move v0, v1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-string v2, "SMSRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readFileAndUpdateDB():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_4
    move-exception v0

    const-string v2, "SMSRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readFileAndUpdateDB():"

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
    if-eqz v2, :cond_a

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_a
    :goto_7
    throw v0

    :catch_5
    move-exception v1

    const-string v2, "SMSRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readFileAndUpdateDB():"

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

    move-object v2, v3

    goto/16 :goto_4
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;->onRestoreProgressChange(II)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->i:Ljava/util/Set;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/MD5Util;->encrypt_bytes([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private c()V
    .locals 4

    const-string v0, "SMSRestoreOperator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "executeInsert,toBeInserted size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->j:Ljava/util/List;

    invoke-interface {v0, v3, v1, v2}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->add(Ljava/util/List;Ljava/util/List;[I)Z

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->k:I

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->k:I

    return-void
.end method

.method private c(I)V
    .locals 1

    const/16 v0, 0x753e

    invoke-static {v0, p1}, Lcom/tencent/qqpim/sdk/c/a/e;->a(II)V

    const/16 v0, 0x75e8

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/e;->a(I)V

    const/16 v0, 0x75bf

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/e;->a(I)V

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->l:I

    if-nez v0, :cond_0

    const/16 v0, 0x7542

    invoke-static {v0, p1}, Lcom/tencent/qqpim/sdk/c/a/e;->a(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 11

    const/4 v10, -0x2

    const/4 v8, 0x1

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v9, -0x1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;->onRestoreProcessBegin()V

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return v9

    :cond_1
    iput p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->m:I

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    const/16 v4, 0x14

    const-wide/16 v5, 0x3e8

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->h:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->h:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->a(ILcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;IIJI)V

    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/a;->g()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->b()V

    sget-boolean v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->e:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->c(I)V

    move v9, v10

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->l:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const-string v4, "SMSRestoreOperator"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "total sms ids:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    div-int/lit8 v4, v0, 0x64

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_5

    move v0, v3

    :goto_1
    add-int/2addr v4, v0

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v5

    move v0, v8

    :goto_2
    if-gt v0, v4, :cond_2

    const/16 v6, 0x64

    invoke-static {v6, v0, v2}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(IILjava/util/List;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    array-length v7, v6

    if-eqz v7, :cond_4

    invoke-interface {v5, v6}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->queryBatch([Ljava/lang/String;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->a([Lcom/tencent/qqpim/sdk/interfaces/IEntity;I)Ljava/util/LinkedList;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0, v6}, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->b(Ljava/util/List;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v8

    goto :goto_1

    :cond_6
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->b(I)V

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->c:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/sms2.bak"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->b(Ljava/io/File;)I

    move-result v0

    move v2, v0

    :goto_3
    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->k:I

    if-lez v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->updateAllThreadTime()V

    const-string v0, "SMSRestoreOperator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "updateSMSThreadTime "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    sget-boolean v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->e:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->c(I)V

    move v9, v10

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->c:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/sms.bak"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->a(Ljava/io/File;)I

    move-result v0

    move v2, v0

    goto :goto_3

    :cond_9
    move v2, v9

    goto :goto_3

    :cond_a
    if-ne v2, v9, :cond_b

    invoke-direct {p0, v3}, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->c(I)V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, v8}, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->c(I)V

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/i;->b(I)V

    move v9, v3

    goto/16 :goto_0
.end method
