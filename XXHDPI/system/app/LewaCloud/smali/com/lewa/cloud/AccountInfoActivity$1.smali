.class Lcom/lewa/cloud/AccountInfoActivity$1;
.super Landroid/os/Handler;
.source "AccountInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/cloud/AccountInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/cloud/AccountInfoActivity;


# direct methods
.method constructor <init>(Lcom/lewa/cloud/AccountInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/lewa/cloud/AccountInfoActivity$1;->this$0:Lcom/lewa/cloud/AccountInfoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 239
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 240
    iget-object v1, p0, Lcom/lewa/cloud/AccountInfoActivity$1;->this$0:Lcom/lewa/cloud/AccountInfoActivity;

    #getter for: Lcom/lewa/cloud/AccountInfoActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v1}, Lcom/lewa/cloud/AccountInfoActivity;->access$000(Lcom/lewa/cloud/AccountInfoActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->updateAccountInfoFinish(Landroid/os/Message;)Z

    move-result v0

    .line 241
    .local v0, result:Z
    if-eqz v0, :cond_1

    .line 243
    sget-object v1, Lcom/lewa/cloud/AccountInfoActivity;->TAG:Ljava/lang/String;

    const-string v2, "refresh."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, p0, Lcom/lewa/cloud/AccountInfoActivity$1;->this$0:Lcom/lewa/cloud/AccountInfoActivity;

    invoke-virtual {v1}, Lcom/lewa/cloud/AccountInfoActivity;->refresh()V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/lewa/cloud/AccountInfoActivity$1;->this$0:Lcom/lewa/cloud/AccountInfoActivity;

    #getter for: Lcom/lewa/cloud/AccountInfoActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v1}, Lcom/lewa/cloud/AccountInfoActivity;->access$000(Lcom/lewa/cloud/AccountInfoActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getResultType()I

    move-result v1

    iget-object v2, p0, Lcom/lewa/cloud/AccountInfoActivity$1;->this$0:Lcom/lewa/cloud/AccountInfoActivity;

    #getter for: Lcom/lewa/cloud/AccountInfoActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v2}, Lcom/lewa/cloud/AccountInfoActivity;->access$000(Lcom/lewa/cloud/AccountInfoActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    const/4 v2, -0x5

    if-ne v1, v2, :cond_0

    .line 250
    sget-object v1, Lcom/lewa/cloud/AccountInfoActivity;->TAG:Ljava/lang/String;

    const-string v2, "Network err."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Lcom/lewa/cloud/AccountInfoActivity$1;->this$0:Lcom/lewa/cloud/AccountInfoActivity;

    #calls: Lcom/lewa/cloud/AccountInfoActivity;->dealwithNetworkDisconnection()V
    invoke-static {v1}, Lcom/lewa/cloud/AccountInfoActivity;->access$100(Lcom/lewa/cloud/AccountInfoActivity;)V

    goto :goto_0
.end method
