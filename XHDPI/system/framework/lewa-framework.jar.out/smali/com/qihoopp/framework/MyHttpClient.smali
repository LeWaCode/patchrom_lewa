.class public Lcom/qihoopp/framework/MyHttpClient;
.super Ljava/lang/Object;
.source "MyHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoopp/framework/MyHttpClient$MySSLSocketFactory;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mHost:Ljava/lang/String;

.field private mPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "MyHttpClient"

    sput-object v0, Lcom/qihoopp/framework/MyHttpClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/qihoopp/framework/MyHttpClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qihoopp/framework/MyHttpClient;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/qihoopp/framework/MyHttpClient;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qihoopp/framework/MyHttpClient;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/qihoopp/framework/MyHttpClient;->mPort:I

    return v0
.end method


# virtual methods
.method public getNewHttpClient(ILjava/lang/String;I)Lorg/apache/http/client/HttpClient;
    .locals 12
    .parameter "connectTimeout"
    .parameter "host"
    .parameter "port"

    .prologue
    .line 38
    iput-object p2, p0, Lcom/qihoopp/framework/MyHttpClient;->mHost:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/qihoopp/framework/MyHttpClient;->mPort:I

    .line 64
    const/4 v1, 0x0

    .line 103
    .local v1, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    .end local v1           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v2, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    .line 105
    .local v4, params:Lorg/apache/http/params/HttpParams;
    const-string v8, "http.connection.timeout"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 107
    const-string v8, "http.socket.timeout"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 108
    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v4, v8}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 109
    const-string v8, "UTF-8"

    invoke-static {v4, v8}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 113
    .local v7, trustStore:Ljava/security/KeyStore;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 115
    new-instance v5, Lcom/qihoopp/framework/MyHttpClient$MySSLSocketFactory;

    invoke-direct {v5, p0, v7}, Lcom/qihoopp/framework/MyHttpClient$MySSLSocketFactory;-><init>(Lcom/qihoopp/framework/MyHttpClient;Ljava/security/KeyStore;)V

    .line 116
    .local v5, sf:Lcom/qihoopp/framework/MyHttpClient$MySSLSocketFactory;
    sget-object v8, Lcom/qihoopp/framework/MyHttpClient$MySSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v5, v8}, Lcom/qihoopp/framework/MyHttpClient$MySSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 118
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 119
    .local v0, ccm:Lorg/apache/http/conn/ClientConnectionManager;
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v6

    .line 120
    .local v6, sr:Lorg/apache/http/conn/scheme/SchemeRegistry;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x8

    if-ge v8, v9, :cond_0

    .line 121
    sget-object v8, Lcom/qihoopp/framework/MyHttpClient;->TAG:Ljava/lang/String;

    const-string v9, "\u5c0f\u4e8e2.2"

    invoke-static {v8, v9}, Lcom/qihoopp/framework/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "https"

    const/16 v10, 0x1bb

    invoke-direct {v8, v9, v5, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    :goto_0
    move-object v1, v2

    .line 136
    .end local v0           #ccm:Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v4           #params:Lorg/apache/http/params/HttpParams;
    .end local v5           #sf:Lcom/qihoopp/framework/MyHttpClient$MySSLSocketFactory;
    .end local v6           #sr:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v7           #trustStore:Ljava/security/KeyStore;
    .restart local v1       #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    :goto_1
    return-object v2

    .line 124
    .end local v1           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v0       #ccm:Lorg/apache/http/conn/ClientConnectionManager;
    .restart local v2       #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v4       #params:Lorg/apache/http/params/HttpParams;
    .restart local v5       #sf:Lcom/qihoopp/framework/MyHttpClient$MySSLSocketFactory;
    .restart local v6       #sr:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .restart local v7       #trustStore:Ljava/security/KeyStore;
    :cond_0
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v10

    const/16 v11, 0x1bb

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 131
    .end local v0           #ccm:Lorg/apache/http/conn/ClientConnectionManager;
    .end local v4           #params:Lorg/apache/http/params/HttpParams;
    .end local v5           #sf:Lcom/qihoopp/framework/MyHttpClient$MySSLSocketFactory;
    .end local v6           #sr:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v7           #trustStore:Ljava/security/KeyStore;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 132
    .end local v2           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v1       #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    sget-object v8, Lcom/qihoopp/framework/MyHttpClient;->TAG:Ljava/lang/String;

    const-string v9, "Exception"

    invoke-static {v8, v9, v3}, Lcom/qihoopp/framework/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 135
    goto :goto_1

    .line 136
    :cond_1
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_1

    .line 131
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_2
.end method
