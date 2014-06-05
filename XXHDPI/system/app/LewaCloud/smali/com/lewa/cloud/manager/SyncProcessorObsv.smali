.class public Lcom/lewa/cloud/manager/SyncProcessorObsv;
.super Ljava/lang/Object;
.source "SyncProcessorObsv.java"

# interfaces
.implements Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessorObsv;


# instance fields
.field public mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 0
    .parameter "activity"
    .parameter "handler"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/lewa/cloud/manager/SyncProcessorObsv;->mActivity:Landroid/app/Activity;

    .line 18
    iput-object p2, p0, Lcom/lewa/cloud/manager/SyncProcessorObsv;->mHandler:Landroid/os/Handler;

    .line 19
    return-void
.end method


# virtual methods
.method public onPostSyncData(Ljava/lang/String;[BLjava/util/concurrent/atomic/AtomicInteger;)[B
    .locals 1
    .parameter "serverUrl"
    .parameter "data"
    .parameter "httpRet"

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSyncStateChanged(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 29
    iget-object v1, p0, Lcom/lewa/cloud/manager/SyncProcessorObsv;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 30
    .local v0, message:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 31
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    iget-object v1, p0, Lcom/lewa/cloud/manager/SyncProcessorObsv;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 33
    return-void
.end method
