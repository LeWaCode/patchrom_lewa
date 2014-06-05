.class public abstract Lcom/tencent/qqpim/sdk/sync/datasync/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;


# static fields
.field private static synthetic $SWITCH_TABLE$com$tencent$qqpim$sdk$accesslayer$interfaces$basic$ESDKPRODUCT:[I = null

.field private static final TAG:Ljava/lang/String; = "BaseSyncProcessor"


# instance fields
.field private downloadBytes:J

.field private endSyncTime:J

.field private isNeedStop:Z

.field protected mAccount:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mObserver:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessorObsv;

.field protected mSyncSettings:Lcom/tencent/qqpim/sdk/sync/datasync/b;

.field private final mSyncTasks:Ljava/util/List;

.field private startSyncTime:J

.field private uploadBytes:J


# direct methods
.method static synthetic $SWITCH_TABLE$com$tencent$qqpim$sdk$accesslayer$interfaces$basic$ESDKPRODUCT()[I
    .locals 3

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->$SWITCH_TABLE$com$tencent$qqpim$sdk$accesslayer$interfaces$basic$ESDKPRODUCT:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;->values()[Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;->LEWA:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;->MOLE:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->$SWITCH_TABLE$com$tencent$qqpim$sdk$accesslayer$interfaces$basic$ESDKPRODUCT:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessorObsv;)V
    .locals 4

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->mObserver:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessorObsv;

    iput-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->isNeedStop:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->mSyncTasks:Ljava/util/List;

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/b;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->mSyncSettings:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    iput-wide v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->startSyncTime:J

    iput-wide v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->endSyncTime:J

    iput-wide v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->uploadBytes:J

    iput-wide v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->downloadBytes:J

    iput-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->mAccount:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->mObserver:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessorObsv;

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->mContext:Landroid/content/Context;

    return-void
.end method

.method private initData()V
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/a;->setNeedStop(Z)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->mSyncSettings:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->i()V

    invoke-virtual {p0, v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/a;->setStartSyncTime(J)V

    invoke-virtual {p0, v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/a;->setEndSyncTime(J)V

    iput-wide v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->uploadBytes:J

    iput-wide v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->downloadBytes:J

    return-void
.end method

.method private setDownloadBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->downloadBytes:J

    return-void
.end method

.method private setUploadBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->uploadBytes:J

    return-void
.end method

.method private statistics(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V
    .locals 3

    const-string v0, "BaseSyncProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "statistics():id="

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

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/16 v0, 0x2000

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/f;->a(S)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x2001

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/f;->a(S)V

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x2002

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/f;->a(S)V

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x2005

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/f;->a(S)V

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x2004

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/f;->a(S)V

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x2009

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/f;->a(S)V

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x2010

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/f;->a(S)V

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x2003

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/f;->a(S)V

    iget v0, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    int-to-short v0, v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/f;->b(S)V

    iget v0, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg2:I

    int-to-short v0, v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/f;->c(S)V

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x2012

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/f;->a(S)V

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x2014

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/f;->a(S)V

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x2017

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/f;->a(S)V

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x2015

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/f;->a(S)V

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x2016

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/f;->a(S)V

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x2011

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/f;->a(S)V

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x2013

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/f;->a(S)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2000
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_e
        :pswitch_9
        :pswitch_f
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method

.method private writeSyncLog(Lcom/tencent/qqpim/sdk/defines/DataSyncResult;JJJJ)V
    .locals 24

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getDataType()I

    move-result v2

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/accesslayer/SyncLogMgrFactory;->convertSyncDataTypeToLogDataType(I)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getSyncType()I

    move-result v2

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/accesslayer/SyncLogMgrFactory;->convertSyncOperationTypeToLogOperType(I)I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getResult()I

    move-result v2

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/accesslayer/SyncLogMgrFactory;->convertSyncResultToLogResult(I)I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getSyncType()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/a;->isBackupOp(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getServerAdd()I

    move-result v9

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getServerModify()I

    move-result v10

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getServerDel()I

    move-result v11

    :goto_3
    const-string v2, "BaseSyncProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "writeSyncLog logResult="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " syncLogDataType="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " syncLogOpType="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " startTime="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " endTime add="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mdf="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " del="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " uploadBytes="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " downloadBytes="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p8

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/SyncLogMgrFactory;->getSyncLogMgr()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncLogMgr;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->mAccount:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getClientAdd()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getClientModify()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getClientDel()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getServerAdd()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getServerModify()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getServerDel()I

    move-result v23

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v13, p6

    move-wide/from16 v15, p8

    invoke-interface/range {v2 .. v23}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncLogMgr;->addSyncLog(Ljava/lang/String;IJJIIIIJJIIIIIII)J

    goto/16 :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getClientAdd()I

    move-result v9

    goto/16 :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getClientModify()I

    move-result v10

    goto/16 :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getClientDel()I

    move-result v11

    goto/16 :goto_3
.end method


# virtual methods
.method public addSyncTask(Lcom/tencent/qqpim/sdk/defines/SyncTask;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->mSyncTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected addToDownloadBytes(J)V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->downloadBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->downloadBytes:J

    return-void
.end method

.method protected addToUploadBytes(J)V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->uploadBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->uploadBytes:J

    return-void
.end method

.method protected generateDataSyncResult(I)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;

    invoke-direct {v1, p1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getDownloadBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->downloadBytes:J

    return-wide v0
.end method

.method protected getEndSyncTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->endSyncTime:J

    return-wide v0
.end method

.method protected getStartSyncTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->startSyncTime:J

    return-wide v0
.end method

.method protected getTasks()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->mSyncTasks:Ljava/util/List;

    return-object v0
.end method

.method protected getUploadBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->uploadBytes:J

    return-wide v0
.end method

.method protected handleUpAndDownBytes(JJ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/datasync/a;->addToUploadBytes(J)V

    invoke-virtual {p0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/a;->addToDownloadBytes(J)V

    return-void
.end method

.method public initSyncSettings(ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIII)Z
    .locals 4

    const-string v1, "BaseSyncProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSyncSettings accountType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " imei="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lcString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isEncrypt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isCompress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isUseDynamicKeyRequest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->mAccount:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "BaseSyncProcessor"

    const-string v2, "initSyncSettings failed key arguments invalid!"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/a;->initData()V

    const/4 v1, 0x0

    if-eqz p8, :cond_2

    const/4 v1, 0x2

    :cond_2
    if-eqz p9, :cond_3

    or-int/lit8 v1, v1, 0x1

    :cond_3
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->mSyncSettings:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    invoke-virtual {v2, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->a(I)V

    invoke-virtual {v2, p2}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->a(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->b(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->a([B)V

    invoke-virtual {v2, p7}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->c(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->d(Ljava/lang/String;)V

    invoke-virtual {v2, p6}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->e(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->b(I)V

    invoke-virtual {v2, p10}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->a(Z)V

    invoke-virtual {v2, p11}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->c(I)V

    move/from16 v0, p12

    int-to-short v1, v0

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->a(S)V

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->d(I)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public initSyncSettingsForSDK(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;II)Z
    .locals 10

    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/a/a;->c()Lcom/tencent/qqpim/sdk/apps/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->getAccountType()I

    move-result v2

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/tencent/qqpim/sdk/a/b;->b()[B

    move-result-object v5

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getImei()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->getImsi()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move v8, p2

    move v9, p3

    invoke-virtual/range {v0 .. v9}, Lcom/tencent/qqpim/sdk/sync/datasync/a;->initSyncSettingsForSDK(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public initSyncSettingsForSDK(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)Z
    .locals 14

    const/4 v11, 0x0

    invoke-static {}, Lcom/tencent/qqpim/sdk/sync/datasync/a;->$SWITCH_TABLE$com$tencent$qqpim$sdk$accesslayer$interfaces$basic$ESDKPRODUCT()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v7, "0"

    :goto_0
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-virtual/range {v0 .. v13}, Lcom/tencent/qqpim/sdk/sync/datasync/a;->initSyncSettings(ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIII)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v11, 0x7

    const-string v7, "E8BF561EF973E811"

    goto :goto_0

    :pswitch_1
    const/4 v11, 0x5

    const-string v7, "E8BF561EF973E811"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected isBackupOp(I)Z
    .locals 1

    const/16 v0, 0xca

    if-eq v0, p1, :cond_0

    const/16 v0, 0xcb

    if-eq v0, p1, :cond_0

    const/16 v0, 0xd7

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isNeedStop()Z
    .locals 3

    const-string v0, "BaseSyncProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isNeedStop="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->isNeedStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->isNeedStop:Z

    return v0
.end method

.method protected notifyObsrv(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/a;->statistics(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->mObserver:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessorObsv;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->isSDKVersionBelow2()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->mSyncSettings:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/a;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/c/a/a;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->mObserver:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessorObsv;

    invoke-interface {v0, p1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessorObsv;->onSyncStateChanged(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->mSyncSettings:Lcom/tencent/qqpim/sdk/sync/datasync/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/b;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected notifyObsrvStateChanged(IIIILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "BaseSyncProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyObsrvStateChanged msgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;-><init>()V

    iput p1, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    iput p2, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    iput p3, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg2:I

    iput p4, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg3:I

    iput-object p5, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obj1:Ljava/lang/Object;

    iput-object p6, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obj2:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/a;->notifyObsrv(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    return-void
.end method

.method protected notifyObsrvStateChanged(IIILjava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/qqpim/sdk/sync/datasync/a;->notifyObsrvStateChanged(IIIILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected setEndSyncTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->endSyncTime:J

    return-void
.end method

.method protected setNeedStop(Z)V
    .locals 3

    const-string v0, "BaseSyncProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setNeedStop="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->isNeedStop:Z

    return-void
.end method

.method protected setStartSyncTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/a;->startSyncTime:J

    return-void
.end method

.method public abstract stopSync()V
.end method

.method public abstract syncData()V
.end method

.method protected writeSyncLog(Ljava/util/List;)V
    .locals 10

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getResult()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/a;->getStartSyncTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/datasync/a;->getEndSyncTime()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getUploadSize()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getDownloadSize()J

    move-result-wide v8

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/tencent/qqpim/sdk/sync/datasync/a;->writeSyncLog(Lcom/tencent/qqpim/sdk/defines/DataSyncResult;JJJJ)V

    goto :goto_0
.end method
