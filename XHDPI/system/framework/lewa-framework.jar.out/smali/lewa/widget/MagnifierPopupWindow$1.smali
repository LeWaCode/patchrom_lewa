.class Llewa/widget/MagnifierPopupWindow$1;
.super Landroid/os/Handler;
.source "MagnifierPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/widget/MagnifierPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/widget/MagnifierPopupWindow;


# direct methods
.method constructor <init>(Llewa/widget/MagnifierPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Llewa/widget/MagnifierPopupWindow$1;->this$0:Llewa/widget/MagnifierPopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 239
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 241
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$1;->this$0:Llewa/widget/MagnifierPopupWindow;

    #calls: Llewa/widget/MagnifierPopupWindow;->showMagnifier()V
    invoke-static {v0}, Llewa/widget/MagnifierPopupWindow;->access$1100(Llewa/widget/MagnifierPopupWindow;)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 243
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$1;->this$0:Llewa/widget/MagnifierPopupWindow;

    #getter for: Llewa/widget/MagnifierPopupWindow;->mMagnifierView:Llewa/widget/MagnifierPopupWindow$MagnifierView;
    invoke-static {v0}, Llewa/widget/MagnifierPopupWindow;->access$100(Llewa/widget/MagnifierPopupWindow;)Llewa/widget/MagnifierPopupWindow$MagnifierView;

    move-result-object v0

    invoke-virtual {v0}, Llewa/widget/MagnifierPopupWindow$MagnifierView;->hide()V

    goto :goto_0

    .line 244
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 245
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$1;->this$0:Llewa/widget/MagnifierPopupWindow;

    #calls: Llewa/widget/MagnifierPopupWindow;->refreshMagnifier()V
    invoke-static {v0}, Llewa/widget/MagnifierPopupWindow;->access$1200(Llewa/widget/MagnifierPopupWindow;)V

    goto :goto_0
.end method
