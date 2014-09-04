.class public Lcom/qihoopp/framework/HttpLoadThread;
.super Ljava/lang/Thread;
.source "HttpLoadThread.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static connectTimeout:I


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isCancel:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHost:Ljava/lang/String;

.field private mPort:I

.field private mode:Lcom/qihoopp/framework/HttpRequestMode;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "HttpLoadThread"

    sput-object v0, Lcom/qihoopp/framework/HttpLoadThread;->TAG:Ljava/lang/String;

    .line 36
    const/16 v0, 0x7530

    sput v0, Lcom/qihoopp/framework/HttpLoadThread;->connectTimeout:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/qihoopp/framework/HttpRequestMode;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .parameter "context"
    .parameter "handler"
    .parameter "mode"
    .parameter "url"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/qihoopp/framework/HttpRequestMode;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p5, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/qihoopp/framework/HttpLoadThread;->mContext:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/qihoopp/framework/HttpLoadThread;->mode:Lcom/qihoopp/framework/HttpRequestMode;

    .line 56
    iput-object p4, p0, Lcom/qihoopp/framework/HttpLoadThread;->url:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/qihoopp/framework/HttpLoadThread;->params:Ljava/util/Map;

    .line 58
    iput-object p6, p0, Lcom/qihoopp/framework/HttpLoadThread;->headers:Ljava/util/Map;

    .line 59
    iput-object p2, p0, Lcom/qihoopp/framework/HttpLoadThread;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method private httpclientGet()V
    .locals 18

    .prologue
    .line 122
    const/4 v13, 0x0

    .line 123
    .local v13, strResponse:Ljava/lang/String;
    const/4 v12, 0x1

    .line 126
    .local v12, state:I
    :try_start_0
    new-instance v14, Lcom/qihoopp/framework/MyHttpClient;

    invoke-direct {v14}, Lcom/qihoopp/framework/MyHttpClient;-><init>()V

    sget v15, Lcom/qihoopp/framework/HttpLoadThread;->connectTimeout:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qihoopp/framework/HttpLoadThread;->mHost:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/qihoopp/framework/HttpLoadThread;->mPort:I

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Lcom/qihoopp/framework/MyHttpClient;->getNewHttpClient(ILjava/lang/String;I)Lorg/apache/http/client/HttpClient;

    move-result-object v8

    check-cast v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 129
    .local v8, httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-direct/range {p0 .. p0}, Lcom/qihoopp/framework/HttpLoadThread;->useProxy()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 130
    new-instance v6, Lorg/apache/http/HttpHost;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qihoopp/framework/HttpLoadThread;->mHost:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/qihoopp/framework/HttpLoadThread;->mPort:I

    invoke-direct {v6, v14, v15}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 132
    .local v6, host:Lorg/apache/http/HttpHost;
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v14

    const-string v15, "http.route.default-proxy"

    invoke-interface {v14, v15, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 137
    .end local v6           #host:Lorg/apache/http/HttpHost;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/qihoopp/framework/HttpLoadThread;->isCancel:Z

    if-eqz v14, :cond_3

    .line 138
    new-instance v14, Ljava/lang/InterruptedException;

    invoke-direct {v14}, Ljava/lang/InterruptedException;-><init>()V

    throw v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 185
    .end local v8           #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :catch_0
    move-exception v3

    .line 186
    .local v3, e:Ljava/lang/InterruptedException;
    :try_start_1
    sget-object v14, Lcom/qihoopp/framework/HttpLoadThread;->TAG:Ljava/lang/String;

    const-string v15, "\u53d6\u6d88\u7ebf\u7a0b"

    invoke-static {v14, v15}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    .end local v3           #e:Ljava/lang/InterruptedException;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/qihoopp/framework/HttpLoadThread;->isCancel:Z

    if-eqz v14, :cond_2

    const/4 v12, -0x1

    .end local v12           #state:I
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/qihoopp/framework/HttpLoadThread;->sendMessage(ILjava/lang/String;)V

    .line 210
    return-void

    .line 142
    .restart local v8       #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v12       #state:I
    :cond_3
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qihoopp/framework/HttpLoadThread;->url:Ljava/lang/String;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, buf:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 145
    .local v5, entrys:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qihoopp/framework/HttpLoadThread;->params:Ljava/util/Map;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qihoopp/framework/HttpLoadThread;->params:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    .line 146
    const-string v14, "?"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qihoopp/framework/HttpLoadThread;->params:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 148
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 149
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_1

    .line 187
    .end local v1           #buf:Ljava/lang/StringBuilder;
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #entrys:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v8           #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v9           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v3

    .line 188
    .local v3, e:Ljava/net/UnknownHostException;
    const/4 v12, 0x5

    .line 189
    :try_start_3
    sget-object v14, Lcom/qihoopp/framework/HttpLoadThread;->TAG:Ljava/lang/String;

    const-string v15, "UnknownHostException"

    invoke-static {v14, v15, v3}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 205
    .end local v3           #e:Ljava/net/UnknownHostException;
    :catchall_0
    move-exception v14

    throw v14

    .line 154
    .restart local v1       #buf:Ljava/lang/StringBuilder;
    .restart local v5       #entrys:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v8       #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 157
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_5
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/qihoopp/framework/HttpLoadThread;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 159
    .local v7, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v14, "Content-Type"

    const-string v15, "application/x-www-form-urlencoded"

    invoke-virtual {v7, v14, v15}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v14, "Charset"

    const-string v15, "UTF-8"

    invoke-virtual {v7, v14, v15}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v8, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 165
    .local v10, response:Lorg/apache/http/HttpResponse;
    if-eqz v10, :cond_1

    .line 166
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 168
    .local v11, st:I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/qihoopp/framework/HttpLoadThread;->isCancel:Z

    if-eqz v14, :cond_6

    .line 169
    new-instance v14, Ljava/lang/InterruptedException;

    invoke-direct {v14}, Ljava/lang/InterruptedException;-><init>()V

    throw v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 190
    .end local v1           #buf:Ljava/lang/StringBuilder;
    .end local v5           #entrys:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v7           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v8           #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v10           #response:Lorg/apache/http/HttpResponse;
    .end local v11           #st:I
    :catch_2
    move-exception v3

    .line 191
    .local v3, e:Ljava/net/SocketException;
    const/4 v12, 0x5

    .line 192
    :try_start_5
    sget-object v14, Lcom/qihoopp/framework/HttpLoadThread;->TAG:Ljava/lang/String;

    const-string v15, "SocketException"

    invoke-static {v14, v15, v3}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 172
    .end local v3           #e:Ljava/net/SocketException;
    .restart local v1       #buf:Ljava/lang/StringBuilder;
    .restart local v5       #entrys:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v7       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v10       #response:Lorg/apache/http/HttpResponse;
    .restart local v11       #st:I
    :cond_6
    :try_start_6
    sget-object v14, Lcom/qihoopp/framework/HttpLoadThread;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "httpclient--get--StateCode="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/16 v14, 0xc8

    if-ne v11, v14, :cond_1

    .line 174
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 175
    .local v2, content:Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 176
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qihoopp/framework/HttpLoadThread;->read2String(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13

    .line 177
    sget-object v14, Lcom/qihoopp/framework/HttpLoadThread;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "httpclient--get--response:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 193
    .end local v1           #buf:Ljava/lang/StringBuilder;
    .end local v2           #content:Ljava/io/InputStream;
    .end local v5           #entrys:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v7           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v8           #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v10           #response:Lorg/apache/http/HttpResponse;
    .end local v11           #st:I
    :catch_3
    move-exception v3

    .line 194
    .local v3, e:Ljava/net/SocketTimeoutException;
    const/4 v12, 0x3

    .line 195
    :try_start_7
    sget-object v14, Lcom/qihoopp/framework/HttpLoadThread;->TAG:Ljava/lang/String;

    const-string v15, "SocketTimeoutException"

    invoke-static {v14, v15, v3}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 196
    .end local v3           #e:Ljava/net/SocketTimeoutException;
    :catch_4
    move-exception v3

    .line 197
    .local v3, e:Ljava/io/IOException;
    const/4 v12, 0x2

    .line 198
    sget-object v14, Lcom/qihoopp/framework/HttpLoadThread;->TAG:Ljava/lang/String;

    const-string v15, "IOException"

    invoke-static {v14, v15, v3}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 199
    .end local v3           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 200
    .local v3, e:Ljava/lang/NullPointerException;
    const/4 v12, 0x4

    .line 201
    sget-object v14, Lcom/qihoopp/framework/HttpLoadThread;->TAG:Ljava/lang/String;

    const-string v15, "NullPointerException"

    invoke-static {v14, v15, v3}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 202
    .end local v3           #e:Ljava/lang/NullPointerException;
    :catch_6
    move-exception v3

    .line 203
    .local v3, e:Ljava/lang/Exception;
    const/4 v12, 0x5

    .line 204
    sget-object v14, Lcom/qihoopp/framework/HttpLoadThread;->TAG:Ljava/lang/String;

    const-string v15, "Exception"

    invoke-static {v14, v15, v3}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method private httpclientPost()V
    .locals 21

    .prologue
    .line 216
    const/16 v16, 0x0

    .line 217
    .local v16, strResponse:Ljava/lang/String;
    const/4 v15, 0x1

    .line 220
    .local v15, state:I
    :try_start_0
    new-instance v17, Lcom/qihoopp/framework/MyHttpClient;

    invoke-direct/range {v17 .. v17}, Lcom/qihoopp/framework/MyHttpClient;-><init>()V

    sget v18, Lcom/qihoopp/framework/HttpLoadThread;->connectTimeout:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qihoopp/framework/HttpLoadThread;->mHost:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/qihoopp/framework/HttpLoadThread;->mPort:I

    move/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Lcom/qihoopp/framework/MyHttpClient;->getNewHttpClient(ILjava/lang/String;I)Lorg/apache/http/client/HttpClient;

    move-result-object v9

    check-cast v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 222
    .local v9, httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-direct/range {p0 .. p0}, Lcom/qihoopp/framework/HttpLoadThread;->useProxy()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 223
    new-instance v8, Lorg/apache/http/HttpHost;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qihoopp/framework/HttpLoadThread;->mHost:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/qihoopp/framework/HttpLoadThread;->mPort:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 225
    .local v8, host:Lorg/apache/http/HttpHost;
    invoke-virtual {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v17

    const-string v18, "http.route.default-proxy"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 229
    .end local v8           #host:Lorg/apache/http/HttpHost;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qihoopp/framework/HttpLoadThread;->isCancel:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 230
    new-instance v17, Ljava/lang/InterruptedException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/InterruptedException;-><init>()V

    throw v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 273
    .end local v9           #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :catch_0
    move-exception v4

    .line 274
    .local v4, e:Ljava/lang/InterruptedException;
    :try_start_1
    sget-object v17, Lcom/qihoopp/framework/HttpLoadThread;->TAG:Ljava/lang/String;

    const-string v18, "\u53d6\u6d88\u7ebf\u7a0b"

    invoke-static/range {v17 .. v18}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    .end local v4           #e:Ljava/lang/InterruptedException;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qihoopp/framework/HttpLoadThread;->isCancel:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    const/4 v15, -0x1

    .end local v15           #state:I
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/qihoopp/framework/HttpLoadThread;->sendMessage(ILjava/lang/String;)V

    .line 298
    return-void

    .line 233
    .restart local v9       #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v15       #state:I
    :cond_3
    :try_start_2
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qihoopp/framework/HttpLoadThread;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/qihoopp/framework/HttpLoadThread;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 235
    .local v12, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v17, "Content-Type"

    const-string v18, "application/x-www-form-urlencoded"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v17, "Charset"

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qihoopp/framework/HttpLoadThread;->params:Ljava/util/Map;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qihoopp/framework/HttpLoadThread;->params:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_5

    .line 240
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v11, paramList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qihoopp/framework/HttpLoadThread;->params:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 242
    .local v7, entrys:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 243
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_1

    .line 275
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #entrys:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v9           #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #paramList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v12           #post:Lorg/apache/http/client/methods/HttpPost;
    :catch_1
    move-exception v4

    .line 276
    .local v4, e:Ljava/net/UnknownHostException;
    const/4 v15, 0x5

    .line 277
    :try_start_3
    sget-object v17, Lcom/qihoopp/framework/HttpLoadThread;->TAG:Ljava/lang/String;

    const-string v18, "UnknownHostException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 293
    .end local v4           #e:Ljava/net/UnknownHostException;
    :catchall_0
    move-exception v17

    throw v17

    .line 247
    .restart local v7       #entrys:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v9       #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #paramList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .restart local v12       #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_4
    :try_start_4
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v17, "utf-8"

    move-object/from16 v0, v17

    invoke-direct {v5, v11, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 249
    .local v5, entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v12, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 251
    .end local v5           #entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v7           #entrys:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #paramList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_5
    invoke-virtual {v9, v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 253
    .local v13, response:Lorg/apache/http/HttpResponse;
    if-eqz v13, :cond_1

    .line 254
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 256
    .local v14, st:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qihoopp/framework/HttpLoadThread;->isCancel:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 257
    new-instance v17, Ljava/lang/InterruptedException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/InterruptedException;-><init>()V

    throw v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 278
    .end local v9           #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v12           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #st:I
    :catch_2
    move-exception v4

    .line 279
    .local v4, e:Ljava/net/SocketException;
    const/4 v15, 0x5

    .line 280
    :try_start_5
    sget-object v17, Lcom/qihoopp/framework/HttpLoadThread;->TAG:Ljava/lang/String;

    const-string v18, "SocketException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 260
    .end local v4           #e:Ljava/net/SocketException;
    .restart local v9       #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v12       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #st:I
    :cond_6
    :try_start_6
    sget-object v17, Lcom/qihoopp/framework/HttpLoadThread;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "httpclient--post--StateCode="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ne v14, v0, :cond_1

    .line 262
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 263
    .local v3, content:Ljava/io/InputStream;
    if-eqz v3, :cond_1

    .line 264
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/qihoopp/framework/HttpLoadThread;->read2String(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v16

    .line 265
    sget-object v17, Lcom/qihoopp/framework/HttpLoadThread;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "httpclient--post--response:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 281
    .end local v3           #content:Ljava/io/InputStream;
    .end local v9           #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v12           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #st:I
    :catch_3
    move-exception v4

    .line 282
    .local v4, e:Ljava/net/SocketTimeoutException;
    const/4 v15, 0x3

    .line 283
    :try_start_7
    sget-object v17, Lcom/qihoopp/framework/HttpLoadThread;->TAG:Ljava/lang/String;

    const-string v18, "SocketTimeoutException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 284
    .end local v4           #e:Ljava/net/SocketTimeoutException;
    :catch_4
    move-exception v4

    .line 285
    .local v4, e:Ljava/io/IOException;
    const/4 v15, 0x2

    .line 286
    sget-object v17, Lcom/qihoopp/framework/HttpLoadThread;->TAG:Ljava/lang/String;

    const-string v18, "IOException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 287
    .end local v4           #e:Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 288
    .local v4, e:Ljava/lang/NullPointerException;
    const/4 v15, 0x4

    .line 289
    sget-object v17, Lcom/qihoopp/framework/HttpLoadThread;->TAG:Ljava/lang/String;

    const-string v18, "NullPointerException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 290
    .end local v4           #e:Ljava/lang/NullPointerException;
    :catch_6
    move-exception v4

    .line 291
    .local v4, e:Ljava/lang/Exception;
    const/4 v15, 0x5

    .line 292
    sget-object v17, Lcom/qihoopp/framework/HttpLoadThread;->TAG:Ljava/lang/String;

    const-string v18, "Exception"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method private read2String(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 331
    .local v2, outSteam:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 332
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 333
    .local v1, len:I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 334
    iget-boolean v3, p0, Lcom/qihoopp/framework/HttpLoadThread;->isCancel:Z

    if-eqz v3, :cond_0

    .line 335
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 338
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 341
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 343
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method private sendMessage(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "json"

    .prologue
    .line 63
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 64
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "state"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    const-string v2, "json"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 68
    iget-object v2, p0, Lcom/qihoopp/framework/HttpLoadThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    return-void
.end method

.method private urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 301
    sget-object v5, Lcom/qihoopp/framework/HttpLoadThread;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uriEncode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v5, " "

    const-string v6, "%20"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 304
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 305
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 306
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 307
    .local v1, ch:C
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 309
    .local v0, bytes:[B
    if-eqz v0, :cond_0

    array-length v5, v0

    if-gtz v5, :cond_1

    .line 310
    :cond_0
    new-instance v5, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v5}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v5

    .line 311
    :cond_1
    array-length v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 312
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 305
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 315
    .local v4, tmp:Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 316
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 320
    .end local v0           #bytes:[B
    .end local v1           #ch:C
    .end local v4           #tmp:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private useProxy()Z
    .locals 6

    .prologue
    .line 85
    :try_start_0
    iget-object v3, p0, Lcom/qihoopp/framework/HttpLoadThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/qihoopp/framework/FrameworkUtil;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 86
    .local v2, ni:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 89
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, netType:Ljava/lang/String;
    const-string v3, "type"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ni.getType() ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v3, "cmwap"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "uniwap"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "3gwap"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    :cond_0
    const-string v3, "10.0.0.172"

    iput-object v3, p0, Lcom/qihoopp/framework/HttpLoadThread;->mHost:Ljava/lang/String;

    .line 94
    const/16 v3, 0x50

    iput v3, p0, Lcom/qihoopp/framework/HttpLoadThread;->mPort:I

    .line 99
    :cond_1
    :goto_0
    const-string v3, "wap"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 106
    .end local v1           #netType:Ljava/lang/String;
    .end local v2           #ni:Landroid/net/NetworkInfo;
    :goto_1
    return v3

    .line 95
    .restart local v1       #netType:Ljava/lang/String;
    .restart local v2       #ni:Landroid/net/NetworkInfo;
    :cond_2
    const-string v3, "ctwap"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    const-string v3, "10.0.0.200"

    iput-object v3, p0, Lcom/qihoopp/framework/HttpLoadThread;->mHost:Ljava/lang/String;

    .line 97
    const/16 v3, 0x50

    iput v3, p0, Lcom/qihoopp/framework/HttpLoadThread;->mPort:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    .end local v1           #netType:Ljava/lang/String;
    .end local v2           #ni:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/qihoopp/framework/HttpLoadThread;->TAG:Ljava/lang/String;

    const-string v4, "Exception"

    invoke-static {v3, v4, v0}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qihoopp/framework/HttpLoadThread;->isCancel:Z

    .line 75
    return-void
.end method

.method public clone()Lcom/qihoopp/framework/HttpLoadThread;
    .locals 7

    .prologue
    .line 78
    new-instance v0, Lcom/qihoopp/framework/HttpLoadThread;

    iget-object v1, p0, Lcom/qihoopp/framework/HttpLoadThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qihoopp/framework/HttpLoadThread;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/qihoopp/framework/HttpLoadThread;->mode:Lcom/qihoopp/framework/HttpRequestMode;

    iget-object v4, p0, Lcom/qihoopp/framework/HttpLoadThread;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/qihoopp/framework/HttpLoadThread;->params:Ljava/util/Map;

    iget-object v6, p0, Lcom/qihoopp/framework/HttpLoadThread;->headers:Ljava/util/Map;

    invoke-direct/range {v0 .. v6}, Lcom/qihoopp/framework/HttpLoadThread;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/qihoopp/framework/HttpRequestMode;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/qihoopp/framework/HttpLoadThread;->clone()Lcom/qihoopp/framework/HttpLoadThread;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/qihoopp/framework/HttpLoadThread;->mode:Lcom/qihoopp/framework/HttpRequestMode;

    sget-object v1, Lcom/qihoopp/framework/HttpRequestMode;->GET:Lcom/qihoopp/framework/HttpRequestMode;

    if-ne v0, v1, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/qihoopp/framework/HttpLoadThread;->httpclientGet()V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/qihoopp/framework/HttpLoadThread;->mode:Lcom/qihoopp/framework/HttpRequestMode;

    sget-object v1, Lcom/qihoopp/framework/HttpRequestMode;->POST:Lcom/qihoopp/framework/HttpRequestMode;

    if-ne v0, v1, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/qihoopp/framework/HttpLoadThread;->httpclientPost()V

    goto :goto_0
.end method
