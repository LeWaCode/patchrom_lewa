.class Lcom/lewa/cloud/manager/TencentCloudManager$1;
.super Landroid/os/AsyncTask;
.source "TencentCloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/cloud/manager/TencentCloudManager;->updateAccountInfo()Z
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
    .line 220
    iput-object p1, p0, Lcom/lewa/cloud/manager/TencentCloudManager$1;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 220
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/cloud/manager/TencentCloudManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager$1;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iput v2, v1, Lcom/lewa/cloud/manager/TencentCloudManager;->mUsedMonth:I

    .line 224
    iget-object v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager$1;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iput v2, v1, Lcom/lewa/cloud/manager/TencentCloudManager;->mUsedDay:I

    .line 225
    new-instance v0, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;

    iget-object v1, p0, Lcom/lewa/cloud/manager/TencentCloudManager$1;->this$0:Lcom/lewa/cloud/manager/TencentCloudManager;

    iget-object v1, v1, Lcom/lewa/cloud/manager/TencentCloudManager;->mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;

    invoke-direct {v0, v1}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;-><init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IGetRecordNumObserver;)V

    .line 226
    .local v0, p:Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;
    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->getRecordNumOfContact()V

    .line 227
    const/4 v1, 0x0

    return-object v1
.end method
