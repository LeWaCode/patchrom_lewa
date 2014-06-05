.class public Lcom/tencent/qqpim/sdk/utils/net/HttpDown;
.super Ljava/lang/Object;


# static fields
.field private static final EDisconnect:I = -0x1

.field private static final ENET:I = 0x4

.field private static final EPROXY:I = 0x3

.field private static final EWifi:I = 0x2


# instance fields
.field public mContext:Landroid/content/Context;

.field private mData:[B

.field private mHandler:Landroid/os/Handler;

.field private mHttpclient:Lorg/apache/http/client/HttpClient;

.field private mNetEngineObs:Lcom/tencent/qqpim/sdk/utils/net/INetEngineObserver;

.field private mThread:Ljava/lang/Thread;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/utils/net/INetEngineObserver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mNetEngineObs:Lcom/tencent/qqpim/sdk/utils/net/INetEngineObserver;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mThread:Ljava/lang/Thread;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mData:[B

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHttpclient:Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/utils/net/HttpDown$1;-><init>(Lcom/tencent/qqpim/sdk/utils/net/HttpDown;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mNetEngineObs:Lcom/tencent/qqpim/sdk/utils/net/INetEngineObserver;

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/qqpim/sdk/utils/net/HttpDown;)Lcom/tencent/qqpim/sdk/utils/net/INetEngineObserver;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mNetEngineObs:Lcom/tencent/qqpim/sdk/utils/net/INetEngineObserver;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/qqpim/sdk/utils/net/HttpDown;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tencent/qqpim/sdk/utils/net/HttpDown;)[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mData:[B

    return-object v0
.end method

.method static synthetic access$3(Lcom/tencent/qqpim/sdk/utils/net/HttpDown;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public binaryRequest(Ljava/lang/String;[B)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mData:[B

    new-instance v0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown$2;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/utils/net/HttpDown$2;-><init>(Lcom/tencent/qqpim/sdk/utils/net/HttpDown;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getNetworkInfo()I
    .locals 4

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public sendRequest(Lorg/apache/http/client/methods/HttpUriRequest;I)V
    .locals 12

    const/16 v2, 0xc8

    const/4 v10, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHttpclient:Lorg/apache/http/client/HttpClient;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHttpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v5, "http.socket.timeout"

    const/16 v6, 0x7d0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHttpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v5, "http.connection.timeout"

    const/16 v6, 0x3a98

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHttpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v5, "http.protocol.expect-continue"

    invoke-interface {v0, v5, v9}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    if-ne p2, v10, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v5

    if-eqz v0, :cond_0

    const/4 v6, -0x1

    if-eq v6, v5, :cond_0

    iget-object v6, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHttpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.route.default-proxy"

    new-instance v8, Lorg/apache/http/HttpHost;

    invoke-direct {v8, v0, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHttpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-ne v2, v0, :cond_1

    :try_start_1
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x5

    :cond_1
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v9, v9, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHttpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v9, v9, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHttpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v9, v9, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHttpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v9, v9, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHttpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_4
    iget-object v3, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v9, v9, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHttpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v0

    :catchall_1
    move-exception v2

    move-object v11, v2

    move v2, v0

    move-object v0, v11

    goto :goto_4

    :catchall_2
    move-exception v0

    move v2, v3

    goto :goto_4

    :catchall_3
    move-exception v0

    move v2, v4

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v11, v2

    move v2, v0

    move-object v0, v11

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v11, v2

    move v2, v0

    move-object v0, v11

    goto :goto_2

    :catch_5
    move-exception v2

    move-object v11, v2

    move v2, v0

    move-object v0, v11

    goto :goto_1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mContext:Landroid/content/Context;

    return-void
.end method

.method public stopNetwork()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHttpclient:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mHttpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mThread:Ljava/lang/Thread;

    :cond_1
    return-void
.end method
