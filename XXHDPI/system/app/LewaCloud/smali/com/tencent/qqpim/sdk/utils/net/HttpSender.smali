.class public Lcom/tencent/qqpim/sdk/utils/net/HttpSender;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a/b;


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpSender"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse(Ljava/lang/String;[B)[B
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->getSinglgInstance()Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->acquireHttpUtil(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->close()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->getSinglgInstance()Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->releaseHttpUtil(Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->openConnection(I)V

    invoke-virtual {v2, p2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->post([B)V

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->getResposeCode()I

    move-result v3

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->getResponse()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    const/16 v4, 0xc8

    if-eq v4, v3, :cond_3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->close()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->getSinglgInstance()Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->releaseHttpUtil(Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_2
    const-string v3, "HttpSender"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getRomteInfo(), "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->close()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->getSinglgInstance()Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->releaseHttpUtil(Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->close()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->getSinglgInstance()Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->releaseHttpUtil(Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;)V

    :cond_2
    throw v0

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->close()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->getSinglgInstance()Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->releaseHttpUtil(Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;)V

    :cond_4
    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public sendHttpData([BLjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)[B
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->sendHttpData([BLjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)[B

    move-result-object v0

    return-object v0
.end method
