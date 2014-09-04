.class public Llewa/lockscreen/service/LockScreenService;
.super Landroid/app/Service;
.source "LockScreenService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/lockscreen/service/LockScreenService$IncomingHandler;
    }
.end annotation


# static fields
.field public static final MSG_SET_MUSIC_INFO:I = 0x1


# instance fields
.field final mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Llewa/lockscreen/service/LockScreenService$IncomingHandler;

    invoke-direct {v1, p0}, Llewa/lockscreen/service/LockScreenService$IncomingHandler;-><init>(Llewa/lockscreen/service/LockScreenService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Llewa/lockscreen/service/LockScreenService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 52
    const-string v0, "LockScreenService"

    const-string v1, " bind to service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Llewa/lockscreen/service/LockScreenService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "LockScreenService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 42
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "LockScreenService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 48
    return-void
.end method
