.class Lcom/lewa/cloud/PrimCloudActivity$1;
.super Landroid/os/Handler;
.source "PrimCloudActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/cloud/PrimCloudActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/cloud/PrimCloudActivity;


# direct methods
.method constructor <init>(Lcom/lewa/cloud/PrimCloudActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lewa/cloud/PrimCloudActivity$1;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const-wide/32 v4, 0xea60

    const/4 v3, 0x1

    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 151
    :goto_0
    return-void

    .line 126
    :pswitch_0
    iget-object v0, p0, Lcom/lewa/cloud/PrimCloudActivity$1;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    #calls: Lcom/lewa/cloud/PrimCloudActivity;->isNetworkConnected()Z
    invoke-static {v0}, Lcom/lewa/cloud/PrimCloudActivity;->access$000(Lcom/lewa/cloud/PrimCloudActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/lewa/cloud/PrimCloudActivity$1;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    #getter for: Lcom/lewa/cloud/PrimCloudActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v0}, Lcom/lewa/cloud/PrimCloudActivity;->access$100(Lcom/lewa/cloud/PrimCloudActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mSyncContactsAnytime:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lewa/cloud/PrimCloudActivity$1;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    #getter for: Lcom/lewa/cloud/PrimCloudActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v0}, Lcom/lewa/cloud/PrimCloudActivity;->access$100(Lcom/lewa/cloud/PrimCloudActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->isWifiNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/lewa/cloud/PrimCloudActivity$1;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    #getter for: Lcom/lewa/cloud/PrimCloudActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v0}, Lcom/lewa/cloud/PrimCloudActivity;->access$100(Lcom/lewa/cloud/PrimCloudActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->checkContactLocalDataChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    sget-object v0, Lcom/lewa/cloud/PrimCloudActivity;->TAG:Ljava/lang/String;

    const-string v1, "mConfigHandler: sync start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/lewa/cloud/PrimCloudActivity$1;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    iget-object v0, v0, Lcom/lewa/cloud/PrimCloudActivity;->mConfigHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 133
    new-instance v0, Lcom/lewa/cloud/PrimCloudActivity$AutoSyncTask;

    iget-object v1, p0, Lcom/lewa/cloud/PrimCloudActivity$1;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    invoke-direct {v0, v1}, Lcom/lewa/cloud/PrimCloudActivity$AutoSyncTask;-><init>(Lcom/lewa/cloud/PrimCloudActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/lewa/cloud/PrimCloudActivity$AutoSyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/lewa/cloud/PrimCloudActivity$1;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    #getter for: Lcom/lewa/cloud/PrimCloudActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v0}, Lcom/lewa/cloud/PrimCloudActivity;->access$100(Lcom/lewa/cloud/PrimCloudActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mRegularRemid:Z

    if-eqz v0, :cond_2

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/lewa/cloud/PrimCloudActivity$1;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    iget-object v0, v0, Lcom/lewa/cloud/PrimCloudActivity;->mConfigHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v5}, Lcom/lewa/cloud/PrimCloudActivity$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 144
    :pswitch_1
    sget-object v0, Lcom/lewa/cloud/PrimCloudActivity;->TAG:Ljava/lang/String;

    const-string v1, "mConfigHandler: sync finish"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/lewa/cloud/PrimCloudActivity$1;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    iget-object v0, v0, Lcom/lewa/cloud/PrimCloudActivity;->mConfigHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    iget-object v0, p0, Lcom/lewa/cloud/PrimCloudActivity$1;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    iget-object v0, v0, Lcom/lewa/cloud/PrimCloudActivity;->mConfigHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v5}, Lcom/lewa/cloud/PrimCloudActivity$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
