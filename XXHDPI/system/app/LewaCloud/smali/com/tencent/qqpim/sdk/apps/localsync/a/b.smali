.class public final Lcom/tencent/qqpim/sdk/apps/localsync/a/b;
.super Lcom/tencent/qqpim/sdk/apps/localsync/a/e;


# instance fields
.field private final i:Ljava/util/Set;

.field private j:Ljava/util/List;

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->i:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->j:Ljava/util/List;

    iput v1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->k:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->l:I

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    return-void
.end method

.method private a(Ljava/io/File;)I
    .locals 8

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/utils/FileUtil;->getBufferedReader(Ljava/io/File;)Ljava/io/BufferedReader;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->j:Ljava/util/List;

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/defines/VCard;->getVCard(I)Lcom/tencent/qqpim/sdk/defines/VCard;

    move-result-object v4

    move v1, v0

    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/16 v1, 0x46

    invoke-direct {p0, v1}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "CalllogRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readFileGenerateInsertList():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-static {v2}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getBytesFromBase64Str(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tencent/qqpim/sdk/utils/CryptorUtil;->decryptBytesToString([B[B)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v2, "BEGIN:VCALLLOG"

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "END:VCALLLOG"

    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v2, v1, 0x1

    :try_start_3
    const-string v1, "UTF-8"

    invoke-virtual {v5, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/tencent/qqpim/sdk/defines/VCard;->parseVcard([B)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_4
    iget-object v5, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->i:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->i:Ljava/util/Set;

    invoke-virtual {v4, v1}, Lcom/tencent/qqpim/sdk/defines/VCard;->composeVcard4LocalSync(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/qqpim/sdk/utils/MD5Util;->encrypt_bytes([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->j:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    mul-int/lit8 v1, v2, 0x28

    iget v5, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->l:I

    div-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x1e

    invoke-direct {p0, v1}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->b(I)V

    move v1, v2

    :cond_6
    sget-boolean v2, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->e:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v2, :cond_2

    if-eqz v3, :cond_7

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_7
    :goto_2
    const/4 v0, -0x2

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_6
    const-string v5, "CalllogRestoreOperator"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "readFileAndUpdateDB(),parseVcard"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move v1, v2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "CalllogRestoreOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readFileGenerateInsertList():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v1

    :try_start_7
    const-string v2, "CalllogRestoreOperator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "readFileAndUpdateDB(),read file"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_0

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "CalllogRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readFileGenerateInsertList():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_8

    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_8
    :goto_3
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "CalllogRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readFileGenerateInsertList():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static a(Ljava/util/List;II)Ljava/util/ArrayList;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-ltz p1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gt p2, v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-lt p1, p2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method private b(Ljava/io/File;)I
    .locals 10

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->j:Ljava/util/List;

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/defines/VCard;->getVCard(I)Lcom/tencent/qqpim/sdk/defines/VCard;

    move-result-object v6

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v3, 0x4

    :try_start_1
    new-array v7, v3, [B

    invoke-virtual {v2, v7}, Ljava/io/FileInputStream;->read([B)I
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

    const-string v2, "CalllogRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readFileGenerateInsertList():"

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
    invoke-static {v7}, Lcom/tencent/wscl/TextUtil;->fourByteToInt([B)I

    move-result v4

    new-array v3, v4, [B

    move v5, v1

    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v2, v3, v8, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    if-ne v8, v0, :cond_3

    :cond_2
    const/16 v0, 0x46

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->b(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_5
    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v8

    invoke-static {v3, v8}, Lcom/tencent/qqpim/sdk/utils/CryptorUtil;->decryptBytesToString([B[B)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v8}, Lcom/tencent/qqpim/sdk/defines/VCard;->parseVcard(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->i:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->i:Ljava/util/Set;

    invoke-virtual {v6, v3}, Lcom/tencent/qqpim/sdk/defines/VCard;->composeVcard4LocalSync(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/qqpim/sdk/utils/MD5Util;->encrypt_bytes([B)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v2, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-eq v3, v0, :cond_2

    invoke-static {v7}, Lcom/tencent/wscl/TextUtil;->fourByteToInt([B)I

    move-result v4

    new-array v3, v4, [B

    mul-int/lit8 v8, v5, 0x28

    iget v9, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->l:I

    div-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1e

    invoke-direct {p0, v8}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->b(I)V

    sget-boolean v8, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->e:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    if-eqz v8, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_2
    const/4 v0, -0x2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "CalllogRestoreOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readFileGenerateInsertList():"

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

    :catch_2
    move-exception v0

    const-string v2, "CalllogRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readFileGenerateInsertList():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move-object v2, v3

    :goto_3
    :try_start_7
    const-string v3, "CalllogRestoreOperator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "readFileAndUpdateDB(),read file"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_6

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_6
    :goto_4
    move v0, v1

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string v2, "CalllogRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readFileGenerateInsertList():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_5
    if-eqz v2, :cond_7

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_7
    :goto_6
    throw v0

    :catch_5
    move-exception v1

    const-string v2, "CalllogRestoreOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readFileGenerateInsertList():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_3
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    const/16 v1, 0x10

    invoke-interface {v0, v1, p1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;->onRestoreProgressChange(II)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->i:Ljava/util/Set;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/MD5Util;->encrypt_bytes([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private c()V
    .locals 15

    const/16 v0, 0x10

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v9

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    div-int/lit8 v1, v10, 0x64

    rem-int/lit8 v0, v10, 0x64

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    add-int v11, v1, v0

    const/16 v3, 0x46

    const/4 v0, 0x1

    move v8, v0

    :goto_1
    if-le v8, v11, :cond_2

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-eq v8, v11, :cond_4

    const/16 v0, 0x64

    :goto_2
    new-array v13, v0, [I

    add-int/lit8 v0, v8, -0x1

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->j:Ljava/util/List;

    array-length v2, v13

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->a(Ljava/util/List;II)Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_3

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    add-int/lit8 v0, v8, -0x1

    mul-int/lit8 v0, v0, 0x64

    array-length v4, v13

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1e

    div-int/2addr v0, v10

    add-int/lit8 v4, v0, 0x46

    const-wide/16 v5, 0x3e8

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->h:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->h:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->a(ILcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;IIJI)V

    invoke-interface {v9, v14, v12, v13}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;->add(Ljava/util/List;Ljava/util/List;[I)Z

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->b()V

    sget-boolean v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->e:Z

    if-nez v0, :cond_0

    add-int/lit8 v0, v8, -0x1

    mul-int/lit8 v0, v0, 0x64

    array-length v1, v13

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1e

    div-int/2addr v0, v10

    add-int/lit8 v3, v0, 0x46

    invoke-direct {p0, v3}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->b(I)V

    :cond_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_4
    rem-int/lit8 v0, v10, 0x64

    if-nez v0, :cond_5

    const/16 v0, 0x64

    goto :goto_2

    :cond_5
    rem-int/lit8 v0, v10, 0x64

    goto :goto_2
.end method

.method private c(I)V
    .locals 1

    const/16 v0, 0x753d

    invoke-static {v0, p1}, Lcom/tencent/qqpim/sdk/c/a/e;->a(II)V

    const/16 v0, 0x75e8

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/e;->a(I)V

    const/16 v0, 0x75bf

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/e;->a(I)V

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->k:I

    if-nez v0, :cond_0

    const/16 v0, 0x7541

    invoke-static {v0, p1}, Lcom/tencent/qqpim/sdk/c/a/e;->a(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 13

    const/16 v1, 0x10

    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;->onRestoreProcessBegin()V

    :cond_0
    if-nez p1, :cond_1

    move v3, v8

    :goto_0
    return v3

    :cond_1
    iput p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->l:I

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->g:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;

    const/16 v4, 0x1e

    const-wide/16 v5, 0xfa

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->h:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->h:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->a(ILcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;IIJI)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/a;->f()[Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    const-string v2, "CalllogRestoreOperator"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getAllCalllogsFromDB time:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->b()V

    sget-boolean v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->e:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, v12}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->c(I)V

    move v3, v9

    goto :goto_0

    :cond_3
    array-length v2, v0

    iput v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->k:I

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->a([Lcom/tencent/qqpim/sdk/interfaces/IEntity;I)Ljava/util/LinkedList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->b(Ljava/util/List;)V

    goto :goto_1

    :cond_4
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->b(I)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/calllog2.bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->b(Ljava/io/File;)I

    move-result v0

    :goto_2
    if-ne v0, v8, :cond_7

    invoke-direct {p0, v3}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->c(I)V

    move v3, v8

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/calllog.bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->a(Ljava/io/File;)I

    move-result v0

    goto :goto_2

    :cond_6
    move v0, v8

    goto :goto_2

    :cond_7
    if-ne v0, v9, :cond_8

    invoke-direct {p0, v12}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->c(I)V

    move v3, v9

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->j:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    :goto_3
    sget-boolean v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->e:Z

    if-eqz v0, :cond_b

    invoke-direct {p0, v12}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->c(I)V

    move v3, v9

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->c()V

    goto :goto_3

    :cond_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->c(I)V

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/b;->b(I)V

    goto/16 :goto_0
.end method
