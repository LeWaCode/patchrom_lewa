.class Lcom/lewa/cloud/AccountInfoActivity$AlertFragment$2;
.super Ljava/lang/Object;
.source "AccountInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/cloud/AccountInfoActivity$AlertFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/cloud/AccountInfoActivity$AlertFragment;


# direct methods
.method constructor <init>(Lcom/lewa/cloud/AccountInfoActivity$AlertFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/lewa/cloud/AccountInfoActivity$AlertFragment$2;->this$0:Lcom/lewa/cloud/AccountInfoActivity$AlertFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 283
    sget-object v0, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-virtual {v0}, Lcom/lewa/cloud/CloudApp;->getCloudManager()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->logOut()V

    .line 284
    sget-object v0, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-virtual {v0}, Lcom/lewa/cloud/CloudApp;->exit()V

    .line 285
    return-void
.end method
