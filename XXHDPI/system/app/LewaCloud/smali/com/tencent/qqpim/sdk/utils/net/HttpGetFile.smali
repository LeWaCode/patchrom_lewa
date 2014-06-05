.class public Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;
.super Lcom/tencent/qqpim/sdk/utils/net/HttpBase;


# static fields
.field public static final KEY_DONWLOAD_FILE_SIZE:Ljava/lang/String; = "key_donwload_file_size"

.field public static final KEY_DONWLOAD_PROGRESS:Ljava/lang/String; = "key_donwload_progress"

.field private static final TEMP_NAME:Ljava/lang/String; = "temp.dat"


# instance fields
.field private dataInRam:[B

.field private isNeedSuspend:Z

.field private mContext:Landroid/content/Context;

.field private mFileMode:I

.field private mFullPath:Ljava/lang/String;

.field private mHttpGet:Lorg/apache/http/client/methods/HttpGet;

.field private mIsCanceled:Z

.field private mSaveName:Ljava/lang/String;

.field private mSavePath:Ljava/lang/String;

.field private mTempPath:Ljava/lang/String;

.field private saveDataInRam:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/utils/net/HttpBase;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mTempPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mSavePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mSaveName:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mFileMode:I

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mFullPath:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mIsCanceled:Z

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->dataInRam:[B

    iput-boolean v1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->saveDataInRam:Z

    iput-boolean v1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->isNeedSuspend:Z

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mTempPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mSavePath:Ljava/lang/String;

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->getCurrentNetWorkTypeStatic()Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;->WAP:Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->setProxy(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->setUseProxy(Z)V

    :cond_0
    return-void
.end method

.method private copyTempFile()I
    .locals 10

    const/4 v3, 0x0

    const/16 v4, -0x1b59

    const/4 v0, 0x0

    const/16 v1, -0x1b58

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->isSaveDataInRam()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mTempPath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "temp.dat"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getSDPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mSavePath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mSaveName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->setFullPath(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->getFullPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    :goto_1
    const/16 v5, 0x400

    new-array v5, v5, [B

    :goto_2
    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v5

    const-string v7, "HttpBase"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TEMP File delete:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " suce="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d

    :goto_3
    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c

    :cond_2
    :goto_4
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "HttpBase"

    const-string v2, "close file error"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    :try_start_4
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    goto :goto_1

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mSaveName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->setFullPath(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mSaveName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    goto/16 :goto_1

    :cond_6
    const/4 v8, 0x0

    invoke-virtual {v3, v5, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v0, v2

    :goto_5
    :try_start_5
    const-string v2, "HttpBase"

    const-string v5, "file not found"

    invoke-static {v2, v5}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_c

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move v0, v4

    :goto_6
    if-eqz v3, :cond_0

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v0, "HttpBase"

    const-string v2, "close file error"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_7
    move-object v2, v3

    move v0, v4

    goto/16 :goto_3

    :catch_3
    move-exception v0

    const-string v0, "HttpBase"

    const-string v2, "close file error"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v2, v3

    :goto_7
    const/16 v0, -0x1b90

    :try_start_8
    const-string v4, "HttpBase"

    const-string v5, "file io error"

    invoke-static {v4, v5}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v2, :cond_8

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_8
    :goto_8
    if-eqz v3, :cond_0

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const-string v0, "HttpBase"

    const-string v2, "close file error"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :catch_6
    move-exception v0

    const-string v0, "HttpBase"

    const-string v2, "close file error"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v2, v3

    :goto_9
    :try_start_b
    const-string v0, "HttpBase"

    const-string v4, "file op error"

    invoke-static {v0, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v2, :cond_9

    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_9
    :goto_a
    if-eqz v3, :cond_3

    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    move v0, v1

    goto/16 :goto_0

    :catch_8
    move-exception v0

    const-string v0, "HttpBase"

    const-string v2, "close file error"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :catch_9
    move-exception v0

    const-string v0, "HttpBase"

    const-string v2, "close file error"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_b
    if-eqz v2, :cond_a

    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    :cond_a
    :goto_c
    if-eqz v3, :cond_b

    :try_start_f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    :cond_b
    :goto_d
    throw v0

    :catch_a
    move-exception v1

    const-string v1, "HttpBase"

    const-string v2, "close file error"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :catch_b
    move-exception v1

    const-string v1, "HttpBase"

    const-string v2, "close file error"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :catch_c
    move-exception v0

    const-string v0, "HttpBase"

    const-string v2, "close file error"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    goto :goto_b

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_b

    :catch_d
    move-exception v0

    goto :goto_9

    :catch_e
    move-exception v0

    goto/16 :goto_7

    :catch_f
    move-exception v0

    move-object v0, v3

    goto/16 :goto_5

    :cond_c
    move v0, v4

    goto/16 :goto_6
.end method

.method private setDataInRam([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->dataInRam:[B

    return-void
.end method

.method private setUri(Ljava/lang/String;)I
    .locals 5

    const/16 v2, -0x3e8

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    move v0, v2

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    const/4 v0, 0x0

    :cond_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "HttpBase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x41d

    goto :goto_0
.end method

.method private suspendCurrentThread(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private writeToTemp(Ljava/io/InputStream;Landroid/os/Bundle;JLjava/util/concurrent/atomic/AtomicLong;)I
    .locals 9

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mSaveName:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->isSaveDataInRam()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, -0x1b58

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0x400

    new-array v4, v1, [B

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->isSaveDataInRam()Z

    move-result v1

    if-eqz v1, :cond_3

    long-to-int v1, p3

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->dataInRam:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    move-object v1, v0

    :goto_1
    const-wide/16 v2, 0x0

    :try_start_1
    const-string v0, "key_donwload_file_size"

    invoke-virtual {p2, v0, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "key_donwload_progress"

    const-wide/16 v5, 0x0

    invoke-virtual {p2, v0, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->doCallback(ILandroid/os/Bundle;)V

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e

    :cond_2
    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const-string v2, "HttpBase"

    const-string v3, "closing file"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, -0x1b58

    const-string v1, "HttpBase"

    const-string v2, "close file error"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_3
    new-instance v2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mTempPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "temp.dat"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_3
    const/16 v0, -0x1b59

    :try_start_4
    const-string v2, "HttpBase"

    const-string v3, "file not found"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_0

    const-string v2, "HttpBase"

    const-string v3, "closing file"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const/16 v0, -0x1b58

    const-string v1, "HttpBase"

    const-string v2, "close file error"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :try_start_6
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    goto/16 :goto_1

    :catch_3
    move-exception v1

    move-object v2, v0

    :goto_4
    const/16 v0, -0x13be

    :try_start_7
    const-string v3, "HttpBase"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "socket error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v2, :cond_0

    const-string v1, "HttpBase"

    const-string v3, "closing file"

    invoke-static {v1, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const/16 v0, -0x1b58

    const-string v1, "HttpBase"

    const-string v2, "close file error"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    :try_start_9
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->isNeedSuspend()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->suspendCurrentThread(Z)V

    :cond_6
    iget-boolean v6, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mIsCanceled:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e

    if-eqz v6, :cond_8

    if-eqz v1, :cond_7

    const-string v0, "HttpBase"

    const-string v2, "closing file"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_7
    :goto_5
    const/16 v0, -0x138b

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const-string v0, "HttpBase"

    const-string v1, "close file error"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    if-eqz v1, :cond_9

    const/4 v6, 0x0

    :try_start_b
    invoke-virtual {v1, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    :cond_9
    iget-object v6, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->dataInRam:[B

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->dataInRam:[B

    invoke-static {v4, v6, v7, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v5

    :cond_a
    int-to-long v6, v5

    add-long/2addr v2, v6

    if-eqz p5, :cond_b

    int-to-long v5, v5

    invoke-virtual {p5, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_b
    const-string v5, "key_donwload_progress"

    invoke-virtual {p2, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v5, 0x2

    invoke-virtual {p0, v5, p2}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->doCallback(ILandroid/os/Bundle;)V

    const-string v5, "HttpBase"

    const-string v6, "received 1k..."

    invoke-static {v5, v6}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e

    goto/16 :goto_2

    :catch_6
    move-exception v0

    goto/16 :goto_3

    :catch_7
    move-exception v1

    move-object v2, v0

    :goto_6
    const/16 v0, -0x13bf

    :try_start_c
    const-string v3, "HttpBase"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "socket timeout error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v2, :cond_0

    const-string v1, "HttpBase"

    const-string v3, "closing file"

    invoke-static {v1, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    const/16 v0, -0x1b58

    const-string v1, "HttpBase"

    const-string v2, "close file error"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_9
    move-exception v1

    move-object v1, v0

    :goto_7
    const/16 v0, -0x13c0

    :try_start_e
    const-string v2, "HttpBase"

    const-string v3, "socket or file io error"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v1, :cond_0

    const-string v2, "HttpBase"

    const-string v3, "closing file"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v0

    const/16 v0, -0x1b58

    const-string v1, "HttpBase"

    const-string v2, "close file error"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_b
    move-exception v1

    move-object v1, v0

    :goto_8
    const/16 v0, -0x1388

    :try_start_10
    const-string v2, "HttpBase"

    const-string v3, "receive data error"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v1, :cond_0

    const-string v2, "HttpBase"

    const-string v3, "closing file"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    goto/16 :goto_0

    :catch_c
    move-exception v0

    const/16 v0, -0x1b58

    const-string v1, "HttpBase"

    const-string v2, "close file error"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_9
    if-eqz v1, :cond_c

    const-string v2, "HttpBase"

    const-string v3, "closing file"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_12
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    :cond_c
    :goto_a
    throw v0

    :catch_d
    move-exception v1

    const-string v1, "HttpBase"

    const-string v2, "close file error"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_9

    :catch_e
    move-exception v0

    goto :goto_8

    :catch_f
    move-exception v0

    goto :goto_7

    :catch_10
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_6

    :catch_11
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_4
.end method


# virtual methods
.method public declared-synchronized cancelGet()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mIsCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doGetFile(Ljava/lang/String;ZLjava/util/concurrent/atomic/AtomicLong;)Z
    .locals 8

    const/16 v3, -0xbb8

    const/4 v1, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_0

    const-wide/16 v4, 0x0

    invoke-virtual {p3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->createHttpClient()Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v6

    :try_start_1
    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->setUri(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v6, :cond_1

    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_1
    if-eqz v7, :cond_2

    const-string v0, "errcode"

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->doCallback(ILandroid/os/Bundle;)V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :try_start_2
    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mIsCanceled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v0, :cond_5

    if-eqz v6, :cond_4

    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_4
    const-string v0, "errcode"

    const/16 v1, -0xbbb

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->doCallback(ILandroid/os/Bundle;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v6, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const-string v3, "HttpBase"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "statusCode == "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_a

    const/16 v3, 0xce

    if-eq v1, v3, :cond_a

    rsub-int v0, v1, -0xbb8

    if-eqz v6, :cond_6

    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_6
    if-eqz v0, :cond_7

    const-string v1, "errcode"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->doCallback(ILandroid/os/Bundle;)V

    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    const/16 v1, -0xbed

    :try_start_4
    const-string v0, "HttpBase"

    const-string v3, "url == null"

    invoke-static {v0, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    if-eqz v6, :cond_9

    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_9
    const-string v0, "errcode"

    const/16 v1, -0xbed

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->doCallback(ILandroid/os/Bundle;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    :try_start_5
    iget-boolean v1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mIsCanceled:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    if-eqz v1, :cond_c

    if-eqz v6, :cond_b

    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_b
    const-string v0, "errcode"

    const/16 v1, -0xbbb

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->doCallback(ILandroid/os/Bundle;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    :try_start_6
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v1, "HttpBase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "length: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_f

    new-instance v1, Ljava/util/zip/InflaterInputStream;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->writeToTemp(Ljava/io/InputStream;Landroid/os/Bundle;JLjava/util/concurrent/atomic/AtomicLong;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v6, :cond_d

    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_d
    if-eqz v1, :cond_e

    const-string v0, "errcode"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->doCallback(ILandroid/os/Bundle;)V

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_f
    :try_start_7
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move-result-object v1

    goto :goto_1

    :cond_10
    const/16 v1, -0xfa0

    :try_start_8
    const-string v0, "HttpBase"

    const-string v3, "httpEntity == null"

    invoke-static {v0, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    if-eqz v6, :cond_11

    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_11
    const-string v0, "errcode"

    const/16 v1, -0xfa0

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->doCallback(ILandroid/os/Bundle;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_12
    :try_start_9
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->copyTempFile()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz v6, :cond_13

    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_13
    if-eqz v0, :cond_14

    const-string v1, "errcode"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->doCallback(ILandroid/os/Bundle;)V

    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :goto_2
    const/16 v3, -0xbeb

    :try_start_a
    const-string v4, "HttpBase"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "protocol error:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v1, :cond_15

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_15
    const-string v0, "errcode"

    const/16 v1, -0xbeb

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->doCallback(ILandroid/os/Bundle;)V

    :cond_16
    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v6, v1

    :goto_4
    const/16 v1, -0xbee

    :try_start_b
    const-string v3, "HttpBase"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "socket error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v6, :cond_17

    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_17
    const-string v0, "errcode"

    const/16 v1, -0xbee

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->doCallback(ILandroid/os/Bundle;)V

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v6, v1

    :goto_5
    const/16 v1, -0xbef

    :try_start_c
    const-string v3, "HttpBase"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "socket timeout error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v6, :cond_18

    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_18
    const-string v0, "errcode"

    const/16 v1, -0xbef

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->doCallback(ILandroid/os/Bundle;)V

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v6, v1

    :goto_6
    const/16 v1, -0xbf0

    :try_start_d
    const-string v3, "HttpBase"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "io error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v6, :cond_19

    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_19
    const-string v0, "errcode"

    const/16 v1, -0xbf0

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->doCallback(ILandroid/os/Bundle;)V

    goto/16 :goto_3

    :catch_4
    move-exception v0

    move-object v6, v1

    :goto_7
    const/16 v1, -0xbb8

    :try_start_e
    const-string v3, "HttpBase"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v6, :cond_1a

    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_1a
    const-string v0, "errcode"

    const/16 v1, -0xbb8

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->doCallback(ILandroid/os/Bundle;)V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v6, v1

    move v1, v3

    :goto_8
    if-eqz v6, :cond_1b

    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_1b
    if-eqz v1, :cond_1c

    const-string v3, "errcode"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->doCallback(ILandroid/os/Bundle;)V

    :cond_1c
    throw v0

    :cond_1d
    if-eqz v6, :cond_16

    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move v1, v3

    goto :goto_8

    :catchall_2
    move-exception v0

    move v1, v7

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v6, v1

    move v1, v3

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v0

    goto/16 :goto_6

    :catch_7
    move-exception v0

    goto/16 :goto_5

    :catch_8
    move-exception v0

    goto/16 :goto_4

    :catch_9
    move-exception v0

    move-object v1, v6

    goto/16 :goto_2
.end method

.method public getDataInRam()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->dataInRam:[B

    return-object v0
.end method

.method public getFullPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mFullPath:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mFullPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized isCanceled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mIsCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isNeedSuspend()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->isNeedSuspend:Z

    return v0
.end method

.method public isSaveDataInRam()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->saveDataInRam:Z

    return v0
.end method

.method public releaseDataInRam()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->dataInRam:[B

    return-void
.end method

.method public setFileMode(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mFileMode:I

    return-void
.end method

.method public setFullPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mFullPath:Ljava/lang/String;

    return-void
.end method

.method public setNeedSuspend(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->isNeedSuspend:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->suspendCurrentThread(Z)V

    :cond_0
    return-void
.end method

.method public setSaveDataInRam(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->saveDataInRam:Z

    return-void
.end method

.method public setSaveName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mSaveName:Ljava/lang/String;

    return-void
.end method

.method public setSavePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpGetFile;->mSavePath:Ljava/lang/String;

    return-void
.end method
