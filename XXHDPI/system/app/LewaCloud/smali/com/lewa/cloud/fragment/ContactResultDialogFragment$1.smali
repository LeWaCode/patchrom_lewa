.class Lcom/lewa/cloud/fragment/ContactResultDialogFragment$1;
.super Ljava/lang/Object;
.source "ContactResultDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/cloud/fragment/ContactResultDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/cloud/fragment/ContactResultDialogFragment;


# direct methods
.method constructor <init>(Lcom/lewa/cloud/fragment/ContactResultDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lewa/cloud/fragment/ContactResultDialogFragment$1;->this$0:Lcom/lewa/cloud/fragment/ContactResultDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 86
    const-string v0, "----TRACE"

    const-string v1, "first ok"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method
