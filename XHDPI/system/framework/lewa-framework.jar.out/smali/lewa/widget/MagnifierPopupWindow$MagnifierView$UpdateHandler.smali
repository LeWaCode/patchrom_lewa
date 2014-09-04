.class public Llewa/widget/MagnifierPopupWindow$MagnifierView$UpdateHandler;
.super Landroid/os/Handler;
.source "MagnifierPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/widget/MagnifierPopupWindow$MagnifierView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic this$1:Llewa/widget/MagnifierPopupWindow$MagnifierView;


# direct methods
.method public constructor <init>(Llewa/widget/MagnifierPopupWindow$MagnifierView;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 204
    iput-object p1, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView$UpdateHandler;->this$1:Llewa/widget/MagnifierPopupWindow$MagnifierView;

    .line 205
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 206
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 209
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView$UpdateHandler;->this$1:Llewa/widget/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {v0}, Llewa/widget/MagnifierPopupWindow$MagnifierView;->takeScreenshot()V

    .line 212
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$MagnifierView$UpdateHandler;->this$1:Llewa/widget/MagnifierPopupWindow$MagnifierView;

    #calls: Llewa/widget/MagnifierPopupWindow$MagnifierView;->refresh()V
    invoke-static {v0}, Llewa/widget/MagnifierPopupWindow$MagnifierView;->access$1000(Llewa/widget/MagnifierPopupWindow$MagnifierView;)V

    .line 214
    :cond_0
    return-void
.end method
