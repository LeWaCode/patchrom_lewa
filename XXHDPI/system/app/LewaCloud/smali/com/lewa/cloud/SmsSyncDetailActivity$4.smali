.class Lcom/lewa/cloud/SmsSyncDetailActivity$4;
.super Landroid/os/Handler;
.source "SmsSyncDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/cloud/SmsSyncDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;


# direct methods
.method constructor <init>(Lcom/lewa/cloud/SmsSyncDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$4;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 436
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 437
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$4;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v2}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$400(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->updateSmsDataFinish(Landroid/os/Message;)Z

    move-result v1

    .line 438
    .local v1, result:Z
    if-eqz v1, :cond_3

    .line 440
    sget-object v2, Lcom/lewa/cloud/SmsSyncDetailActivity;->TAG:Ljava/lang/String;

    const-string v3, "refresh."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$4;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v2}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$400(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v2

    iget v2, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mSmsDataUpdateType:I

    iget-object v3, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$4;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v3}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$400(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 443
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$4;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    iget-object v3, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$4;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v3}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$400(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getSmsData()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSmsInfoList:Ljava/util/List;

    .line 444
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$4;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    invoke-virtual {v2}, Lcom/lewa/cloud/SmsSyncDetailActivity;->updateSmsList()Z

    .line 445
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$4;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #calls: Lcom/lewa/cloud/SmsSyncDetailActivity;->refresh()V
    invoke-static {v2}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$800(Lcom/lewa/cloud/SmsSyncDetailActivity;)V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$4;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v2}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$400(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v2

    iget v2, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mSmsDataUpdateType:I

    iget-object v3, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$4;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v3}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$400(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 449
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$4;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mDir:I
    invoke-static {v2}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$900(Lcom/lewa/cloud/SmsSyncDetailActivity;)I

    move-result v2

    if-nez v2, :cond_2

    .line 450
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$4;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v2}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$400(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getRemoteSmsNumByTime()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;

    move-result-object v0

    .line 455
    .local v0, num:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;
    :goto_1
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$4;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    invoke-virtual {v2, v0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->updateSmsNumByTime(Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;)Z

    goto :goto_0

    .line 453
    .end local v0           #num:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;
    :cond_2
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$4;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v2}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$400(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getLocalSmsNumByTime()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;

    move-result-object v0

    .restart local v0       #num:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;
    goto :goto_1

    .line 460
    .end local v0           #num:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;
    :cond_3
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$4;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v2}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$400(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getResultType()I

    move-result v2

    iget-object v3, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$4;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v3}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$400(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    const/4 v3, -0x5

    if-ne v2, v3, :cond_0

    .line 462
    sget-object v2, Lcom/lewa/cloud/SmsSyncDetailActivity;->TAG:Ljava/lang/String;

    const-string v3, "Network err."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$4;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #calls: Lcom/lewa/cloud/SmsSyncDetailActivity;->dealwithNetworkDisconnection()V
    invoke-static {v2}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$1000(Lcom/lewa/cloud/SmsSyncDetailActivity;)V

    goto :goto_0
.end method
