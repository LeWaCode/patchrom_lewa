.class Lcom/lewa/cloud/CallSyncActivity$2;
.super Landroid/os/Handler;
.source "CallSyncActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/cloud/CallSyncActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/cloud/CallSyncActivity;


# direct methods
.method constructor <init>(Lcom/lewa/cloud/CallSyncActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/lewa/cloud/CallSyncActivity$2;->this$0:Lcom/lewa/cloud/CallSyncActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 323
    iget-object v1, p0, Lcom/lewa/cloud/CallSyncActivity$2;->this$0:Lcom/lewa/cloud/CallSyncActivity;

    #getter for: Lcom/lewa/cloud/CallSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v1}, Lcom/lewa/cloud/CallSyncActivity;->access$000(Lcom/lewa/cloud/CallSyncActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->updateCallLogDataFinish(Landroid/os/Message;)Z

    move-result v0

    .line 324
    .local v0, result:Z
    if-eqz v0, :cond_1

    .line 326
    sget-object v1, Lcom/lewa/cloud/CallSyncActivity;->TAG:Ljava/lang/String;

    const-string v2, "refresh."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcom/lewa/cloud/CallSyncActivity$2;->this$0:Lcom/lewa/cloud/CallSyncActivity;

    #calls: Lcom/lewa/cloud/CallSyncActivity;->refresh()V
    invoke-static {v1}, Lcom/lewa/cloud/CallSyncActivity;->access$400(Lcom/lewa/cloud/CallSyncActivity;)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/lewa/cloud/CallSyncActivity$2;->this$0:Lcom/lewa/cloud/CallSyncActivity;

    #getter for: Lcom/lewa/cloud/CallSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v1}, Lcom/lewa/cloud/CallSyncActivity;->access$000(Lcom/lewa/cloud/CallSyncActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getResultType()I

    move-result v1

    iget-object v2, p0, Lcom/lewa/cloud/CallSyncActivity$2;->this$0:Lcom/lewa/cloud/CallSyncActivity;

    #getter for: Lcom/lewa/cloud/CallSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v2}, Lcom/lewa/cloud/CallSyncActivity;->access$000(Lcom/lewa/cloud/CallSyncActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    const/4 v2, -0x5

    if-ne v1, v2, :cond_0

    .line 333
    sget-object v1, Lcom/lewa/cloud/CallSyncActivity;->TAG:Ljava/lang/String;

    const-string v2, "Network err."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v1, p0, Lcom/lewa/cloud/CallSyncActivity$2;->this$0:Lcom/lewa/cloud/CallSyncActivity;

    #calls: Lcom/lewa/cloud/CallSyncActivity;->dealwithNetworkDisconnection()V
    invoke-static {v1}, Lcom/lewa/cloud/CallSyncActivity;->access$500(Lcom/lewa/cloud/CallSyncActivity;)V

    goto :goto_0
.end method
