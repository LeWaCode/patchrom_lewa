.class public Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnectStrategy$1abbe987:Lcom/tencent/qqpim/sdk/accesslayer/a;

.field private mIpVip:Ljava/lang/String;

.field private mNetManager:Lcom/tencent/qqpim/sdk/libs/netengine/b;

.field private mRecvQueue:Ljava/util/concurrent/LinkedBlockingQueue;

.field private mSendedQueue:Ljava/util/concurrent/LinkedBlockingQueue;

.field private mTaskTicket:Lcom/tencent/qqpim/sdk/libs/a/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mNetManager:Lcom/tencent/qqpim/sdk/libs/netengine/b;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mTaskTicket:Lcom/tencent/qqpim/sdk/libs/a/i;

    const-string v0, "DhwNetAdapter"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mConnectStrategy$1abbe987:Lcom/tencent/qqpim/sdk/accesslayer/a;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mRecvQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mSendedQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mIpVip:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mRecvQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mSendedQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mIpVip:Ljava/lang/String;

    return-void
.end method

.method private actionConnect(Ljava/lang/String;IILjava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 6

    const-string v0, "DhwNetAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "actionConnect() addr = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/16 v1, 0xa

    const/4 v2, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/libs/netengine/d;->a(II[BLjava/lang/String;II)Lcom/tencent/qqpim/sdk/libs/netengine/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->doConnect(Lcom/tencent/qqpim/sdk/libs/netengine/d;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x109

    invoke-virtual {p4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private blockingGetIsConnect(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x28

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_0

    const/16 v0, 0x109

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move v0, v1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x1001

    iget v3, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    if-eq v2, v3, :cond_1

    iget v0, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private checkConnected(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->blockingGetIsConnect(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    return v0
.end method

.method private doConnect(Lcom/tencent/qqpim/sdk/libs/netengine/d;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/qqpim/sdk/libs/netengine/c;->a()Lcom/tencent/qqpim/sdk/libs/netengine/b;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mNetManager:Lcom/tencent/qqpim/sdk/libs/netengine/b;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mNetManager:Lcom/tencent/qqpim/sdk/libs/netengine/b;

    new-instance v2, Lcom/tencent/qqpim/sdk/libs/netengine/a;

    invoke-direct {v2, p0, v0}, Lcom/tencent/qqpim/sdk/libs/netengine/a;-><init>(Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;B)V

    invoke-virtual {v1, v2, p1}, Lcom/tencent/qqpim/sdk/libs/netengine/b;->a(Lcom/tencent/qqpim/sdk/libs/a/d;Lcom/tencent/qqpim/sdk/libs/netengine/d;)Lcom/tencent/qqpim/sdk/libs/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mTaskTicket:Lcom/tencent/qqpim/sdk/libs/a/i;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mTaskTicket:Lcom/tencent/qqpim/sdk/libs/a/i;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getConnectAddr()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mConnectStrategy$1abbe987:Lcom/tencent/qqpim/sdk/accesslayer/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/accesslayer/a;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/accesslayer/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mConnectStrategy$1abbe987:Lcom/tencent/qqpim/sdk/accesslayer/a;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mConnectStrategy$1abbe987:Lcom/tencent/qqpim/sdk/accesslayer/a;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mConnectStrategy$1abbe987:Lcom/tencent/qqpim/sdk/accesslayer/a;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/accesslayer/a;->c()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;

    move-result-object v0

    return-object v0
.end method

.method private getConnectTimeOut()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mConnectStrategy$1abbe987:Lcom/tencent/qqpim/sdk/accesslayer/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/accesslayer/a;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/accesslayer/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mConnectStrategy$1abbe987:Lcom/tencent/qqpim/sdk/accesslayer/a;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mConnectStrategy$1abbe987:Lcom/tencent/qqpim/sdk/accesslayer/a;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mConnectStrategy$1abbe987:Lcom/tencent/qqpim/sdk/accesslayer/a;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/accesslayer/a;->d()I

    move-result v0

    return v0
.end method

.method private isConnected(Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mRecvQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0, v0, p1}, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->checkConnected(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    return v0
.end method

.method private onConnectBegin()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mConnectStrategy$1abbe987:Lcom/tencent/qqpim/sdk/accesslayer/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/accesslayer/a;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/accesslayer/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mConnectStrategy$1abbe987:Lcom/tencent/qqpim/sdk/accesslayer/a;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mConnectStrategy$1abbe987:Lcom/tencent/qqpim/sdk/accesslayer/a;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a()V

    return-void
.end method

.method private onConnectEnd()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mConnectStrategy$1abbe987:Lcom/tencent/qqpim/sdk/accesslayer/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mConnectStrategy$1abbe987:Lcom/tencent/qqpim/sdk/accesslayer/a;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/accesslayer/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mConnectStrategy$1abbe987:Lcom/tencent/qqpim/sdk/accesslayer/a;

    :cond_0
    return-void
.end method


# virtual methods
.method public connect()Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->perfermConnect()Z

    move-result v0

    return v0
.end method

.method public getDownloadSize()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mNetManager:Lcom/tencent/qqpim/sdk/libs/netengine/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mNetManager:Lcom/tencent/qqpim/sdk/libs/netengine/b;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mTaskTicket:Lcom/tencent/qqpim/sdk/libs/a/i;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/libs/netengine/b;->c(Lcom/tencent/qqpim/sdk/libs/a/i;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getNetType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUploadSize()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mNetManager:Lcom/tencent/qqpim/sdk/libs/netengine/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mNetManager:Lcom/tencent/qqpim/sdk/libs/netengine/b;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mTaskTicket:Lcom/tencent/qqpim/sdk/libs/a/i;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/libs/netengine/b;->b(Lcom/tencent/qqpim/sdk/libs/a/i;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public init(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mRecvQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object p2, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mSendedQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method public isNetAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public perfermConnect()Z
    .locals 11

    const/16 v10, 0x108

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->onConnectBegin()V

    move v1, v0

    move v9, v0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mIpVip:Ljava/lang/String;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7, v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->getConnectAddr()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v1, "DhwNetAdapter"

    const-string v4, "subSyncWorkConnect all addrs have tried"

    invoke-static {v1, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    if-nez v9, :cond_0

    const/16 v1, 0x106

    invoke-virtual {v7, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const-string v2, "null"

    iget-object v6, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mIpVip:Ljava/lang/String;

    move v3, v0

    invoke-static/range {v0 .. v6}, Lcom/tencent/qqpim/sdk/c/a/e;->a(IILjava/lang/String;IJLjava/lang/String;)V

    :cond_0
    move v8, v0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->onConnectEnd()V

    const-string v0, "DhwNetAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "subSyncWorkConnect isConnectedConfirm\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_2
    const-string v5, "DhwNetAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "subSyncWorkConnect addr:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;->a:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " port:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;->b:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->getConnectTimeOut()I

    move-result v5

    invoke-static {}, Lcom/tencent/qqpim/sdk/libs/netengine/e;->a()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;->a:Ljava/lang/String;

    iget v8, v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;->b:I

    invoke-direct {p0, v6, v8, v5, v7}, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->actionConnect(Ljava/lang/String;IILjava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, v7}, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->isConnected(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v1

    move v8, v1

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    if-eqz v8, :cond_5

    const/4 v1, 0x1

    iget-object v3, v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;->a:Ljava/lang/String;

    iget v4, v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;->b:I

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mIpVip:Ljava/lang/String;

    move v2, v0

    invoke-static/range {v1 .. v7}, Lcom/tencent/qqpim/sdk/c/a/e;->a(IILjava/lang/String;IJLjava/lang/String;)V

    goto :goto_1

    :cond_3
    const/16 v5, 0x107

    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_4
    move v8, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v7, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_6
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget-object v3, v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;->a:Ljava/lang/String;

    iget v4, v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;->b:I

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mIpVip:Ljava/lang/String;

    move v1, v0

    invoke-static/range {v1 .. v7}, Lcom/tencent/qqpim/sdk/c/a/e;->a(IILjava/lang/String;IJLjava/lang/String;)V

    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v1, v9, 0x1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    move v9, v1

    move v1, v8

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method

.method public sendData([B)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Lcom/tencent/qqpim/sdk/libs/netengine/a/d;

    invoke-direct {v1, p1}, Lcom/tencent/qqpim/sdk/libs/netengine/a/d;-><init>([B)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mNetManager:Lcom/tencent/qqpim/sdk/libs/netengine/b;

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mTaskTicket:Lcom/tencent/qqpim/sdk/libs/a/i;

    invoke-virtual {v2, v3, v1}, Lcom/tencent/qqpim/sdk/libs/netengine/b;->a(Lcom/tencent/qqpim/sdk/libs/a/i;Lcom/tencent/qqpim/sdk/libs/netengine/a/d;)Lcom/tencent/qqpim/sdk/libs/a/i;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mNetManager:Lcom/tencent/qqpim/sdk/libs/netengine/b;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mTaskTicket:Lcom/tencent/qqpim/sdk/libs/a/i;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/libs/netengine/b;->a(Lcom/tencent/qqpim/sdk/libs/a/i;)Z

    return-void
.end method
