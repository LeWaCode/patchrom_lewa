.class Llewa/os/RunningState$1;
.super Landroid/os/Handler;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/os/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mNextUpdate:I

.field final synthetic this$0:Llewa/os/RunningState;


# direct methods
.method constructor <init>(Llewa/os/RunningState;)V
    .locals 1
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Llewa/os/RunningState$1;->this$0:Llewa/os/RunningState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Llewa/os/RunningState$1;->mNextUpdate:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 168
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 170
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_1
    iput v0, p0, Llewa/os/RunningState$1;->mNextUpdate:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 175
    :pswitch_1
    iget-object v0, p0, Llewa/os/RunningState$1;->this$0:Llewa/os/RunningState;

    iget-object v1, v0, Llewa/os/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Llewa/os/RunningState$1;->this$0:Llewa/os/RunningState;

    iget-boolean v0, v0, Llewa/os/RunningState;->mResumed:Z

    if-nez v0, :cond_2

    .line 177
    monitor-exit v1

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Llewa/os/RunningState$1;->removeMessages(I)V

    .line 184
    iget-object v0, p0, Llewa/os/RunningState$1;->this$0:Llewa/os/RunningState;

    iget-object v0, v0, Llewa/os/RunningState;->mRefreshUiListener:Llewa/os/RunningState$OnRefreshUiListener;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Llewa/os/RunningState$1;->this$0:Llewa/os/RunningState;

    iget-object v0, v0, Llewa/os/RunningState;->mRefreshUiListener:Llewa/os/RunningState$OnRefreshUiListener;

    iget v1, p0, Llewa/os/RunningState$1;->mNextUpdate:I

    invoke-interface {v0, v1}, Llewa/os/RunningState$OnRefreshUiListener;->onRefreshUi(I)V

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Llewa/os/RunningState$1;->mNextUpdate:I

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
