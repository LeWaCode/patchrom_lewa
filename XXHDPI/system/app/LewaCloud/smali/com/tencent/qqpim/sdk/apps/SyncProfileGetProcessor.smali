.class public Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;


# static fields
.field private static volatile instance:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->instance:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constructSyncProfileGetReq(Ljava/lang/String;Ljava/lang/String;II)LQQPIM/SyncProfileGetReq;
    .locals 2

    new-instance v0, LQQPIM/SyncProfileGetReq;

    invoke-direct {v0}, LQQPIM/SyncProfileGetReq;-><init>()V

    iput-object p0, v0, LQQPIM/SyncProfileGetReq;->account:Ljava/lang/String;

    iput p2, v0, LQQPIM/SyncProfileGetReq;->dataType:I

    iput p3, v0, LQQPIM/SyncProfileGetReq;->getType:I

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getImei()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LQQPIM/SyncProfileGetReq;->imei:Ljava/lang/String;

    iput-object p1, v0, LQQPIM/SyncProfileGetReq;->loginkey:Ljava/lang/String;

    return-object v0
.end method

.method private static constructSyncProfileGetReqData(Ljava/lang/String;Ljava/lang/String;II)[B
    .locals 3

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->constructSyncProfileGetReq(Ljava/lang/String;Ljava/lang/String;II)LQQPIM/SyncProfileGetReq;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    const-string v2, "syncprofile"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    const-string v2, "SyncProfileGet"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v2, "req"

    invoke-virtual {v1, v2, v0}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->encrypt([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method private getLastSyncTime(Ljava/lang/String;Ljava/lang/String;II)J
    .locals 5

    const-wide/16 v1, 0x0

    invoke-static {p1, p2, p3, p4}, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->constructSyncProfileGetReqData(Ljava/lang/String;Ljava/lang/String;II)[B

    move-result-object v0

    if-nez v0, :cond_0

    move-wide v0, v1

    :goto_0
    return-wide v0

    :cond_0
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getPOST_URL_WUP_SERVER()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->sendHttpData([BLjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)[B

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move-wide v0, v1

    goto :goto_0

    :cond_2
    new-instance v3, LQQPIM/SyncProfileGetResp;

    invoke-direct {v3}, LQQPIM/SyncProfileGetResp;-><init>()V

    const-string v4, "resp"

    invoke-static {v0, v4, v3}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->getResp([BLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SyncProfileGetResp;

    if-nez v0, :cond_3

    move-wide v0, v1

    goto :goto_0

    :cond_3
    iget v3, v0, LQQPIM/SyncProfileGetResp;->result:I

    packed-switch v3, :pswitch_data_0

    move-wide v0, v1

    goto :goto_0

    :pswitch_0
    iget-wide v0, v0, LQQPIM/SyncProfileGetResp;->lastTime:J

    goto :goto_0

    :pswitch_1
    const-wide/16 v0, -0x2

    goto :goto_0

    :pswitch_2
    const-wide/16 v0, -0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSingleInstance()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->instance:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->instance:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->instance:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->instance:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncProfileGetProcessor;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCalllogLastBackupTime()J
    .locals 4

    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/a/a;->c()Lcom/tencent/qqpim/sdk/apps/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->getLastSyncTime(Ljava/lang/String;Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCalllogLastRestoreTime()J
    .locals 4

    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/a/a;->c()Lcom/tencent/qqpim/sdk/apps/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    const/4 v3, 0x2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->getLastSyncTime(Ljava/lang/String;Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContactLastBackupTime()J
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/a/a;->c()Lcom/tencent/qqpim/sdk/apps/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v2, v2}, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->getLastSyncTime(Ljava/lang/String;Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContactLastRestoreTime()J
    .locals 4

    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/a/a;->c()Lcom/tencent/qqpim/sdk/apps/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->getLastSyncTime(Ljava/lang/String;Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContactLastSyncTime()J
    .locals 4

    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/a/a;->c()Lcom/tencent/qqpim/sdk/apps/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->getLastSyncTime(Ljava/lang/String;Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSMSLastBackupTime()J
    .locals 4

    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/a/a;->c()Lcom/tencent/qqpim/sdk/apps/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->getLastSyncTime(Ljava/lang/String;Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSMSLastRestoreTime()J
    .locals 4

    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/a/a;->c()Lcom/tencent/qqpim/sdk/apps/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/tencent/qqpim/sdk/apps/SyncProfileGetProcessor;->getLastSyncTime(Ljava/lang/String;Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method
