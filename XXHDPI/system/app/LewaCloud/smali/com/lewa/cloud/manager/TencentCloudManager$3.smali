.class Lcom/lewa/cloud/manager/TencentCloudManager$3;
.super Landroid/os/AsyncTask;
.source "TencentCloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/cloud/manager/TencentCloudManager;->updateCallLogData()Z
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
    .line 1037
    iput-object p1, p0, Lcom/lewa/cloud/manager/TencentCloudManager$3;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1037
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/cloud/manager/TencentCloudManager$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .parameter "params"

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v8, 0x0

    .line 1041
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->getSingleInstance()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;

    move-result-object v5

    invoke-interface {v5}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;->getCalllogLastRestoreTime()J

    move-result-wide v5

    mul-long v3, v5, v10

    .line 1042
    .local v3, restore_time:J
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->getSingleInstance()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;

    move-result-object v5

    invoke-interface {v5}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;->getCalllogLastBackupTime()J

    move-result-wide v5

    mul-long v0, v5, v10

    .line 1044
    .local v0, backup_time:J
    const-string v5, "----TRACE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restore_time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v7, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const-string v5, "----TRACE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "backup_time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v7, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    cmp-long v5, v3, v0

    if-lez v5, :cond_0

    .line 1048
    iget-object v5, p0, Lcom/lewa/cloud/manager/TencentCloudManager$3;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const/4 v6, 0x1

    iput v6, v5, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallsSyncDateState:I

    .line 1049
    iget-object v5, p0, Lcom/lewa/cloud/manager/TencentCloudManager$3;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const-string v6, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v6, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallsSyncDate:Ljava/lang/String;

    .line 1065
    :goto_0
    iget-object v5, p0, Lcom/lewa/cloud/manager/TencentCloudManager$3;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/StatisticsFactory;->getStatisticsUtil()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;

    move-result-object v6

    iget-object v7, p0, Lcom/lewa/cloud/manager/TencentCloudManager$3;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iget-object v7, v7, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    invoke-interface {v6, v7}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;->getLocalCalllogNum(Landroid/content/Context;)I

    move-result v6

    iput v6, v5, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallLogLocalNum:I

    .line 1080
    new-instance v2, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;

    iget-object v5, p0, Lcom/lewa/cloud/manager/TencentCloudManager$3;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iget-object v5, v5, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;

    invoke-direct {v2, v5}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;-><init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IGetRecordNumObserver;)V

    .line 1081
    .local v2, p:Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;
    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getRecordNumOfContact()V

    .line 1083
    sget-object v5, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v6, "updateCallLogData: out"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    const/4 v5, 0x0

    return-object v5

    .line 1051
    .end local v2           #p:Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;
    :cond_0
    cmp-long v5, v3, v0

    if-gez v5, :cond_1

    .line 1052
    iget-object v5, p0, Lcom/lewa/cloud/manager/TencentCloudManager$3;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const/4 v6, 0x2

    iput v6, v5, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallsSyncDateState:I

    .line 1053
    iget-object v5, p0, Lcom/lewa/cloud/manager/TencentCloudManager$3;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const-string v6, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v6, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallsSyncDate:Ljava/lang/String;

    goto :goto_0

    .line 1056
    :cond_1
    cmp-long v5, v3, v8

    if-nez v5, :cond_2

    cmp-long v5, v0, v8

    if-nez v5, :cond_2

    .line 1057
    iget-object v5, p0, Lcom/lewa/cloud/manager/TencentCloudManager$3;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const/4 v6, 0x0

    iput v6, v5, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallsSyncDateState:I

    goto :goto_0

    .line 1060
    :cond_2
    iget-object v5, p0, Lcom/lewa/cloud/manager/TencentCloudManager$3;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const/4 v6, 0x3

    iput v6, v5, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallsSyncDateState:I

    .line 1061
    iget-object v5, p0, Lcom/lewa/cloud/manager/TencentCloudManager$3;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const-string v6, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v6, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallsSyncDate:Ljava/lang/String;

    goto :goto_0
.end method
