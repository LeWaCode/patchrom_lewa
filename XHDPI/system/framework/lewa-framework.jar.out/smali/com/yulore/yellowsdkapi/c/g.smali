.class public final Lcom/yulore/yellowsdkapi/c/g;
.super Lcom/yulore/yellowsdkapi/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yulore/yellowsdkapi/c/b",
        "<",
        "Lcom/yulore/yellowsdkapi/entity/PkgInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yulore/yellowsdkapi/entity/PkgInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yulore/yellowsdkapi/c/b;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/yulore/yellowsdkapi/entity/PkgInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/yulore/yellowsdkapi/c/g;->a:Lcom/yulore/yellowsdkapi/entity/PkgInfo;

    invoke-virtual {v3}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->getId()I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "offline"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "offline"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/yulore/yellowsdkapi/c/g;->a:Lcom/yulore/yellowsdkapi/entity/PkgInfo;

    invoke-virtual {v3}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->getVer()I

    move-result v3

    const-string v4, "pkg_ver"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ge v3, v4, :cond_0

    new-instance v0, Lcom/yulore/yellowsdkapi/entity/PkgInfo;

    invoke-direct {v0}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->setId(I)V

    const-string v1, "\u5168\u56fd"

    invoke-virtual {v0, v1}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->setName(Ljava/lang/String;)V

    const-string v1, "pkg_ver"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->setVer(I)V

    const-string v1, "pkg_size"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->setPkgSize(F)V

    const-string v1, "pkg_url"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->setPkgUrl(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v3, "cities"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "cities"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/yulore/yellowsdkapi/c/g;->a:Lcom/yulore/yellowsdkapi/entity/PkgInfo;

    invoke-virtual {v4}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->getId()I

    move-result v4

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/c/g;->a:Lcom/yulore/yellowsdkapi/entity/PkgInfo;

    invoke-virtual {v1}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->getVer()I

    move-result v1

    const-string v2, "ver"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v0, Lcom/yulore/yellowsdkapi/entity/PkgInfo;

    invoke-direct {v0}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;-><init>()V

    const-string v1, "id"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->setId(I)V

    const-string v1, "name"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->setName(Ljava/lang/String;)V

    const-string v1, "ver"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->setVer(I)V

    const-string v1, "size"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->setPkgSize(F)V

    const-string v1, "pkg"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->setPkgUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/yulore/yellowsdkapi/c/g;->a:Lcom/yulore/yellowsdkapi/entity/PkgInfo;

    invoke-virtual {v3}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->getId()I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "offline"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "offline"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/yulore/yellowsdkapi/c/g;->a:Lcom/yulore/yellowsdkapi/entity/PkgInfo;

    invoke-virtual {v3}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->getVer()I

    move-result v3

    const-string v4, "pkg_ver"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ge v3, v4, :cond_0

    new-instance v0, Lcom/yulore/yellowsdkapi/entity/PkgInfo;

    invoke-direct {v0}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->setId(I)V

    const-string v1, "\u5168\u56fd"

    invoke-virtual {v0, v1}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->setName(Ljava/lang/String;)V

    const-string v1, "pkg_ver"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->setVer(I)V

    const-string v1, "pkg_size"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->setPkgSize(F)V

    const-string v1, "pkg_url"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->setPkgUrl(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v3, "cities"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "cities"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/yulore/yellowsdkapi/c/g;->a:Lcom/yulore/yellowsdkapi/entity/PkgInfo;

    invoke-virtual {v4}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->getId()I

    move-result v4

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/c/g;->a:Lcom/yulore/yellowsdkapi/entity/PkgInfo;

    invoke-virtual {v1}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->getVer()I

    move-result v1

    const-string v2, "ver"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v0, Lcom/yulore/yellowsdkapi/entity/PkgInfo;

    invoke-direct {v0}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;-><init>()V

    const-string v1, "id"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->setId(I)V

    const-string v1, "name"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->setName(Ljava/lang/String;)V

    const-string v1, "ver"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->setVer(I)V

    const-string v1, "size"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->setPkgSize(F)V

    const-string v1, "pkg"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulore/yellowsdkapi/entity/PkgInfo;->setPkgUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final a(Lcom/yulore/yellowsdkapi/entity/PkgInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/yellowsdkapi/c/g;->a:Lcom/yulore/yellowsdkapi/entity/PkgInfo;

    return-void
.end method
