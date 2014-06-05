.class public Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalBackupProcessor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupProcessor;


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalBackupProcessor"


# instance fields
.field private mDirName:Ljava/lang/String;

.field observer:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalBackupProcessor;->mDirName:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalBackupProcessor;->observer:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    return-void
.end method

.method private finishBackup(IIII)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/backup.property"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VERSION:2\r\nTIME:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->d:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nCONTACT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nSMS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nCALLLOG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nSOFTWARE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getBase64Code([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/FileUtil;->getFileWriter(Ljava/io/File;)Ljava/io/FileWriter;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private generateBackupFileDirectory()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalBackupProcessor;->mDirName:Ljava/lang/String;

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->d:J

    new-instance v0, Ljava/util/Date;

    sget-wide v1, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->d:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy_MM_dd_HH_mm_ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->c:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalBackupProcessor;->mDirName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initBackup()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->e:Z

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalBackupProcessor;->generateBackupFileDirectory()V

    return-void
.end method

.method private setUserCancel(Z)V
    .locals 0

    sput-boolean p1, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->e:Z

    return-void
.end method


# virtual methods
.method public backup2SDCard(Ljava/util/List;Ljava/util/List;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const-string v0, "LocalBackupProcessor"

    const-string v1, "backup2SDCard,taskList is null"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalBackupProcessor;->observer:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;->onBackupProcessBegin()V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalBackupProcessor;->initBackup()V

    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    move v7, v6

    move v2, v6

    move v3, v6

    move v4, v6

    move v5, v6

    :goto_1
    if-lt v7, v8, :cond_4

    move v0, v2

    :goto_2
    sget-boolean v2, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->e:Z

    if-eqz v2, :cond_a

    sget-object v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/accesslayer/a;->b(Ljava/lang/String;)Z

    const-string v0, "LocalBackupProcessor"

    const-string v2, "backup2SDCard,usercancel=true"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalBackupProcessor;->observer:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    invoke-interface {v0, v10, v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;->onBackupProcessFinish(Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;I)V

    goto :goto_0

    :cond_4
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_6

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalBackupProcessor;->observer:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    invoke-direct {v0, v2}, Lcom/tencent/qqpim/sdk/apps/localsync/a/c;-><init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;)V

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->a()I

    move-result v0

    if-lez v0, :cond_5

    move v2, v3

    move v3, v4

    move v4, v0

    move v0, v1

    :goto_3
    sget-boolean v5, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->e:Z

    if-nez v5, :cond_10

    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_5
    move v5, v0

    move v0, v6

    goto :goto_2

    :cond_6
    const/4 v9, 0x4

    if-ne v0, v9, :cond_8

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalBackupProcessor;->observer:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    invoke-direct {v0, v2}, Lcom/tencent/qqpim/sdk/apps/localsync/a/h;-><init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;)V

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->a()I

    move-result v0

    if-lez v0, :cond_7

    move v2, v3

    move v4, v5

    move v3, v0

    move v0, v1

    goto :goto_3

    :cond_7
    move v4, v0

    move v0, v6

    goto :goto_2

    :cond_8
    const/16 v9, 0x10

    if-ne v0, v9, :cond_11

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalBackupProcessor;->observer:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    invoke-direct {v0, v2}, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;-><init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;)V

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->a()I

    move-result v0

    if-lez v0, :cond_9

    move v2, v0

    move v3, v4

    move v0, v1

    move v4, v5

    goto :goto_3

    :cond_9
    move v3, v0

    move v0, v6

    goto :goto_2

    :cond_a
    if-nez v0, :cond_b

    sget-object v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/accesslayer/a;->b(Ljava/lang/String;)Z

    const-string v0, "LocalBackupProcessor"

    const-string v1, "dataBackupSuccess=false"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalBackupProcessor;->observer:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    invoke-interface {v0, v10, v6}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;->onBackupProcessFinish(Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;I)V

    goto/16 :goto_0

    :cond_b
    move v2, v0

    :goto_4
    if-eqz p2, :cond_d

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    const-string v0, "LocalBackupProcessor"

    const-string v7, "dataBackupSuccess=false"

    invoke-static {v0, v7}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/j;

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalBackupProcessor;->observer:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    invoke-direct {v0, v7}, Lcom/tencent/qqpim/sdk/apps/localsync/a/j;-><init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;)V

    invoke-virtual {v0, p2}, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->a(Ljava/util/List;)I

    move-result v0

    sget-boolean v7, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->e:Z

    if-eqz v7, :cond_c

    sget-object v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/accesslayer/a;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalBackupProcessor;->observer:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    invoke-interface {v0, v10, v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;->onBackupProcessFinish(Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;I)V

    goto/16 :goto_0

    :cond_c
    if-gtz v0, :cond_e

    sget-object v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/accesslayer/a;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalBackupProcessor;->observer:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    invoke-interface {v0, v10, v6}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;->onBackupProcessFinish(Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;I)V

    goto/16 :goto_0

    :cond_d
    move v1, v6

    move v0, v6

    :cond_e
    if-nez v2, :cond_f

    if-eqz v1, :cond_2

    :cond_f
    new-instance v1, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;-><init>()V

    invoke-virtual {v1, v3}, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->setCalllogCount(I)V

    invoke-virtual {v1, v5}, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->setContactCount(I)V

    invoke-virtual {v1, v4}, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->setSmsCount(I)V

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->setSoftwareCount(I)V

    sget-wide v7, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->d:J

    invoke-virtual {v1, v7, v8}, Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;->setTimeStamp(J)V

    invoke-direct {p0, v5, v4, v3, v0}, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalBackupProcessor;->finishBackup(IIII)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalBackupProcessor;->observer:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    invoke-interface {v0, v1, v6}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;->onBackupProcessFinish(Lcom/tencent/qqpim/sdk/apps/localsync/object/BackupRecord;I)V

    goto/16 :goto_0

    :cond_10
    move v5, v4

    move v4, v3

    move v3, v2

    goto/16 :goto_2

    :cond_11
    move v0, v2

    move v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_3

    :cond_12
    move v2, v6

    move v3, v6

    move v4, v6

    move v5, v6

    goto :goto_4
.end method

.method public setDir(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalBackupProcessor;->mDirName:Ljava/lang/String;

    return-void
.end method

.method public userCancel()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->e:Z

    return-void
.end method
