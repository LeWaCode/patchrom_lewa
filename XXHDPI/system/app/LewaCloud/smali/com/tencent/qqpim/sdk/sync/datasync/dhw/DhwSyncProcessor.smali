.class public Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;
.super Lcom/tencent/qqpim/sdk/sync/datasync/a;

# interfaces
.implements Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;
.implements Lcom/tencent/qqpim/sdk/sync/datasync/dhw/d;
.implements Lcom/tencent/qqpim/sdk/sync/datasync/dhw/e;


# static fields
.field private static final TAG:Ljava/lang/String; = "DhwSyncProcessor"


# instance fields
.field private MsgIdBackup:I

.field private cacheFinishMsg:Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

.field private mCurrentTaskIndex:I

.field private mSyncModel:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;

.field private final mSyncResults:Ljava/util/List;

.field private virtualPercent:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessorObsv;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/datasync/a;-><init>(Landroid/content/Context;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessorObsv;)V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mSyncModel:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;

    iput v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mCurrentTaskIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mSyncResults:Ljava/util/List;

    iput v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->MsgIdBackup:I

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->cacheFinishMsg:Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->virtualPercent:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;-><init>(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/d;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mSyncModel:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;

    return-void
.end method

.method private adptiveSyncOpType(I)I
    .locals 4

    sparse-switch p1, :sswitch_data_0

    move v0, p1

    :goto_0
    const-string v1, "DhwSyncProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adptiveSyncOpType request opSyncType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " convertedOpType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :sswitch_0
    const/16 v0, 0xc9

    goto :goto_0

    :sswitch_1
    const/16 v0, 0xc8

    goto :goto_0

    :sswitch_2
    move v0, p1

    goto :goto_0

    :sswitch_3
    move v0, p1

    goto :goto_0

    :sswitch_4
    move v0, p1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0xd5 -> :sswitch_2
        0xca -> :sswitch_1
        0xcb -> :sswitch_3
        0xcc -> :sswitch_1
        0xcd -> :sswitch_0
        0xd5 -> :sswitch_4
    .end sparse-switch
.end method

.method private cacheSingleFinishMsg(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->cacheFinishMsg:Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->cacheFinishMsg:Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->cacheFinishMsg:Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->setMsg(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    return-void
.end method

.method private doOnAllFinished()V
    .locals 5

    const-string v0, "DhwSyncProcessor"

    const-string v1, "doOnAllFinished()"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2018

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mSyncResults:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obtainMsg(ILjava/lang/Object;)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    move-result-object v0

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/a;->A:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->setLongValue(Lcom/tencent/qqpim/sdk/interfaces/a;J)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mSyncResults:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->writeSyncLog(Ljava/util/List;)V

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->isSDKVersionBelow2()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mSyncResults:Ljava/util/List;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mAccount:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->uploadCoreSync(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->notifyObsrv(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mSyncResults:Ljava/util/List;

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->getTasks()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/c/a/d;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private getCurrentTaskIndex()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mCurrentTaskIndex:I

    return v0
.end method

.method private handleStateChanged(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->handleStateChanged(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;Z)V

    return-void
.end method

.method private handleStateChanged(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;Z)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    const/16 v0, 0x9

    iput v0, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg3:I

    :cond_2
    const-string v0, "DhwSyncProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isVirtual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->isFirstTaskStart(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "DhwSyncProcessor"

    const-string v1, "progress all begin"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2000

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->getTasks()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obtainMsg(ILjava/lang/Object;)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->notifyObsrv(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->notifyObsrv(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->isSingleTaskEnd(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obj1:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mSyncResults:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->notifyObsrv(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->increaseCurrentTaskIndex()V

    const-string v1, "DhwSyncProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "progress single end result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getResult()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getErrCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->isLastTaskEnd(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DhwSyncProcessor"

    const-string v1, "progress all finished"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->setEndSyncTime(J)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->doOnAllFinished()V

    const-string v0, "DhwSyncProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sync take "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->getEndSyncTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->getStartSyncTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private increaseCurrentTaskIndex()V
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mCurrentTaskIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mCurrentTaskIndex:I

    return-void
.end method

.method private initTasks(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;Ljava/util/List;Ljava/lang/String;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mCurrentTaskIndex:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mSyncResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/16 v1, 0x2018

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->notifyObsrvStateChanged(IIILjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return v2

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/SyncTask;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getDatatype()I

    move-result v4

    if-ne v4, v1, :cond_4

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mSyncModel:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getDatatype()I

    move-result v4

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getOperationType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->adptiveSyncOpType(I)I

    move-result v0

    invoke-virtual {v2, v4, v0, p3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;->a(IILjava/lang/String;)V

    move v2, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getDatatype()I

    move-result v4

    if-ne v4, v7, :cond_3

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mSyncModel:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getDatatype()I

    move-result v4

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getOperationType()I

    move-result v5

    invoke-static {v7, p3}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(ILjava/lang/String;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;

    move-result-object v6

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->getFilter()Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;

    move-result-object v0

    invoke-virtual {v2, v4, v5, v6, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;->a(IILcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;)V

    move v2, v1

    goto :goto_0
.end method

.method private isFirstTaskStart(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)Z
    .locals 2

    const/16 v0, 0x2005

    iget v1, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->getCurrentTaskIndex()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLastTaskEnd(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)Z
    .locals 2

    const/16 v0, 0x2014

    iget v1, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->getTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->getCurrentTaskIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSingleTaskEnd(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)Z
    .locals 2

    const/16 v0, 0x2014

    iget v1, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetCurrentTaskIndex()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mCurrentTaskIndex:I

    return-void
.end method

.method private startVirtualPercent()V
    .locals 4

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;

    const/4 v1, 0x0

    const/16 v2, 0x64

    const/16 v3, 0x19

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;-><init>(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/e;III)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->virtualPercent:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->virtualPercent:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->start()V

    return-void
.end method

.method private stopVirtualPercent()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->virtualPercent:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->virtualPercent:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->virtualPercent:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;

    :cond_0
    return-void
.end method

.method private uploadCoreSync(Ljava/util/List;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getResult()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-static {p2}, Lcom/tencent/qqpim/sdk/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/c/a/a;->a(J)V

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/c/a/a;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public initSyncSettings(ILjava/lang/String;Ljava/lang/String;[BIII)Z
    .locals 15

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mAccount:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getImei()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->getImsi()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getLCString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-virtual/range {v1 .. v14}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->initSyncSettings(ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIII)Z

    move-result v1

    return v1
.end method

.method public notifyVirtualProcessMessage(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->MsgIdBackup:I

    iput v0, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    invoke-direct {p0, p1, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->handleStateChanged(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    if-nez v0, :cond_0

    const-string v1, "DhwSyncProcessor"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "finish arg1="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->cacheFinishMsg:Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    if-nez v0, :cond_2

    const-string v0, " null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->cacheFinishMsg:Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    invoke-direct {p0, v0, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->handleStateChanged(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;Z)V

    goto :goto_0

    :cond_2
    const-string v0, " not null"

    goto :goto_1
.end method

.method public onSyncStateChanged(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V
    .locals 4

    const/16 v3, 0x2011

    const-string v0, "DhwSyncProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSyncStateChanged():id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",arg1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    const/16 v1, 0x2003

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    const/16 v1, 0x2012

    if-ne v0, v1, :cond_2

    :cond_0
    iget v0, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->MsgIdBackup:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->virtualPercent:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->virtualPercent:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;

    iget v1, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/g;->a(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    const/16 v1, 0x2005

    if-eq v0, v1, :cond_3

    iget v0, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    if-ne v0, v3, :cond_5

    :cond_3
    iget v0, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    if-ne v0, v3, :cond_4

    const-string v0, "DhwSyncProcessor"

    const-string v1, "ISyncMsgDef.ESTATE_SYNC_THUMBNAIL_BEGIN"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->stopVirtualPercent()V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->startVirtualPercent()V

    :cond_5
    iget v0, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    const/16 v1, 0x2014

    if-ne v0, v1, :cond_6

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->cacheSingleFinishMsg(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->stopVirtualPercent()V

    goto :goto_0

    :cond_6
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->handleStateChanged(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DhwSyncProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSyncStateChanged t:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopSync()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mSyncModel:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;->b()V

    return-void
.end method

.method public syncData()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->setStartSyncTime(J)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mSyncModel:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mSyncSettings:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;->a(Lcom/tencent/qqpim/sdk/sync/datasync/b;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mSyncModel:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->getTasks()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mAccount:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->initTasks(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;Ljava/util/List;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mSyncModel:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;->a()I

    return-void
.end method

.method public useExternalNetEngine(Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/DhwSyncProcessor;->mSyncModel:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;->a(Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;)V

    return-void
.end method
