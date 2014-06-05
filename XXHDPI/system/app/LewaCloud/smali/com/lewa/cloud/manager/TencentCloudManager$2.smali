.class Lcom/lewa/cloud/manager/TencentCloudManager$2;
.super Landroid/os/AsyncTask;
.source "TencentCloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/cloud/manager/TencentCloudManager;->updateContactData()Z
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
    .line 932
    iput-object p1, p0, Lcom/lewa/cloud/manager/TencentCloudManager$2;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 932
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/cloud/manager/TencentCloudManager$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .parameter "params"

    .prologue
    const-wide/16 v7, 0x3e8

    .line 936
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->getSingleInstance()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;

    move-result-object v5

    invoke-interface {v5}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;->getContactLastBackupTime()J

    move-result-wide v5

    mul-long v0, v5, v7

    .line 937
    .local v0, backup_time:J
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->getSingleInstance()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;

    move-result-object v5

    invoke-interface {v5}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;->getContactLastRestoreTime()J

    move-result-wide v5

    mul-long v3, v5, v7

    .line 938
    .local v3, restore_time:J
    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    .line 939
    iget-object v5, p0, Lcom/lewa/cloud/manager/TencentCloudManager$2;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const-string v6, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v6, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/lewa/cloud/manager/TencentCloudManager;->mContactsSyncDate:Ljava/lang/String;

    .line 948
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/lewa/cloud/manager/TencentCloudManager$2;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/StatisticsFactory;->getStatisticsUtil()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;

    move-result-object v6

    iget-object v7, p0, Lcom/lewa/cloud/manager/TencentCloudManager$2;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iget-object v7, v7, Lcom/lewa/cloud/manager/TencentCloudManager;->mContext:Landroid/content/Context;

    invoke-interface {v6, v7}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;->getLocalContactNum(Landroid/content/Context;)I

    move-result v6

    iput v6, v5, Lcom/lewa/cloud/manager/TencentCloudManager;->mContactLocalNum:I

    .line 963
    new-instance v2, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;

    iget-object v5, p0, Lcom/lewa/cloud/manager/TencentCloudManager$2;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iget-object v5, v5, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;

    invoke-direct {v2, v5}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;-><init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IGetRecordNumObserver;)V

    .line 964
    .local v2, p:Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;
    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getRecordNumOfContact()V

    .line 965
    const/4 v5, 0x0

    return-object v5

    .line 941
    .end local v2           #p:Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;
    :cond_1
    cmp-long v5, v0, v3

    if-gez v5, :cond_2

    .line 942
    iget-object v5, p0, Lcom/lewa/cloud/manager/TencentCloudManager$2;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const-string v6, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v6, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/lewa/cloud/manager/TencentCloudManager;->mContactsSyncDate:Ljava/lang/String;

    goto :goto_0

    .line 944
    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    .line 945
    iget-object v5, p0, Lcom/lewa/cloud/manager/TencentCloudManager$2;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const-string v6, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v6, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/lewa/cloud/manager/TencentCloudManager;->mContactsSyncDate:Ljava/lang/String;

    goto :goto_0
.end method
