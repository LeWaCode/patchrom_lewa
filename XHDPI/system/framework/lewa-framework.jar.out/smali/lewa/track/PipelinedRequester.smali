.class Llewa/track/PipelinedRequester;
.super Ljava/lang/Object;
.source "PipelinedRequester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/track/PipelinedRequester$Callbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Tracker"


# instance fields
.field callbacks:Llewa/track/PipelinedRequester$Callbacks;

.field canPipeline:Z

.field connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

.field host:Lorg/apache/http/HttpHost;

.field lastStatusCode:I

.field socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpHost;)V
    .locals 1
    .parameter "paramHttpHost"

    .prologue
    .line 28
    new-instance v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Llewa/track/PipelinedRequester;-><init>(Lorg/apache/http/HttpHost;Lorg/apache/http/conn/scheme/SocketFactory;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;Lorg/apache/http/conn/scheme/SocketFactory;)V
    .locals 1
    .parameter "paramHttpHost"
    .parameter "paramSocketFactory"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;-><init>()V

    iput-object v0, p0, Llewa/track/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/track/PipelinedRequester;->canPipeline:Z

    .line 33
    iput-object p1, p0, Llewa/track/PipelinedRequester;->host:Lorg/apache/http/HttpHost;

    .line 34
    iput-object p2, p0, Llewa/track/PipelinedRequester;->socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

    .line 35
    return-void
.end method

.method private closeConnection()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Llewa/track/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/track/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    iget-object v0, p0, Llewa/track/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;->close()V

    .line 120
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "Tracker"

    const-string v1, " close connection "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private maybeOpenConnection()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Llewa/track/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/track/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    :cond_0
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 107
    .local v6, localBasicHttpParams:Lorg/apache/http/params/BasicHttpParams;
    iget-object v0, p0, Llewa/track/PipelinedRequester;->socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

    invoke-interface {v0}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    .line 108
    .local v1, localSocket:Ljava/net/Socket;
    iget-object v0, p0, Llewa/track/PipelinedRequester;->socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

    iget-object v2, p0, Llewa/track/PipelinedRequester;->host:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Llewa/track/PipelinedRequester;->host:Lorg/apache/http/HttpHost;

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v6}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v1

    .line 111
    const/16 v0, 0x2000

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 112
    iget-object v0, p0, Llewa/track/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0, v1, v6}, Lorg/apache/http/impl/DefaultHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 114
    .end local v1           #localSocket:Ljava/net/Socket;
    .end local v6           #localBasicHttpParams:Lorg/apache/http/params/BasicHttpParams;
    :cond_1
    return-void
.end method


# virtual methods
.method public addRequest(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 1
    .parameter "paramHttpEntityEnclosingRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Llewa/track/PipelinedRequester;->maybeOpenConnection()V

    .line 45
    iget-object v0, p0, Llewa/track/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/DefaultHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 46
    iget-object v0, p0, Llewa/track/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/DefaultHttpClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 47
    return-void
.end method

.method public finishedCurrentRequests()V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "Tracker"

    const-string v1, " finish Current Requests "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    invoke-direct {p0}, Llewa/track/PipelinedRequester;->closeConnection()V

    .line 102
    return-void
.end method

.method public installCallbacks(Llewa/track/PipelinedRequester$Callbacks;)V
    .locals 0
    .parameter "paramCallbacks"

    .prologue
    .line 38
    iput-object p1, p0, Llewa/track/PipelinedRequester;->callbacks:Llewa/track/PipelinedRequester$Callbacks;

    .line 39
    return-void
.end method

.method public sendRequests()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 50
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 51
    const-string v7, "Tracker"

    const-string v8, " send Requests "

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    iget-object v7, p0, Llewa/track/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v7}, Lorg/apache/http/impl/DefaultHttpClientConnection;->flush()V

    .line 54
    iget-object v7, p0, Llewa/track/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v7}, Lorg/apache/http/impl/DefaultHttpClientConnection;->getMetrics()Lorg/apache/http/HttpConnectionMetrics;

    move-result-object v5

    .line 56
    .local v5, localHttpConnectionMetrics:Lorg/apache/http/HttpConnectionMetrics;
    :cond_1
    invoke-interface {v5}, Lorg/apache/http/HttpConnectionMetrics;->getResponseCount()J

    move-result-wide v7

    invoke-interface {v5}, Lorg/apache/http/HttpConnectionMetrics;->getRequestCount()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_7

    .line 58
    iget-object v7, p0, Llewa/track/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v7}, Lorg/apache/http/impl/DefaultHttpClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 60
    .local v6, localHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v7

    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-virtual {v7, v8}, Lorg/apache/http/ProtocolVersion;->greaterEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 62
    iget-object v7, p0, Llewa/track/PipelinedRequester;->callbacks:Llewa/track/PipelinedRequester$Callbacks;

    invoke-interface {v7, v11}, Llewa/track/PipelinedRequester$Callbacks;->pipelineModeChanged(Z)V

    .line 63
    iput-boolean v11, p0, Llewa/track/PipelinedRequester;->canPipeline:Z

    .line 65
    :cond_2
    const-string v7, "Connection"

    invoke-interface {v6, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 67
    .local v1, arrayOfHeader1:[Lorg/apache/http/Header;
    if-eqz v1, :cond_5

    .line 68
    move-object v0, v1

    .local v0, arr$:[Lorg/apache/http/Header;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v4, v0, v2

    .line 69
    .local v4, localHeader:Lorg/apache/http/Header;
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 70
    const-string v7, "Tracker"

    const-string v8, "Header is %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_3
    const-string v7, "close"

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 68
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_4
    iget-object v7, p0, Llewa/track/PipelinedRequester;->callbacks:Llewa/track/PipelinedRequester$Callbacks;

    invoke-interface {v7, v11}, Llewa/track/PipelinedRequester$Callbacks;->pipelineModeChanged(Z)V

    .line 75
    iput-boolean v11, p0, Llewa/track/PipelinedRequester;->canPipeline:Z

    goto :goto_1

    .line 77
    .end local v0           #arr$:[Lorg/apache/http/Header;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #localHeader:Lorg/apache/http/Header;
    :cond_5
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    iput v7, p0, Llewa/track/PipelinedRequester;->lastStatusCode:I

    .line 79
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 80
    const-string v7, "Tracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "statusCode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Llewa/track/PipelinedRequester;->lastStatusCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_6
    iget v7, p0, Llewa/track/PipelinedRequester;->lastStatusCode:I

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_8

    .line 83
    iget-object v7, p0, Llewa/track/PipelinedRequester;->callbacks:Llewa/track/PipelinedRequester$Callbacks;

    iget v8, p0, Llewa/track/PipelinedRequester;->lastStatusCode:I

    invoke-interface {v7, v8}, Llewa/track/PipelinedRequester$Callbacks;->serverError(I)V

    .line 84
    invoke-direct {p0}, Llewa/track/PipelinedRequester;->closeConnection()V

    .line 95
    .end local v1           #arrayOfHeader1:[Lorg/apache/http/Header;
    .end local v6           #localHttpResponse:Lorg/apache/http/HttpResponse;
    :cond_7
    :goto_2
    return-void

    .line 87
    .restart local v1       #arrayOfHeader1:[Lorg/apache/http/Header;
    .restart local v6       #localHttpResponse:Lorg/apache/http/HttpResponse;
    :cond_8
    iget-object v7, p0, Llewa/track/PipelinedRequester;->connection:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v7, v6}, Lorg/apache/http/impl/DefaultHttpClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    .line 88
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 89
    iget-object v7, p0, Llewa/track/PipelinedRequester;->callbacks:Llewa/track/PipelinedRequester$Callbacks;

    invoke-interface {v7}, Llewa/track/PipelinedRequester$Callbacks;->requestSent()V

    .line 90
    iget-boolean v7, p0, Llewa/track/PipelinedRequester;->canPipeline:Z

    if-nez v7, :cond_1

    .line 91
    invoke-direct {p0}, Llewa/track/PipelinedRequester;->closeConnection()V

    goto :goto_2
.end method
