.class public Lcom/tencent/qqpim/sdk/apps/securityprotect/a;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "SecurityProtectBaseProcessor"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected constructAuthorizationVerifyCodeData(Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;)[B
    .locals 6

    new-instance v0, LWUPSYNC/AccInfo;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->getAccType()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->getLoginedAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->getLoginKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->getLcString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->getLanguageID()S

    move-result v5

    invoke-direct/range {v0 .. v5}, LWUPSYNC/AccInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    new-instance v1, LWUPSYNC/VerifyCodeReq;

    invoke-direct {v1}, LWUPSYNC/VerifyCodeReq;-><init>()V

    iput-object v0, v1, LWUPSYNC/VerifyCodeReq;->userInfo:LWUPSYNC/AccInfo;

    const/4 v0, 0x2

    iput v0, v1, LWUPSYNC/VerifyCodeReq;->fun:I

    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    const-string v2, "wupsync"

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    const-string v2, "getVerifyCode"

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v2, "req"

    invoke-virtual {v0, v2, v1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->encrypt([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected constructVerifyCodeRequestData(Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;Ljava/lang/String;)[B
    .locals 7

    new-instance v6, LWUPSYNC/DeviceBindReq;

    invoke-direct {v6}, LWUPSYNC/DeviceBindReq;-><init>()V

    new-instance v0, LWUPSYNC/AccInfo;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->getAccType()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->getLoginedAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->getLoginKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->getLcString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->getLanguageID()S

    move-result v5

    invoke-direct/range {v0 .. v5}, LWUPSYNC/AccInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    iput-object v0, v6, LWUPSYNC/DeviceBindReq;->userInfo:LWUPSYNC/AccInfo;

    iput-object p2, v6, LWUPSYNC/DeviceBindReq;->code:Ljava/lang/String;

    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    const-string v1, "wupsync"

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    const-string v1, "deviceBind"

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v1, "req"

    invoke-virtual {v0, v1, v6}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->encrypt([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected handleAuthorizationVerifyCodeResp([B)I
    .locals 4

    new-instance v0, LWUPSYNC/VerifyCodeResp;

    invoke-direct {v0}, LWUPSYNC/VerifyCodeResp;-><init>()V

    invoke-static {p1, v0}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->getResp([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWUPSYNC/VerifyCodeResp;

    if-nez v0, :cond_0

    const/16 v0, 0x259

    :goto_0
    return v0

    :cond_0
    iget v0, v0, LWUPSYNC/VerifyCodeResp;->result:I

    const-string v1, "SecurityProtectBaseProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleAuthorizationVerifyCodeResp result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleVerifyCodeResp([BI)I
    .locals 2

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    new-instance v0, LWUPSYNC/DeviceBindResp;

    invoke-direct {v0}, LWUPSYNC/DeviceBindResp;-><init>()V

    invoke-static {p1, v0}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->getResp([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWUPSYNC/DeviceBindResp;

    if-nez v0, :cond_2

    const-string v0, "SecurityProtectBaseProcessor"

    const-string v1, "handleVerifyCodeResp deviceBindResp = null"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, -0x4

    goto :goto_0

    :cond_2
    iget p2, v0, LWUPSYNC/DeviceBindResp;->result:I

    if-eqz p2, :cond_0

    goto :goto_0
.end method
