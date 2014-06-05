.class Lcom/lewa/cloud/PrimCloudActivity$2;
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
    .line 154
    iput-object p1, p0, Lcom/lewa/cloud/PrimCloudActivity$2;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 158
    iget-object v0, p0, Lcom/lewa/cloud/PrimCloudActivity$2;->this$0:Lcom/lewa/cloud/PrimCloudActivity;

    #getter for: Lcom/lewa/cloud/PrimCloudActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v0}, Lcom/lewa/cloud/PrimCloudActivity;->access$100(Lcom/lewa/cloud/PrimCloudActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->autoSyncProgressChanged(Landroid/os/Message;)V

    .line 159
    return-void
.end method
