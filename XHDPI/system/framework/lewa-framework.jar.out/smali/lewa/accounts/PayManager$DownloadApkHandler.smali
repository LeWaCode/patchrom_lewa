.class public Llewa/accounts/PayManager$DownloadApkHandler;
.super Landroid/os/Handler;
.source "PayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/accounts/PayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadApkHandler"
.end annotation


# instance fields
.field private mActReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Llewa/accounts/PayManager;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Llewa/accounts/PayManager;Landroid/content/Context;)V
    .locals 1
    .parameter "mainact"
    .parameter "context"

    .prologue
    .line 297
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 298
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Llewa/accounts/PayManager$DownloadApkHandler;->mActReference:Ljava/lang/ref/WeakReference;

    .line 299
    iput-object p2, p0, Llewa/accounts/PayManager$DownloadApkHandler;->mContext:Landroid/content/Context;

    .line 300
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 303
    iget-object v2, p0, Llewa/accounts/PayManager$DownloadApkHandler;->mActReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/accounts/PayManager;

    .line 304
    .local v0, theClass:Llewa/accounts/PayManager;
    iget v1, p1, Landroid/os/Message;->what:I

    .line 305
    .local v1, what:I
    #calls: Llewa/accounts/PayManager;->closeOnlineInstallDialog()V
    invoke-static {v0}, Llewa/accounts/PayManager;->access$300(Llewa/accounts/PayManager;)V

    .line 306
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 307
    iget-object v2, p0, Llewa/accounts/PayManager$DownloadApkHandler;->mContext:Landroid/content/Context;

    #calls: Llewa/accounts/PayManager;->showInstallConfirmDialog(Landroid/content/Context;)V
    invoke-static {v0, v2}, Llewa/accounts/PayManager;->access$400(Llewa/accounts/PayManager;Landroid/content/Context;)V

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 309
    iget-object v2, p0, Llewa/accounts/PayManager$DownloadApkHandler;->mContext:Landroid/content/Context;

    const-string v3, "\u4e0b\u8f7d\u7684\u7248\u672c\u8fc7\u4f4e"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 310
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 311
    iget-object v2, p0, Llewa/accounts/PayManager$DownloadApkHandler;->mContext:Landroid/content/Context;

    const-string v3, "\u5df2\u7ecf\u662f\u6700\u65b0\u7684\u7248\u672c\u4e86"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 313
    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 314
    iget-object v2, p0, Llewa/accounts/PayManager$DownloadApkHandler;->mContext:Landroid/content/Context;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
