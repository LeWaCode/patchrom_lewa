.class public final Lcom/tencent/qqpim/sdk/libs/netengine/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/io/InputStream;

.field private c:Ljava/io/OutputStream;

.field private d:Ljava/io/DataInputStream;

.field private e:Ljava/io/DataOutputStream;

.field private volatile f:Z

.field private g:Lcom/tencent/qqpim/sdk/libs/netengine/a/c;

.field private h:Ljava/util/concurrent/BlockingQueue;

.field private i:Ljava/lang/Thread;

.field private j:J

.field private k:J

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/libs/netengine/a/c;Ljava/util/concurrent/BlockingQueue;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->b:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->c:Ljava/io/OutputStream;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->d:Ljava/io/DataInputStream;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->e:Ljava/io/DataOutputStream;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->f:Z

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->g:Lcom/tencent/qqpim/sdk/libs/netengine/a/c;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->h:Ljava/util/concurrent/BlockingQueue;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->i:Ljava/lang/Thread;

    iput-wide v2, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->j:J

    iput-wide v2, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->k:J

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->g:Lcom/tencent/qqpim/sdk/libs/netengine/a/c;

    iput-object p2, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->h:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method static synthetic a(Lcom/tencent/qqpim/sdk/libs/netengine/a/a;)Lcom/tencent/qqpim/sdk/libs/netengine/a/c;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->g:Lcom/tencent/qqpim/sdk/libs/netengine/a/c;

    return-object v0
.end method

.method private a(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->k:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->k:J

    goto :goto_0
.end method

.method private static a(Ljava/net/Socket;)V
    .locals 5

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    const-string v2, "DhwSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "printSocket local addr "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " remote addr:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->f:Z

    const-string v0, "DhwSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setStopped:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/io/InputStream;IILcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;)[B
    .locals 5

    const/4 v1, 0x0

    new-array v0, p2, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    move v2, v1

    move v3, v1

    move v1, p2

    :goto_0
    if-ge v2, p2, :cond_0

    if-gtz v1, :cond_2

    :cond_0
    if-eq v2, p2, :cond_1

    const-string v0, "DhwSocket"

    const-string v1, "recv actualSize != packSize"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_0

    add-int/2addr v2, v4

    add-int/2addr v3, v4

    sub-int/2addr v1, v4

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/qqpim/sdk/libs/netengine/a/a;)V
    .locals 6

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->i()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DhwSocket"

    const-string v1, "recvLoop socket not available"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_0
    const-string v0, "DhwSocket"

    const-string v2, "recvLoop() readInt begin"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->d:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const-string v2, "DhwSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "recvLoop() size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_2

    const v2, 0x32000

    if-le v0, v2, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->g:Lcom/tencent/qqpim/sdk/libs/netengine/a/c;

    const/16 v2, 0x301

    invoke-interface {v0, v2}, Lcom/tencent/qqpim/sdk/libs/netengine/a/c;->a(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v2

    :goto_2
    if-lt v1, v4, :cond_6

    const-string v1, "DhwSocket"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v1, "DhwSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "recvLoop() SocketException"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recvLoop() SocketException e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->l:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    int-to-long v2, v0

    :try_start_1
    invoke-direct {p0, v2, v3}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a(J)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->d:Ljava/io/DataInputStream;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a(Ljava/io/InputStream;IILcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/a;)[B

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "DhwSocket"

    const-string v2, "recvLoop(), handleRecvData respData == null"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "DhwSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "recvLoop() Throwable t = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recvLoop() Throwable t = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->l:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    :try_start_2
    array-length v2, v0

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a(J)V

    const-string v2, "DhwSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleRecvData(), respData body len:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->g:Lcom/tencent/qqpim/sdk/libs/netengine/a/c;

    array-length v3, v0

    invoke-interface {v2, v3, v0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/c;->a(I[B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    const-string v2, "DhwSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "recv() handleData() Throwable"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :cond_6
    aget-object v5, v2, v1

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method

.method private h()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->h()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private j()Z
    .locals 3

    const-string v0, "DhwSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isStopped:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->f:Z

    return v0
.end method

.method private k()V
    .locals 4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->h:Ljava/util/concurrent/BlockingQueue;

    if-nez v1, :cond_1

    const-string v0, "DhwSocket"

    const-string v1, "prepareForClose mSendQueue = null"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "DhwSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "client prepareForClose size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->h:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x82

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->h:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Lcom/tencent/qqpim/sdk/libs/netengine/a/b;

    const-string v1, "RcvThread"

    invoke-direct {v0, p0, v1}, Lcom/tencent/qqpim/sdk/libs/netengine/a/b;-><init>(Lcom/tencent/qqpim/sdk/libs/netengine/a/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->i:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Ljava/lang/String;II)Z
    .locals 8

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    iput-wide v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->j:J

    iput-wide v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->k:J

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a(Z)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return v0

    :catch_0
    move-exception v2

    const-string v3, "DhwSocket"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "connect UnknownHostException e:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    if-gez p3, :cond_1

    const/16 p3, 0xf

    :cond_1
    mul-int/lit16 v3, p3, 0x3e8

    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    iput-object v4, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setKeepAlive(Z)V

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v4, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->g:Lcom/tencent/qqpim/sdk/libs/netengine/a/c;

    invoke-interface {v0, p1, v1, p2}, Lcom/tencent/qqpim/sdk/libs/netengine/a/c;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->b:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->c:Ljava/io/OutputStream;

    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->b:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->d:Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->c:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->e:Ljava/io/DataOutputStream;

    const-string v1, "DhwSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "connect ok dstName="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " dstPort="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " connTimeOut:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v3

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v4

    const-string v5, "DhwSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "socket buf sendBuf:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " recvBuff:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isTcpNodelay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isKeepAlive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "DhwSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "connect failed dstName="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " dstPort="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " connTimeOut:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public final b()V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->g:Lcom/tencent/qqpim/sdk/libs/netengine/a/c;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/c;->e()V

    move-object v0, v2

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->i()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "DhwSocket"

    const-string v1, "sendLoop socket not available"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->g:Lcom/tencent/qqpim/sdk/libs/netengine/a/c;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/c;->g()V

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->h:Ljava/util/concurrent/BlockingQueue;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->h:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v3, 0x3c

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/libs/a/i;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a(Ljava/net/Socket;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/libs/a/i;->a()Lcom/tencent/qqpim/sdk/libs/a/a;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_2
    if-nez v0, :cond_3

    :try_start_2
    const-string v0, "DhwSocket"

    const-string v3, "beginListenSendQueue task == null"

    invoke-static {v0, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DhwSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendLoop() InterruptedException e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendLoop() InterruptedException e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->l:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "beginListenSendQueue() t = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->l:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :try_start_3
    check-cast v0, Lcom/tencent/qqpim/sdk/libs/netengine/a/d;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/d;->a()[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_4
    array-length v3, v0

    add-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([BB)V

    array-length v4, v0

    invoke-static {v4}, Lcom/tencent/qqpim/sdk/utils/FormatTransfer;->int2BytesBigEndian(I)[B

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {v4, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    array-length v6, v0

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->e:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->e:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    array-length v4, v3

    int-to-long v4, v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

    iget-wide v6, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->j:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->j:J

    :cond_4
    iget-object v4, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->g:Lcom/tencent/qqpim/sdk/libs/netengine/a/c;

    invoke-interface {v4, v0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/c;->a([B)V

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->g:Lcom/tencent/qqpim/sdk/libs/netengine/a/c;

    array-length v3, v3

    array-length v5, v0

    invoke-interface {v4, v3, v5, v0, v1}, Lcom/tencent/qqpim/sdk/libs/netengine/a/c;->a(II[BLcom/tencent/qqpim/sdk/libs/a/i;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "DhwSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendLoop() IOException e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendLoop() IOException e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->l:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :cond_5
    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_2
.end method

.method public final c()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final d()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a(Z)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->h:Ljava/util/concurrent/BlockingQueue;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->h:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    :cond_0
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->h()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->k()V

    const-string v1, "DhwSocket"

    const-string v2, "request stopSocket !!!!"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->b:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->c:Ljava/io/OutputStream;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->c:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_2
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a(Ljava/net/Socket;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownOutput()V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->j:J

    return-wide v0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->k:J

    return-wide v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/a;->l:Ljava/lang/String;

    return-object v0
.end method
