.class public Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;
.super Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtilBase;


# static fields
.field public static final HEADER_DEFLATE:I = 0x1

.field public static final HEADER_MARKETSOFT:I = 0x5

.field public static final HEADER_MICROMSG_DOWNLOAD:I = 0x4

.field public static final HEADER_MICROMSG_UPLOAD:I = 0x3

.field public static final HEADER_NORMAL:I = 0x0

.field public static final HEADER_SYNC:I = 0x6

.field public static final HEADER_XML:I = 0x2

.field private static NETWORK_CONNECT_REFUSE:Ljava/lang/String; = null

.field public static final NETWORK_CONNECT_REFUSE_CODE:I = -0x3e7

.field private static NETWORK_UNKNOW_HOST:Ljava/lang/String; = null

.field protected static final RETRY_COUNT:I = 0x3

.field protected static final RETRY_INTERVAL:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "QQPimHttpUtil"

.field private static isNetworkConnectRefuse:Z


# instance fields
.field private httpURLConnection:Ljava/net/HttpURLConnection;

.field private mCurrentConnectionType:I

.field private mUrl:Ljava/lang/String;

.field protected postSucceed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Connection refused"

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->NETWORK_CONNECT_REFUSE:Ljava/lang/String;

    const-string v0, "UnknownHostException"

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->NETWORK_UNKNOW_HOST:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->isNetworkConnectRefuse:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtilBase;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->mUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->postSucceed:Z

    iput v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->mCurrentConnectionType:I

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->setUrl(Ljava/lang/String;)V

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private getResponse(Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil$IHttpProgress;)[B
    .locals 9

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v2, "Transfer-Encoding"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->mDeflate:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_3

    const-string v2, "deflate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string v1, "QQPimHttpUtil"

    const-string v2, "getResponse begin inflate"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/zip/InflaterInputStream;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v0, 0x400

    :try_start_3
    new-array v6, v0, [B

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    const/4 v7, 0x0

    invoke-interface {p1, v0, v7, v5}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil$IHttpProgress;->onProgress(ZII)V

    move v0, v4

    :goto_2
    const/4 v4, 0x0

    const/16 v7, 0x400

    invoke-virtual {v2, v6, v4, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_4

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_0

    :cond_3
    :try_start_4
    const-string v1, "QQPimHttpUtil"

    const-string v2, "getResponse not inflate"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v2

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    const/4 v7, 0x0

    :try_start_5
    invoke-interface {p1, v7, v0, v5}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil$IHttpProgress;->onProgress(ZII)V

    :cond_5
    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v4}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    add-int/2addr v0, v4

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_3
    :try_start_6
    const-string v4, "QQPimHttpUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getResponse Exception= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_8
    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v3, v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_9
    move v0, v4

    goto/16 :goto_2
.end method

.method private final init()V
    .locals 1

    const-string v0, "qqppim android"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->mUserAgent:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/Apn;->init()V

    return-void
.end method

.method public static isNetworkConnectRefuse()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->isNetworkConnectRefuse:Z

    return v0
.end method

.method private isNetworkConnectRefuse(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->NETWORK_CONNECT_REFUSE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->NETWORK_UNKNOW_HOST:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sput-boolean v0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->isNetworkConnectRefuse:Z

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final post([BLcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil$IHttpProgress;)V
    .locals 6

    const/16 v0, 0x400

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_1

    const-string v0, "QQPimHttpUtil"

    const-string v1, "post(), null == httpURLConnection"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string v0, "QQPimHttpUtil"

    const-string v1, "post(), null == data"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->postSucceed:Z

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v4, "POST"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    if-eqz p2, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-interface {p2, v3, v4, v5}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil$IHttpProgress;->onProgress(ZII)V

    :cond_3
    :goto_1
    array-length v3, p1

    if-lt v2, v3, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->postSucceed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :cond_4
    add-int v3, v2, v0

    :try_start_1
    array-length v4, p1

    if-le v3, v4, :cond_5

    array-length v0, p1

    sub-int/2addr v0, v2

    :cond_5
    invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    add-int/2addr v2, v0

    if-eqz p2, :cond_3

    const/4 v3, 0x0

    array-length v4, p1

    invoke-interface {p2, v3, v2, v4}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil$IHttpProgress;->onProgress(ZII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "QQPimHttpUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "post():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_6
    throw v0
.end method

.method private setDeflateHeaderInfo()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v2, "deflate"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Charset"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Connection"

    const-string v2, "keep-alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setMarketSoftHeaderInfo()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Charset"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setMicroMsgAttDownloadHeaderInfo()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v2, "qzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Connection"

    const-string v2, "keep-alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setMicroMsgAttUploadHeaderInfo()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Connection"

    const-string v2, "keep-alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setNetworkConnectRefuse(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->isNetworkConnectRefuse:Z

    return-void
.end method

.method private setNormalHeaderInfo()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Connection"

    const-string v2, "keep-alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setSynHeaderInfo()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    const-string v2, "application/vnd.syncml+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Accept"

    const-string v2, "application/vnd.syncml+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Connection"

    const-string v2, "keep-alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setXmlHeaderInfo()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Charset"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    const-string v2, "application/vnd.syncml+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Connection"

    const-string v2, "keep-alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method

.method public get()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "QQPimHttpUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentConnectionType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->mCurrentConnectionType:I

    return v0
.end method

.method public getHttpURLConnection()Ljava/net/HttpURLConnection;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public getInputStreamResponse()Ljava/io/InputStream;
    .locals 4

    const-string v0, "QQPimHttpUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getInputStreamResponse(), encoding:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v3, "Transfer-Encoding"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "deflate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "QQPimHttpUtil"

    const-string v1, "begin inflate"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/zip/InflaterInputStream;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "QQPimHttpUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getResponse(), error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getResponse()[B
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->getResponse(Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil$IHttpProgress;)[B

    move-result-object v0

    return-object v0
.end method

.method public getResponseAndRetry()[B
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->setCancelling(Z)V

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->postSucceed:Z

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->getResponse()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->isCancelling()Z

    move-result v4

    if-nez v4, :cond_1

    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    :goto_2
    const/4 v4, 0x3

    if-lt v2, v4, :cond_0

    :cond_1
    :goto_3
    invoke-static {v3}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->setCancelling(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "QQPimHttpUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getResponseAndRetry(), "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "QQPimHttpUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getResponseAndRetry(), retry thread "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    move-object v0, v1

    move v2, v3

    goto :goto_2
.end method

.method public getResposeCode()I
    .locals 5

    const/16 v0, 0x190

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "QQPimHttpUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getResposeCode(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->isNetworkConnectRefuse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, -0x3e7

    goto :goto_0
.end method

.method public openConnection(I)V
    .locals 4

    const-string v0, "QQPimHttpUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openConnection = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->handleConnection(Ljava/net/HttpURLConnection;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->mDeflate:Z

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->setNormalHeaderInfo()V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->setCurrentConnectionType(I)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "QQPimHttpUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "openConnection(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->mDeflate:Z

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->setDeflateHeaderInfo()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->setXmlHeaderInfo()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->setMicroMsgAttUploadHeaderInfo()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->setMicroMsgAttDownloadHeaderInfo()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->setMarketSoftHeaderInfo()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->setSynHeaderInfo()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public post([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->post([BLcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil$IHttpProgress;)V

    return-void
.end method

.method public postAndRetry([B)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->postAndRetry([BLjava/util/concurrent/atomic/AtomicInteger;)I

    move-result v0

    return v0
.end method

.method public postAndRetry([BLjava/util/concurrent/atomic/AtomicInteger;)I
    .locals 8

    const/4 v7, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->setCancelling(Z)V

    move v0, v3

    move v1, v3

    :goto_0
    if-lt v1, v7, :cond_2

    :goto_1
    if-eqz p2, :cond_0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    :cond_0
    invoke-static {v3}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->setCancelling(Z)V

    :cond_1
    return v0

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->post([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->getResposeCode()I

    move-result v0

    const/16 v2, -0x3e7

    if-eq v0, v2, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    add-int/lit8 v2, v1, 0x1

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    if-ge v2, v7, :cond_3

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->isCancelling()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->close()V

    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->getCurrentConnectionType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->openConnection(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->isNetworkConnectRefuse(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v0, "QQPimHttpUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "postAndRetry(), post Exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v4, "QQPimHttpUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "postAndRetry(), retry thread "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v4, "QQPimHttpUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "postAndRetry(), "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_0

    :cond_3
    move v1, v2

    goto/16 :goto_1
.end method

.method public setCurrentConnectionType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->mCurrentConnectionType:I

    return-void
.end method

.method public setRequestParams(Ljava/util/Map;)V
    .locals 5

    const-string v0, ""

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->mUrl:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "&"

    const-string v1, "?"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->mUrl:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->mUrl:Ljava/lang/String;

    :cond_0
    const-string v0, "QQPimHttpUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setRequestParams(), url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_0
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/utils/net/QQPimHttpUtil;->mUrl:Ljava/lang/String;

    return-void
.end method
