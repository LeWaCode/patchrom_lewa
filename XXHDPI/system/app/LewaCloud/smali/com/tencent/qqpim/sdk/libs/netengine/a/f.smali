.class public final Lcom/tencent/qqpim/sdk/libs/netengine/a/f;
.super Lcom/tencent/qqpim/sdk/libs/a/a;

# interfaces
.implements Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Lcom/tencent/qqpim/sdk/libs/a/d;

.field private e:Lcom/tencent/qqpim/sdk/interfaces/h;

.field private f:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/libs/a/d;Lcom/tencent/qqpim/sdk/libs/netengine/d;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/libs/a/a;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->b:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->c:I

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->d:Lcom/tencent/qqpim/sdk/libs/a/d;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->e:Lcom/tencent/qqpim/sdk/interfaces/h;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->f:Ljava/util/concurrent/BlockingQueue;

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->d:Lcom/tencent/qqpim/sdk/libs/a/d;

    invoke-virtual {p2}, Lcom/tencent/qqpim/sdk/libs/netengine/d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tencent/qqpim/sdk/libs/netengine/d;->d()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->b:I

    invoke-virtual {p2}, Lcom/tencent/qqpim/sdk/libs/netengine/d;->e()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->c:I

    new-instance v0, Lcom/tencent/qqpim/sdk/interfaces/h;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, p0, v1}, Lcom/tencent/qqpim/sdk/interfaces/h;-><init>(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->e:Lcom/tencent/qqpim/sdk/interfaces/h;

    return-void
.end method

.method private a(IIILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->d:Lcom/tencent/qqpim/sdk/libs/a/d;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obtainMsg(IIILjava/lang/Object;)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->d:Lcom/tencent/qqpim/sdk/libs/a/d;

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/libs/a/d;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;II)Z
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x1002

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->e:Lcom/tencent/qqpim/sdk/interfaces/h;

    invoke-virtual {v1, p1, p2, p3}, Lcom/tencent/qqpim/sdk/interfaces/h;->a(Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "NetTaskTcp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tcp connect failed UnknownHostException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x101

    invoke-direct {p0, v5, v1, v0, v6}, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->a(IIILjava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "NetTaskTcp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tcp connect failed SocketException e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x103

    invoke-direct {p0, v5, v1, v0, v6}, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->a(IIILjava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "NetTaskTcp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tcp connect failed IllegalArgumentException e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x102

    invoke-direct {p0, v5, v1, v0, v6}, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->a(IIILjava/lang/Object;)V

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v2, "NetTaskTcp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tcp connect failed IOException e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x104

    invoke-direct {p0, v5, v1, v0, v6}, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->a(IIILjava/lang/Object;)V

    goto :goto_0

    :catch_4
    move-exception v1

    const-string v2, "NetTaskTcp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tcp connect failed Throwable"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x205

    invoke-direct {p0, v5, v1, v0, v6}, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->a(IIILjava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/qqpim/sdk/libs/a/a;)Lcom/tencent/qqpim/sdk/libs/a/i;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->f:Ljava/util/concurrent/BlockingQueue;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "NetTaskTcp"

    const-string v2, "addSubTask() 1"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/libs/a/i;->a(Lcom/tencent/qqpim/sdk/libs/a/a;)Lcom/tencent/qqpim/sdk/libs/a/i;

    move-result-object v1

    const-string v2, "NetTaskTcp"

    const-string v3, "addSubTask() 2"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->f:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v3, 0x28

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v1, v3, v4, v5}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    const-string v2, "NetTaskTcp"

    const-string v3, "addSubTask() 3"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->d:Lcom/tencent/qqpim/sdk/libs/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->d:Lcom/tencent/qqpim/sdk/libs/a/d;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/libs/a/d;->a()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 3

    const/16 v0, 0x1005

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method public final a(I[B)V
    .locals 2

    const/16 v0, 0x1003

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->d:Lcom/tencent/qqpim/sdk/libs/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->d:Lcom/tencent/qqpim/sdk/libs/a/d;

    invoke-interface {v0, p1}, Lcom/tencent/qqpim/sdk/libs/a/d;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->d:Lcom/tencent/qqpim/sdk/libs/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->d:Lcom/tencent/qqpim/sdk/libs/a/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/qqpim/sdk/libs/a/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->a:Ljava/lang/String;

    iget v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->b:I

    iget v2, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->c:I

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->a(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x1001

    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v3, v1}, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->a(IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->e:Lcom/tencent/qqpim/sdk/interfaces/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->e:Lcom/tencent/qqpim/sdk/interfaces/h;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/interfaces/h;->b()V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->d:Lcom/tencent/qqpim/sdk/libs/a/d;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->f:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->e:Lcom/tencent/qqpim/sdk/interfaces/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->e:Lcom/tencent/qqpim/sdk/interfaces/h;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/interfaces/h;->c()V

    :cond_1
    return-void
.end method

.method public final d()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->e:Lcom/tencent/qqpim/sdk/interfaces/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->e:Lcom/tencent/qqpim/sdk/interfaces/h;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/interfaces/h;->i()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final e()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->e:Lcom/tencent/qqpim/sdk/interfaces/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;->e:Lcom/tencent/qqpim/sdk/interfaces/h;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/interfaces/h;->h()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
