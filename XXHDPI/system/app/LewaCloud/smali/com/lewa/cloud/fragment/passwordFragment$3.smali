.class Lcom/lewa/cloud/fragment/passwordFragment$3;
.super Ljava/lang/Object;
.source "passwordFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/cloud/fragment/passwordFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/cloud/fragment/passwordFragment;


# direct methods
.method constructor <init>(Lcom/lewa/cloud/fragment/passwordFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lewa/cloud/fragment/passwordFragment$3;->this$0:Lcom/lewa/cloud/fragment/passwordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lewa/cloud/fragment/passwordFragment$3;->this$0:Lcom/lewa/cloud/fragment/passwordFragment;

    #getter for: Lcom/lewa/cloud/fragment/passwordFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    invoke-static {v0}, Lcom/lewa/cloud/fragment/passwordFragment;->access$100(Lcom/lewa/cloud/fragment/passwordFragment;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->setPimPassword(Ljava/lang/String;)Z

    .line 92
    invoke-static {}, Lcom/lewa/cloud/fragment/passwordFragment;->access$200()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 93
    return-void
.end method
