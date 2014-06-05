.class Lcom/lewa/cloud/fragment/ResultDialogFragment$2;
.super Ljava/lang/Object;
.source "ResultDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/cloud/fragment/ResultDialogFragment;
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
    .line 109
    iput-object p1, p0, Lcom/lewa/cloud/fragment/ResultDialogFragment$2;->this$0:Lcom/lewa/cloud/fragment/ResultDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 111
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const-string v0, "----TRACE"

    const-string v1, "first test1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    .line 121
    :cond_0
    const-string v0, "----TRACE"

    const-string v1, "first test2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x0

    goto :goto_0
.end method
