.class Lcom/lewa/cloud/manager/TencentCloudManager$6;
.super Landroid/os/AsyncTask;
.source "TencentCloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/cloud/manager/TencentCloudManager;->updateSmsData(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/cloud/manager/TencentCloudManager;


# direct methods
.method constructor <init>(Lcom/lewa/cloud/manager/TencentCloudManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1363
    iput-object p1, p0, Lcom/lewa/cloud/manager/TencentCloudManager$6;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1363
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/cloud/manager/TencentCloudManager$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .parameter "params"

    .prologue
    .line 1366
    iget-object v5, p0, Lcom/lewa/cloud/manager/TencentCloudManager$6;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iget v5, v5, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncDir:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1367
    new-instance v4, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;

    iget-object v5, p0, Lcom/lewa/cloud/manager/TencentCloudManager$6;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iget-object v5, v5, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;-><init>(Landroid/content/Context;)V

    .line 1368
    .local v4, smsUtil:Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;
    iget-object v5, p0, Lcom/lewa/cloud/manager/TencentCloudManager$6;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->getConversationList()Ljava/util/List;

    move-result-object v6

    #setter for: Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsSummaryList:Ljava/util/List;
    invoke-static {v5, v6}, Lcom/lewa/cloud/manager/TencentCloudManager;->access$002(Lcom/lewa/cloud/manager/TencentCloudManager;Ljava/util/List;)Ljava/util/List;

    .line 1383
    .end local v4           #smsUtil:Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;
    :goto_0
    iget-object v5, p0, Lcom/lewa/cloud/manager/TencentCloudManager$6;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/StatisticsFactory;->getStatisticsUtil()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;

    move-result-object v6

    iget-object v7, p0, Lcom/lewa/cloud/manager/TencentCloudManager$6;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iget-object v7, v7, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    invoke-interface {v6, v7}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;->getLocalSmsNum(Landroid/content/Context;)I

    move-result v6

    iput v6, v5, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsLocalNum:I

    .line 1384
    new-instance v1, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;

    iget-object v5, p0, Lcom/lewa/cloud/manager/TencentCloudManager$6;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iget-object v5, v5, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;

    invoke-direct {v1, v5}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;-><init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IGetRecordNumObserver;)V

    .line 1385
    .local v1, p:Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;
    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getRecordNumOfContact()V

    .line 1387
    sget-object v5, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v6, "updateSmsData: out"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const/4 v5, 0x0

    return-object v5

    .line 1370
    .end local v1           #p:Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;
    :cond_0
    new-instance v3, Lcom/tencent/qqpim/sdk/sync/sms/GetSmsConversationResultFromResp;

    invoke-direct {v3}, Lcom/tencent/qqpim/sdk/sync/sms/GetSmsConversationResultFromResp;-><init>()V

    .line 1371
    .local v3, smsConversationResult:Lcom/tencent/qqpim/sdk/sync/sms/GetSmsConversationResultFromResp;
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 1372
    .local v0, imei:Ljava/lang/String;
    const/16 v5, 0x3e8

    const/4 v6, 0x0

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/LocaleUtil;->getLanguageID()S

    move-result v7

    invoke-virtual {v3, v0, v5, v6, v7}, Lcom/tencent/qqpim/sdk/sync/sms/GetSmsConversationResultFromResp;->getSmsConversation(Ljava/lang/String;IIS)Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;

    move-result-object v2

    .line 1374
    .local v2, result:Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->getResult()I

    move-result v5

    if-nez v5, :cond_1

    .line 1375
    iget-object v5, p0, Lcom/lewa/cloud/manager/TencentCloudManager$6;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->getReturnData()Ljava/util/List;

    move-result-object v6

    #setter for: Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsSummaryList:Ljava/util/List;
    invoke-static {v5, v6}, Lcom/lewa/cloud/manager/TencentCloudManager;->access$002(Lcom/lewa/cloud/manager/TencentCloudManager;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 1379
    :cond_1
    iget-object v5, p0, Lcom/lewa/cloud/manager/TencentCloudManager$6;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsSummaryList:Ljava/util/List;
    invoke-static {v5, v6}, Lcom/lewa/cloud/manager/TencentCloudManager;->access$002(Lcom/lewa/cloud/manager/TencentCloudManager;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method
