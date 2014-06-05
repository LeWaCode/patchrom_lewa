.class Lcom/lewa/cloud/fragment/ConfigFragment$1;
.super Landroid/os/Handler;
.source "ConfigFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/cloud/fragment/ConfigFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/cloud/fragment/ConfigFragment;


# direct methods
.method constructor <init>(Lcom/lewa/cloud/fragment/ConfigFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/lewa/cloud/fragment/ConfigFragment$1;->this$0:Lcom/lewa/cloud/fragment/ConfigFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 324
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 325
    iget-object v1, p0, Lcom/lewa/cloud/fragment/ConfigFragment$1;->this$0:Lcom/lewa/cloud/fragment/ConfigFragment;

    #getter for: Lcom/lewa/cloud/fragment/ConfigFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v1}, Lcom/lewa/cloud/fragment/ConfigFragment;->access$000(Lcom/lewa/cloud/fragment/ConfigFragment;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->updatePrimeInfoFinish(Landroid/os/Message;)Z

    move-result v0

    .line 326
    .local v0, result:Z
    if-eqz v0, :cond_1

    .line 328
    sget-object v1, Lcom/lewa/cloud/fragment/ConfigFragment;->TAG:Ljava/lang/String;

    const-string v2, "refresh."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/lewa/cloud/fragment/ConfigFragment$1;->this$0:Lcom/lewa/cloud/fragment/ConfigFragment;

    #calls: Lcom/lewa/cloud/fragment/ConfigFragment;->refresh()V
    invoke-static {v1}, Lcom/lewa/cloud/fragment/ConfigFragment;->access$100(Lcom/lewa/cloud/fragment/ConfigFragment;)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/lewa/cloud/fragment/ConfigFragment$1;->this$0:Lcom/lewa/cloud/fragment/ConfigFragment;

    #getter for: Lcom/lewa/cloud/fragment/ConfigFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v1}, Lcom/lewa/cloud/fragment/ConfigFragment;->access$000(Lcom/lewa/cloud/fragment/ConfigFragment;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getResultType()I

    move-result v1

    iget-object v2, p0, Lcom/lewa/cloud/fragment/ConfigFragment$1;->this$0:Lcom/lewa/cloud/fragment/ConfigFragment;

    #getter for: Lcom/lewa/cloud/fragment/ConfigFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v2}, Lcom/lewa/cloud/fragment/ConfigFragment;->access$000(Lcom/lewa/cloud/fragment/ConfigFragment;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    const/4 v2, -0x5

    if-ne v1, v2, :cond_0

    .line 335
    sget-object v1, Lcom/lewa/cloud/fragment/ConfigFragment;->TAG:Ljava/lang/String;

    const-string v2, "Network err."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v1, p0, Lcom/lewa/cloud/fragment/ConfigFragment$1;->this$0:Lcom/lewa/cloud/fragment/ConfigFragment;

    #calls: Lcom/lewa/cloud/fragment/ConfigFragment;->dealwithNetworkDisconnection()V
    invoke-static {v1}, Lcom/lewa/cloud/fragment/ConfigFragment;->access$200(Lcom/lewa/cloud/fragment/ConfigFragment;)V

    goto :goto_0
.end method
