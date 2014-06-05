.class final Lcom/tencent/qqpim/sdk/libs/netengine/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/libs/a/d;


# instance fields
.field private synthetic a:Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;


# direct methods
.method private constructor <init>(Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a;->a:Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/libs/netengine/a;-><init>(Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "DhwNetAdapter"

    const-string v1, "onSubTaskSened"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a;->a:Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;

    #getter for: Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mSendedQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->access$1(Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-static {v2, v2}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obtainMsg(II)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a;->a:Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;

    #getter for: Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mRecvQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->access$0(Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "DhwNetAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnectBegin originalAddress:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a;->a:Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;

    #setter for: Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->mIpVip:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;->access$2(Lcom/tencent/qqpim/sdk/libs/netengine/DhwNetAdapter;Ljava/lang/String;)V

    return-void
.end method
