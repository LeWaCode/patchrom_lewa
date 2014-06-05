.class Lcom/lewa/cloud/SmsSyncActivity$1;
.super Landroid/os/Handler;
.source "SmsSyncActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/cloud/SmsSyncActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/cloud/SmsSyncActivity;


# direct methods
.method constructor <init>(Lcom/lewa/cloud/SmsSyncActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/lewa/cloud/SmsSyncActivity$1;->this$0:Lcom/lewa/cloud/SmsSyncActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 201
    iget-object v1, p0, Lcom/lewa/cloud/SmsSyncActivity$1;->this$0:Lcom/lewa/cloud/SmsSyncActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v1}, Lcom/lewa/cloud/SmsSyncActivity;->access$000(Lcom/lewa/cloud/SmsSyncActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->updateSmsSyncRecordDataFinish(Landroid/os/Message;)Z

    move-result v0

    .line 202
    .local v0, result:Z
    if-eqz v0, :cond_1

    .line 204
    sget-object v1, Lcom/lewa/cloud/SmsSyncActivity;->TAG:Ljava/lang/String;

    const-string v2, "refresh."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, p0, Lcom/lewa/cloud/SmsSyncActivity$1;->this$0:Lcom/lewa/cloud/SmsSyncActivity;

    #calls: Lcom/lewa/cloud/SmsSyncActivity;->refresh()V
    invoke-static {v1}, Lcom/lewa/cloud/SmsSyncActivity;->access$100(Lcom/lewa/cloud/SmsSyncActivity;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/lewa/cloud/SmsSyncActivity$1;->this$0:Lcom/lewa/cloud/SmsSyncActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v1}, Lcom/lewa/cloud/SmsSyncActivity;->access$000(Lcom/lewa/cloud/SmsSyncActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getResultType()I

    move-result v1

    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncActivity$1;->this$0:Lcom/lewa/cloud/SmsSyncActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v2}, Lcom/lewa/cloud/SmsSyncActivity;->access$000(Lcom/lewa/cloud/SmsSyncActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    const/4 v2, -0x5

    if-ne v1, v2, :cond_0

    .line 211
    sget-object v1, Lcom/lewa/cloud/SmsSyncActivity;->TAG:Ljava/lang/String;

    const-string v2, "Network err."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lcom/lewa/cloud/SmsSyncActivity$1;->this$0:Lcom/lewa/cloud/SmsSyncActivity;

    #calls: Lcom/lewa/cloud/SmsSyncActivity;->dealwithNetworkDisconnection()V
    invoke-static {v1}, Lcom/lewa/cloud/SmsSyncActivity;->access$200(Lcom/lewa/cloud/SmsSyncActivity;)V

    goto :goto_0
.end method
