.class final Llewa/os/RunningState$BackgroundHandler;
.super Landroid/os/Handler;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/os/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/os/RunningState;


# direct methods
.method public constructor <init>(Llewa/os/RunningState;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 137
    iput-object p1, p0, Llewa/os/RunningState$BackgroundHandler;->this$0:Llewa/os/RunningState;

    .line 138
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 139
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 143
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v1, p0, Llewa/os/RunningState$BackgroundHandler;->this$0:Llewa/os/RunningState;

    iget-object v2, v1, Llewa/os/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 149
    :try_start_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget-object v1, p0, Llewa/os/RunningState$BackgroundHandler;->this$0:Llewa/os/RunningState;

    iget-object v1, v1, Llewa/os/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 151
    .local v0, cmd:Landroid/os/Message;
    iget-object v1, p0, Llewa/os/RunningState$BackgroundHandler;->this$0:Llewa/os/RunningState;

    iget-object v2, p0, Llewa/os/RunningState$BackgroundHandler;->this$0:Llewa/os/RunningState;

    iget-object v2, v2, Llewa/os/RunningState;->mApplicationContext:Landroid/content/Context;

    iget-object v3, p0, Llewa/os/RunningState$BackgroundHandler;->this$0:Llewa/os/RunningState;

    iget-object v3, v3, Llewa/os/RunningState;->mAm:Landroid/app/ActivityManager;

    #calls: Llewa/os/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    invoke-static {v1, v2, v3}, Llewa/os/RunningState;->access$000(Llewa/os/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 152
    iget-object v1, p0, Llewa/os/RunningState$BackgroundHandler;->this$0:Llewa/os/RunningState;

    iget-object v1, v1, Llewa/os/RunningState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Llewa/os/RunningState$BackgroundHandler;->removeMessages(I)V

    goto :goto_0

    .line 149
    .end local v0           #cmd:Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 151
    .restart local v0       #cmd:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
