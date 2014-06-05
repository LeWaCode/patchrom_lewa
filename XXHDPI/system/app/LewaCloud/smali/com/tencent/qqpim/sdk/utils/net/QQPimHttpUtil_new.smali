.class public Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;
.super Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtilBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "QQPimHttpUtil_new"

.field private static mSingleInstance:Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;->mSingleInstance:Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtilBase;-><init>()V

    const-string v0, "qqppim android"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;->mSingleInstance:Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;

    return-object v0
.end method

.method private final init()V
    .locals 0

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/Apn;->init()V

    return-void
.end method

.method private setNormalHeaderInfo(Ljava/net/HttpURLConnection;)V
    .locals 2

    const-string v0, "User-Agent"

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "application/octet-stream"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v1, "keep-alive"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setSynHeaderInfo(Ljava/net/HttpURLConnection;)V
    .locals 2

    const-string v0, "User-Agent"

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "application/vnd.syncml+wbxml"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v1, "application/vnd.syncml+wbxml"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v1, "keep-alive"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close(Ljava/net/HttpURLConnection;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public doConnection(Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;Lcom/tencent/qqpim/sdk/utils/net/HttpResponse;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/Apn;->init()V

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;->openConnection(Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;Lcom/tencent/qqpim/sdk/utils/net/HttpResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->isCanConnect()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public openConnection(Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;Lcom/tencent/qqpim/sdk/utils/net/HttpResponse;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "QQPimHttpUtil_new"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "openConnection = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->getCurrentConnectionType()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;->handleConnection(Ljava/net/HttpURLConnection;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;->mDeflate:Z

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->getCurrentConnectionType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;->setNormalHeaderInfo(Ljava/net/HttpURLConnection;)V

    :goto_0
    const-string v0, "QQPimHttpUtil_new"

    const-string v4, "openConnection end ------------------------"

    invoke-static {v0, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "QQPimHttpUtil_new"

    const-string v4, "post(), start post"

    invoke-static {v0, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v0, "POST"

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget v0, p1, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mPostDataLength:I

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v0, "QQPimHttpUtil_new"

    const-string v4, "post(), getOutputStream"

    invoke-static {v0, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v6

    :try_start_2
    const-string v0, "QQPimHttpUtil_new"

    const-string v4, "post(), getOutputStream endddd----"

    invoke-static {v0, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x400

    const-string v4, "QQPimHttpUtil_new"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "post(), begin while httpRequest.mPostDataLength="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p1, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mPostDataLength:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget v4, p1, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mPostDataLength:I

    if-lt v3, v4, :cond_4

    const-string v3, "QQPimHttpUtil_new"

    const-string v4, "post(), end post"

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, p2, Lcom/tencent/qqpim/sdk/utils/net/HttpResponse;->mHttpResponseCode:I

    const-string v4, "QQPimHttpUtil_new"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "HttpResponseCode:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_6

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/tencent/qqpim/sdk/utils/net/HttpResponse;->mResponseBody:[B

    new-instance v0, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HttpResponseCode:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    :catch_0
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v6

    :goto_2
    :try_start_3
    const-string v6, "QQPimHttpUtil_new"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SocketTimeoutException, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    :goto_3
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_3
    invoke-virtual {p0, v1}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;->close(Ljava/net/HttpURLConnection;)V

    throw v0

    :pswitch_0
    :try_start_4
    invoke-direct {p0, v1}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;->setSynHeaderInfo(Ljava/net/HttpURLConnection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    goto :goto_2

    :cond_4
    add-int v4, v3, v0

    :try_start_5
    iget v5, p1, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mPostDataLength:I

    if-le v4, v5, :cond_5

    iget v0, p1, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mPostDataLength:I

    sub-int/2addr v0, v3

    :cond_5
    iget-object v4, p1, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mPostData:[B

    iget v5, p1, Lcom/tencent/qqpim/sdk/utils/net/HttpRequest;->mPostDataStart:I

    add-int/2addr v5, v3

    invoke-virtual {v6, v4, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    add-int/2addr v3, v0

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v4, "QQPimHttpUtil_new"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "postAndRetry(), doSendHttpData currentThread="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v3, "QQPimHttpUtil_new"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getResponse(), encoding:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Transfer-Encoding"

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    const-string v3, "Transfer-Encoding"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;->mDeflate:Z

    if-nez v4, :cond_8

    if-eqz v3, :cond_c

    const-string v4, "deflate"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_8
    const-string v3, "QQPimHttpUtil_new"

    const-string v4, "getResponse begin inflate"

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/zip/InflaterInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :goto_4
    :try_start_6
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :try_start_7
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    :try_start_8
    new-array v2, v0, [B

    :goto_5
    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_d

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p2, Lcom/tencent/qqpim/sdk/utils/net/HttpResponse;->mResponseBody:[B

    iget-object v0, p2, Lcom/tencent/qqpim/sdk/utils/net/HttpResponse;->mResponseBody:[B

    array-length v0, v0

    if-ge v0, v7, :cond_9

    const-string v0, "QQPimHttpUtil_new"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "the packager :length:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p2, Lcom/tencent/qqpim/sdk/utils/net/HttpResponse;->mResponseBody:[B

    array-length v8, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ",total:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v0, "QQPimHttpUtil_new"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "getResponse end :length:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p2, Lcom/tencent/qqpim/sdk/utils/net/HttpResponse;->mResponseBody:[B

    array-length v7, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_b
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {p0, v1}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil_new;->close(Ljava/net/HttpURLConnection;)V

    return-void

    :cond_c
    :try_start_9
    const-string v3, "QQPimHttpUtil_new"

    const-string v4, "getResponse not inflate"

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    move-result-object v5

    goto :goto_4

    :cond_d
    const/4 v9, 0x0

    :try_start_a
    invoke-virtual {v3, v2, v9, v8}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_2

    :catch_3
    move-exception v0

    move-object v1, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    :goto_6
    :try_start_b
    const-string v3, "QQPimHttpUtil_new"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "IOException, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto/16 :goto_3

    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    :goto_7
    const-string v3, "QQPimHttpUtil_new"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    goto/16 :goto_3

    :catchall_4
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    goto/16 :goto_3

    :catchall_5
    move-exception v0

    move-object v4, v2

    goto/16 :goto_3

    :catchall_6
    move-exception v0

    move-object v2, v3

    goto/16 :goto_3

    :catch_5
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    goto :goto_7

    :catch_6
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    goto :goto_7

    :catch_7
    move-exception v0

    move-object v4, v2

    goto :goto_7

    :catch_8
    move-exception v0

    goto :goto_7

    :catch_9
    move-exception v0

    move-object v2, v3

    goto :goto_7

    :catch_a
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    goto :goto_6

    :catch_b
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    goto :goto_6

    :catch_c
    move-exception v0

    move-object v4, v2

    goto :goto_6

    :catch_d
    move-exception v0

    goto :goto_6

    :catch_e
    move-exception v0

    move-object v2, v3

    goto :goto_6

    :catch_f
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    goto/16 :goto_2

    :catch_10
    move-exception v0

    move-object v3, v2

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_2

    :catch_11
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
