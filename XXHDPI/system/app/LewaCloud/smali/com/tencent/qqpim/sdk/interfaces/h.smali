.class public Lcom/tencent/qqpim/sdk/interfaces/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/libs/netengine/a/c;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/libs/netengine/a/g;

.field private b:Lcom/tencent/qqpim/sdk/libs/netengine/a/a;

.field private c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->a:Lcom/tencent/qqpim/sdk/libs/netengine/a/g;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->b:Lcom/tencent/qqpim/sdk/libs/netengine/a/a;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->d:Z

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;

    new-instance v0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;

    invoke-direct {v0, p0, p2}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;-><init>(Lcom/tencent/qqpim/sdk/libs/netengine/a/c;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->b:Lcom/tencent/qqpim/sdk/libs/netengine/a/a;

    return-void
.end method

.method private b(I)V
    .locals 7

    const/4 v5, 0x0

    const-string v0, "DhwSocketConnection"

    const-string v1, "doCloseConnection"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;

    if-eqz v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->b:Lcom/tencent/qqpim/sdk/libs/netengine/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->b:Lcom/tencent/qqpim/sdk/libs/netengine/a/a;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->d()Z

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->b:Lcom/tencent/qqpim/sdk/libs/netengine/a/a;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->g()Ljava/lang/String;

    move-result-object v5

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->d:Z

    if-nez v0, :cond_1

    const-string v0, "DhwSocketConnection"

    const-string v1, "doCloseConnection notify"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;

    const/16 v0, 0x1004

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obtainMsg(IIIILjava/lang/Object;Ljava/lang/Object;)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->a:Lcom/tencent/qqpim/sdk/libs/netengine/a/g;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->a:Lcom/tencent/qqpim/sdk/libs/netengine/a/g;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;->a()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b([B)V
    .locals 6

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->isLOGCAT_DISPLAY_ENABLE()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->getKey()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->decrypt([B[B)[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v0, v1}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    new-instance v2, La/u;

    invoke-direct {v2}, La/u;-><init>()V

    invoke-virtual {v2, v0}, La/u;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    iget-object v2, v2, La/u;->a:La/s;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->b:Lcom/tencent/qqpim/sdk/libs/netengine/a/a;

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->b:Lcom/tencent/qqpim/sdk/libs/netengine/a/a;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->c()I

    move-result v0

    :cond_2
    const-string v3, "PACKAGE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PackageLog()  cmd = "

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

    const-string v2, " localPort:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->a:Lcom/tencent/qqpim/sdk/libs/netengine/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->a:Lcom/tencent/qqpim/sdk/libs/netengine/a/g;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;->b(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "DhwSocketConnection"

    const-string v1, "Silent time out stop"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x401

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/interfaces/h;->b(I)V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;

    const/16 v1, 0x301

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;->a(I)V

    return-void
.end method

.method public a(II[BLcom/tencent/qqpim/sdk/libs/a/i;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/interfaces/h;->j()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;->a()V

    :cond_0
    return-void
.end method

.method public a(I[B)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/tencent/qqpim/sdk/interfaces/h;->b([B)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/interfaces/h;->j()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;

    invoke-interface {v0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;->a(I[B)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public a([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/interfaces/h;->b([B)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/interfaces/h;->j()V

    return-void
.end method

.method public a(Ljava/lang/String;II)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->d:Z

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->b:Lcom/tencent/qqpim/sdk/libs/netengine/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->b:Lcom/tencent/qqpim/sdk/libs/netengine/a/a;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->b:Lcom/tencent/qqpim/sdk/libs/netengine/a/a;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->b()V

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "DhwSocketConnection"

    const-string v1, "request cancel"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->d:Z

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/interfaces/h;->b(I)V

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "DhwSocketConnection"

    const-string v1, "onRecvLoopBegin**"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DhwSocketConnection"

    const-string v1, "startSilentTimer"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->a:Lcom/tencent/qqpim/sdk/libs/netengine/a/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;-><init>(Lcom/tencent/qqpim/sdk/interfaces/h;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->a:Lcom/tencent/qqpim/sdk/libs/netengine/a/g;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->a:Lcom/tencent/qqpim/sdk/libs/netengine/a/g;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;->a(I)V

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "DhwSocketConnection"

    const-string v1, "onSendLoopBegin--"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "DhwSocketConnection"

    const-string v1, "onRecvLoopEnd**"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x403

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/interfaces/h;->b(I)V

    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "DhwSocketConnection"

    const-string v1, "onSendLoopEnd--"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x402

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/interfaces/h;->b(I)V

    return-void
.end method

.method public h()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->b:Lcom/tencent/qqpim/sdk/libs/netengine/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->b:Lcom/tencent/qqpim/sdk/libs/netengine/a/a;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->f()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->b:Lcom/tencent/qqpim/sdk/libs/netengine/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/interfaces/h;->b:Lcom/tencent/qqpim/sdk/libs/netengine/a/a;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->e()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
