.class public Lcom/tencent/qqpim/sdk/sync/sms/GetSmsConversationProtocol;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public constructSecurityQueryReqData(Ljava/lang/String;IIS)[B
    .locals 6

    new-instance v4, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;

    invoke-direct {v4}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;-><init>()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/a/a;->c()Lcom/tencent/qqpim/sdk/apps/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->getAccountType()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->setAccType(I)V

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->setLoginedAccount(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->setLoginKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getLCString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->setLcString(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/LocaleUtil;->getLanguageID()S

    move-result v0

    invoke-virtual {v4, v0}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->setLanguage(S)V

    new-instance v0, LWUPSYNC/AccInfo;

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->getAccType()I

    move-result v1

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->getLoginedAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->getLoginKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->getLcString()Ljava/lang/String;

    move-result-object v4

    move v5, p4

    invoke-direct/range {v0 .. v5}, LWUPSYNC/AccInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    new-instance v1, LWUPSYNC/GetSMSSummaryReq;

    invoke-direct {v1}, LWUPSYNC/GetSMSSummaryReq;-><init>()V

    iput-object v0, v1, LWUPSYNC/GetSMSSummaryReq;->userInfo:LWUPSYNC/AccInfo;

    iput-object p1, v1, LWUPSYNC/GetSMSSummaryReq;->imei:Ljava/lang/String;

    iput p2, v1, LWUPSYNC/GetSMSSummaryReq;->maxCount:I

    iput p3, v1, LWUPSYNC/GetSMSSummaryReq;->timeStamp:I

    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    const-string v2, "wupsync"

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    const-string v2, "GetSMSSummary"

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v2, "req"

    invoke-virtual {v0, v2, v1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->encrypt([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSMSSummaryResp([B)LWUPSYNC/GetSMSSummaryResp;
    .locals 1

    new-instance v0, LWUPSYNC/GetSMSSummaryResp;

    invoke-direct {v0}, LWUPSYNC/GetSMSSummaryResp;-><init>()V

    invoke-static {p1, v0}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->getResp([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWUPSYNC/GetSMSSummaryResp;

    return-object v0
.end method
