.class public Lcom/lewa/bi/common/api/ApiServiceClient;
.super Ljava/lang/Object;
.source "ApiServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/bi/common/api/ApiServiceClient$GzipDecompressingEntity;
    }
.end annotation


# static fields
.field private static logger:Lcom/lewa/bi/common/util/Logger;


# instance fields
.field private final apiConfig:Lcom/lewa/bi/common/api/ApiConfig;

.field private appAgent:Ljava/lang/String;

.field private clientId:Lcom/lewa/bi/common/data/collect/ClientId;

.field private currentBaseUrl:Ljava/lang/String;

.field private gson:Lcom/lewa/gson/Gson;

.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/lewa/bi/common/api/ApiServiceClient;

    invoke-static {v0}, Lcom/lewa/bi/common/util/LoggerFactory;->getLogger(Ljava/lang/Object;)Lcom/lewa/bi/common/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/lewa/bi/common/api/ApiServiceClient;->logger:Lcom/lewa/bi/common/util/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/lewa/bi/common/api/ApiConfig;)V
    .locals 1
    .parameter "apiConfig"

    .prologue
    .line 89
    new-instance v0, Lcom/lewa/bi/common/gson/GsonFactory;

    invoke-direct {v0}, Lcom/lewa/bi/common/gson/GsonFactory;-><init>()V

    invoke-virtual {v0}, Lcom/lewa/bi/common/gson/GsonFactory;->getGson()Lcom/lewa/gson/Gson;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/lewa/bi/common/api/ApiServiceClient;-><init>(Lcom/lewa/gson/Gson;Lcom/lewa/bi/common/api/ApiConfig;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/lewa/gson/Gson;Lcom/lewa/bi/common/api/ApiConfig;)V
    .locals 1
    .parameter "gson"
    .parameter "apiConfig"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->gson:Lcom/lewa/gson/Gson;

    .line 94
    iput-object p2, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->apiConfig:Lcom/lewa/bi/common/api/ApiConfig;

    .line 95
    iget-object v0, p2, Lcom/lewa/bi/common/api/ApiConfig;->httpsUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p2, Lcom/lewa/bi/common/api/ApiConfig;->httpsUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->currentBaseUrl:Ljava/lang/String;

    .line 100
    :goto_0
    iget v0, p2, Lcom/lewa/bi/common/api/ApiConfig;->timeout:I

    invoke-direct {p0, v0}, Lcom/lewa/bi/common/api/ApiServiceClient;->init(I)V

    .line 101
    return-void

    .line 98
    :cond_0
    iget-object v0, p2, Lcom/lewa/bi/common/api/ApiConfig;->httpUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->currentBaseUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "httpBaseUrl"

    .prologue
    .line 85
    invoke-static {}, Lcom/lewa/bi/common/api/ApiConfig;->builder()Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->setHttpUrl(Ljava/lang/String;)Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->build()Lcom/lewa/bi/common/api/ApiConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lewa/bi/common/api/ApiServiceClient;-><init>(Lcom/lewa/bi/common/api/ApiConfig;)V

    .line 86
    return-void
.end method

.method private consume(Lorg/apache/http/HttpEntity;)V
    .locals 4
    .parameter "entity"

    .prologue
    .line 160
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const/4 v1, 0x0

    .line 163
    .local v1, instream:Ljava/io/InputStream;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    .end local v1           #instream:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 165
    .restart local v1       #instream:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/lewa/bi/common/api/ApiServiceClient;->logger:Lcom/lewa/bi/common/util/Logger;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lewa/bi/common/util/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 168
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/lewa/bi/common/api/ApiServiceClient;->logger:Lcom/lewa/bi/common/util/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lewa/bi/common/util/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createRequestEntity(Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .locals 2
    .parameter "requestStr"

    .prologue
    .line 244
    invoke-static {p1}, Lcom/lewa/bi/common/util/GzipUtil;->compress(Ljava/lang/String;)[B

    move-result-object v0

    .line 245
    .local v0, data:[B
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 246
    .local v1, entity:Lorg/apache/http/entity/ByteArrayEntity;
    return-object v1
.end method

.method private getClientVersionFromHeader(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 3
    .parameter "response"

    .prologue
    .line 254
    const-string v1, "version"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 255
    .local v0, header:Lorg/apache/http/Header;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private init(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/lewa/bi/common/api/ApiServiceClient;->initHttpClient(I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 105
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/lewa/bi/common/api/ApiServiceClient$1;

    invoke-direct {v1, p0}, Lcom/lewa/bi/common/api/ApiServiceClient$1;-><init>(Lcom/lewa/bi/common/api/ApiServiceClient;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 116
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/lewa/bi/common/api/ApiServiceClient$2;

    invoke-direct {v1, p0}, Lcom/lewa/bi/common/api/ApiServiceClient$2;-><init>(Lcom/lewa/bi/common/api/ApiServiceClient;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 134
    return-void
.end method

.method private initHttpClient(I)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 2
    .parameter "timeout"

    .prologue
    .line 280
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 281
    .local v0, mHttpParameters:Lorg/apache/http/params/BasicHttpParams;
    if-lez p1, :cond_0

    .line 282
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 283
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 285
    :cond_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method private postExecute(Lcom/lewa/bi/common/api/ApiResponse;)V
    .locals 3
    .parameter "apiResponse"

    .prologue
    .line 237
    instance-of v0, p1, Lcom/lewa/bi/common/api/collect/RegisterResponse;

    if-eqz v0, :cond_0

    .line 238
    check-cast p1, Lcom/lewa/bi/common/api/collect/RegisterResponse;

    .end local p1
    invoke-virtual {p1}, Lcom/lewa/bi/common/api/collect/RegisterResponse;->getClientId()Lcom/lewa/bi/common/data/collect/ClientId;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->clientId:Lcom/lewa/bi/common/data/collect/ClientId;

    .line 239
    sget-object v0, Lcom/lewa/bi/common/api/ApiServiceClient;->logger:Lcom/lewa/bi/common/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device registered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->clientId:Lcom/lewa/bi/common/data/collect/ClientId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lewa/bi/common/util/Logger;->info(Ljava/lang/String;)V

    .line 241
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lcom/lewa/bi/common/api/ApiRequest;)Lcom/lewa/bi/common/api/ApiResponse;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<REQ:",
            "Lcom/lewa/bi/common/api/ApiRequest;",
            "RES:",
            "Lcom/lewa/bi/common/api/ApiResponse;",
            ">(TREQ;)TRES;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lewa/bi/common/api/ApiException;
        }
    .end annotation

    .prologue
    .line 140
    .local p1, request:Lcom/lewa/bi/common/api/ApiRequest;,"TREQ;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lewa/bi/common/api/ApiServiceClient;->internalExecute(Lcom/lewa/bi/common/api/ApiRequest;)Lcom/lewa/bi/common/api/ApiResponse;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    return-object v1

    .line 141
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljavax/net/ssl/SSLException;
    sget-object v1, Lcom/lewa/bi/common/api/ApiServiceClient;->logger:Lcom/lewa/bi/common/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ssl exception, switch to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->apiConfig:Lcom/lewa/bi/common/api/ApiConfig;

    iget-object v3, v3, Lcom/lewa/bi/common/api/ApiConfig;->httpUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/lewa/bi/common/util/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    iget-object v1, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->apiConfig:Lcom/lewa/bi/common/api/ApiConfig;

    iget-object v1, v1, Lcom/lewa/bi/common/api/ApiConfig;->httpUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->currentBaseUrl:Ljava/lang/String;

    .line 145
    new-instance v1, Lcom/lewa/bi/common/api/ApiException;

    invoke-direct {v1, v0}, Lcom/lewa/bi/common/api/ApiException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 146
    .end local v0           #e:Ljavax/net/ssl/SSLException;
    :catch_1
    move-exception v0

    .line 147
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    new-instance v1, Lcom/lewa/bi/common/api/ApiException;

    invoke-direct {v1, v0}, Lcom/lewa/bi/common/api/ApiException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 148
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 149
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/lewa/bi/common/api/ApiException;

    invoke-direct {v1, v0}, Lcom/lewa/bi/common/api/ApiException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 150
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Lcom/lewa/bi/common/api/ApiException;

    if-eqz v1, :cond_0

    .line 152
    throw v0

    .line 154
    :cond_0
    new-instance v1, Lcom/lewa/bi/common/api/ApiException;

    invoke-direct {v1, v0}, Lcom/lewa/bi/common/api/ApiException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getAppAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->appAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Lcom/lewa/bi/common/data/collect/ClientId;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->clientId:Lcom/lewa/bi/common/data/collect/ClientId;

    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->currentBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 271
    iget-object v1, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->version:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->appAgent:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->appAgent:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, values:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    aget-object v1, v0, v1

    :goto_0
    iput-object v1, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->version:Ljava/lang/String;

    .line 276
    .end local v0           #values:[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->version:Ljava/lang/String;

    return-object v1

    .line 273
    .restart local v0       #values:[Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public internalExecute(Lcom/lewa/bi/common/api/ApiRequest;)Lcom/lewa/bi/common/api/ApiResponse;
    .locals 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<REQ:",
            "Lcom/lewa/bi/common/api/ApiRequest;",
            "RES:",
            "Lcom/lewa/bi/common/api/ApiResponse;",
            ">(TREQ;)TRES;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lcom/lewa/bi/common/api/ApiException;
        }
    .end annotation

    .prologue
    .line 176
    .local p1, request:Lcom/lewa/bi/common/api/ApiRequest;,"TREQ;"
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/lewa/bi/common/data/Validatable;

    if-eqz v12, :cond_0

    move-object/from16 v12, p1

    .line 177
    check-cast v12, Lcom/lewa/bi/common/data/Validatable;

    invoke-interface {v12}, Lcom/lewa/bi/common/data/Validatable;->validate()V

    .line 179
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/bi/common/api/ApiServiceClient;->clientId:Lcom/lewa/bi/common/data/collect/ClientId;

    if-eqz v12, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/lewa/bi/common/api/ApiRequest;->getClientId()Lcom/lewa/bi/common/data/collect/ClientId;

    move-result-object v12

    if-nez v12, :cond_1

    .line 180
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/bi/common/api/ApiServiceClient;->clientId:Lcom/lewa/bi/common/data/collect/ClientId;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/lewa/bi/common/api/ApiRequest;->setClientId(Lcom/lewa/bi/common/data/collect/ClientId;)V

    .line 182
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12}, Lcom/lewa/bi/common/api/ApiServiceMeta;->getApiServiceMeta(Ljava/lang/Class;)Lcom/lewa/bi/common/api/ApiServiceMeta;

    move-result-object v7

    .line 183
    .local v7, meta:Lcom/lewa/bi/common/api/ApiServiceMeta;
    if-nez v7, :cond_2

    .line 184
    new-instance v12, Lcom/lewa/bi/common/api/ApiException;

    sget-object v13, Lcom/lewa/bi/common/api/ReasonCode;->UNKNOWN:Lcom/lewa/bi/common/api/ReasonCode;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "request "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is not supported"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/lewa/bi/common/api/ApiException;-><init>(Lcom/lewa/bi/common/api/ReasonCode;Ljava/lang/String;)V

    throw v12

    .line 187
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/bi/common/api/ApiServiceClient;->currentBaseUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Lcom/lewa/bi/common/api/ApiServiceMeta;->getUri()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, apiUrl:Ljava/lang/String;
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v6, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 190
    .local v6, httpPost:Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/bi/common/api/ApiServiceClient;->gson:Lcom/lewa/gson/Gson;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/lewa/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 195
    .local v8, requestStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/bi/common/api/ApiServiceClient;->appAgent:Ljava/lang/String;

    if-eqz v12, :cond_3

    .line 196
    const-string v12, "User-Agent"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/bi/common/api/ApiServiceClient;->appAgent:Ljava/lang/String;

    invoke-virtual {v6, v12, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/lewa/bi/common/api/ApiRequest;->getClientId()Lcom/lewa/bi/common/data/collect/ClientId;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 199
    const-string v12, "SESSION"

    invoke-virtual/range {p1 .. p1}, Lcom/lewa/bi/common/api/ApiRequest;->getClientId()Lcom/lewa/bi/common/data/collect/ClientId;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lewa/bi/common/data/collect/ClientId;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_4
    sget-object v12, Lcom/lewa/bi/common/api/ApiServiceClient;->logger:Lcom/lewa/bi/common/util/Logger;

    invoke-virtual {v12}, Lcom/lewa/bi/common/util/Logger;->isInfoEnabled()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 203
    sget-object v12, Lcom/lewa/bi/common/api/ApiServiceClient;->logger:Lcom/lewa/bi/common/util/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "api: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Lcom/lewa/bi/common/api/ApiServiceMeta;->getUri()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " request: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/lewa/bi/common/util/Logger;->info(Ljava/lang/String;)V

    .line 205
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/lewa/bi/common/api/ApiServiceClient;->createRequestEntity(Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 207
    const-string v12, "Content-Type"

    const-string v13, "application/binary"

    invoke-virtual {v6, v12, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v12, "Accept-Encoding"

    const-string v13, "gzip"

    invoke-virtual {v6, v12, v13}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/bi/common/api/ApiServiceClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v12, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 211
    .local v9, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 212
    .local v4, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_6

    .line 215
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lewa/bi/common/api/ApiServiceClient;->consume(Lorg/apache/http/HttpEntity;)V

    .line 216
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "response is empty. status: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 218
    :cond_6
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    .line 219
    .local v11, status:Lorg/apache/http/StatusLine;
    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v10

    .line 220
    .local v10, responseStr:Ljava/lang/String;
    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    const/16 v13, 0xc8

    if-eq v12, v13, :cond_7

    .line 223
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/bi/common/api/ApiServiceClient;->gson:Lcom/lewa/gson/Gson;

    const-class v13, Lcom/lewa/bi/common/api/ApiException$ApiError;

    invoke-virtual {v12, v10, v13}, Lcom/lewa/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lewa/bi/common/api/ApiException$ApiError;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .local v5, error:Lcom/lewa/bi/common/api/ApiException$ApiError;
    :goto_0
    new-instance v12, Lcom/lewa/bi/common/api/ApiException;

    invoke-direct {v12, v5}, Lcom/lewa/bi/common/api/ApiException;-><init>(Lcom/lewa/bi/common/api/ApiException$ApiError;)V

    throw v12

    .line 224
    .end local v5           #error:Lcom/lewa/bi/common/api/ApiException$ApiError;
    :catch_0
    move-exception v3

    .line 225
    .local v3, e:Ljava/lang/RuntimeException;
    new-instance v5, Lcom/lewa/bi/common/api/ApiException$ApiError;

    sget-object v12, Lcom/lewa/bi/common/api/ReasonCode;->INTERNAL:Lcom/lewa/bi/common/api/ReasonCode;

    invoke-direct {v5, v12, v10}, Lcom/lewa/bi/common/api/ApiException$ApiError;-><init>(Lcom/lewa/bi/common/api/ReasonCode;Ljava/lang/String;)V

    .restart local v5       #error:Lcom/lewa/bi/common/api/ApiException$ApiError;
    goto :goto_0

    .line 229
    .end local v3           #e:Ljava/lang/RuntimeException;
    .end local v5           #error:Lcom/lewa/bi/common/api/ApiException$ApiError;
    :cond_7
    sget-object v12, Lcom/lewa/bi/common/api/ApiServiceClient;->logger:Lcom/lewa/bi/common/util/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "api: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Lcom/lewa/bi/common/api/ApiServiceMeta;->getUri()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " version:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/lewa/bi/common/api/ApiServiceClient;->getClientVersionFromHeader(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " response: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/lewa/bi/common/util/Logger;->info(Ljava/lang/String;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/bi/common/api/ApiServiceClient;->gson:Lcom/lewa/gson/Gson;

    invoke-virtual {v7}, Lcom/lewa/bi/common/api/ApiServiceMeta;->getResponseType()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Lcom/lewa/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewa/bi/common/api/ApiResponse;

    .line 232
    .local v1, apiResponse:Lcom/lewa/bi/common/api/ApiResponse;,"TRES;"
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/lewa/bi/common/api/ApiServiceClient;->postExecute(Lcom/lewa/bi/common/api/ApiResponse;)V

    .line 233
    return-object v1
.end method

.method public setAppAgent(Ljava/lang/String;)V
    .locals 0
    .parameter "user_agent"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->appAgent:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setAppAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "version"
    .parameter "osVersion"
    .parameter "hardwareType"

    .prologue
    .line 289
    const/16 v0, 0x2f

    invoke-static {v0}, Lcom/lewa/guava/base/Joiner;->on(C)Lcom/lewa/guava/base/Joiner;

    move-result-object v0

    const-string v1, "LEWA"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Lcom/lewa/guava/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->appAgent:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setClientId(Lcom/lewa/bi/common/data/collect/ClientId;)V
    .locals 0
    .parameter "clientId"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->clientId:Lcom/lewa/bi/common/data/collect/ClientId;

    .line 268
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->apiConfig:Lcom/lewa/bi/common/api/ApiConfig;

    invoke-virtual {v1}, Lcom/lewa/bi/common/api/ApiConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->apiConfig:Lcom/lewa/bi/common/api/ApiConfig;

    iget-object v1, v1, Lcom/lewa/bi/common/api/ApiConfig;->httpsUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 299
    const-string v1, "  current url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lewa/bi/common/api/ApiServiceClient;->currentBaseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
