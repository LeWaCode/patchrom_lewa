.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field private b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/e;

.field private c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;

.field private final d:Ljava/util/concurrent/LinkedBlockingQueue;

.field private e:J

.field private f:J

.field private g:Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/16 v5, 0x1e

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->a:Ljava/util/List;

    iput-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/e;

    iput-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-wide v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->e:J

    iput-wide v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->f:J

    iput-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->g:Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;

    iput v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->h:I

    iput v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->i:I

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iput-wide v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->e:J

    iput-wide v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->f:J

    iput v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->h:I

    invoke-direct {p0, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->d(I)V

    const-string v0, "DhwSyncNetHandler"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(La/u;)V
    .locals 4

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->isLOGCAT_DISPLAY_ENABLE()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p0, :cond_0

    iget-object v0, p0, La/u;->a:La/s;

    const-string v1, "DhwSyncNetHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PackageLog() recv cmd = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, La/s;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seqno = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, La/s;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dataType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, La/s;->i:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/List;I)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "DhwSyncNetHandler"

    const-string v1, "isWaitingQueueValid waitingQueue size == 0"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    :goto_0
    return v2

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    if-eqz v0, :cond_2

    if-nez v1, :cond_5

    iget v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->b:I

    if-ge p1, v0, :cond_4

    const-string v0, "DhwSyncNetHandler"

    const-string v1, "isWaitingQueueValid needResend tartSeqNo > firstSeqno"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    iget v0, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->b:I

    if-eq v1, v0, :cond_6

    const-string v0, "DhwSyncNetHandler"

    const-string v1, "isWaitingQueueValid not continuous!"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private b(Ljava/util/List;I)I
    .locals 8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v0, "DhwSyncNetHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "doReSend waitingQueue size="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " startSeqNo:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v3, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DhwSyncNetHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doReSend resend count:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    if-eqz v0, :cond_0

    const-string v5, "DhwSyncNetHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "doReSend packageData.seqNo="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->b:I

    if-lt v5, p2, :cond_4

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->d(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_3

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private c(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "DhwSyncNetHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendPackage packagType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seqNo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ----------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->c:[B

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->isLOGCAT_DISPLAY_ENABLE()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->decrypt([B[B)[B

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v2, v1}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    new-instance v3, La/u;

    invoke-direct {v3}, La/u;-><init>()V

    invoke-virtual {v3, v2}, La/u;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    iget-object v2, v3, La/u;->a:La/s;

    const-string v3, "DhwSyncNetHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PackageLog() send cmd = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, La/s;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seqno = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, La/s;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dataType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v2, v2, La/s;->i:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " bytes lenth = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x1

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;

    iget-object v3, p1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;

    if-ne v2, v3, :cond_3

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "DhwSyncNetHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendPackage waitingQueue size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->d(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    move-result v0

    const-string v1, "DhwSyncNetHandler"

    const-string v2, "sendPackage doSend!!"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v1, "DhwSyncNetHandler"

    const-string v2, "sendPackage end-----------------"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->d(I)V

    goto/16 :goto_0
.end method

.method private d(I)V
    .locals 3

    iput p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->i:I

    const-string v0, "DhwSyncNetHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendCount:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/e;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/e;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/e;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->g:Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/netadapter/NetAdapterFactory;->getNetAdapter()Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->g:Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->g:Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->g:Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->a()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;->init(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/concurrent/LinkedBlockingQueue;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/e;

    if-nez v0, :cond_3

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/e;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->g:Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;

    invoke-direct {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/e;-><init>(Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/e;

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->g:Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;->connect()Z

    move-result v1

    const/16 v0, 0x55f0

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    return v0
.end method

.method public final a(I)I
    .locals 5

    const-string v0, "DhwSyncNetHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "packageRecvAck seqNo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v2}, Ljava/util/List;->clear()V

    return v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->b:I

    if-gt v3, p1, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public final a(Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;)V
    .locals 3

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->g:Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->g:Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->a()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;->init(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/concurrent/LinkedBlockingQueue;)V

    return-void
.end method

.method public final a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z
    .locals 4

    const-string v0, "DhwSyncNetHandler"

    const-string v1, "sendPackageWithRes"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->c(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    const-string v0, "DhwSyncNetHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendPackageWithRes sended:false"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "DhwSyncNetHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendPackageWithRes e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "DhwSyncNetHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendPackageWithRes t:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " maybe atom update failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(I)I
    .locals 6

    const/4 v0, -0x1

    const-string v1, "DhwSyncNetHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reSend seqNo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->a:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->a(Ljava/util/List;I)Z

    move-result v2

    const-string v3, "DhwSyncNetHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reSend isWaitingQueueValid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->a:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->b(Ljava/util/List;I)I

    move-result v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->i:I

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->h:I

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->d(I)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final b(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->c(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->g:Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->g:Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;->getUploadSize()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->g:Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;

    invoke-interface {v2}, Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;->getDownloadSize()J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->f:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->f:J

    :cond_0
    cmp-long v2, v0, v6

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->e:J

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->e()V

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->g:Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;->stop()V

    :cond_3
    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->h:I

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public final e()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;
    .locals 3

    const-string v0, "DhwSyncNetHandler"

    const-string v1, "getRecvPackage *******************"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->c()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->f:La/u;

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->a(La/u;)V

    :cond_0
    const-string v1, "DhwSyncNetHandler"

    const-string v2, "getRecvPackage end*******************"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final f()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;
    .locals 4

    const-string v0, "DhwSyncNetHandler"

    const-string v1, "blockingGetRecvPackage *******************"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->b()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->f:La/u;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->a(La/u;)V

    :cond_0
    const-string v2, "DhwSyncNetHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "blockingGetRecvPackage end "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_1

    const-string v0, "waiting too long!"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "*******************"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->e:J

    return-wide v0
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->f:J

    return-wide v0
.end method

.method public final i()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/d;->d()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->f:La/u;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->f:La/u;

    iget-object v1, v1, La/u;->a:La/s;

    if-eqz v1, :cond_0

    iget v0, v1, La/s;->a:I

    goto :goto_0
.end method
