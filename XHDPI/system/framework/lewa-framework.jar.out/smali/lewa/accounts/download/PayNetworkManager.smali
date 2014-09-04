.class public Llewa/accounts/download/PayNetworkManager;
.super Ljava/lang/Object;
.source "PayNetworkManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkManager"


# instance fields
.field private mConnectTimeout:I

.field private mContext:Landroid/content/Context;

.field private mProxy:Ljava/net/Proxy;

.field private mReadTimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/16 v0, 0x7530

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Llewa/accounts/download/PayNetworkManager;->mConnectTimeout:I

    .line 41
    iput v0, p0, Llewa/accounts/download/PayNetworkManager;->mReadTimeout:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/accounts/download/PayNetworkManager;->mProxy:Ljava/net/Proxy;

    .line 49
    iput-object p1, p0, Llewa/accounts/download/PayNetworkManager;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Llewa/accounts/download/PayNetworkManager;->setDefaultHostnameVerifier()V

    .line 51
    return-void
.end method

.method private detectProxy()V
    .locals 7

    .prologue
    .line 58
    iget-object v5, p0, Llewa/accounts/download/PayNetworkManager;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 60
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 61
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_0

    .line 63
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, proxyHost:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .line 65
    .local v2, port:I
    if-eqz v3, :cond_0

    .line 66
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v3, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 68
    .local v4, sa:Ljava/net/InetSocketAddress;
    new-instance v5, Ljava/net/Proxy;

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v5, v6, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v5, p0, Llewa/accounts/download/PayNetworkManager;->mProxy:Ljava/net/Proxy;

    .line 71
    .end local v2           #port:I
    .end local v3           #proxyHost:Ljava/lang/String;
    .end local v4           #sa:Ljava/net/InetSocketAddress;
    :cond_0
    return-void
.end method

.method private setDefaultHostnameVerifier()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Llewa/accounts/download/PayNetworkManager$1;

    invoke-direct {v0, p0}, Llewa/accounts/download/PayNetworkManager$1;-><init>(Llewa/accounts/download/PayNetworkManager;)V

    .line 84
    .local v0, hv:Ljavax/net/ssl/HostnameVerifier;
    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 85
    return-void
.end method


# virtual methods
.method public sendAndWaitResponse(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter
    .parameter "strUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Llewa/accounts/download/PayNetworkManager;->detectProxy()V

    .line 100
    const/4 v10, 0x0

    .line 101
    .local v10, strResponse:Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v9, paramList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 103
    .local v4, entrys:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 104
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {v14, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v5, 0x0

    .line 112
    .local v5, httpConnect:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v12, "utf-8"

    invoke-direct {v8, v9, v12}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 113
    .local v8, p_entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    new-instance v11, Ljava/net/URL;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 115
    .local v11, url:Ljava/net/URL;
    iget-object v12, p0, Llewa/accounts/download/PayNetworkManager;->mProxy:Ljava/net/Proxy;

    if-eqz v12, :cond_1

    .line 116
    iget-object v12, p0, Llewa/accounts/download/PayNetworkManager;->mProxy:Ljava/net/Proxy;

    invoke-virtual {v11, v12}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 120
    :goto_1
    iget v12, p0, Llewa/accounts/download/PayNetworkManager;->mConnectTimeout:I

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 121
    iget v12, p0, Llewa/accounts/download/PayNetworkManager;->mReadTimeout:I

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 122
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 123
    const-string v12, "Content-type"

    const-string v13, "application/x-www-form-urlencoded;charset=utf-8"

    invoke-virtual {v5, v12, v13}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 128
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 129
    .local v7, os:Ljava/io/OutputStream;
    invoke-virtual {v8, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 130
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 132
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 133
    .local v1, content:Ljava/io/InputStream;
    invoke-static {v1}, Llewa/accounts/download/PayUtil;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    .line 134
    const-string v12, "NetworkManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "response "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 141
    .end local v1           #content:Ljava/io/InputStream;
    .end local v7           #os:Ljava/io/OutputStream;
    .end local v8           #p_entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v11           #url:Ljava/net/URL;
    :goto_2
    return-object v10

    .line 118
    .restart local v8       #p_entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v11       #url:Ljava/net/URL;
    :cond_1
    :try_start_1
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 135
    .end local v8           #p_entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v11           #url:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 136
    .local v2, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v12
.end method

.method public urlDownloadToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "strurl"
    .parameter "path"

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 159
    .local v0, bRet:Z
    invoke-direct {p0}, Llewa/accounts/download/PayNetworkManager;->detectProxy()V

    .line 162
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 163
    .local v8, url:Ljava/net/URL;
    const/4 v1, 0x0

    .line 164
    .local v1, conn:Ljava/net/HttpURLConnection;
    iget-object v9, p0, Llewa/accounts/download/PayNetworkManager;->mProxy:Ljava/net/Proxy;

    if-eqz v9, :cond_0

    .line 165
    iget-object v9, p0, Llewa/accounts/download/PayNetworkManager;->mProxy:Ljava/net/Proxy;

    invoke-virtual {v8, v9}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    .end local v1           #conn:Ljava/net/HttpURLConnection;
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 169
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    :goto_0
    iget v9, p0, Llewa/accounts/download/PayNetworkManager;->mConnectTimeout:I

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 170
    iget v9, p0, Llewa/accounts/download/PayNetworkManager;->mReadTimeout:I

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 171
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 173
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 174
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 176
    .local v6, is:Ljava/io/InputStream;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 178
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 180
    .local v4, fos:Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    new-array v7, v9, [B

    .line 181
    .local v7, temp:[B
    const/4 v5, 0x0

    .line 182
    .local v5, i:I
    :goto_1
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_1

    .line 183
    const/4 v9, 0x0

    invoke-virtual {v4, v7, v9, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 191
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #i:I
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #temp:[B
    .end local v8           #url:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 192
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 195
    .end local v2           #e:Ljava/io/IOException;
    :goto_2
    return v0

    .line 167
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    .restart local v8       #url:Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .end local v1           #conn:Ljava/net/HttpURLConnection;
    check-cast v1, Ljava/net/HttpURLConnection;

    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    goto :goto_0

    .line 186
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #i:I
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v7       #temp:[B
    :cond_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 187
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    const/4 v0, 0x1

    goto :goto_2
.end method
