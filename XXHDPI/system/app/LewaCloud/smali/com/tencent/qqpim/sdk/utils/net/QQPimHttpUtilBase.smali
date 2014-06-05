.class Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtilBase;
.super Ljava/lang/Object;


# static fields
.field protected static final CONNECT_TIMEOUT:I = 0x3a98

.field protected static final READ_TIMEOUT:I = 0x3a98

.field protected static final READ_WRITE_SIZE:I = 0x400

.field protected static final SYNC_ACCEPT_TYPE:Ljava/lang/String; = "application/vnd.syncml+wbxml"

.field protected static final SYNC_CONTENT_TYPE:Ljava/lang/String; = "application/vnd.syncml+wbxml"

.field private static final TAG:Ljava/lang/String; = "QQPimHttpUtilBase"

.field protected static final WAIT_RESPONSE_TIMEOUT:I = 0xea60

.field protected static isCancelling:Z


# instance fields
.field protected mDeflate:Z

.field protected mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtilBase;->isCancelling:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtilBase;->mDeflate:Z

    return-void
.end method

.method private static doSendHttpData([BLandroid/os/Handler;Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;)[B
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtilBase;->doSendHttpData([BLandroid/os/Handler;Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method private static final doSendHttpData([BLandroid/os/Handler;Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)[B
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->getSinglgInstance()Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->acquireHttpUtil(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_0

    const/16 v1, 0x1002

    :try_start_1
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->close()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->getSinglgInstance()Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->releaseHttpUtil(Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_2
    invoke-virtual {v2, p3}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->openConnection(I)V

    if-eqz p5, :cond_5

    invoke-virtual {v2, p0, p5}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->postAndRetry([BLjava/util/concurrent/atomic/AtomicInteger;)I

    :goto_1
    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->getResposeCode()I

    move-result v1

    if-eqz p4, :cond_3

    invoke-virtual {p4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_3
    const/16 v3, 0xc8

    if-ne v3, v1, :cond_4

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->getResponseAndRetry()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :cond_4
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->close()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->getSinglgInstance()Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->releaseHttpUtil(Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;)V

    goto :goto_0

    :cond_5
    :try_start_3
    invoke-virtual {v2, p0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->postAndRetry([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    :try_start_4
    const-string v3, "QQPimHttpUtilBase"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doSendHttpData(), "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->close()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->getSinglgInstance()Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->releaseHttpUtil(Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->close()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->getSinglgInstance()Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimMMConnectionManager;->releaseHttpUtil(Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;)V

    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method

.method public static getCurrentNetWorkTypeStatic()Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;
    .locals 3

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_1

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;->UNAVAILABLE:Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;->WIFI:Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;->WAP:Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;->NET:Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;->UNKNOW:Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    goto :goto_0
.end method

.method protected static isCancelling()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtilBase;->isCancelling:Z

    return v0
.end method

.method public static isNetworkConnected()Z
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "QQPimHttpUtilBase"

    const-string v1, "isNetworkConnected():netinfo == null)"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public static sendHttpData([BLandroid/os/Handler;Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtilBase;->doSendHttpData([BLandroid/os/Handler;Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public static sendHttpData([BLjava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtilBase;->doSendHttpData([BLandroid/os/Handler;Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public static sendHttpData([BLjava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)[B
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtilBase;->doSendHttpData([BLandroid/os/Handler;Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public static sendHttpData([BLjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)[B
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1, p2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtilBase;->doSendHttpData([BLandroid/os/Handler;Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public static setCancelling(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtilBase;->isCancelling:Z

    return-void
.end method


# virtual methods
.method protected handleConnection(Ljava/net/HttpURLConnection;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 7

    const/16 v5, 0x3a98

    sget-boolean v0, Lcom/tencent/qqpim/sdk/utils/Apn;->M_USE_PROXY:Z

    if-eqz v0, :cond_2

    const-string v0, "QQPimHttpUtilBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "USE_PROXY : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_0
    const-string v2, "QQPimHttpUtilBase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Host : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-byte v2, Lcom/tencent/qqpim/sdk/utils/Apn;->M_PROXY_TYPE:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v0, "QQPimHttpUtilBase"

    const-string v1, "PROXY_TYPE : CT"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    sget-object v3, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    const/16 v4, 0x50

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {p2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :goto_1
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-object v0

    :cond_0
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_0

    :cond_1
    const-string v2, "QQPimHttpUtilBase"

    const-string v3, "PROXY_TYPE : CM"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/tencent/qqpim/sdk/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v2, "X-Online-Host"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_1
.end method
