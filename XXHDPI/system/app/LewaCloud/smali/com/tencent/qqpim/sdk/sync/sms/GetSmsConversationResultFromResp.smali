.class public Lcom/tencent/qqpim/sdk/sync/sms/GetSmsConversationResultFromResp;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "GetSmsConversationResultFromResp"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSmsConversation(Ljava/lang/String;IIS)Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Lcom/tencent/qqpim/sdk/sync/sms/GetSmsConversationProtocol;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/sync/sms/GetSmsConversationProtocol;-><init>()V

    :try_start_0
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/tencent/qqpim/sdk/sync/sms/GetSmsConversationProtocol;->constructSecurityQueryReqData(Ljava/lang/String;IIS)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;-><init>()V

    const/16 v1, 0x259

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->setResult(I)V

    :goto_1
    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "GetSmsConversationResultFromResp"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkLoginState constructCheckLoginStateData exception e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getPOST_URL_WUP_SERVER()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->sendHttpData([BLjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    new-instance v0, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;-><init>()V

    const/16 v1, 0x25a

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->setResult(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/sync/sms/GetSmsConversationProtocol;->getSMSSummaryResp([B)LWUPSYNC/GetSMSSummaryResp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/sms/GetSmsConversationResultFromResp;->handleSmsConversationResp(LWUPSYNC/GetSMSSummaryResp;)Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;

    move-result-object v0

    goto :goto_1
.end method

.method public handleSmsConversationResp(LWUPSYNC/GetSMSSummaryResp;)Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;-><init>()V

    const/16 v1, 0x259

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->setResult(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;-><init>()V

    iget v0, p1, LWUPSYNC/GetSMSSummaryResp;->result:I

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->setResult(I)V

    iget v0, p1, LWUPSYNC/GetSMSSummaryResp;->timeStamp:I

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->setTimeStamp(I)V

    iget v0, p1, LWUPSYNC/GetSMSSummaryResp;->totalSessionNum:I

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->setTotalSessionNum(I)V

    iget v0, p1, LWUPSYNC/GetSMSSummaryResp;->totalSMSNum:I

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->setTotalSMSNum(I)V

    iget-object v0, p1, LWUPSYNC/GetSMSSummaryResp;->SMSSummaryList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/object/sms/GetSmsConversationResult;->setReturnData(Ljava/util/List;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWUPSYNC/SMSSummary;

    new-instance v4, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;

    invoke-direct {v4}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;-><init>()V

    iget-object v5, v0, LWUPSYNC/SMSSummary;->name:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->name:Ljava/lang/String;

    iget-object v5, v0, LWUPSYNC/SMSSummary;->number:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->number:Ljava/lang/String;

    iget v5, v0, LWUPSYNC/SMSSummary;->num:I

    iput v5, v4, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->num:I

    iget-object v5, v0, LWUPSYNC/SMSSummary;->summary:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->summary:Ljava/lang/String;

    iget v0, v0, LWUPSYNC/SMSSummary;->sendTime:I

    iput v0, v4, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->sendTime:I

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
