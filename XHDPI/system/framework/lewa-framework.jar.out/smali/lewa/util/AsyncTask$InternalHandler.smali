.class Llewa/util/AsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/util/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 663
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llewa/util/AsyncTask$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 663
    invoke-direct {p0}, Llewa/util/AsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 667
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Llewa/util/AsyncTask$AsyncTaskResult;

    .line 668
    .local v0, result:Llewa/util/AsyncTask$AsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 677
    :goto_0
    return-void

    .line 671
    :pswitch_0
    iget-object v1, v0, Llewa/util/AsyncTask$AsyncTaskResult;->mTask:Llewa/util/AsyncTask;

    iget-object v2, v0, Llewa/util/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    #calls: Llewa/util/AsyncTask;->finish(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Llewa/util/AsyncTask;->access$600(Llewa/util/AsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 674
    :pswitch_1
    iget-object v1, v0, Llewa/util/AsyncTask$AsyncTaskResult;->mTask:Llewa/util/AsyncTask;

    iget-object v2, v0, Llewa/util/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Llewa/util/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 668
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
