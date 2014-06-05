.class Lcom/lewa/cloud/ContactsSyncActivity$1;
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
    .line 282
    iput-object p1, p0, Lcom/lewa/cloud/ContactsSyncActivity$1;->this$0:Lcom/lewa/cloud/ContactsSyncActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 285
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 286
    iget-object v1, p0, Lcom/lewa/cloud/ContactsSyncActivity$1;->this$0:Lcom/lewa/cloud/ContactsSyncActivity;

    #getter for: Lcom/lewa/cloud/ContactsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v1}, Lcom/lewa/cloud/ContactsSyncActivity;->access$000(Lcom/lewa/cloud/ContactsSyncActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->progressChanged(Landroid/os/Message;)V

    .line 287
    iget-object v1, p0, Lcom/lewa/cloud/ContactsSyncActivity$1;->this$0:Lcom/lewa/cloud/ContactsSyncActivity;

    #getter for: Lcom/lewa/cloud/ContactsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v1}, Lcom/lewa/cloud/ContactsSyncActivity;->access$000(Lcom/lewa/cloud/ContactsSyncActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getProgress()I

    move-result v0

    .line 288
    .local v0, progress:I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/lewa/cloud/ContactsSyncActivity$1;->this$0:Lcom/lewa/cloud/ContactsSyncActivity;

    #getter for: Lcom/lewa/cloud/ContactsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v1}, Lcom/lewa/cloud/ContactsSyncActivity;->access$000(Lcom/lewa/cloud/ContactsSyncActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/lewa/cloud/ContactsSyncActivity$1;->this$0:Lcom/lewa/cloud/ContactsSyncActivity;

    #getter for: Lcom/lewa/cloud/ContactsSyncActivity;->mPercent:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lewa/cloud/ContactsSyncActivity;->access$100(Lcom/lewa/cloud/ContactsSyncActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/lewa/cloud/ContactsSyncActivity$1;->this$0:Lcom/lewa/cloud/ContactsSyncActivity;

    #getter for: Lcom/lewa/cloud/ContactsSyncActivity;->mPercent:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lewa/cloud/ContactsSyncActivity;->access$100(Lcom/lewa/cloud/ContactsSyncActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lewa/cloud/ContactsSyncActivity$1;->this$0:Lcom/lewa/cloud/ContactsSyncActivity;

    #getter for: Lcom/lewa/cloud/ContactsSyncActivity;->mPercentFormat:Ljava/lang/String;
    invoke-static {v2}, Lcom/lewa/cloud/ContactsSyncActivity;->access$200(Lcom/lewa/cloud/ContactsSyncActivity;)Ljava/lang/String;

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

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/lewa/cloud/ContactsSyncActivity$1;->this$0:Lcom/lewa/cloud/ContactsSyncActivity;

    #getter for: Lcom/lewa/cloud/ContactsSyncActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/lewa/cloud/ContactsSyncActivity;->access$300(Lcom/lewa/cloud/ContactsSyncActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/lewa/cloud/ContactsSyncActivity$1;->this$0:Lcom/lewa/cloud/ContactsSyncActivity;

    #getter for: Lcom/lewa/cloud/ContactsSyncActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/lewa/cloud/ContactsSyncActivity;->access$300(Lcom/lewa/cloud/ContactsSyncActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 296
    :cond_1
    return-void
.end method
