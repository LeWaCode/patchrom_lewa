.class public Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;
.super Ljava/lang/Object;


# static fields
.field private static final FUNCTION_GET_USER_ID:Ljava/lang/String; = "GetUserIdentity"

.field private static final REQ:Ljava/lang/String; = "req"

.field private static final REQID_GetAccServerConfig:I = 0x15

.field private static final REQID_GetUserIdentity:I = 0x14

.field private static final RESP:Ljava/lang/String; = "resp"

.field private static final TAG:Ljava/lang/String; = "GetUserIdentityProcessor"

.field private static final WUP_SYNC:Ljava/lang/String; = "wupsync"

.field private static volatile instance:Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;


# instance fields
.field private mHasPimPwd:Z

.field private mIsDeivceLimit:Z

.field private mIsLoginKeyVaild:Z

.field private mNeedCheckPim:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mHasPimPwd:Z

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mNeedCheckPim:Z

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mIsDeivceLimit:Z

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mIsLoginKeyVaild:Z

    return-void
.end method

.method private constructRequestData(LWUPSYNC/AccInfo;LWUPSYNC/DevInf;)[B
    .locals 3

    new-instance v0, LWUPSYNC/GetUserIdentityReq;

    invoke-direct {v0}, LWUPSYNC/GetUserIdentityReq;-><init>()V

    iput-object p1, v0, LWUPSYNC/GetUserIdentityReq;->userInfo:LWUPSYNC/AccInfo;

    iput-object p2, v0, LWUPSYNC/GetUserIdentityReq;->devInfo:LWUPSYNC/DevInf;

    invoke-static {}, Lcom/tencent/qqpim/sdk/a/b;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LWUPSYNC/GetUserIdentityReq;->r1:Ljava/lang/String;

    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    const-string v2, "wupsync"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    const-string v2, "GetUserIdentity"

    invoke-virtual {v1, v2}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v2, "req"

    invoke-virtual {v1, v2, v0}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v0

    return-object v0
.end method

.method private constructTwoRequestData(LWUPSYNC/AccInfo;LWUPSYNC/DevInf;)[B
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->constructRequestData(LWUPSYNC/AccInfo;LWUPSYNC/DevInf;)[B

    move-result-object v0

    const-string v1, "wupsync"

    const/16 v2, 0x15

    iget-object v3, p2, LWUPSYNC/DevInf;->imsi:Ljava/lang/String;

    iget-short v4, p2, LWUPSYNC/DevInf;->nettype:S

    invoke-static {v1, v2, v3, v4, p1}, Lcom/tencent/qqpim/sdk/apps/SyncAcceSrvConfigProtocol;->constructRequestSyncAccSrvConfig(Ljava/lang/String;ILjava/lang/String;ILWUPSYNC/AccInfo;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->packRequests([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSingleInstance()Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->instance:Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->instance:Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->instance:Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->instance:Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleAccServerConfigResp(LWUPSYNC/GetAccServerConfigResp;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, LWUPSYNC/GetAccServerConfigResp;->result:I

    const-string v1, "GetUserIdentityProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleAccServerConfigResp ret:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    new-instance v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;-><init>()V

    iget-object v0, p1, LWUPSYNC/GetAccServerConfigResp;->accServerList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;->b()V

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWUPSYNC/IpAndPort;

    if-eqz v0, :cond_2

    iget-object v3, v0, LWUPSYNC/IpAndPort;->ip:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, LWUPSYNC/IpAndPort;->ip:Ljava/lang/String;

    iget v0, v0, LWUPSYNC/IpAndPort;->port:I

    invoke-virtual {v1, v3, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;->a(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private handleIdentityRespReturnInt(LWUPSYNC/GetUserIdentityResp;)I
    .locals 4

    if-nez p1, :cond_0

    const-string v0, "GetUserIdentityProcessor"

    const-string v1, "handleIdentityResp resp null"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, LWUPSYNC/GetUserIdentityResp;->r2:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/a/b;->a(Ljava/lang/String;)[B

    iget-object v0, p1, LWUPSYNC/GetUserIdentityResp;->t3:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    iget-boolean v0, p1, LWUPSYNC/GetUserIdentityResp;->hasPimPwd:Z

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mHasPimPwd:Z

    iget-boolean v0, p1, LWUPSYNC/GetUserIdentityResp;->needCheckPim:Z

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mNeedCheckPim:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mIsLoginKeyVaild:Z

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p1, LWUPSYNC/GetUserIdentityResp;->result:I

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, v0, Landroid/os/Message;->what:I

    if-nez v1, :cond_1

    invoke-static {}, Lcom/tencent/qqpim/sdk/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/wscl/TextUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x25a

    iput v1, v0, Landroid/os/Message;->what:I

    :cond_1
    const-string v1, "GetUserIdentityProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUserIdentity msg.what "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->handleMsgReturn(I)I

    move-result v0

    goto :goto_0
.end method

.method private final handleMsgReturn(I)I
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "GetUserIdentityProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleMsgReturn() msg.what = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mIsDeivceLimit:Z

    iput-boolean v1, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mIsLoginKeyVaild:Z

    goto :goto_0

    :sswitch_3
    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mIsLoginKeyVaild:Z

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    iput-boolean v1, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mIsDeivceLimit:Z

    move v0, v1

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x259 -> :sswitch_0
        0x25a -> :sswitch_1
    .end sparse-switch
.end method

.method private handleTwoRespReturnInt(Ljava/util/List;)I
    .locals 7

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "GetUserIdentityProcessor"

    const-string v1, "handleTwoResp(): packs empty"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->handleIdentityRespReturnInt(LWUPSYNC/GetUserIdentityResp;)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/jce/wup/UniPacket;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/qq/jce/wup/UniPacket;->getRequestId()I

    move-result v4

    const/16 v5, 0x14

    if-ne v5, v4, :cond_4

    :try_start_0
    const-string v4, "resp"

    new-instance v5, LWUPSYNC/GetUserIdentityResp;

    invoke-direct {v5}, LWUPSYNC/GetUserIdentityResp;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWUPSYNC/GetUserIdentityResp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "GetUserIdentityProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getResp(), "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/16 v5, 0x15

    if-ne v5, v4, :cond_2

    :try_start_1
    const-string v4, "resp"

    new-instance v5, LWUPSYNC/GetAccServerConfigResp;

    invoke-direct {v5}, LWUPSYNC/GetAccServerConfigResp;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWUPSYNC/GetAccServerConfigResp;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->handleAccServerConfigResp(LWUPSYNC/GetAccServerConfigResp;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v4, "GetUserIdentityProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getResp(), "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_2
.end method


# virtual methods
.method public getUserIdentity()I
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mIsLoginKeyVaild:Z

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mHasPimPwd:Z

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mNeedCheckPim:Z

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mIsDeivceLimit:Z

    new-instance v0, LWUPSYNC/DevInf;

    invoke-direct {v0}, LWUPSYNC/DevInf;-><init>()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getImei()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LWUPSYNC/DevInf;->imei:Ljava/lang/String;

    const-string v1, "GetUserIdentityProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUserIdentity():imei = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, LWUPSYNC/DevInf;->imei:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->getImsi()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LWUPSYNC/DevInf;->imsi:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->getManufaturer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LWUPSYNC/DevInf;->manufactor:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->getModel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LWUPSYNC/DevInf;->model:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->getSDKVersionStr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LWUPSYNC/DevInf;->system:Ljava/lang/String;

    const/16 v1, 0x23

    iput-short v1, v0, LWUPSYNC/DevInf;->sdkVersion:S

    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/a;->i()S

    move-result v1

    iput-short v1, v0, LWUPSYNC/DevInf;->nettype:S

    const/4 v1, 0x1

    iput-short v1, v0, LWUPSYNC/DevInf;->product:S

    const/4 v1, 0x2

    iput v1, v0, LWUPSYNC/DevInf;->platform:I

    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/a/a;->c()Lcom/tencent/qqpim/sdk/apps/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->a()LWUPSYNC/AccInfo;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->constructTwoRequestData(LWUPSYNC/AccInfo;LWUPSYNC/DevInf;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "GetUserIdentityProcessor"

    const-string v1, "getUserIdentity null == data"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x259

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->handleMsgReturn(I)I

    move-result v0

    :goto_0
    return v0

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
    const-string v0, "GetUserIdentityProcessor"

    const-string v1, "getUserIdentity recv err"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x25a

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->handleMsgReturn(I)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->upPackResponses([B)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->handleTwoRespReturnInt(Ljava/util/List;)I

    move-result v0

    goto :goto_0
.end method

.method public isDeivceLimit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mIsDeivceLimit:Z

    return v0
.end method

.method public isHasPimPwd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mHasPimPwd:Z

    return v0
.end method

.method public isLoginKeyVaild()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mIsLoginKeyVaild:Z

    return v0
.end method

.method public isNeedCheckPim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mNeedCheckPim:Z

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mHasPimPwd:Z

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mNeedCheckPim:Z

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mIsDeivceLimit:Z

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mIsLoginKeyVaild:Z

    return-void
.end method

.method public setDeviceLimit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mIsDeivceLimit:Z

    return-void
.end method

.method public setNeedCheckPim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/sdk/apps/GetUserIdentityProcessor;->mNeedCheckPim:Z

    return-void
.end method
