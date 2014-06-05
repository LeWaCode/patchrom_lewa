.class public Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_CONNECT_TIMEOUT:I = 0x3a98

.field private static final MAX_CONN_COUNT:I = 0x5

.field private static mSingleObj:Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

.field private static mSyncObj:Ljava/lang/Object;


# instance fields
.field private mCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->mSyncObj:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->mSingleObj:Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->mCount:I

    return-void
.end method

.method public static getSinglgInstance()Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;
    .locals 2

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->mSingleObj:Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->mSingleObj:Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->mSingleObj:Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->mSingleObj:Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->mSingleObj:Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized acquireHttpRequest(Ljava/lang/String;I[B)Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_0
    iget v1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    :try_start_1
    new-instance v1, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;

    invoke-direct {v1, p1, p2, p3}, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;-><init>(Ljava/lang/String;I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->mCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized acquireHttpRequest(Ljava/lang/String;I[BII)Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;
    .locals 7

    const/4 v6, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    move-object v0, v6

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    move-object v0, v6

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;-><init>(Ljava/lang/String;I[BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget v1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->mCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0
.end method

.method public declared-synchronized acquireHttpUtil(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_0
    iget v1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->mCount:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;

    invoke-direct {v0, p1}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public acquireSocketWithTimeOut(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    invoke-virtual {v0, v1, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    return-object v0
.end method

.method public declared-synchronized releaseHttpRequest(Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->mCount:I

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized releaseHttpUtil(Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
