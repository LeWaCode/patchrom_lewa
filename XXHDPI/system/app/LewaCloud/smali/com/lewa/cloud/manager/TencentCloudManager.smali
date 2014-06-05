.class public Lcom/lewa/cloud/manager/TencentCloudManager;
.super Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
.source "TencentCloudManager.java"


# static fields
.field public static final ACC_A2_ACC1:I = 0x2

.field public static final ACC_A2_ACC2:I = 0x3

.field public static final ACC_QQ:I = 0x1

.field public static final ACC_VKEY:I = 0x4

.field private static final GET_NET_SMS_MAX_COUNT:I = 0x3e8

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "login_time"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mSmsRestoreTimeStamp:I

.field private mSmsSummaryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncStartSignal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/lewa/cloud/manager/TencentCloudManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;-><init>(Landroid/content/Context;)V

    .line 82
    iput v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsRestoreTimeStamp:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncStartSignal:Ljava/util/concurrent/CountDownLatch;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mVerifyOk:I

    .line 87
    iput v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mVerifyErr:I

    .line 88
    return-void
.end method

.method static synthetic access$002(Lcom/lewa/cloud/manager/TencentCloudManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsSummaryList:Ljava/util/List;

    return-object p1
.end method

.method private syncAllFinished(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 530
    if-nez p1, :cond_1

    .line 531
    sget-object v2, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v3, "syncAllFinished: null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    const/4 v1, 0x0

    .line 535
    .local v1, resultList:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/qqpim/sdk/defines/DataSyncResult;>;"
    iget-object v2, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obj1:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 536
    iget-object v1, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obj1:Ljava/lang/Object;

    .end local v1           #resultList:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/qqpim/sdk/defines/DataSyncResult;>;"
    check-cast v1, Ljava/util/List;

    .line 542
    .restart local v1       #resultList:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/qqpim/sdk/defines/DataSyncResult;>;"
    if-nez v1, :cond_3

    .line 543
    sget-object v2, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v3, "syncAllFinished: resultList is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 539
    :cond_2
    sget-object v2, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v3, "syncAllFinished: obj1 is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 546
    :cond_3
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;

    .line 547
    .local v0, result:Lcom/tencent/qqpim/sdk/defines/DataSyncResult;
    if-nez v0, :cond_4

    .line 548
    sget-object v2, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v3, "syncAllFinished: result is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 551
    :cond_4
    iget v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 553
    :pswitch_0
    iget-object v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mRemoteResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getServerDel()I

    move-result v3

    iput v3, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mDel:I

    .line 554
    iget-object v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mRemoteResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getServerModify()I

    move-result v3

    iput v3, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mModify:I

    .line 555
    iget-object v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mRemoteResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getServerAdd()I

    move-result v3

    iput v3, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mAdd:I

    .line 556
    iget-object v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mLocalResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getClientDel()I

    move-result v3

    iput v3, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mDel:I

    .line 557
    iget-object v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mLocalResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getClientModify()I

    move-result v3

    iput v3, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mModify:I

    .line 558
    iget-object v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mLocalResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getClientAdd()I

    move-result v3

    iput v3, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mAdd:I

    goto :goto_0

    .line 561
    :pswitch_1
    iget v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncDir:I

    if-ne v2, v3, :cond_5

    .line 562
    iget-object v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mRemoteResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getServerDel()I

    move-result v3

    iput v3, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mDel:I

    .line 563
    iget-object v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mRemoteResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getServerModify()I

    move-result v3

    iput v3, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mModify:I

    .line 564
    iget-object v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mRemoteResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getServerAdd()I

    move-result v3

    iput v3, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mAdd:I

    goto :goto_0

    .line 566
    :cond_5
    iget v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncDir:I

    if-nez v2, :cond_0

    .line 567
    iget-object v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mLocalResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getClientDel()I

    move-result v3

    iput v3, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mDel:I

    .line 568
    iget-object v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mLocalResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getClientModify()I

    move-result v3

    iput v3, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mModify:I

    .line 569
    iget-object v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mLocalResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getClientAdd()I

    move-result v3

    iput v3, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mAdd:I

    goto/16 :goto_0

    .line 573
    :pswitch_2
    iget v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncDir:I

    if-ne v2, v3, :cond_6

    .line 574
    iget-object v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mRemoteResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getServerDel()I

    move-result v3

    iput v3, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mDel:I

    .line 575
    iget-object v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mRemoteResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getServerModify()I

    move-result v3

    iput v3, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mModify:I

    .line 576
    iget-object v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mRemoteResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getServerAdd()I

    move-result v3

    iput v3, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mAdd:I

    goto/16 :goto_0

    .line 578
    :cond_6
    iget v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncDir:I

    if-nez v2, :cond_0

    .line 579
    iget-object v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mLocalResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getClientDel()I

    move-result v3

    iput v3, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mDel:I

    .line 580
    iget-object v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mLocalResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getClientModify()I

    move-result v3

    iput v3, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mModify:I

    .line 581
    iget-object v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mLocalResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/DataSyncResult;->getClientAdd()I

    move-result v3

    iput v3, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;->mAdd:I

    goto/16 :goto_0

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public autoSyncProgressChanged(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 309
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 416
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    .line 313
    .local v0, message:Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;
    iget v1, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    packed-switch v1, :pswitch_data_0

    .line 412
    :pswitch_0
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "autoSyncProgressChanged: un-know state."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 316
    :pswitch_1
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "autoSyncProgressChanged: ESTATE_SYNC_ALL_BEGIN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v1, 0x0

    iput v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mAutoSyncProgress:I

    goto :goto_0

    .line 322
    :pswitch_2
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "autoSyncProgressChanged: ESTATE_SYNC_MAP_SHARE_CHECK_BEGIN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :pswitch_3
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "autoSyncProgressChanged: ESTATE_SYNC_MAP_SHARE_CHECK_END"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    :pswitch_4
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "autoSyncProgressChanged: ESTATE_SYNC_SINGLE_BEGIN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 340
    :pswitch_5
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "autoSyncProgressChanged: ESTATE_SYNC_DATASYNC_ALL_BEGIN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 346
    :pswitch_6
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "autoSyncProgressChanged: ESTATE_SYNC_SCAN_BEGIN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    :pswitch_7
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "autoSyncProgressChanged: ESTATE_SYNC_SCAN_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 358
    :pswitch_8
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoSyncProgressChanged: ESTATE_SYNC_PROGRESS_CHANGED progress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget v1, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    iput v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mAutoSyncProgress:I

    goto :goto_0

    .line 364
    :pswitch_9
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "autoSyncProgressChanged: ESTATE_SYNC_THUMBNAIL_PROGRESS_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :pswitch_a
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "autoSyncProgressChanged: ESTATE_SYNC_SINGLE_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 375
    :pswitch_b
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "autoSyncProgressChanged: ESTATE_SYNC_DATASYNC_ALL_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 381
    :pswitch_c
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "autoSyncProgressChanged: ESTATE_SYNC_DATA_REARRANGEMENT_BEGIN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 387
    :pswitch_d
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "autoSyncProgressChanged: ESTATE_SYNC_DATA_REARRANGEMENT_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 393
    :pswitch_e
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "autoSyncProgressChanged: ESTATE_SYNC_THUMBNAIL_BEGIN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 399
    :pswitch_f
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "autoSyncProgressChanged: ESTATE_SYNC_THUMBNAIL_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 405
    :pswitch_10
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "autoSyncProgressChanged: ESTATE_SYNC_ALL_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-direct {p0, v0}, Lcom/lewa/cloud/manager/TencentCloudManager;->syncAllFinished(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    .line 408
    const/16 v1, 0x64

    iput v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mAutoSyncProgress:I

    goto/16 :goto_0

    .line 313
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
        :pswitch_10
    .end packed-switch
.end method

.method public checkContactLocalDataChanged()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 915
    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/StatisticsFactory;->getStatisticsUtil()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;

    move-result-object v3

    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/AccountInfoForOutsideLoginSDKFactory;->getAccountInfo()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IAccountInfoForOutsideSDK;

    move-result-object v4

    invoke-interface {v4}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IAccountInfoForOutsideSDK;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;->syncCollectLocalDataChange(ILjava/lang/String;)Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;

    move-result-object v0

    .line 917
    .local v0, dataChangeStruct:Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;
    if-eqz v0, :cond_1

    .line 918
    iget v3, v0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mAdd:I

    iget v4, v0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mDel:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;->mModify:I

    add-int/2addr v3, v4

    if-lez v3, :cond_0

    .line 926
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 922
    goto :goto_0

    :cond_1
    move v1, v2

    .line 926
    goto :goto_0
.end method

.method public doContactAutoSync()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 657
    const/16 v1, 0xc8

    .line 658
    .local v1, operation_type:I
    iget-object v7, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContactAutoSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;

    const/4 v9, 0x2

    invoke-static {v7, v8, v9}, Lcom/tencent/qqpim/sdk/accesslayer/SyncProcessorFactory;->getSyncProcessor(Landroid/content/Context;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessorObsv;I)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;

    move-result-object v2

    .line 659
    .local v2, syncProcessor:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;
    if-nez v2, :cond_0

    .line 683
    :goto_0
    return v5

    .line 662
    :cond_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/StatisticsFactory;->getStatisticsUtil()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;

    move-result-object v7

    iget-object v8, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    invoke-interface {v7, v8}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;->getLocalContactNum(Landroid/content/Context;)I

    move-result v0

    .line 663
    .local v0, localNum:I
    sget-object v7, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;->LEWA:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

    const/16 v8, 0x804

    invoke-interface {v2, v7, v8, v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;->initSyncSettingsForSDK(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;II)Z

    .line 664
    new-instance v3, Lcom/tencent/qqpim/sdk/defines/SyncTask;

    invoke-direct {v3}, Lcom/tencent/qqpim/sdk/defines/SyncTask;-><init>()V

    .line 665
    .local v3, syncTask:Lcom/tencent/qqpim/sdk/defines/SyncTask;
    invoke-virtual {v3, v1}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->setOperationType(I)V

    .line 666
    new-instance v4, Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;

    invoke-direct {v4}, Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;-><init>()V

    .line 667
    .local v4, taskFilter:Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;
    invoke-virtual {v4, v6}, Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;->setEnableFilter(Z)V

    .line 668
    iget-boolean v7, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncImgOnlyWifi:Z

    if-eqz v7, :cond_2

    .line 669
    invoke-virtual {p0}, Lcom/lewa/cloud/manager/TencentCloudManager;->isWifiNetwork()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 670
    invoke-virtual {v4, v6}, Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;->setNeedContactImage(Z)V

    .line 679
    :goto_1
    invoke-virtual {v3, v6}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->setDatatype(I)V

    .line 680
    invoke-virtual {v3, v4}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->setFilter(Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;)V

    .line 681
    invoke-interface {v2, v3}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;->addSyncTask(Lcom/tencent/qqpim/sdk/defines/SyncTask;)Z

    .line 682
    invoke-interface {v2}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;->syncData()V

    move v5, v6

    .line 683
    goto :goto_0

    .line 673
    :cond_1
    invoke-virtual {v4, v5}, Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;->setNeedContactImage(Z)V

    goto :goto_1

    .line 677
    :cond_2
    invoke-virtual {v4, v6}, Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;->setNeedContactImage(Z)V

    goto :goto_1
.end method

.method public declared-synchronized doSync(IIZZI)Z
    .locals 17
    .parameter "type"
    .parameter "direction"
    .parameter "byTime"
    .parameter "syncAll"
    .parameter "syncDuration"

    .prologue
    .line 706
    monitor-enter p0

    :try_start_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncType:I

    .line 707
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncDir:I

    .line 708
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncByTime:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    packed-switch p2, :pswitch_data_0

    .line 720
    const/4 v13, 0x0

    .line 890
    :goto_0
    monitor-exit p0

    return v13

    .line 711
    :pswitch_0
    const/16 v8, 0xd5

    .line 722
    .local v8, operation_type:I
    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 887
    const/4 v13, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncStartSignal:Ljava/util/concurrent/CountDownLatch;

    .line 888
    const/4 v13, 0x0

    goto :goto_0

    .line 714
    .end local v8           #operation_type:I
    :pswitch_1
    const/16 v8, 0xcb

    .line 715
    .restart local v8       #operation_type:I
    goto :goto_1

    .line 717
    .end local v8           #operation_type:I
    :pswitch_2
    const/16 v8, 0xc8

    .line 718
    .restart local v8       #operation_type:I
    goto :goto_1

    .line 724
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;

    const/4 v15, 0x2

    invoke-static {v13, v14, v15}, Lcom/tencent/qqpim/sdk/accesslayer/SyncProcessorFactory;->getSyncProcessor(Landroid/content/Context;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessorObsv;I)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;

    move-result-object v10

    .line 725
    .local v10, syncProcessor:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;
    if-nez v10, :cond_0

    .line 726
    const/4 v13, 0x0

    goto :goto_0

    .line 728
    :cond_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/StatisticsFactory;->getStatisticsUtil()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    invoke-interface {v13, v14}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;->getLocalContactNum(Landroid/content/Context;)I

    move-result v7

    .line 729
    .local v7, localNum:I
    if-nez v7, :cond_1

    .line 730
    const/16 v8, 0xd5

    .line 732
    :cond_1
    sget-object v13, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;->LEWA:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

    const/16 v14, 0x804

    invoke-interface {v10, v13, v14, v7}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;->initSyncSettingsForSDK(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;II)Z

    .line 733
    new-instance v11, Lcom/tencent/qqpim/sdk/defines/SyncTask;

    invoke-direct {v11}, Lcom/tencent/qqpim/sdk/defines/SyncTask;-><init>()V

    .line 734
    .local v11, syncTask:Lcom/tencent/qqpim/sdk/defines/SyncTask;
    invoke-virtual {v11, v8}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->setOperationType(I)V

    .line 735
    new-instance v12, Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;

    invoke-direct {v12}, Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;-><init>()V

    .line 736
    .local v12, taskFilter:Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;->setEnableFilter(Z)V

    .line 737
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncImgOnlyWifi:Z

    if-eqz v13, :cond_4

    .line 738
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/cloud/manager/TencentCloudManager;->isWifiNetwork()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 739
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;->setNeedContactImage(Z)V

    .line 748
    :goto_2
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->setDatatype(I)V

    .line 749
    invoke-virtual {v11, v12}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->setFilter(Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;)V

    .line 750
    invoke-interface {v10, v11}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;->addSyncTask(Lcom/tencent/qqpim/sdk/defines/SyncTask;)Z

    .line 751
    invoke-interface {v10}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;->syncData()V

    .line 890
    .end local v7           #localNum:I
    .end local v10           #syncProcessor:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;
    .end local v11           #syncTask:Lcom/tencent/qqpim/sdk/defines/SyncTask;
    .end local v12           #taskFilter:Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;
    :cond_2
    :goto_3
    const/4 v13, 0x1

    goto :goto_0

    .line 742
    .restart local v7       #localNum:I
    .restart local v10       #syncProcessor:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;
    .restart local v11       #syncTask:Lcom/tencent/qqpim/sdk/defines/SyncTask;
    .restart local v12       #taskFilter:Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;
    :cond_3
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;->setNeedContactImage(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 706
    .end local v7           #localNum:I
    .end local v8           #operation_type:I
    .end local v10           #syncProcessor:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;
    .end local v11           #syncTask:Lcom/tencent/qqpim/sdk/defines/SyncTask;
    .end local v12           #taskFilter:Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 746
    .restart local v7       #localNum:I
    .restart local v8       #operation_type:I
    .restart local v10       #syncProcessor:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;
    .restart local v11       #syncTask:Lcom/tencent/qqpim/sdk/defines/SyncTask;
    .restart local v12       #taskFilter:Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;
    :cond_4
    const/4 v13, 0x1

    :try_start_2
    invoke-virtual {v12, v13}, Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;->setNeedContactImage(Z)V

    goto :goto_2

    .line 754
    .end local v7           #localNum:I
    .end local v10           #syncProcessor:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;
    .end local v11           #syncTask:Lcom/tencent/qqpim/sdk/defines/SyncTask;
    .end local v12           #taskFilter:Lcom/tencent/qqpim/sdk/defines/TaskFilterContact;
    :pswitch_4
    const/16 v13, 0xcb

    if-ne v8, v13, :cond_a

    .line 755
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;

    const/4 v15, 0x2

    invoke-static {v13, v14, v15}, Lcom/tencent/qqpim/sdk/accesslayer/SyncProcessorFactory;->getSyncProcessor(Landroid/content/Context;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessorObsv;I)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;

    move-result-object v10

    .line 756
    .restart local v10       #syncProcessor:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;
    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/StatisticsFactory;->getStatisticsUtil()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    invoke-interface {v13, v14}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;->getLocalContactNum(Landroid/content/Context;)I

    move-result v7

    .line 757
    .restart local v7       #localNum:I
    sget-object v13, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;->LEWA:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

    const/16 v14, 0x804

    invoke-interface {v10, v13, v14, v7}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;->initSyncSettingsForSDK(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;II)Z

    .line 758
    new-instance v11, Lcom/tencent/qqpim/sdk/defines/SyncTask;

    invoke-direct {v11}, Lcom/tencent/qqpim/sdk/defines/SyncTask;-><init>()V

    .line 759
    .restart local v11       #syncTask:Lcom/tencent/qqpim/sdk/defines/SyncTask;
    new-instance v2, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;-><init>()V

    .line 760
    .local v2, filter:Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->setEnableFilter(Z)V

    .line 761
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->setQueryByNums(Z)V

    .line 762
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncByTime:Z

    if-eqz v13, :cond_6

    .line 763
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->setSelectSmsSubType(I)V

    .line 764
    new-instance v9, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;

    invoke-direct {v9}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;-><init>()V

    .line 765
    .local v9, smsSyncArg:Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;
    packed-switch p5, :pswitch_data_2

    .line 780
    sget-object v13, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_ALL:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    invoke-virtual {v9, v13}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->setTimeType(Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;)V

    .line 783
    :goto_4
    invoke-virtual {v9}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->getSmsStartTime()J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-wide v0, v15

    invoke-virtual {v2, v13, v14, v0, v1}, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->setSmsTime(JJ)V

    .line 803
    .end local v9           #smsSyncArg:Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;
    :cond_5
    :goto_5
    invoke-virtual {v11, v2}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->setFilter(Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;)V

    .line 804
    const/16 v13, 0xcb

    invoke-virtual {v11, v13}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->setOperationType(I)V

    .line 805
    const/4 v13, 0x4

    invoke-virtual {v11, v13}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->setDatatype(I)V

    .line 806
    invoke-interface {v10, v11}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;->addSyncTask(Lcom/tencent/qqpim/sdk/defines/SyncTask;)Z

    .line 807
    invoke-interface {v10}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;->syncData()V

    goto :goto_3

    .line 767
    .restart local v9       #smsSyncArg:Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;
    :pswitch_5
    sget-object v13, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_ONE_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    invoke-virtual {v9, v13}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->setTimeType(Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;)V

    goto :goto_4

    .line 770
    :pswitch_6
    sget-object v13, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_THREE_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    invoke-virtual {v9, v13}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->setTimeType(Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;)V

    goto :goto_4

    .line 773
    :pswitch_7
    sget-object v13, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_SIX_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    invoke-virtual {v9, v13}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->setTimeType(Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;)V

    goto :goto_4

    .line 776
    :pswitch_8
    sget-object v13, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_ONE_YEAR:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    invoke-virtual {v9, v13}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->setTimeType(Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;)V

    goto :goto_4

    .line 786
    .end local v9           #smsSyncArg:Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;
    :cond_6
    if-eqz p4, :cond_7

    .line 787
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->setSelectSmsSubType(I)V

    goto :goto_5

    .line 789
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsDataList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_5

    .line 790
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v4, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsDataList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_8
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;

    .line 792
    .local v5, item:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;
    iget-boolean v13, v5, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mSelected:Z

    if-eqz v13, :cond_8

    .line 793
    iget-object v6, v5, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mObj:Ljava/lang/Object;

    check-cast v6, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;

    .line 794
    .local v6, itemData:Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;
    invoke-virtual {v6}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->getPhoneNums()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 797
    .end local v5           #item:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;
    .end local v6           #itemData:Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;
    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_5

    .line 798
    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->setSelectSmsSubType(I)V

    .line 799
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v2, v13}, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->setSelectionArguments([Ljava/lang/String;)V

    goto :goto_5

    .line 809
    .end local v2           #filter:Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #localNum:I
    .end local v10           #syncProcessor:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;
    .end local v11           #syncTask:Lcom/tencent/qqpim/sdk/defines/SyncTask;
    :cond_a
    const/16 v13, 0xd5

    if-ne v8, v13, :cond_2

    .line 810
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;

    const/4 v15, 0x2

    invoke-static {v13, v14, v15}, Lcom/tencent/qqpim/sdk/accesslayer/SyncProcessorFactory;->getSyncProcessor(Landroid/content/Context;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessorObsv;I)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;

    move-result-object v10

    .line 811
    .restart local v10       #syncProcessor:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;
    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/StatisticsFactory;->getStatisticsUtil()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    invoke-interface {v13, v14}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;->getLocalContactNum(Landroid/content/Context;)I

    move-result v7

    .line 812
    .restart local v7       #localNum:I
    sget-object v13, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;->LEWA:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

    const/16 v14, 0x804

    invoke-interface {v10, v13, v14, v7}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;->initSyncSettingsForSDK(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;II)Z

    .line 813
    new-instance v11, Lcom/tencent/qqpim/sdk/defines/SyncTask;

    invoke-direct {v11}, Lcom/tencent/qqpim/sdk/defines/SyncTask;-><init>()V

    .line 814
    .restart local v11       #syncTask:Lcom/tencent/qqpim/sdk/defines/SyncTask;
    new-instance v2, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;-><init>()V

    .line 815
    .restart local v2       #filter:Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->setEnableFilter(Z)V

    .line 816
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->setQueryByNums(Z)V

    .line 817
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncByTime:Z

    if-eqz v13, :cond_c

    .line 818
    new-instance v9, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;

    invoke-direct {v9}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;-><init>()V

    .line 819
    .restart local v9       #smsSyncArg:Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;
    packed-switch p5, :pswitch_data_3

    .line 834
    sget-object v13, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_ALL:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    invoke-virtual {v9, v13}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->setTimeType(Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;)V

    .line 837
    :goto_7
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->setSelectSmsSubType(I)V

    .line 838
    invoke-virtual {v9}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->getSmsStartTime()J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-wide v0, v15

    invoke-virtual {v2, v13, v14, v0, v1}, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->setSmsTime(JJ)V

    .line 857
    .end local v9           #smsSyncArg:Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;
    :cond_b
    :goto_8
    invoke-virtual {v11, v2}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->setFilter(Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;)V

    .line 858
    const/16 v13, 0xd5

    invoke-virtual {v11, v13}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->setOperationType(I)V

    .line 859
    const/4 v13, 0x4

    invoke-virtual {v11, v13}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->setDatatype(I)V

    .line 860
    invoke-interface {v10, v11}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;->addSyncTask(Lcom/tencent/qqpim/sdk/defines/SyncTask;)Z

    .line 861
    invoke-interface {v10}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;->syncData()V

    goto/16 :goto_3

    .line 821
    .restart local v9       #smsSyncArg:Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;
    :pswitch_9
    sget-object v13, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_ONE_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    invoke-virtual {v9, v13}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->setTimeType(Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;)V

    goto :goto_7

    .line 824
    :pswitch_a
    sget-object v13, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_THREE_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    invoke-virtual {v9, v13}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->setTimeType(Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;)V

    goto :goto_7

    .line 827
    :pswitch_b
    sget-object v13, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_SIX_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    invoke-virtual {v9, v13}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->setTimeType(Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;)V

    goto :goto_7

    .line 830
    :pswitch_c
    sget-object v13, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_ONE_YEAR:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    invoke-virtual {v9, v13}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->setTimeType(Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;)V

    goto :goto_7

    .line 841
    .end local v9           #smsSyncArg:Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;
    :cond_c
    if-eqz p4, :cond_d

    .line 842
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->setSelectSmsSubType(I)V

    goto :goto_8

    .line 843
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsDataList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_b

    .line 844
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 845
    .restart local v4       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsDataList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_e
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;

    .line 846
    .restart local v5       #item:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;
    iget-boolean v13, v5, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mSelected:Z

    if-eqz v13, :cond_e

    .line 847
    iget-object v6, v5, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mObj:Ljava/lang/Object;

    check-cast v6, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;

    .line 848
    .restart local v6       #itemData:Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;
    iget-object v13, v6, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->number:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 851
    .end local v5           #item:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;
    .end local v6           #itemData:Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;
    :cond_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_b

    .line 852
    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->setSelectSmsSubType(I)V

    .line 853
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v2, v13}, Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;->setSelectionArguments([Ljava/lang/String;)V

    goto :goto_8

    .line 865
    .end local v2           #filter:Lcom/tencent/qqpim/sdk/defines/TaskFilterSms;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #localNum:I
    .end local v10           #syncProcessor:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;
    .end local v11           #syncTask:Lcom/tencent/qqpim/sdk/defines/SyncTask;
    :pswitch_d
    const/16 v13, 0xcb

    if-ne v8, v13, :cond_10

    .line 866
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/tencent/qqpim/sdk/accesslayer/SyncProcessorFactory;->getSyncProcessor(Landroid/content/Context;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessorObsv;I)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;

    move-result-object v10

    .line 867
    .restart local v10       #syncProcessor:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;
    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/StatisticsFactory;->getStatisticsUtil()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    invoke-interface {v13, v14}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;->getLocalContactNum(Landroid/content/Context;)I

    move-result v7

    .line 868
    .restart local v7       #localNum:I
    sget-object v13, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;->LEWA:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

    const/16 v14, 0x804

    invoke-interface {v10, v13, v14, v7}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;->initSyncSettingsForSDK(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;II)Z

    .line 869
    new-instance v11, Lcom/tencent/qqpim/sdk/defines/SyncTask;

    invoke-direct {v11}, Lcom/tencent/qqpim/sdk/defines/SyncTask;-><init>()V

    .line 870
    .restart local v11       #syncTask:Lcom/tencent/qqpim/sdk/defines/SyncTask;
    const/16 v13, 0xcb

    invoke-virtual {v11, v13}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->setOperationType(I)V

    .line 871
    const/16 v13, 0x10

    invoke-virtual {v11, v13}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->setDatatype(I)V

    .line 872
    invoke-interface {v10, v11}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;->addSyncTask(Lcom/tencent/qqpim/sdk/defines/SyncTask;)Z

    .line 873
    invoke-interface {v10}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;->syncData()V

    goto/16 :goto_3

    .line 875
    .end local v7           #localNum:I
    .end local v10           #syncProcessor:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;
    .end local v11           #syncTask:Lcom/tencent/qqpim/sdk/defines/SyncTask;
    :cond_10
    const/16 v13, 0xd5

    if-ne v8, v13, :cond_2

    .line 876
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/tencent/qqpim/sdk/accesslayer/SyncProcessorFactory;->getSyncProcessor(Landroid/content/Context;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessorObsv;I)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;

    move-result-object v10

    .line 877
    .restart local v10       #syncProcessor:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;
    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/StatisticsFactory;->getStatisticsUtil()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    invoke-interface {v13, v14}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;->getLocalContactNum(Landroid/content/Context;)I

    move-result v7

    .line 878
    .restart local v7       #localNum:I
    sget-object v13, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;->LEWA:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

    const/16 v14, 0x804

    invoke-interface {v10, v13, v14, v7}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;->initSyncSettingsForSDK(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;II)Z

    .line 879
    new-instance v11, Lcom/tencent/qqpim/sdk/defines/SyncTask;

    invoke-direct {v11}, Lcom/tencent/qqpim/sdk/defines/SyncTask;-><init>()V

    .line 880
    .restart local v11       #syncTask:Lcom/tencent/qqpim/sdk/defines/SyncTask;
    const/16 v13, 0xd5

    invoke-virtual {v11, v13}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->setOperationType(I)V

    .line 881
    const/16 v13, 0x10

    invoke-virtual {v11, v13}, Lcom/tencent/qqpim/sdk/defines/SyncTask;->setDatatype(I)V

    .line 882
    invoke-interface {v10, v11}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;->addSyncTask(Lcom/tencent/qqpim/sdk/defines/SyncTask;)Z

    .line 883
    invoke-interface {v10}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;->syncData()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 722
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_d
    .end packed-switch

    .line 765
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 819
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public getAccountImg()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getAccountNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutoSyncProgress()I
    .locals 1

    .prologue
    .line 599
    iget v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mAutoSyncProgress:I

    return v0
.end method

.method public getCallLogLocalNum()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallLogLocalNum:I

    return v0
.end method

.method public getCallLogStoreNum()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallLogStoreNum:I

    return v0
.end method

.method public getCallLogSyncTimeInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallsSyncDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCallSyncHelpInfo()Landroid/text/Spanned;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public getContactLocalNum()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContactLocalNum:I

    return v0
.end method

.method public getContactStoreNum()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContactStoreNum:I

    return v0
.end method

.method public getContactSyncHelpInfo()Landroid/text/Spanned;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public getContactSyncTimeInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContactsSyncDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalSmsNumByTime()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;
    .locals 1

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mLocalSmsNumByTime:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;

    return-object v0
.end method

.method public getLocalSyncResult()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mLocalResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    return-object v0
.end method

.method public getLogInHelpInfo()Landroid/text/Spanned;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mHelpInfo:Landroid/text/Spanned;

    return-object v0
.end method

.method public getLogInState()I
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/AccountInfoForOutsideLoginSDKFactory;->getAccountInfo()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IAccountInfoForOutsideSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IAccountInfoForOutsideSDK;->isLogined()Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/AccountInfoForOutsideLoginSDKFactory;->getAccountInfo()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IAccountInfoForOutsideSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IAccountInfoForOutsideSDK;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, account:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 157
    :cond_0
    const/4 v1, 0x0

    .line 164
    .end local v0           #account:Ljava/lang/String;
    :goto_0
    return v1

    .line 160
    .restart local v0       #account:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 164
    .end local v0           #account:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getLogRetryHelpInfo()Landroid/text/Spanned;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mRetryHelpInfo:Landroid/text/Spanned;

    return-object v0
.end method

.method public getPimPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mPimPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerBySource()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    iget-object v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mPowerByDraw:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mPowerByDraw:Landroid/graphics/drawable/Drawable;

    .line 108
    iget-object v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 109
    .local v0, dimen:I
    iget-object v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mPowerByDraw:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 111
    .end local v0           #dimen:I
    :cond_0
    iget-object v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mPowerByDraw:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mProgress:I

    return v0
.end method

.method public getRemoteSmsNumByTime()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;
    .locals 1

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mRemoteSmsNumByTime:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;

    return-object v0
.end method

.method public getRemoteSyncResult()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mRemoteResult:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SyncResult;

    return-object v0
.end method

.method public getSDKVersion()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public getSmsData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsDataList:Ljava/util/List;

    return-object v0
.end method

.method public getSmsLocalNum()I
    .locals 2

    .prologue
    .line 278
    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/StatisticsFactory;->getStatisticsUtil()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;->getLocalSmsNum(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsLocalNum:I

    .line 279
    iget v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsLocalNum:I

    return v0
.end method

.method public getSmsStoreNum()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsStoreNum:I

    return v0
.end method

.method public getSmsSyncHelpInfo()Landroid/text/Spanned;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public getSmsSyncTimeInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsSyncDate:Ljava/lang/String;

    return-object v0
.end method

.method protected getSmsTimeType()[Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;
    .locals 3

    .prologue
    .line 1406
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    const/4 v1, 0x0

    sget-object v2, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_ALL:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_ONE_YEAR:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_SIX_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_THREE_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_ONE_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getUsedDay()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mUsedDay:I

    return v0
.end method

.method public getUsedMonth()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mUsedMonth:I

    return v0
.end method

.method public getUserIdentity()I
    .locals 2

    .prologue
    .line 289
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->getSingleInstance()Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->getUserIdentity()I

    move-result v0

    .line 290
    .local v0, ret:I
    packed-switch v0, :pswitch_data_0

    .line 301
    const/4 v0, -0x5

    .line 304
    :goto_0
    return v0

    .line 292
    :pswitch_0
    const/4 v0, 0x0

    .line 293
    goto :goto_0

    .line 295
    :pswitch_1
    const/4 v0, -0x1

    .line 296
    goto :goto_0

    .line 298
    :pswitch_2
    const/4 v0, -0x2

    .line 299
    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public gotoVerityPim(Ljava/lang/String;)Z
    .locals 4
    .parameter "pim"

    .prologue
    const/4 v2, 0x0

    .line 609
    iget-object v3, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/qqpim/sdk/accesslayer/VerifyMgrFactory;->getVerifyMgr(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IVerifyMgr;

    move-result-object v0

    .line 611
    .local v0, mLoginMgr:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IVerifyMgr;
    invoke-interface {v0, p1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IVerifyMgr;->verifyPimPwd(Ljava/lang/String;)I

    move-result v1

    .line 612
    .local v1, retPim:I
    if-nez v1, :cond_0

    .line 613
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->getSingleInstance()Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->setNeedCheckPim(Z)V

    .line 614
    const/4 v2, 0x1

    .line 616
    :cond_0
    return v2
.end method

.method public init()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 92
    iget-object v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    .line 93
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->isImeiDisable()Z

    .line 94
    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->setLogcatSwitch(Z)V

    .line 95
    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->setLogFileSwitch(Z)V

    .line 96
    return v1
.end method

.method public isNeedCheckPim()Z
    .locals 1

    .prologue
    .line 604
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->getSingleInstance()Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->isNeedCheckPim()Z

    move-result v0

    return v0
.end method

.method public isNetworkConnected()Z
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method public isWifiNetwork()Z
    .locals 3

    .prologue
    .line 695
    iget-object v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 697
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method public lockSync()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 622
    :try_start_0
    iget-object v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncStartSignal:Ljava/util/concurrent/CountDownLatch;

    if-nez v1, :cond_0

    .line 623
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncStartSignal:Ljava/util/concurrent/CountDownLatch;

    .line 625
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "lockSync: first sync."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :goto_0
    return v4

    .line 630
    :cond_0
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "lockSync: wait last sync finish."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncStartSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 633
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncStartSignal:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 636
    :catch_0
    move-exception v0

    .line 638
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockSync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public logOut()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/accesslayer/VerifyMgrFactory;->getVerifyMgr(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IVerifyMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IVerifyMgr;->logout()V

    .line 269
    return-void
.end method

.method public progressChanged(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 420
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 527
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    .line 424
    .local v0, message:Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;
    iget v1, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    packed-switch v1, :pswitch_data_0

    .line 523
    :pswitch_0
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "progressChanged: un-know state."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 427
    :pswitch_1
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "progressChanged: ESTATE_SYNC_ALL_BEGIN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v1, 0x0

    iput v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mProgress:I

    goto :goto_0

    .line 433
    :pswitch_2
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "progressChanged: ESTATE_SYNC_MAP_SHARE_CHECK_BEGIN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 439
    :pswitch_3
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "progressChanged: ESTATE_SYNC_MAP_SHARE_CHECK_END"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 445
    :pswitch_4
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "progressChanged: ESTATE_SYNC_SINGLE_BEGIN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 451
    :pswitch_5
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "progressChanged: ESTATE_SYNC_DATASYNC_ALL_BEGIN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    :pswitch_6
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "progressChanged: ESTATE_SYNC_SCAN_BEGIN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    :pswitch_7
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "progressChanged: ESTATE_SYNC_SCAN_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 469
    :pswitch_8
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "progressChanged: ESTATE_SYNC_PROGRESS_CHANGED progress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget v1, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    iput v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mProgress:I

    goto :goto_0

    .line 475
    :pswitch_9
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "progressChanged: ESTATE_SYNC_THUMBNAIL_PROGRESS_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 480
    :pswitch_a
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "progressChanged: ESTATE_SYNC_SINGLE_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 486
    :pswitch_b
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "progressChanged: ESTATE_SYNC_DATASYNC_ALL_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 492
    :pswitch_c
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "progressChanged: ESTATE_SYNC_DATA_REARRANGEMENT_BEGIN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 498
    :pswitch_d
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "progressChanged: ESTATE_SYNC_DATA_REARRANGEMENT_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 504
    :pswitch_e
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "progressChanged: ESTATE_SYNC_THUMBNAIL_BEGIN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 510
    :pswitch_f
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "progressChanged: ESTATE_SYNC_THUMBNAIL_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 516
    :pswitch_10
    sget-object v1, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "progressChanged: ESTATE_SYNC_ALL_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-direct {p0, v0}, Lcom/lewa/cloud/manager/TencentCloudManager;->syncAllFinished(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    .line 519
    const/16 v1, 0x64

    iput v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mProgress:I

    goto/16 :goto_0

    .line 424
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
        :pswitch_10
    .end packed-switch
.end method

.method public setAutoSyncContactObsv(Lcom/lewa/cloud/manager/SyncProcessorObsv;)V
    .locals 0
    .parameter "observe"

    .prologue
    .line 910
    iput-object p1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContactAutoSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;

    .line 911
    return-void
.end method

.method public setPimPassword(Ljava/lang/String;)Z
    .locals 1
    .parameter "password"

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mPimPassword:Ljava/lang/String;

    .line 1582
    const/4 v0, 0x1

    return v0
.end method

.method public setProgressObsv(Lcom/lewa/cloud/manager/SyncProcessorObsv;)V
    .locals 0
    .parameter "observe"

    .prologue
    .line 589
    iput-object p1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;

    .line 590
    return-void
.end method

.method public setSyncResultObsv(Lcom/lewa/cloud/manager/SyncResultObsv;)V
    .locals 0
    .parameter "observe"

    .prologue
    .line 905
    iput-object p1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;

    .line 906
    return-void
.end method

.method public startLoginActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/qqpim/sdk/accesslayer/ui/LoginWapActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 150
    return-void
.end method

.method public unlockSync()Z
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncStartSignal:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncStartSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 649
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public updateAccountInfo()Z
    .locals 3

    .prologue
    .line 220
    new-instance v0, Lcom/lewa/cloud/manager/TencentCloudManager$1;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/manager/TencentCloudManager$1;-><init>(Lcom/lewa/cloud/manager/TencentCloudManager;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/lewa/cloud/manager/TencentCloudManager$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public updateAccountInfoFinish(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 237
    sget-object v2, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v3, "updateAccountInfoFinish: enter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_0

    .line 240
    iget v2, p1, Landroid/os/Message;->arg1:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 264
    :goto_1
    return v0

    .line 242
    :sswitch_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getServerContactNum()I

    move-result v2

    iput v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContactStoreNum:I

    .line 243
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getServerSmsNum()I

    move-result v2

    iput v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsStoreNum:I

    .line 244
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getServerCallLogNum()I

    move-result v2

    iput v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallLogStoreNum:I

    .line 246
    sget-object v2, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v3, "updateAccountInfoFinish: _RESULT_SUCC"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iput v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_1

    .line 251
    :sswitch_1
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updateAccountInfoFinish: RET_NETWORK_ERR"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v0, -0x5

    iput v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_0

    .line 255
    :sswitch_2
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updateAccountInfoFinish: RET_PARAMETER_ERR"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v0, -0x6

    iput v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_0

    .line 259
    :sswitch_3
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updateAccountInfoFinish: _RESULT_LOGINKEY_EXPIRED"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v0, -0x1

    iput v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_0

    .line 240
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_3
        0x259 -> :sswitch_2
        0x25a -> :sswitch_1
    .end sparse-switch
.end method

.method public updateCallLogData()Z
    .locals 3

    .prologue
    .line 1037
    new-instance v0, Lcom/lewa/cloud/manager/TencentCloudManager$3;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/manager/TencentCloudManager$3;-><init>(Lcom/lewa/cloud/manager/TencentCloudManager;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/lewa/cloud/manager/TencentCloudManager$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1088
    const/4 v0, 0x1

    return v0
.end method

.method public updateCallLogDataFinish(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x7

    .line 1094
    sget-object v2, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v3, "updateCallLogDateFinish: enter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_0

    .line 1097
    iget v2, p1, Landroid/os/Message;->arg1:I

    sparse-switch v2, :sswitch_data_0

    .line 1140
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updateCallLogDateFinish: _RESULT_UNKWON"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iput v4, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    :goto_0
    move v0, v1

    .line 1152
    :goto_1
    return v0

    .line 1099
    :sswitch_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getServerContactNum()I

    move-result v2

    iput v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContactStoreNum:I

    .line 1100
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getServerSmsNum()I

    move-result v2

    iput v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsStoreNum:I

    .line 1101
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getServerCallLogNum()I

    move-result v2

    iput v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallLogStoreNum:I

    .line 1108
    sget-object v2, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v3, "updateCallLogDateFinish: _RESULT_SUCC"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iput v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_1

    .line 1116
    :sswitch_1
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updateCallLogDateFinish: RET_NETWORK_ERR"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v0, -0x5

    iput v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_0

    .line 1124
    :sswitch_2
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updateCallLogDateFinish: RET_PARAMETER_ERR"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const/4 v0, -0x6

    iput v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_0

    .line 1132
    :sswitch_3
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updateCallLogDateFinish: _RESULT_LOGINKEY_EXPIRED"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/4 v0, -0x1

    iput v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_0

    .line 1148
    :cond_0
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updateCallLogDateFinish: UNKWON MSG"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iput v4, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_0

    .line 1097
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_3
        0x259 -> :sswitch_2
        0x25a -> :sswitch_1
    .end sparse-switch
.end method

.method public updateContactData()Z
    .locals 3

    .prologue
    .line 932
    new-instance v0, Lcom/lewa/cloud/manager/TencentCloudManager$2;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/manager/TencentCloudManager$2;-><init>(Lcom/lewa/cloud/manager/TencentCloudManager;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/lewa/cloud/manager/TencentCloudManager$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 968
    const/4 v0, 0x1

    return v0
.end method

.method public updateContactDataFinish(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x7

    .line 974
    sget-object v2, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v3, "updateContactDataFinish: enter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_0

    .line 977
    iget v2, p1, Landroid/os/Message;->arg1:I

    sparse-switch v2, :sswitch_data_0

    .line 1020
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updateContactDataFinish: _RESULT_UNKWON"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iput v4, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    :goto_0
    move v0, v1

    .line 1032
    :goto_1
    return v0

    .line 979
    :sswitch_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getServerContactNum()I

    move-result v2

    iput v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContactStoreNum:I

    .line 980
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getServerSmsNum()I

    move-result v2

    iput v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsStoreNum:I

    .line 981
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getServerCallLogNum()I

    move-result v2

    iput v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallLogStoreNum:I

    .line 988
    sget-object v2, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v3, "updateContactDataFinish: _RESULT_SUCC"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iput v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_1

    .line 996
    :sswitch_1
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updateContactDataFinish: RET_NETWORK_ERR"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const/4 v0, -0x5

    iput v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_0

    .line 1004
    :sswitch_2
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updateContactDataFinish: RET_PARAMETER_ERR"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const/4 v0, -0x6

    iput v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_0

    .line 1012
    :sswitch_3
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updateContactDataFinish: _RESULT_LOGINKEY_EXPIRED"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const/4 v0, -0x1

    iput v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_0

    .line 1028
    :cond_0
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updateContactDataFinish: UNKWON MSG"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iput v4, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_0

    .line 977
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_3
        0x259 -> :sswitch_2
        0x25a -> :sswitch_1
    .end sparse-switch
.end method

.method public updatePrimeInfo()Z
    .locals 3

    .prologue
    .line 1157
    new-instance v0, Lcom/lewa/cloud/manager/TencentCloudManager$4;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/manager/TencentCloudManager$4;-><init>(Lcom/lewa/cloud/manager/TencentCloudManager;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/lewa/cloud/manager/TencentCloudManager$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1216
    const/4 v0, 0x1

    return v0
.end method

.method public updatePrimeInfoFinish(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x7

    .line 1222
    sget-object v2, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v3, "updatePrimeInfoFinish: enter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_0

    .line 1225
    iget v2, p1, Landroid/os/Message;->arg1:I

    sparse-switch v2, :sswitch_data_0

    .line 1255
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updatePrimeInfoFinish: _RESULT_UNKWON"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iput v4, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    :goto_0
    move v0, v1

    .line 1267
    :goto_1
    return v0

    .line 1227
    :sswitch_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getServerContactNum()I

    move-result v2

    iput v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContactStoreNum:I

    .line 1228
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getServerSmsNum()I

    move-result v2

    iput v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsStoreNum:I

    .line 1229
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getServerCallLogNum()I

    move-result v2

    iput v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallLogStoreNum:I

    .line 1231
    sget-object v2, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v3, "updatePrimeInfoFinish: _RESULT_SUCC"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iput v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_1

    .line 1237
    :sswitch_1
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updatePrimeInfoFinish: RET_NETWORK_ERR"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    const/4 v0, -0x5

    iput v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_0

    .line 1243
    :sswitch_2
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updatePrimeInfoFinish: RET_PARAMETER_ERR"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    const/4 v0, -0x6

    iput v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_0

    .line 1249
    :sswitch_3
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updatePrimeInfoFinish: _RESULT_LOGINKEY_EXPIRED"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    const/4 v0, -0x1

    iput v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_0

    .line 1263
    :cond_0
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updatePrimeInfoFinish: UNKWON MSG"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    iput v4, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_0

    .line 1225
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_3
        0x259 -> :sswitch_2
        0x25a -> :sswitch_1
    .end sparse-switch
.end method

.method public updateSmsData(I)Z
    .locals 3
    .parameter "syncDir"

    .prologue
    .line 1362
    iput p1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncDir:I

    .line 1363
    new-instance v0, Lcom/lewa/cloud/manager/TencentCloudManager$6;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/manager/TencentCloudManager$6;-><init>(Lcom/lewa/cloud/manager/TencentCloudManager;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/lewa/cloud/manager/TencentCloudManager$6;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1392
    const/4 v0, 0x1

    return v0
.end method

.method public updateSmsDataFinish(Landroid/os/Message;)Z
    .locals 16
    .parameter "msg"

    .prologue
    .line 1448
    sget-object v12, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v13, "updateSmsDataFinish: enter"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 1451
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsDataUpdateType:I

    .line 1452
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    sparse-switch v12, :sswitch_data_0

    .line 1527
    sget-object v12, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v13, "updateSmsDataFinish: _RESULT_UNKWON"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    const/4 v12, -0x7

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    .line 1571
    :goto_0
    const/4 v12, 0x0

    :goto_1
    return v12

    .line 1454
    :sswitch_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getServerContactNum()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContactStoreNum:I

    .line 1455
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getServerSmsNum()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsStoreNum:I

    .line 1456
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getServerCallLogNum()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallLogStoreNum:I

    .line 1457
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsDataList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 1458
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsSummaryList:Ljava/util/List;

    if-eqz v12, :cond_5

    .line 1459
    new-instance v3, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    invoke-direct {v3}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;-><init>()V

    .line 1460
    .local v3, fragment:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;
    new-instance v1, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x0

    invoke-direct {v1, v3, v12}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;-><init>(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;Landroid/content/Context;)V

    .line 1462
    .local v1, adapter:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsSummaryList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;

    .line 1463
    .local v6, itemSource:Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;
    new-instance v7, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v1}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;-><init>(Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;)V

    .line 1465
    .local v7, itemTarget:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncDir:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 1466
    invoke-virtual {v6}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->getNames()Ljava/lang/String;

    move-result-object v8

    .line 1467
    .local v8, name:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    .line 1468
    :cond_0
    invoke-virtual {v6}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->getPhoneNums()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mName:Ljava/lang/String;

    .line 1474
    :goto_3
    invoke-virtual {v6}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->getSnippet()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mInfo:Ljava/lang/String;

    .line 1475
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1476
    .local v2, date:Ljava/util/Date;
    invoke-virtual {v6}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->getDate()J

    move-result-wide v10

    .line 1477
    .local v10, time:J
    invoke-virtual {v2, v10, v11}, Ljava/util/Date;->setTime(J)V

    .line 1478
    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mTime:Ljava/lang/String;

    .line 1479
    invoke-virtual {v6}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->getMsgCount()I

    move-result v12

    iput v12, v7, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mInfoNum:I

    .line 1497
    :goto_4
    iput-object v6, v7, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mObj:Ljava/lang/Object;

    .line 1498
    const/4 v12, 0x0

    iput-boolean v12, v7, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mSelected:Z

    .line 1499
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsDataList:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1471
    .end local v2           #date:Ljava/util/Date;
    .end local v10           #time:J
    :cond_1
    iput-object v8, v7, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mName:Ljava/lang/String;

    goto :goto_3

    .line 1482
    .end local v8           #name:Ljava/lang/String;
    :cond_2
    iget-object v8, v6, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->name:Ljava/lang/String;

    .line 1483
    .restart local v8       #name:Ljava/lang/String;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_4

    .line 1484
    :cond_3
    iget-object v12, v6, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->number:Ljava/lang/String;

    iput-object v12, v7, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mName:Ljava/lang/String;

    .line 1490
    :goto_5
    iget-object v12, v6, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->summary:Ljava/lang/String;

    iput-object v12, v7, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mInfo:Ljava/lang/String;

    .line 1491
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1492
    .restart local v2       #date:Ljava/util/Date;
    iget v12, v6, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->sendTime:I

    int-to-long v12, v12

    const-wide/16 v14, 0x3e8

    mul-long v10, v12, v14

    .line 1493
    .restart local v10       #time:J
    invoke-virtual {v2, v10, v11}, Ljava/util/Date;->setTime(J)V

    .line 1494
    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mTime:Ljava/lang/String;

    .line 1495
    iget v12, v6, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->num:I

    iput v12, v7, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mInfoNum:I

    goto :goto_4

    .line 1487
    .end local v2           #date:Ljava/util/Date;
    .end local v10           #time:J
    :cond_4
    iput-object v8, v7, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;->mName:Ljava/lang/String;

    goto :goto_5

    .line 1503
    .end local v1           #adapter:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;
    .end local v3           #fragment:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #itemSource:Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;
    .end local v7           #itemTarget:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;
    .end local v8           #name:Ljava/lang/String;
    :cond_5
    sget-object v12, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v13, "updateSmsDataFinish: _RESULT_SUCC"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    .line 1506
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 1509
    :sswitch_1
    sget-object v12, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v13, "updateSmsDataFinish: RET_NETWORK_ERR"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const/4 v12, -0x5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto/16 :goto_0

    .line 1515
    :sswitch_2
    sget-object v12, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v13, "updateSmsDataFinish: RET_PARAMETER_ERR"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    const/4 v12, -0x6

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto/16 :goto_0

    .line 1521
    :sswitch_3
    sget-object v12, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v13, "updateSmsDataFinish: _RESULT_LOGINKEY_EXPIRED"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto/16 :goto_0

    .line 1533
    :cond_6
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_8

    .line 1534
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsDataUpdateType:I

    .line 1535
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    packed-switch v12, :pswitch_data_0

    .line 1560
    const/4 v12, -0x7

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto/16 :goto_0

    .line 1537
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    .line 1538
    .local v9, numByTimeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<LWUPSYNC/SMSNumCommonInfo;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_7

    .line 1539
    packed-switch v4, :pswitch_data_1

    .line 1538
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1541
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mRemoteSmsNumByTime:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LWUPSYNC/SMSNumCommonInfo;

    iget v12, v12, LWUPSYNC/SMSNumCommonInfo;->Num:I

    iput v12, v13, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;->mLastMonthNum:I

    goto :goto_7

    .line 1544
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mRemoteSmsNumByTime:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LWUPSYNC/SMSNumCommonInfo;

    iget v12, v12, LWUPSYNC/SMSNumCommonInfo;->Num:I

    iput v12, v13, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;->mLastThreeMonthNum:I

    goto :goto_7

    .line 1547
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mRemoteSmsNumByTime:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LWUPSYNC/SMSNumCommonInfo;

    iget v12, v12, LWUPSYNC/SMSNumCommonInfo;->Num:I

    iput v12, v13, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;->mLastSixMonthNum:I

    goto :goto_7

    .line 1550
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mRemoteSmsNumByTime:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LWUPSYNC/SMSNumCommonInfo;

    iget v12, v12, LWUPSYNC/SMSNumCommonInfo;->Num:I

    iput v12, v13, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;->mLastYearNum:I

    goto :goto_7

    .line 1553
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mRemoteSmsNumByTime:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LWUPSYNC/SMSNumCommonInfo;

    iget v12, v12, LWUPSYNC/SMSNumCommonInfo;->Num:I

    iput v12, v13, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;->mAllNum:I

    goto :goto_7

    .line 1557
    :cond_7
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    .line 1558
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 1565
    .end local v4           #i:I
    .end local v9           #numByTimeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<LWUPSYNC/SMSNumCommonInfo;>;"
    :cond_8
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsDataUpdateType:I

    .line 1567
    sget-object v12, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v13, "updateSmsDataFinish: UNKWON MSG"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    const/4 v12, -0x7

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto/16 :goto_0

    .line 1452
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_3
        0x259 -> :sswitch_2
        0x25a -> :sswitch_1
    .end sparse-switch

    .line 1535
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1539
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public updateSmsDurationData()Z
    .locals 3

    .prologue
    .line 1417
    new-instance v0, Lcom/lewa/cloud/manager/TencentCloudManager$7;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/manager/TencentCloudManager$7;-><init>(Lcom/lewa/cloud/manager/TencentCloudManager;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/lewa/cloud/manager/TencentCloudManager$7;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1442
    const/4 v0, 0x1

    return v0
.end method

.method public updateSmsSyncRecordData()Z
    .locals 3

    .prologue
    .line 1272
    new-instance v0, Lcom/lewa/cloud/manager/TencentCloudManager$5;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/manager/TencentCloudManager$5;-><init>(Lcom/lewa/cloud/manager/TencentCloudManager;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/lewa/cloud/manager/TencentCloudManager$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1306
    const/4 v0, 0x1

    return v0
.end method

.method public updateSmsSyncRecordDataFinish(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x7

    .line 1312
    sget-object v2, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v3, "updateSmsSyncRecordDataFinish: enter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_0

    .line 1315
    iget v2, p1, Landroid/os/Message;->arg1:I

    sparse-switch v2, :sswitch_data_0

    .line 1345
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updateSmsSyncRecordDataFinish: _RESULT_UNKWON"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iput v4, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    :goto_0
    move v0, v1

    .line 1357
    :goto_1
    return v0

    .line 1317
    :sswitch_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getServerContactNum()I

    move-result v2

    iput v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mContactStoreNum:I

    .line 1318
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getServerSmsNum()I

    move-result v2

    iput v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsStoreNum:I

    .line 1319
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getServerCallLogNum()I

    move-result v2

    iput v2, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallLogStoreNum:I

    .line 1321
    sget-object v2, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v3, "updateSmsSyncRecordDataFinish: _RESULT_SUCC"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iput v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_1

    .line 1327
    :sswitch_1
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updateSmsSyncRecordDataFinish: RET_NETWORK_ERR"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    const/4 v0, -0x5

    iput v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_0

    .line 1333
    :sswitch_2
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updateSmsSyncRecordDataFinish: RET_PARAMETER_ERR"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    const/4 v0, -0x6

    iput v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_0

    .line 1339
    :sswitch_3
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updateSmsSyncRecordDataFinish: _RESULT_LOGINKEY_EXPIRED"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    const/4 v0, -0x1

    iput v0, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_0

    .line 1353
    :cond_0
    sget-object v0, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v2, "updatePrimeInfoFinish: UNKWON MSG"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iput v4, p0, Lcom/lewa/cloud/manager/TencentCloudManager;->mResultType:I

    goto :goto_0

    .line 1315
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_3
        0x259 -> :sswitch_2
        0x25a -> :sswitch_1
    .end sparse-switch
.end method
