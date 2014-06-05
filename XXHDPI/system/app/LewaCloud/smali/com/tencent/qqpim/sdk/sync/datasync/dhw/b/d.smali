.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/c;

.field private b:Ljava/util/concurrent/LinkedBlockingQueue;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/c;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/c;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->c:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obj1:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/c;

    iget-object v0, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obj1:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/c;->a([B)La/u;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/c;

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/c;->a(La/u;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;

    :cond_2
    new-instance v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    iget v3, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    iget v4, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;-><init>(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;La/u;II)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    goto :goto_0
.end method

.method private a(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/List;)V
    .locals 3

    const-string v0, "DhwRecvDataPackagePool"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "schedule pack begin. netRecvQueue size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " waitingProcessQueue size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    :cond_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    const/16 v2, 0x1003

    if-ne v2, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    :goto_0
    invoke-static {p2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->a(Ljava/util/List;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    if-nez v0, :cond_0

    :cond_1
    const-string v0, "DhwRecvDataPackagePool"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "schedule pack end. netRecvQueue size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " waitingProcessQueue size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->b(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;

    iget-object v2, p1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;

    if-ne v1, v2, :cond_2

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-lt v1, v2, :cond_4

    move v1, v0

    :cond_3
    invoke-interface {p0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    if-eqz v0, :cond_5

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;

    if-ne v3, v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private static b(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;
    .locals 6

    const/4 v2, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v2

    :cond_0
    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    sget-object v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;

    iget v3, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    iget v4, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obj2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;-><init>(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;La/u;IILjava/lang/String;)V

    move-object v2, v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public final b()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;
    .locals 5

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    const-wide/16 v3, 0x28

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget v3, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    const/16 v4, 0x1003

    if-ne v4, v3, :cond_3

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    :goto_1
    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->a(Ljava/util/List;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    if-nez v0, :cond_0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->a(Ljava/util/List;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->b(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public final c()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->c:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->a(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/List;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->a(Ljava/util/List;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->c:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->a(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/List;)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->c:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "DhwRecvDataPackagePool"

    const-string v2, "getLastEle size 0"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    const-string v1, "DhwRecvDataPackagePool"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLastEle size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;

    sget-object v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;

    if-eq v3, v4, :cond_1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void
.end method
