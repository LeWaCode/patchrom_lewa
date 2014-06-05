.class Lcom/lewa/cloud/fragment/ResultDialogFragment$1;
.super Ljava/lang/Object;
.source "ResultDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/cloud/fragment/ResultDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/cloud/fragment/ResultDialogFragment;


# direct methods
.method constructor <init>(Lcom/lewa/cloud/fragment/ResultDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/lewa/cloud/fragment/ResultDialogFragment$1;->this$0:Lcom/lewa/cloud/fragment/ResultDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 102
    const-string v0, "----TRACE"

    const-string v1, "first ok"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method
