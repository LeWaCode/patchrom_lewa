.class Lcom/lewa/cloud/fragment/passwordFragment$1;
.super Ljava/lang/Object;
.source "passwordFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 65
    iput-object p1, p0, Lcom/lewa/cloud/fragment/passwordFragment$1;->this$0:Lcom/lewa/cloud/fragment/passwordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lewa/cloud/fragment/passwordFragment$1;->this$0:Lcom/lewa/cloud/fragment/passwordFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/lewa/cloud/fragment/passwordFragment;->mPassword:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lewa/cloud/fragment/passwordFragment;->access$002(Lcom/lewa/cloud/fragment/passwordFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 72
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 68
    return-void
.end method
