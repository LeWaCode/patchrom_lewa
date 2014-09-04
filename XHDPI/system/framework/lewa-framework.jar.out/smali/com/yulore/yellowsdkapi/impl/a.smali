.class public final Lcom/yulore/yellowsdkapi/impl/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yulore/yellowsdkapi/PkgDecoderApi;


# instance fields
.field private a:Lcom/yulore/yellowsdkapi/a/a;

.field private b:Lcom/yulore/yellowsdkapi/a/c;

.field private c:Lcom/yulore/yellowsdkapi/c/g;

.field private d:Lcom/yulore/yellowsdkapi/a/d;

.field private e:Lcom/yulore/yellowsdkapi/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkPkgUpdate(Landroid/content/Context;Lcom/yulore/yellowsdkapi/entity/PkgInfo;)Lcom/yulore/yellowsdkapi/entity/PkgInfo;
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PkgInfo is null,please check your code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/yulore/yellowsdkapi/http/RequestVo;

    invoke-direct {v0}, Lcom/yulore/yellowsdkapi/http/RequestVo;-><init>()V

    iput-object p1, v0, Lcom/yulore/yellowsdkapi/http/RequestVo;->context:Landroid/content/Context;

    const-string v1, "http://apis.dianhua.cn/"

    const-string v2, "city/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "?sig="

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yulore/yellowsdkapi/util/a;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&uid="

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yulore/yellowsdkapi/util/a;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&apikey="

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yulore/yellowsdkapi/util/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yulore/yellowsdkapi/http/RequestVo;->requestUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/impl/a;->c:Lcom/yulore/yellowsdkapi/c/g;

    if-nez v1, :cond_1

    new-instance v1, Lcom/yulore/yellowsdkapi/c/g;

    invoke-direct {v1}, Lcom/yulore/yellowsdkapi/c/g;-><init>()V

    iput-object v1, p0, Lcom/yulore/yellowsdkapi/impl/a;->c:Lcom/yulore/yellowsdkapi/c/g;

    :cond_1
    iget-object v1, p0, Lcom/yulore/yellowsdkapi/impl/a;->c:Lcom/yulore/yellowsdkapi/c/g;

    invoke-virtual {v1, p2}, Lcom/yulore/yellowsdkapi/c/g;->a(Lcom/yulore/yellowsdkapi/entity/PkgInfo;)V

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/impl/a;->c:Lcom/yulore/yellowsdkapi/c/g;

    iput-object v1, v0, Lcom/yulore/yellowsdkapi/http/RequestVo;->jsonParser:Lcom/yulore/yellowsdkapi/c/b;

    const/16 v1, 0x61a8

    iput v1, v0, Lcom/yulore/yellowsdkapi/http/RequestVo;->timeout:I

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/yulore/yellowsdkapi/http/NetUtil;->get(Lcom/yulore/yellowsdkapi/http/RequestVo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulore/yellowsdkapi/entity/PkgInfo;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public final decodeDatByTelNum(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yulore/yellowsdkapi/entity/RecognitionTelephone;
    .locals 6

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/impl/a;->d:Lcom/yulore/yellowsdkapi/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yulore/yellowsdkapi/a/d;

    invoke-direct {v0}, Lcom/yulore/yellowsdkapi/a/d;-><init>()V

    iput-object v0, p0, Lcom/yulore/yellowsdkapi/impl/a;->d:Lcom/yulore/yellowsdkapi/a/d;

    :cond_0
    iget-object v0, p0, Lcom/yulore/yellowsdkapi/impl/a;->d:Lcom/yulore/yellowsdkapi/a/d;

    move-object v1, p5

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/yulore/yellowsdkapi/a/d;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yulore/yellowsdkapi/entity/RecognitionTelephone;

    move-result-object v0

    return-object v0
.end method

.method public final decodeDataById(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yulore/yellowsdkapi/entity/ShopItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/impl/a;->a:Lcom/yulore/yellowsdkapi/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yulore/yellowsdkapi/a/a;

    invoke-direct {v0}, Lcom/yulore/yellowsdkapi/a/a;-><init>()V

    iput-object v0, p0, Lcom/yulore/yellowsdkapi/impl/a;->a:Lcom/yulore/yellowsdkapi/a/a;

    :cond_0
    iget-object v0, p0, Lcom/yulore/yellowsdkapi/impl/a;->a:Lcom/yulore/yellowsdkapi/a/a;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/yulore/yellowsdkapi/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final decodeDataByKeyword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yulore/yellowsdkapi/entity/ShopItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/impl/a;->b:Lcom/yulore/yellowsdkapi/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yulore/yellowsdkapi/a/c;

    invoke-direct {v0}, Lcom/yulore/yellowsdkapi/a/c;-><init>()V

    iput-object v0, p0, Lcom/yulore/yellowsdkapi/impl/a;->b:Lcom/yulore/yellowsdkapi/a/c;

    :cond_0
    iget-object v0, p0, Lcom/yulore/yellowsdkapi/impl/a;->b:Lcom/yulore/yellowsdkapi/a/c;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/yulore/yellowsdkapi/a/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final decodeLocationByTelNum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yulore/yellowsdkapi/entity/MobileLocation;
    .locals 1

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/impl/a;->e:Lcom/yulore/yellowsdkapi/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yulore/yellowsdkapi/a/b;

    invoke-direct {v0}, Lcom/yulore/yellowsdkapi/a/b;-><init>()V

    iput-object v0, p0, Lcom/yulore/yellowsdkapi/impl/a;->e:Lcom/yulore/yellowsdkapi/a/b;

    :cond_0
    iget-object v0, p0, Lcom/yulore/yellowsdkapi/impl/a;->e:Lcom/yulore/yellowsdkapi/a/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yulore/yellowsdkapi/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yulore/yellowsdkapi/entity/MobileLocation;

    move-result-object v0

    return-object v0
.end method
