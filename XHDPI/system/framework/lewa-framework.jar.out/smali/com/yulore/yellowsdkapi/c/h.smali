.class public final Lcom/yulore/yellowsdkapi/c/h;
.super Lcom/yulore/yellowsdkapi/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yulore/yellowsdkapi/c/b",
        "<",
        "Lcom/yulore/yellowsdkapi/entity/RecognitionEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yulore/yellowsdkapi/c/b;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/String;)Lcom/yulore/yellowsdkapi/entity/RecognitionEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/yulore/yellowsdkapi/entity/RecognitionEntity;

    invoke-direct {v1}, Lcom/yulore/yellowsdkapi/entity/RecognitionEntity;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/yulore/yellowsdkapi/entity/RecognitionEntity;->status:I

    if-eqz v0, :cond_0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/yulore/yellowsdkapi/util/JSONMappingUtil;->json2RecognitionTelephone(Ljava/lang/String;)Lcom/yulore/yellowsdkapi/entity/RecognitionTelephone;

    move-result-object v0

    iput-object v0, v1, Lcom/yulore/yellowsdkapi/entity/RecognitionEntity;->recognitionTel:Lcom/yulore/yellowsdkapi/entity/RecognitionTelephone;

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/yulore/yellowsdkapi/entity/RecognitionEntity;

    invoke-direct {v1}, Lcom/yulore/yellowsdkapi/entity/RecognitionEntity;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/yulore/yellowsdkapi/entity/RecognitionEntity;->status:I

    if-eqz v0, :cond_0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/yulore/yellowsdkapi/util/JSONMappingUtil;->json2RecognitionTelephone(Ljava/lang/String;)Lcom/yulore/yellowsdkapi/entity/RecognitionTelephone;

    move-result-object v0

    iput-object v0, v1, Lcom/yulore/yellowsdkapi/entity/RecognitionEntity;->recognitionTel:Lcom/yulore/yellowsdkapi/entity/RecognitionTelephone;

    :cond_0
    return-object v1
.end method
