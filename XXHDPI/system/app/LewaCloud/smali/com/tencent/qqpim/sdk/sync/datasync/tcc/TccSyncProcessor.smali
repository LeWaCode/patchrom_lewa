.class public Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;
.super Lcom/tencent/qqpim/sdk/sync/datasync/a;

# interfaces
.implements Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;
.implements Lcom/tencent/qqpim/sdk/sync/b/a/a;
.implements Lcom/tencent/qqpim/sdk/sync/datasync/tcc/a;


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncProcessor"


# instance fields
.field private mDataSyncEngine:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;

.field private mSyncPhotoEngine:Lcom/tencent/qqpim/sdk/sync/b/b/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessorObsv;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/datasync/a;-><init>(Landroid/content/Context;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessorObsv;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->mDataSyncEngine:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->mSyncPhotoEngine:Lcom/tencent/qqpim/sdk/sync/b/b/a/a;

    return-void
.end method

.method private addUpAndDownBytes([B[B)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    :goto_0
    if-eqz p2, :cond_0

    array-length v0, p2

    :cond_0
    int-to-long v1, v1

    int-to-long v3, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->handleUpAndDownBytes(JJ)V

    return-void

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private doProcessDataSyncTask(Ljava/util/List;Lcom/tencent/qqpim/sdk/sync/datasync/b;)Ljava/util/List;
    .locals 12

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x2004

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->notifyObsrvStateChanged(IIILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;

    invoke-direct {v1, v0, p0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;-><init>(Landroid/content/Context;Lcom/tencent/qqpim/sdk/sync/datasync/tcc/a;)V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->mDataSyncEngine:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->mDataSyncEngine:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;

    if-nez v0, :cond_0

    :goto_0
    return-object v4

    :cond_0
    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->mDataSyncEngine:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;

    invoke-virtual {p2}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->e()I

    move-result v6

    invoke-virtual {p2}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->a()[B

    move-result-object v9

    invoke-virtual {p2}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->h()I

    move-result v10

    invoke-virtual {p2}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->j()Z

    move-result v11

    invoke-virtual/range {v5 .. v11}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->a(ILjava/lang/String;Ljava/lang/String;[BIZ)Z

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->mDataSyncEngine:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->a(Ljava/util/List;)Z

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->mDataSyncEngine:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->a()Ljava/util/List;

    move-result-object v9

    const/16 v6, 0x2017

    move-object v5, p0

    move v7, v2

    move v8, v2

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->notifyObsrvStateChanged(IIILjava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v9

    goto :goto_0
.end method

.method private fillUpAndDownSizeToResult(JJLjava/util/List;)V
    .locals 1

    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setUploadSize(J)V

    invoke-virtual {v0, p3, p4}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setDownloadSize(J)V

    goto :goto_0
.end method

.method private processAdditionalTask(Ljava/util/List;Lcom/tencent/qqpim/sdk/sync/datasync/b;Landroid/content/Context;Ljava/util/List;)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v0, "SyncProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processAdditionalTask tasks.size()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/SyncTask;

    add-int/lit8 v3, v1, 0x1

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getDatatype()I

    move-result v5

    if-ne v1, v5, :cond_3

    if-eqz p4, :cond_2

    :try_start_0
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v2

    sget-object v5, Lcom/tencent/qqpim/sdk/interfaces/a;->A:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v2, v5, v6, v7}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->setLongValue(Lcom/tencent/qqpim/sdk/interfaces/a;J)V

    invoke-direct {p0, v0, p2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->processContactPhotoSync(Lcom/tencent/qqpim/sdk/defines/SyncTask;Lcom/tencent/qqpim/sdk/sync/datasync/b;Lcom/tencent/qqpim/sdk/defines/DataSyncResult;)V

    move-object v2, v1

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_2
    move-object v1, v2

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getDatatype()I

    move-result v5

    if-ne v1, v5, :cond_4

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getOperationType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->isBackupOp(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p3}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->processSmsUpdateTime(Landroid/content/Context;)V

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method private processContactPhotoSync(Lcom/tencent/qqpim/sdk/defines/SyncTask;Lcom/tencent/qqpim/sdk/sync/datasync/b;Lcom/tencent/qqpim/sdk/defines/DataSyncResult;)V
    .locals 4

    const-string v0, "SyncProcessor"

    const-string v1, "processContactPhotoSync"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getDatatype()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const-string v0, "SyncProcessor"

    const-string v1, "processContactPhotoSync():null == task || task.getDatatype() != ISyncDef.SYNC_DATA_CONTACT"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getFilter()Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "SyncProcessor"

    const-string v1, "processContactPhotoSync():syncTaskFilter == null"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;->isEnableFilter()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "SyncProcessor"

    const-string v1, "processContactPhotoSync():!syncTaskFilter.isEnableFilter"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    check-cast v0, Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;->isNeedContactImage()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "SyncProcessor"

    const-string v1, "processContactPhotoSync():!((TaskFilterContact) syncTaskFilter).isNeedContactImage()"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;-><init>(Landroid/content/Context;Lcom/tencent/qqpim/sdk/sync/b/a/a;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->mSyncPhotoEngine:Lcom/tencent/qqpim/sdk/sync/b/b/a/a;

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/b;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/b;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->c(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->b(I)V

    invoke-virtual {p2}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->d(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->mSyncPhotoEngine:Lcom/tencent/qqpim/sdk/sync/b/b/a/a;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getOperationType()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->a(Lcom/tencent/qqpim/sdk/sync/datasync/b;I)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->mSyncPhotoEngine:Lcom/tencent/qqpim/sdk/sync/b/b/a/a;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->a()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->mSyncPhotoEngine:Lcom/tencent/qqpim/sdk/sync/b/b/a/a;

    invoke-direct {p0, p3, v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->updatePhotoSyncResult(Lcom/tencent/qqpim/sdk/defines/DataSyncResult;ILcom/tencent/qqpim/sdk/sync/b/b/a/a;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->mSyncPhotoEngine:Lcom/tencent/qqpim/sdk/sync/b/b/a/a;

    const-string v1, "SyncProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processContactPhotoSync syncPhotoRet = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private processDataSyncTask(Ljava/util/List;Lcom/tencent/qqpim/sdk/sync/datasync/b;)Ljava/util/List;
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v3, Lcom/tencent/qqpim/sdk/sync/a;

    invoke-direct {v3}, Lcom/tencent/qqpim/sdk/sync/a;-><init>()V

    invoke-direct {p0, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->syncCheckIsMapAvailable(Lcom/tencent/qqpim/sdk/sync/a;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->isNeedStop()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x4

    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->doProcessDataSyncTask(Ljava/util/List;Lcom/tencent/qqpim/sdk/sync/datasync/b;)Ljava/util/List;

    move-result-object v0

    :goto_1
    sput-boolean v1, Lcom/tencent/qqpim/sdk/sync/a;->a:Z

    invoke-virtual {v3}, Lcom/tencent/qqpim/sdk/sync/a;->e()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/sync/a;->b()Z

    iput-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->mDataSyncEngine:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;

    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private processSmsUpdateTime(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v0, "SyncProcessor"

    const-string v1, "processSmsUpdateTime"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2015

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->notifyObsrvStateChanged(IIILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-static {v0, p1}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->updateAllThreadTime()V

    const/16 v1, 0x2016

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->notifyObsrvStateChanged(IIILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private syncCheckIsMapAvailable(Lcom/tencent/qqpim/sdk/sync/a;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x2001

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->notifyObsrvStateChanged(IIILjava/lang/Object;Ljava/lang/Object;)V

    sput-boolean v6, Lcom/tencent/qqpim/sdk/sync/a;->a:Z

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/a;->d()V

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/qqpim/sdk/sync/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/a;->c()Z

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/a;->c()Z

    move-result v0

    move v6, v0

    :cond_1
    const/16 v1, 0x2002

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->notifyObsrvStateChanged(IIILjava/lang/Object;Ljava/lang/Object;)V

    return v6
.end method

.method private updatePhotoSyncResult(Lcom/tencent/qqpim/sdk/defines/DataSyncResult;ILcom/tencent/qqpim/sdk/sync/b/b/a/a;)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getClientAdd()I

    move-result v0

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getClientModify()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getServerAdd()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getServerModify()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p3}, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->c()I

    move-result v2

    invoke-virtual {p3}, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->d()I

    move-result v3

    if-nez v0, :cond_2

    invoke-virtual {p1, v3}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setClientModify(I)V

    :cond_2
    if-nez v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->setServerModify(I)V

    goto :goto_0
.end method


# virtual methods
.method public initSyncSettings(ILjava/lang/String;Ljava/lang/String;[BIII)Z
    .locals 14

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getImei()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->getImsi()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getLCString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-virtual/range {v0 .. v13}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->initSyncSettings(ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIII)Z

    move-result v0

    return v0
.end method

.method public onPhotoSyncBegin()V
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v0, "SyncProcessor"

    const-string v1, "onPhotoSyncBegin"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2011

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->notifyObsrvStateChanged(IIILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onPhotoSyncEnd(I)V
    .locals 6

    const/4 v4, 0x0

    const-string v0, "SyncProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPhotoSyncEnd ret="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2013

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->notifyObsrvStateChanged(IIILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onPostSyncData(Ljava/lang/String;[BLjava/util/concurrent/atomic/AtomicInteger;)[B
    .locals 5

    const/4 v1, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->getSinglgInstance()Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, p1, v3, p2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->acquireHttpRequest(Ljava/lang/String;I[B)Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_1
    new-instance v3, Lcom/tencent/qqpim/sdk/utils/net/HttpResponse;

    invoke-direct {v3}, Lcom/tencent/qqpim/sdk/utils/net/HttpResponse;-><init>()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;->getInstance()Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;->doConnection(Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;Lcom/tencent/qqpim/sdk/utils/net/HttpResponse;)V

    iget-object v1, v3, Lcom/tencent/qqpim/sdk/utils/net/HttpResponse;->mResponseBody:[B

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->getRetryCount()I

    move-result v0

    iget v3, v3, Lcom/tencent/qqpim/sdk/utils/net/HttpResponse;->mHttpResponseCode:I

    invoke-virtual {p3, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->getSinglgInstance()Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->releaseHttpRequest(Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;)V

    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/f;->f(I)V

    invoke-direct {p0, p2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->addUpAndDownBytes([B[B)V

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->getSinglgInstance()Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->releaseHttpRequest(Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_3

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->getSinglgInstance()Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->releaseHttpRequest(Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;)V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public onScanProgressChanged(II)V
    .locals 0

    return-void
.end method

.method public onSyncPhotoProgressChaned(III)V
    .locals 7

    const/4 v5, 0x0

    const-string v0, "SyncProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSyncPhotoProgressChaned progress="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2012

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->notifyObsrvStateChanged(IIIILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onSyncStateChanged(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->notifyObsrv(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    return-void
.end method

.method public postContactPhoto(Ljava/lang/String;[BII)I
    .locals 7

    const/4 v1, 0x0

    const-string v2, "SyncProcessor"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "postContactPhoto url="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " start="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " length="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " data="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v6, Lcom/tencent/qqpim/sdk/utils/net/HttpResponse;

    invoke-direct {v6}, Lcom/tencent/qqpim/sdk/utils/net/HttpResponse;-><init>()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->getSinglgInstance()Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    move-result-object v0

    const/4 v2, 0x6

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->acquireHttpRequest(Ljava/lang/String;I[BII)Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;->getInstance()Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;->doConnection(Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;Lcom/tencent/qqpim/sdk/utils/net/HttpResponse;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->getSinglgInstance()Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->releaseHttpRequest(Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->getRetryCount()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/f;->f(I)V

    :cond_4
    iget-object v0, v6, Lcom/tencent/qqpim/sdk/utils/net/HttpResponse;->mResponseBody:[B

    invoke-direct {p0, p2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->addUpAndDownBytes([B[B)V

    iget v1, v6, Lcom/tencent/qqpim/sdk/utils/net/HttpResponse;->mHttpResponseCode:I

    goto :goto_1
.end method

.method public postSyncData(Ljava/lang/String;[BLjava/util/concurrent/atomic/AtomicInteger;)[B
    .locals 3

    const-string v0, "SyncProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postSyncData photo first request url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p1, p3}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->sendHttpData([BLjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public stopSync()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->setNeedStop(Z)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->mDataSyncEngine:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->mDataSyncEngine:Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/b;->b()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->mSyncPhotoEngine:Lcom/tencent/qqpim/sdk/sync/b/b/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->mSyncPhotoEngine:Lcom/tencent/qqpim/sdk/sync/b/b/a/a;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/b/b/a/a;->b()V

    :cond_1
    return-void
.end method

.method public syncData()V
    .locals 13

    const/16 v12, 0x2018

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->setStartSyncTime(J)V

    const-string v0, "SyncProcessor"

    const-string v1, "syncData all begin"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2000

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->getTasks()Ljava/util/List;

    move-result-object v4

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->notifyObsrvStateChanged(IIILjava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->getTasks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v0, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    const-string v1, "SyncProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dataType = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/f;->e(I)V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->getTasks()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->mSyncSettings:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    invoke-direct {p0, v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->processDataSyncTask(Ljava/util/List;Lcom/tencent/qqpim/sdk/sync/datasync/b;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v7, 0x2018

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    :try_start_1
    invoke-virtual/range {v6 .. v11}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->notifyObsrvStateChanged(IIILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    return-void

    :cond_0
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/SyncTask;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getDatatype()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->isNeedStop()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getResult()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->getTasks()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->mSyncSettings:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->processAdditionalTask(Ljava/util/List;Lcom/tencent/qqpim/sdk/sync/datasync/b;Landroid/content/Context;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-object v11, v1

    :goto_3
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->getUploadBytes()J

    move-result-wide v7

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->getDownloadBytes()J

    move-result-wide v9

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->fillUpAndDownSizeToResult(JJLjava/util/List;)V

    if-eqz v11, :cond_3

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->setEndSyncTime(J)V

    const-string v0, "SyncProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Sync take "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->getEndSyncTime()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->getStartSyncTime()J

    move-result-wide v6

    sub-long/2addr v3, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v11}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->writeSyncLog(Ljava/util/List;)V

    if-eqz v11, :cond_4

    :try_start_4
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->getTasks()Ljava/util/List;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/tencent/qqpim/sdk/c/a/d;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-static {}, Lcom/tencent/qqpim/sdk/c/a/f;->e()V

    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/f;->a(Lcom/tencent/qqpim/sdk/defines/DataSyncResult;)V

    invoke-static {}, Lcom/tencent/qqpim/sdk/c/a/f;->c()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_5
    const-string v1, "SyncProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "syncData all finished dataSynResult="

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v11, :cond_5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_7

    :cond_5
    move v0, v2

    :goto_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move v1, v12

    move v3, v2

    move-object v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/tcc/TccSyncProcessor;->notifyObsrvStateChanged(IIILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object v11, v5

    :goto_7
    const-string v1, "SyncProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "syncData exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->printSelt()V

    goto/16 :goto_4

    :catch_1
    move-exception v0

    const-string v1, "SyncProcessor"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    const/4 v0, 0x1

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v11, v1

    goto :goto_7

    :cond_8
    move-object v11, v1

    goto/16 :goto_3

    :cond_9
    move v0, v2

    goto/16 :goto_1
.end method

.method public useExternalNetEngine(Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;)V
    .locals 0

    return-void
.end method
