.class public Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;
.super Lcom/tencent/qqpim/sdk/apps/securityprotect/a;

# interfaces
.implements Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISecurityProtectForOutsideLoginSDKProcessor;


# static fields
.field private static final TAG:Ljava/lang/String; = "SecurityProtectProcessor"


# instance fields
.field private mAccInfo:Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;

.field private mSecurityProtectProtocol:Lcom/tencent/qqpim/sdk/apps/securityprotect/b;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;)V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/securityprotect/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mSecurityProtectProtocol:Lcom/tencent/qqpim/sdk/apps/securityprotect/b;

    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/a/a;->c()Lcom/tencent/qqpim/sdk/apps/a/a;

    move-result-object v0

    new-instance v1, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mAccInfo:Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mAccInfo:Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->getAccountType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->setAccType(I)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mAccInfo:Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->setLoginedAccount(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mAccInfo:Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->setLoginKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mAccInfo:Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;

    const/16 v1, 0x804

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->setLanguage(S)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mAccInfo:Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;

    const-string v1, "E8BF561EF973E811"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;->setLcString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public accountSecurityBind$6b409fe6(Lcom/tencent/qqpim/sdk/b/a;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mSecurityProtectProtocol:Lcom/tencent/qqpim/sdk/apps/securityprotect/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/securityprotect/b;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/apps/securityprotect/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mSecurityProtectProtocol:Lcom/tencent/qqpim/sdk/apps/securityprotect/b;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mSecurityProtectProtocol:Lcom/tencent/qqpim/sdk/apps/securityprotect/b;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mAccInfo:Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/qqpim/sdk/apps/securityprotect/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;Lcom/tencent/qqpim/sdk/b/a;)I

    move-result v0

    return v0
.end method

.method public accountSecurityMdfLevel$6b409fe6(Lcom/tencent/qqpim/sdk/b/a;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mSecurityProtectProtocol:Lcom/tencent/qqpim/sdk/apps/securityprotect/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/securityprotect/b;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/apps/securityprotect/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mSecurityProtectProtocol:Lcom/tencent/qqpim/sdk/apps/securityprotect/b;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mSecurityProtectProtocol:Lcom/tencent/qqpim/sdk/apps/securityprotect/b;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mAccInfo:Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/qqpim/sdk/apps/securityprotect/b;->c(Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;Lcom/tencent/qqpim/sdk/b/a;)I

    move-result v0

    return v0
.end method

.method public accountSecurityQuery()Lcom/tencent/qqpim/sdk/object/a;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mSecurityProtectProtocol:Lcom/tencent/qqpim/sdk/apps/securityprotect/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/securityprotect/b;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/apps/securityprotect/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mSecurityProtectProtocol:Lcom/tencent/qqpim/sdk/apps/securityprotect/b;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mSecurityProtectProtocol:Lcom/tencent/qqpim/sdk/apps/securityprotect/b;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mAccInfo:Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/apps/securityprotect/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;)Lcom/tencent/qqpim/sdk/object/a;

    move-result-object v0

    return-object v0
.end method

.method public accountSecurityUnBind$6b409fe6(Lcom/tencent/qqpim/sdk/b/a;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mSecurityProtectProtocol:Lcom/tencent/qqpim/sdk/apps/securityprotect/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/securityprotect/b;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/apps/securityprotect/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mSecurityProtectProtocol:Lcom/tencent/qqpim/sdk/apps/securityprotect/b;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mSecurityProtectProtocol:Lcom/tencent/qqpim/sdk/apps/securityprotect/b;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mAccInfo:Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/qqpim/sdk/apps/securityprotect/b;->b(Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;Lcom/tencent/qqpim/sdk/b/a;)I

    move-result v0

    return v0
.end method

.method public authorization(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mAccInfo:Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;

    invoke-virtual {p0, v0, p1}, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->constructVerifyCodeRequestData(Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SecurityProtectProcessor"

    const-string v1, "DeviceBindVerifyCode  requestData = null"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x259

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

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    const-string v0, "SecurityProtectProcessor"

    const-string v1, "DeviceBindVerifyCode sendHttpData retHttp not 200"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x25a

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->handleVerifyCodeResp([BI)I

    move-result v0

    goto :goto_0
.end method

.method public requestAuthorizationVerifyCode()I
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mAccInfo:Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->constructAuthorizationVerifyCodeData(Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "SecurityProtectProcessor"

    const-string v1, "requestAuthorizationVerifyCode requestData = null"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x259

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string v2, "SecurityProtectProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "InitProtocol requestAuthorizationVerifyCode exception e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

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

    const-string v0, "SecurityProtectProcessor"

    const-string v1, "requestAuthorizationVerifyCode sendHttpData retHttp not 200"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x25a

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->handleAuthorizationVerifyCodeResp([B)I

    move-result v0

    goto :goto_1
.end method

.method public verifyCodeReq(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mSecurityProtectProtocol:Lcom/tencent/qqpim/sdk/apps/securityprotect/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/securityprotect/b;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/apps/securityprotect/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mSecurityProtectProtocol:Lcom/tencent/qqpim/sdk/apps/securityprotect/b;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mSecurityProtectProtocol:Lcom/tencent/qqpim/sdk/apps/securityprotect/b;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/securityprotect/SecurityProtectForOutsideLoginSDKProcessor;->mAccInfo:Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/qqpim/sdk/apps/securityprotect/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/AccInfoObject;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
