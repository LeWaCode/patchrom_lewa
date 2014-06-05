.class Lcom/lewa/cloud/manager/TencentCloudManager$7;
.super Landroid/os/AsyncTask;
.source "TencentCloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/cloud/manager/TencentCloudManager;->updateSmsDurationData()Z
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
    .line 1417
    iput-object p1, p0, Lcom/lewa/cloud/manager/TencentCloudManager$7;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1417
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/cloud/manager/TencentCloudManager$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .parameter "params"

    .prologue
    .line 1421
    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/StatisticsFactory;->getStatisticsUtil()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;

    move-result-object v3

    .line 1422
    .local v3, mIStatisticsUtil:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;
    iget-object v8, p0, Lcom/lewa/cloud/manager/TencentCloudManager$7;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iget-object v8, v8, Lcom/lewa/cloud/manager/TencentCloudManager;->mLocalSmsNumByTime:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;

    iget-object v9, p0, Lcom/lewa/cloud/manager/TencentCloudManager$7;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iget-object v9, v9, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_ONE_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    invoke-interface {v3, v9, v10}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;->getLocalSmsNum(Landroid/content/Context;Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;)I

    move-result v9

    iput v9, v8, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;->mLastMonthNum:I

    .line 1423
    iget-object v8, p0, Lcom/lewa/cloud/manager/TencentCloudManager$7;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iget-object v8, v8, Lcom/lewa/cloud/manager/TencentCloudManager;->mLocalSmsNumByTime:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;

    iget-object v9, p0, Lcom/lewa/cloud/manager/TencentCloudManager$7;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iget-object v9, v9, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_THREE_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    invoke-interface {v3, v9, v10}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;->getLocalSmsNum(Landroid/content/Context;Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;)I

    move-result v9

    iput v9, v8, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;->mLastThreeMonthNum:I

    .line 1424
    iget-object v8, p0, Lcom/lewa/cloud/manager/TencentCloudManager$7;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iget-object v8, v8, Lcom/lewa/cloud/manager/TencentCloudManager;->mLocalSmsNumByTime:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;

    iget-object v9, p0, Lcom/lewa/cloud/manager/TencentCloudManager$7;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iget-object v9, v9, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_SIX_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    invoke-interface {v3, v9, v10}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;->getLocalSmsNum(Landroid/content/Context;Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;)I

    move-result v9

    iput v9, v8, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;->mLastSixMonthNum:I

    .line 1425
    iget-object v8, p0, Lcom/lewa/cloud/manager/TencentCloudManager$7;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iget-object v8, v8, Lcom/lewa/cloud/manager/TencentCloudManager;->mLocalSmsNumByTime:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;

    iget-object v9, p0, Lcom/lewa/cloud/manager/TencentCloudManager$7;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iget-object v9, v9, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_ONE_YEAR:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    invoke-interface {v3, v9, v10}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;->getLocalSmsNum(Landroid/content/Context;Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;)I

    move-result v9

    iput v9, v8, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;->mLastYearNum:I

    .line 1426
    iget-object v8, p0, Lcom/lewa/cloud/manager/TencentCloudManager$7;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iget-object v8, v8, Lcom/lewa/cloud/manager/TencentCloudManager;->mLocalSmsNumByTime:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;

    iget-object v9, p0, Lcom/lewa/cloud/manager/TencentCloudManager$7;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iget-object v9, v9, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_ALL:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    invoke-interface {v3, v9, v10}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;->getLocalSmsNum(Landroid/content/Context;Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;)I

    move-result v9

    iput v9, v8, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;->mAllNum:I

    .line 1428
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1429
    .local v6, timeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;

    invoke-direct {v5}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;-><init>()V

    .line 1430
    .local v5, time:Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;
    iget-object v8, p0, Lcom/lewa/cloud/manager/TencentCloudManager$7;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    invoke-virtual {v8}, Lcom/lewa/cloud/manager/TencentCloudManager;->getSmsTimeType()[Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    move-result-object v0

    .local v0, arr$:[Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v7, v0, v1

    .line 1431
    .local v7, type:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;
    invoke-virtual {v5, v7}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->setTimeType(Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;)V

    .line 1432
    invoke-virtual {v5}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->getSmsStartTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1430
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1434
    .end local v7           #type:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;
    :cond_0
    new-instance v4, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;

    iget-object v8, p0, Lcom/lewa/cloud/manager/TencentCloudManager$7;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iget-object v8, v8, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;

    invoke-direct {v4, v8}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;-><init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IGetRecordNumObserver;)V

    .line 1435
    .local v4, numProcessor:Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;
    invoke-virtual {v4, v6}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getSmsRecordNum(Ljava/util/ArrayList;)V

    .line 1437
    sget-object v8, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v9, "updateSmsDuarationData: out"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    const/4 v8, 0x0

    return-object v8
.end method
