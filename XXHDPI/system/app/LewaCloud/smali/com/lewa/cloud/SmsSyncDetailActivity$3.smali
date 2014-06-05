.class Lcom/lewa/cloud/SmsSyncDetailActivity$3;
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
    .line 416
    iput-object p1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$3;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 419
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 420
    iget-object v1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$3;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v1}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$400(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->progressChanged(Landroid/os/Message;)V

    .line 421
    iget-object v1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$3;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v1}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$400(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getProgress()I

    move-result v0

    .line 422
    .local v0, progress:I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$3;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v1}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$400(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    .line 423
    iget-object v1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$3;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mPercent:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$500(Lcom/lewa/cloud/SmsSyncDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$3;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mPercent:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$500(Lcom/lewa/cloud/SmsSyncDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$3;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mPercentFormat:Ljava/lang/String;
    invoke-static {v2}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$600(Lcom/lewa/cloud/SmsSyncDetailActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$3;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$700(Lcom/lewa/cloud/SmsSyncDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$3;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$700(Lcom/lewa/cloud/SmsSyncDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 430
    :cond_1
    return-void
.end method
