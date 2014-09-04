.class public final Lcom/yulore/yellowsdkapi/c/e;
.super Lcom/yulore/yellowsdkapi/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yulore/yellowsdkapi/c/b",
        "<",
        "Lcom/yulore/yellowsdkapi/entity/ListEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yulore/yellowsdkapi/c/b;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/String;)Lcom/yulore/yellowsdkapi/entity/ListEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/yulore/yellowsdkapi/entity/ListEntity;

    invoke-direct {v0}, Lcom/yulore/yellowsdkapi/entity/ListEntity;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/yulore/yellowsdkapi/entity/ListEntity;->status:I

    const-string v3, "numitms"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "numitms"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/yulore/yellowsdkapi/entity/ListEntity;->merchantTotalNum:I

    :cond_0
    if-eqz v2, :cond_1

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "itms"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/yulore/yellowsdkapi/util/JSONMappingUtil;->json2ShopItem(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/yulore/yellowsdkapi/entity/ListEntity;->merchantList:Ljava/util/List;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/yulore/yellowsdkapi/entity/ListEntity;

    invoke-direct {v0}, Lcom/yulore/yellowsdkapi/entity/ListEntity;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/yulore/yellowsdkapi/entity/ListEntity;->status:I

    const-string v3, "numitms"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "numitms"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/yulore/yellowsdkapi/entity/ListEntity;->merchantTotalNum:I

    :cond_0
    if-eqz v2, :cond_1

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "itms"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/yulore/yellowsdkapi/util/JSONMappingUtil;->json2ShopItem(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/yulore/yellowsdkapi/entity/ListEntity;->merchantList:Ljava/util/List;

    :cond_1
    return-object v0
.end method
