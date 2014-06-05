.class public Lcom/tencent/qqpim/sdk/apps/GetCloudDataProcessor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IGetCloudDataProcessor;


# static fields
.field private static final DEFAULT_LIMIT:I = 0x3e8

.field private static final FUNCTION_GET_CLOUD_DATA:Ljava/lang/String; = "GetCloudData"

.field private static final REQ:Ljava/lang/String; = "req"

.field private static final RESP:Ljava/lang/String; = "resp"

.field private static final TAG:Ljava/lang/String; = "GetCloudDataProcessor"

.field private static final WUP_SYNC:Ljava/lang/String; = "wupsync"

.field private static volatile inf:Lcom/tencent/qqpim/sdk/apps/GetCloudDataProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/apps/GetCloudDataProcessor;->inf:Lcom/tencent/qqpim/sdk/apps/GetCloudDataProcessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructRequestData(LWUPSYNC/AccInfo;Ljava/lang/String;IIILjava/util/ArrayList;I)[B
    .locals 3

    new-instance v0, LWUPSYNC/GetCloudDataReq;

    invoke-direct {v0}, LWUPSYNC/GetCloudDataReq;-><init>()V

    iput-object p1, v0, LWUPSYNC/GetCloudDataReq;->userInfo:LWUPSYNC/AccInfo;

    iput-object p2, v0, LWUPSYNC/GetCloudDataReq;->imei:Ljava/lang/String;

    iput p3, v0, LWUPSYNC/GetCloudDataReq;->type:I

    iput p4, v0, LWUPSYNC/GetCloudDataReq;->MaxCount:I

    iput p5, v0, LWUPSYNC/GetCloudDataReq;->timeStamp:I

    iput-object p6, v0, LWUPSYNC/GetCloudDataReq;->luidList:Ljava/util/ArrayList;

    iput p7, v0, LWUPSYNC/GetCloudDataReq;->protocolVersion:I

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    const-string v2, "wupsync"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    const-string v2, "GetCloudData"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v2, "req"

    invoke-virtual {v1, v2, v0}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->encrypt([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/qqpim/sdk/apps/GetCloudDataProcessor;
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/sdk/apps/GetCloudDataProcessor;->inf:Lcom/tencent/qqpim/sdk/apps/GetCloudDataProcessor;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/qqpim/sdk/apps/GetCloudDataProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/apps/GetCloudDataProcessor;->inf:Lcom/tencent/qqpim/sdk/apps/GetCloudDataProcessor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/GetCloudDataProcessor;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/apps/GetCloudDataProcessor;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/sdk/apps/GetCloudDataProcessor;->inf:Lcom/tencent/qqpim/sdk/apps/GetCloudDataProcessor;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/apps/GetCloudDataProcessor;->inf:Lcom/tencent/qqpim/sdk/apps/GetCloudDataProcessor;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCloudData(LWUPSYNC/AccInfo;Ljava/lang/String;ILjava/util/ArrayList;)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;
    .locals 10

    const/16 v9, 0x25a

    new-instance v8, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    invoke-direct {v8}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;-><init>()V

    const/4 v0, 0x1

    iput v0, v8, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/a;->B:Lcom/tencent/qqpim/sdk/interfaces/a;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)I

    move-result v5

    const/16 v4, 0x3e8

    const/4 v7, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/tencent/qqpim/sdk/apps/GetCloudDataProcessor;->constructRequestData(LWUPSYNC/AccInfo;Ljava/lang/String;IIILjava/util/ArrayList;I)[B

    move-result-object v0

    const-string v1, "GetCloudDataProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCloudData():imei = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string v0, "GetCloudDataProcessor"

    const-string v1, "getCloudData null == data"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x259

    iput v0, v8, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    :goto_0
    return-object v8

    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getPOST_URL_WUP_SERVER()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->sendHttpData([BLjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "GetCloudDataProcessor"

    const-string v1, "getCloudData recv err"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput v9, v8, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    goto :goto_0

    :cond_2
    new-instance v1, LWUPSYNC/GetCloudDataResp;

    invoke-direct {v1}, LWUPSYNC/GetCloudDataResp;-><init>()V

    const-string v2, "resp"

    invoke-static {v0, v2, v1}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->getResp([BLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWUPSYNC/GetCloudDataResp;

    if-nez v0, :cond_3

    iput v9, v8, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    :goto_1
    const-string v0, "GetCloudDataProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mMsg.arg1 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v8, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v1, v0, LWUPSYNC/GetCloudDataResp;->result:I

    iput v1, v8, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    iget v1, v0, LWUPSYNC/GetCloudDataResp;->timeStamp:I

    iput v1, v8, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg2:I

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/a;->B:Lcom/tencent/qqpim/sdk/interfaces/a;

    iget v3, v0, LWUPSYNC/GetCloudDataResp;->timeStamp:I

    invoke-interface {v1, v2, v3}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->setIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)V

    iget-object v0, v0, LWUPSYNC/GetCloudDataResp;->contList:Ljava/util/ArrayList;

    iput-object v0, v8, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obj1:Ljava/lang/Object;

    goto :goto_1
.end method
