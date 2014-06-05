.class Lcom/lewa/cloud/manager/TencentCloudManager$4;
.super Landroid/os/AsyncTask;
.source "TencentCloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/cloud/manager/TencentCloudManager;->updatePrimeInfo()Z
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
    .line 1157
    iput-object p1, p0, Lcom/lewa/cloud/manager/TencentCloudManager$4;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1157
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/cloud/manager/TencentCloudManager$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .parameter "params"

    .prologue
    .line 1163
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->getSingleInstance()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;

    move-result-object v7

    invoke-interface {v7}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;->getContactLastSyncTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v5, v7, v9

    .line 1164
    .local v5, sync_time:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_0

    .line 1165
    iget-object v7, p0, Lcom/lewa/cloud/manager/TencentCloudManager$4;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const-string v8, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v8, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/lewa/cloud/manager/TencentCloudManager;->mContactsSyncDate:Ljava/lang/String;

    .line 1168
    :cond_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->getSingleInstance()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;

    move-result-object v7

    invoke-interface {v7}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;->getSMSLastRestoreTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v3, v7, v9

    .line 1169
    .local v3, restore_time:J
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->getSingleInstance()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;

    move-result-object v7

    invoke-interface {v7}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;->getSMSLastBackupTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v0, v7, v9

    .line 1170
    .local v0, backup_time:J
    cmp-long v7, v3, v0

    if-lez v7, :cond_2

    .line 1171
    iget-object v7, p0, Lcom/lewa/cloud/manager/TencentCloudManager$4;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const/4 v8, 0x1

    iput v8, v7, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsSyncDateState:I

    .line 1172
    iget-object v7, p0, Lcom/lewa/cloud/manager/TencentCloudManager$4;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const-string v8, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v8, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsSyncDate:Ljava/lang/String;

    .line 1188
    :goto_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->getSingleInstance()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;

    move-result-object v7

    invoke-interface {v7}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;->getCalllogLastRestoreTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v3, v7, v9

    .line 1189
    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->getSingleInstance()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;

    move-result-object v7

    invoke-interface {v7}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;->getCalllogLastBackupTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v0, v7, v9

    .line 1190
    cmp-long v7, v3, v0

    if-lez v7, :cond_5

    .line 1191
    iget-object v7, p0, Lcom/lewa/cloud/manager/TencentCloudManager$4;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const/4 v8, 0x1

    iput v8, v7, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallsSyncDateState:I

    .line 1192
    iget-object v7, p0, Lcom/lewa/cloud/manager/TencentCloudManager$4;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const-string v8, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v8, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallsSyncDate:Ljava/lang/String;

    .line 1208
    :cond_1
    :goto_1
    new-instance v2, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;

    iget-object v7, p0, Lcom/lewa/cloud/manager/TencentCloudManager$4;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iget-object v7, v7, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;

    invoke-direct {v2, v7}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;-><init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IGetRecordNumObserver;)V

    .line 1209
    .local v2, p:Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;
    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getRecordNumOfContact()V

    .line 1211
    sget-object v7, Lcom/lewa/cloud/manager/TencentCloudManager;->TAG:Ljava/lang/String;

    const-string v8, "updatePrimeInfo: out"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    const/4 v7, 0x0

    return-object v7

    .line 1174
    .end local v2           #p:Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;
    :cond_2
    cmp-long v7, v3, v0

    if-gez v7, :cond_3

    .line 1175
    iget-object v7, p0, Lcom/lewa/cloud/manager/TencentCloudManager$4;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const/4 v8, 0x2

    iput v8, v7, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsSyncDateState:I

    .line 1176
    iget-object v7, p0, Lcom/lewa/cloud/manager/TencentCloudManager$4;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const-string v8, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v8, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsSyncDate:Ljava/lang/String;

    goto :goto_0

    .line 1179
    :cond_3
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-nez v7, :cond_4

    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-nez v7, :cond_4

    .line 1180
    iget-object v7, p0, Lcom/lewa/cloud/manager/TencentCloudManager$4;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const/4 v8, 0x0

    iput v8, v7, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsSyncDateState:I

    goto :goto_0

    .line 1183
    :cond_4
    iget-object v7, p0, Lcom/lewa/cloud/manager/TencentCloudManager$4;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const/4 v8, 0x3

    iput v8, v7, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsSyncDateState:I

    .line 1184
    iget-object v7, p0, Lcom/lewa/cloud/manager/TencentCloudManager$4;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const-string v8, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v8, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/lewa/cloud/manager/TencentCloudManager;->mSmsSyncDate:Ljava/lang/String;

    goto/16 :goto_0

    .line 1194
    :cond_5
    cmp-long v7, v3, v0

    if-gez v7, :cond_6

    .line 1195
    iget-object v7, p0, Lcom/lewa/cloud/manager/TencentCloudManager$4;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const/4 v8, 0x2

    iput v8, v7, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallsSyncDateState:I

    .line 1196
    iget-object v7, p0, Lcom/lewa/cloud/manager/TencentCloudManager$4;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const-string v8, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v8, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallsSyncDate:Ljava/lang/String;

    goto :goto_1

    .line 1199
    :cond_6
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-nez v7, :cond_7

    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-eqz v7, :cond_1

    .line 1203
    :cond_7
    iget-object v7, p0, Lcom/lewa/cloud/manager/TencentCloudManager$4;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const/4 v8, 0x3

    iput v8, v7, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallsSyncDateState:I

    .line 1204
    iget-object v7, p0, Lcom/lewa/cloud/manager/TencentCloudManager$4;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    const-string v8, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v8, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/lewa/cloud/manager/TencentCloudManager;->mCallsSyncDate:Ljava/lang/String;

    goto/16 :goto_1
.end method
