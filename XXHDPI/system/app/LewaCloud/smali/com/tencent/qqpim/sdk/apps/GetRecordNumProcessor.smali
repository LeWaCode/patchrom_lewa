.class public Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;
.super Ljava/lang/Object;


# static fields
.field private static final FUNCTION_GET_RECORD_NUM:Ljava/lang/String; = "GetRecordNum"

.field private static final FUNCTION_GET_SMS_NUM:Ljava/lang/String; = "GetSMSNum"

.field private static final REQ:Ljava/lang/String; = "req"

.field private static final RESP:Ljava/lang/String; = "resp"

.field private static final TAG:Ljava/lang/String; = "GetRecordNumProcessor"

.field private static final WUP_SYNC:Ljava/lang/String; = "wupsync"

.field private static mServerAddCount:I

.field private static mServerCallLogNum:I

.field private static mServerContactNum:I

.field private static mServerDelCount:I

.field private static mServerMdfCount:I

.field private static mServerSmsNum:I

.field private static mSurrpotURL:Ljava/lang/String;


# instance fields
.field private mObserver:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IGetRecordNumObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mSurrpotURL:Ljava/lang/String;

    sput v1, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerContactNum:I

    sput v1, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerAddCount:I

    sput v1, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerMdfCount:I

    sput v1, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerDelCount:I

    sput v1, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerSmsNum:I

    sput v1, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerCallLogNum:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IGetRecordNumObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mObserver:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IGetRecordNumObserver;

    return-void
.end method

.method private constructReqDataForSmsNum(LWUPSYNC/AccInfo;Ljava/lang/String;Ljava/util/ArrayList;)[B
    .locals 3

    new-instance v0, LWUPSYNC/GetSMSNumReq;

    invoke-direct {v0}, LWUPSYNC/GetSMSNumReq;-><init>()V

    iput-object p1, v0, LWUPSYNC/GetSMSNumReq;->userInfo:LWUPSYNC/AccInfo;

    iput-object p2, v0, LWUPSYNC/GetSMSNumReq;->imei:Ljava/lang/String;

    iput-object p3, v0, LWUPSYNC/GetSMSNumReq;->needGetNumTimeList:Ljava/util/ArrayList;

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    const-string v2, "wupsync"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    const-string v2, "GetSMSNum"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v2, "req"

    invoke-virtual {v1, v2, v0}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->encrypt([B)[B

    move-result-object v0

    return-object v0
.end method

.method private constructRequestData(LWUPSYNC/AccInfo;Ljava/lang/String;Ljava/util/ArrayList;)[B
    .locals 3

    new-instance v0, LWUPSYNC/GetRecordNumReq;

    invoke-direct {v0}, LWUPSYNC/GetRecordNumReq;-><init>()V

    iput-object p1, v0, LWUPSYNC/GetRecordNumReq;->userInfo:LWUPSYNC/AccInfo;

    iput-object p2, v0, LWUPSYNC/GetRecordNumReq;->imei:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, v0, LWUPSYNC/GetRecordNumReq;->platform:I

    iput-object p3, v0, LWUPSYNC/GetRecordNumReq;->needGetNumList:Ljava/util/ArrayList;

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    const-string v2, "wupsync"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    const-string v2, "GetRecordNum"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v2, "req"

    invoke-virtual {v1, v2, v0}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->encrypt([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getServerAddCount()I
    .locals 1

    sget v0, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerAddCount:I

    return v0
.end method

.method public static getServerCallLogNum()I
    .locals 1

    sget v0, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerCallLogNum:I

    return v0
.end method

.method public static getServerContactNum()I
    .locals 1

    sget v0, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerContactNum:I

    return v0
.end method

.method public static getServerDelCount()I
    .locals 1

    sget v0, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerDelCount:I

    return v0
.end method

.method public static getServerMdfCount()I
    .locals 1

    sget v0, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerMdfCount:I

    return v0
.end method

.method public static getServerSmsNum()I
    .locals 1

    sget v0, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerSmsNum:I

    return v0
.end method

.method public static getSurrpotURL()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mSurrpotURL:Ljava/lang/String;

    return-object v0
.end method

.method public static setServerContactNum(I)V
    .locals 0

    sput p0, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerContactNum:I

    return-void
.end method


# virtual methods
.method public getRecordNumOfContact()V
    .locals 9

    const/16 v8, 0x25a

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getImei()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GetRecordNumProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRecordNumOfContact():imei = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v5, v1, Landroid/os/Message;->what:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/a/a;->c()Lcom/tencent/qqpim/sdk/apps/a/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->a()LWUPSYNC/AccInfo;

    move-result-object v3

    invoke-direct {p0, v3, v0, v2}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->constructRequestData(LWUPSYNC/AccInfo;Ljava/lang/String;Ljava/util/ArrayList;)[B

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "GetRecordNumProcessor"

    const-string v2, "getCloudData null == data"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x259

    iput v0, v1, Landroid/os/Message;->arg1:I

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mObserver:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IGetRecordNumObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mObserver:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IGetRecordNumObserver;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IGetRecordNumObserver;->getRecordNumFinished(Landroid/os/Message;)V

    :cond_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getPOST_URL_WUP_SERVER()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->sendHttpData([BLjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "GetRecordNumProcessor"

    const-string v2, "getCloudData recv err"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput v8, v1, Landroid/os/Message;->arg1:I

    goto :goto_0

    :cond_3
    new-instance v2, LWUPSYNC/GetRecordNumResp;

    invoke-direct {v2}, LWUPSYNC/GetRecordNumResp;-><init>()V

    const-string v3, "resp"

    invoke-static {v0, v3, v2}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->getResp([BLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWUPSYNC/GetRecordNumResp;

    if-nez v0, :cond_5

    iput v8, v1, Landroid/os/Message;->arg1:I

    :cond_4
    const-string v0, "GetRecordNumProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mMsg.arg1 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget v2, v0, LWUPSYNC/GetRecordNumResp;->result:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget-object v2, v0, LWUPSYNC/GetRecordNumResp;->supportURL:Ljava/lang/String;

    sput-object v2, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mSurrpotURL:Ljava/lang/String;

    iget-object v0, v0, LWUPSYNC/GetRecordNumResp;->serverStat:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    sput v4, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerContactNum:I

    sput v4, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerAddCount:I

    sput v4, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerMdfCount:I

    sput v4, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerDelCount:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWUPSYNC/DBStatus;

    iget v3, v0, LWUPSYNC/DBStatus;->dataType:I

    if-ne v3, v5, :cond_7

    iget v3, v0, LWUPSYNC/DBStatus;->totalCount:I

    sput v3, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerContactNum:I

    iget v3, v0, LWUPSYNC/DBStatus;->addCount:I

    sput v3, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerAddCount:I

    iget v3, v0, LWUPSYNC/DBStatus;->mdfCount:I

    sput v3, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerMdfCount:I

    iget v0, v0, LWUPSYNC/DBStatus;->delCount:I

    sput v0, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerDelCount:I

    goto :goto_1

    :cond_7
    iget v3, v0, LWUPSYNC/DBStatus;->dataType:I

    if-ne v3, v6, :cond_8

    iget v0, v0, LWUPSYNC/DBStatus;->totalCount:I

    sput v0, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerSmsNum:I

    goto :goto_1

    :cond_8
    iget v3, v0, LWUPSYNC/DBStatus;->dataType:I

    if-ne v3, v7, :cond_6

    iget v0, v0, LWUPSYNC/DBStatus;->totalCount:I

    sput v0, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mServerCallLogNum:I

    goto :goto_1
.end method

.method public getSmsRecordNum(Ljava/util/ArrayList;)V
    .locals 5

    const/16 v4, 0x25a

    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/a/a;->c()Lcom/tencent/qqpim/sdk/apps/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->a()LWUPSYNC/AccInfo;

    move-result-object v0

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->constructReqDataForSmsNum(LWUPSYNC/AccInfo;Ljava/lang/String;Ljava/util/ArrayList;)[B

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getPOST_URL_WUP_SERVER()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->sendHttpData([BLjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)[B

    move-result-object v0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_0

    if-nez v0, :cond_2

    :cond_0
    iput v4, v2, Landroid/os/Message;->arg1:I

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mObserver:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IGetRecordNumObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/GetRecordNumProcessor;->mObserver:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IGetRecordNumObserver;

    invoke-interface {v0, v2}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IGetRecordNumObserver;->getRecordNumFinished(Landroid/os/Message;)V

    :cond_1
    return-void

    :cond_2
    new-instance v1, LWUPSYNC/GetSMSNumResp;

    invoke-direct {v1}, LWUPSYNC/GetSMSNumResp;-><init>()V

    const-string v3, "resp"

    invoke-static {v0, v3, v1}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->getResp([BLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWUPSYNC/GetSMSNumResp;

    if-nez v0, :cond_3

    iput v4, v2, Landroid/os/Message;->arg1:I

    goto :goto_0

    :cond_3
    iget v1, v0, LWUPSYNC/GetSMSNumResp;->result:I

    iput v1, v2, Landroid/os/Message;->arg1:I

    iget-object v0, v0, LWUPSYNC/GetSMSNumResp;->SMSNumList:Ljava/util/ArrayList;

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method
