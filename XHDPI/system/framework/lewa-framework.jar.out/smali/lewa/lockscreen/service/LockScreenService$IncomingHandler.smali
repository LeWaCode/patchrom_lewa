.class Llewa/lockscreen/service/LockScreenService$IncomingHandler;
.super Landroid/os/Handler;
.source "LockScreenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/service/LockScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/lockscreen/service/LockScreenService;


# direct methods
.method constructor <init>(Llewa/lockscreen/service/LockScreenService;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Llewa/lockscreen/service/LockScreenService$IncomingHandler;->this$0:Llewa/lockscreen/service/LockScreenService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 20
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 31
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 33
    :goto_0
    return-void

    .line 22
    :pswitch_0
    const-string v0, "music_total"

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llewa/lockscreen/view/Expression;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v0, "music_progress"

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llewa/lockscreen/view/Expression;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "music_percent"

    iget v1, p1, Landroid/os/Message;->arg2:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, p1, Landroid/os/Message;->arg1:I

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llewa/lockscreen/view/Expression;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    const-string v0, "LockScreenService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 20
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
