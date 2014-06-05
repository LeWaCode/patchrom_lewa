.class public final Lcom/tencent/qqpim/sdk/apps/securityprotect/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)I
    .locals 4

    new-instance v0, LWUPSYNC/AccSecurityMdfResp;

    invoke-direct {v0}, LWUPSYNC/AccSecurityMdfResp;-><init>()V

    invoke-static {p0, v0}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->getResp([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWUPSYNC/AccSecurityMdfResp;

    if-nez v0, :cond_0

    const/16 v0, 0x259

    :goto_0
    return v0

    :cond_0
    iget v0, v0, LWUPSYNC/AccSecurityMdfResp;->result:I

    const-string v1, "SecurityProtectProtocol"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleCheckLoginStateResp result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;Lcom/tencent/qqpim/sdk/b/a;I)[B
    .locals 8

    const/4 v7, 0x0

    new-instance v6, LWUPSYNC/AccSecurityMdfReq;

    invoke-direct {v6}, LWUPSYNC/AccSecurityMdfReq;-><init>()V

    new-instance v0, LWUPSYNC/AccInfo;

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->getAccType()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->getLoginedAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->getLoginKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->getLcString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->getLanguageID()S

    move-result v5

    invoke-direct/range {v0 .. v5}, LWUPSYNC/AccInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    iput-object v0, v6, LWUPSYNC/AccSecurityMdfReq;->userInfo:LWUPSYNC/AccInfo;

    iput p2, v6, LWUPSYNC/AccSecurityMdfReq;->action:I

    iput-object v7, v6, LWUPSYNC/AccSecurityMdfReq;->bindMobile:Ljava/lang/String;

    iput-object v7, v6, LWUPSYNC/AccSecurityMdfReq;->verifyCode:Ljava/lang/String;

    const/4 v0, 0x0

    iput-byte v0, v6, LWUPSYNC/AccSecurityMdfReq;->secLevel:B

    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    const-string v1, "wupsync"

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    const-string v1, "accSecurityMdf"

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v1, "req"

    invoke-virtual {v0, v1, v6}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->encrypt([B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;Lcom/tencent/qqpim/sdk/b/a;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, p2, v1}, Lcom/tencent/qqpim/sdk/apps/securityprotect/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;Lcom/tencent/qqpim/sdk/b/a;I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/16 v0, 0x190

    :goto_1
    return v0

    :catch_0
    move-exception v1

    const-string v2, "SecurityProtectProtocol"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkLoginState constructCheckLoginStateData exception e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

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

    if-eq v1, v2, :cond_1

    const/16 v0, 0x25a

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/apps/securityprotect/b;->a([B)I

    move-result v0

    goto :goto_1
.end method

.method public final a(Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x0

    :try_start_0
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

    iput-object p2, v1, LWUPSYNC/VerifyCodeReq;->mobile:Ljava/lang/String;

    const/4 v0, 0x1

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/16 v0, 0x190

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string v1, "SecurityProtectProtocol"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkLoginState constructCheckLoginStateData exception e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0

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

    if-eq v1, v2, :cond_1

    const/16 v0, 0x25a

    goto :goto_1

    :cond_1
    new-instance v1, LWUPSYNC/VerifyCodeResp;

    invoke-direct {v1}, LWUPSYNC/VerifyCodeResp;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->getResp([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWUPSYNC/VerifyCodeResp;

    if-nez v0, :cond_2

    const/16 v0, 0x259

    goto :goto_1

    :cond_2
    iget v0, v0, LWUPSYNC/VerifyCodeResp;->result:I

    goto :goto_1
.end method

.method public final a(Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;)Lcom/tencent/qqpim/sdk/object/a;
    .locals 8

    new-instance v6, Lcom/tencent/qqpim/sdk/object/a;

    invoke-direct {v6}, Lcom/tencent/qqpim/sdk/object/a;-><init>()V

    const/4 v7, 0x0

    :try_start_0
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

    new-instance v1, LWUPSYNC/AccSecurityQueryReq;

    invoke-direct {v1}, LWUPSYNC/AccSecurityQueryReq;-><init>()V

    iput-object v0, v1, LWUPSYNC/AccSecurityQueryReq;->userInfo:LWUPSYNC/AccInfo;

    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniPacket;-><init>()V

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    const-string v2, "wupsync"

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    const-string v2, "accSecurityQuery"

    invoke-virtual {v0, v2}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    const-string v2, "req"

    invoke-virtual {v0, v2, v1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->encrypt([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    move-object v0, v6

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SecurityProtectProtocol"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkLoginState constructCheckLoginStateData exception e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    goto :goto_0

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

    if-eq v1, v2, :cond_1

    move-object v0, v6

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/tencent/qqpim/sdk/object/a;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/object/a;-><init>()V

    new-instance v2, LWUPSYNC/AccSecurityQueryResp;

    invoke-direct {v2}, LWUPSYNC/AccSecurityQueryResp;-><init>()V

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/WupUtils;->getResp([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWUPSYNC/AccSecurityQueryResp;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget v2, v0, LWUPSYNC/AccSecurityQueryResp;->result:I

    iget-object v2, v0, LWUPSYNC/AccSecurityQueryResp;->bindMobile:Ljava/lang/String;

    iget-byte v2, v0, LWUPSYNC/AccSecurityQueryResp;->secLevel:B

    iget-object v0, v0, LWUPSYNC/AccSecurityQueryResp;->backupMobile:Ljava/lang/String;

    move-object v0, v1

    goto :goto_1
.end method

.method public final b(Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;Lcom/tencent/qqpim/sdk/b/a;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {p1, p2, v1}, Lcom/tencent/qqpim/sdk/apps/securityprotect/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;Lcom/tencent/qqpim/sdk/b/a;I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/16 v0, 0x190

    :goto_1
    return v0

    :catch_0
    move-exception v1

    const-string v2, "SecurityProtectProtocol"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkLoginState constructCheckLoginStateData exception e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

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

    if-eq v1, v2, :cond_1

    const/16 v0, 0x25a

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/apps/securityprotect/b;->a([B)I

    move-result v0

    goto :goto_1
.end method

.method public final c(Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;Lcom/tencent/qqpim/sdk/b/a;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_0
    invoke-static {p1, p2, v1}, Lcom/tencent/qqpim/sdk/apps/securityprotect/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;Lcom/tencent/qqpim/sdk/b/a;I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/16 v0, 0x190

    :goto_1
    return v0

    :catch_0
    move-exception v1

    const-string v2, "SecurityProtectProtocol"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkLoginState constructCheckLoginStateData exception e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

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

    if-eq v1, v2, :cond_1

    const/16 v0, 0x25a

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/apps/securityprotect/b;->a([B)I

    move-result v0

    goto :goto_1
.end method
