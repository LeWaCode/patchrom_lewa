.class public final Lcom/yulore/yellowsdkapi/c/i;
.super Lcom/yulore/yellowsdkapi/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yulore/yellowsdkapi/c/b",
        "<",
        "Lcom/yulore/yellowsdkapi/entity/RecognitionListEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yulore/yellowsdkapi/c/b;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/String;)Lcom/yulore/yellowsdkapi/entity/RecognitionListEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/yulore/yellowsdkapi/entity/RecognitionListEntity;

    invoke-direct {v2}, Lcom/yulore/yellowsdkapi/entity/RecognitionListEntity;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/yulore/yellowsdkapi/entity/RecognitionListEntity;->status:I

    if-eqz v1, :cond_0

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "results"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yulore/yellowsdkapi/c/i;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/yulore/yellowsdkapi/entity/RecognitionListEntity;->recognitionList:Ljava/util/List;

    :cond_0
    return-object v2
.end method

.method private static c(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yulore/yellowsdkapi/entity/RecognitionTelephone;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yulore/yellowsdkapi/util/JSONMappingUtil;->json2RecognitionTelephone(Ljava/lang/String;)Lcom/yulore/yellowsdkapi/entity/RecognitionTelephone;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/yulore/yellowsdkapi/entity/RecognitionListEntity;

    invoke-direct {v2}, Lcom/yulore/yellowsdkapi/entity/RecognitionListEntity;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/yulore/yellowsdkapi/entity/RecognitionListEntity;->status:I

    if-eqz v1, :cond_0

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "results"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yulore/yellowsdkapi/c/i;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/yulore/yellowsdkapi/entity/RecognitionListEntity;->recognitionList:Ljava/util/List;

    :cond_0
    return-object v2
.end method
