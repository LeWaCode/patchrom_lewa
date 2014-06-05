.class Lcom/lewa/cloud/ContactsSyncActivity$2;
.super Landroid/os/Handler;
.source "ContactsSyncActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/cloud/ContactsSyncActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/cloud/ContactsSyncActivity;


# direct methods
.method constructor <init>(Lcom/lewa/cloud/ContactsSyncActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/lewa/cloud/ContactsSyncActivity$2;->this$0:Lcom/lewa/cloud/ContactsSyncActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 302
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 303
    iget-object v1, p0, Lcom/lewa/cloud/ContactsSyncActivity$2;->this$0:Lcom/lewa/cloud/ContactsSyncActivity;

    #getter for: Lcom/lewa/cloud/ContactsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v1}, Lcom/lewa/cloud/ContactsSyncActivity;->access$000(Lcom/lewa/cloud/ContactsSyncActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->updateContactDataFinish(Landroid/os/Message;)Z

    move-result v0

    .line 304
    .local v0, result:Z
    if-eqz v0, :cond_1

    .line 306
    sget-object v1, Lcom/lewa/cloud/ContactsSyncActivity;->TAG:Ljava/lang/String;

    const-string v2, "refresh."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v1, p0, Lcom/lewa/cloud/ContactsSyncActivity$2;->this$0:Lcom/lewa/cloud/ContactsSyncActivity;

    invoke-virtual {v1}, Lcom/lewa/cloud/ContactsSyncActivity;->refresh()V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/lewa/cloud/ContactsSyncActivity$2;->this$0:Lcom/lewa/cloud/ContactsSyncActivity;

    #getter for: Lcom/lewa/cloud/ContactsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v1}, Lcom/lewa/cloud/ContactsSyncActivity;->access$000(Lcom/lewa/cloud/ContactsSyncActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getResultType()I

    move-result v1

    iget-object v2, p0, Lcom/lewa/cloud/ContactsSyncActivity$2;->this$0:Lcom/lewa/cloud/ContactsSyncActivity;

    #getter for: Lcom/lewa/cloud/ContactsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v2}, Lcom/lewa/cloud/ContactsSyncActivity;->access$000(Lcom/lewa/cloud/ContactsSyncActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    const/4 v2, -0x5

    if-ne v1, v2, :cond_0

    .line 313
    sget-object v1, Lcom/lewa/cloud/ContactsSyncActivity;->TAG:Ljava/lang/String;

    const-string v2, "Network err."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v1, p0, Lcom/lewa/cloud/ContactsSyncActivity$2;->this$0:Lcom/lewa/cloud/ContactsSyncActivity;

    #calls: Lcom/lewa/cloud/ContactsSyncActivity;->dealwithNetworkDisconnection()V
    invoke-static {v1}, Lcom/lewa/cloud/ContactsSyncActivity;->access$400(Lcom/lewa/cloud/ContactsSyncActivity;)V

    goto :goto_0
.end method
