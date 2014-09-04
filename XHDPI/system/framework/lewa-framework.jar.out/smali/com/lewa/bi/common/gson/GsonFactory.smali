.class public Lcom/lewa/bi/common/gson/GsonFactory;
.super Ljava/lang/Object;
.source "GsonFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/bi/common/gson/GsonFactory$LewaExclusionStrategy;
    }
.end annotation


# instance fields
.field private final gson:Lcom/lewa/gson/Gson;

.field private final gsonBuiler:Lcom/lewa/gson/GsonBuilder;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-class v2, Lcom/lewa/bi/common/api/ApiRequest;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, apiPackageName:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".collect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 47
    .local v1, apiPackageNames:[Ljava/lang/String;
    new-instance v2, Lcom/lewa/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/lewa/gson/GsonBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/lewa/gson/GsonBuilder;->disableHtmlEscaping()Lcom/lewa/gson/GsonBuilder;

    move-result-object v2

    new-instance v3, Lcom/lewa/bi/common/gson/GsonFactory$LewaExclusionStrategy;

    invoke-direct {v3}, Lcom/lewa/bi/common/gson/GsonFactory$LewaExclusionStrategy;-><init>()V

    invoke-virtual {v2, v3}, Lcom/lewa/gson/GsonBuilder;->addSerializationExclusionStrategy(Lcom/lewa/gson/ExclusionStrategy;)Lcom/lewa/gson/GsonBuilder;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    sget-object v4, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters;->STRING_ADAPTER:Lcom/lewa/gson/TypeAdapter;

    invoke-virtual {v2, v3, v4}, Lcom/lewa/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/lewa/gson/GsonBuilder;

    move-result-object v2

    const-class v3, Ljava/lang/Long;

    sget-object v4, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters;->LONG_ADAPTER:Lcom/lewa/gson/TypeAdapter;

    invoke-virtual {v2, v3, v4}, Lcom/lewa/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/lewa/gson/GsonBuilder;

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v4, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters;->LONG_ADAPTER:Lcom/lewa/gson/TypeAdapter;

    invoke-virtual {v2, v3, v4}, Lcom/lewa/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/lewa/gson/GsonBuilder;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    sget-object v4, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters;->INT_ADAPTER:Lcom/lewa/gson/TypeAdapter;

    invoke-virtual {v2, v3, v4}, Lcom/lewa/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/lewa/gson/GsonBuilder;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v4, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters;->INT_ADAPTER:Lcom/lewa/gson/TypeAdapter;

    invoke-virtual {v2, v3, v4}, Lcom/lewa/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/lewa/gson/GsonBuilder;

    move-result-object v2

    const-class v3, Ljava/lang/Boolean;

    sget-object v4, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters;->BOOLEAN_ADAPTER:Lcom/lewa/gson/TypeAdapter;

    invoke-virtual {v2, v3, v4}, Lcom/lewa/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/lewa/gson/GsonBuilder;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v4, Lcom/lewa/bi/common/gson/PrimitiveTypeAdapters;->BOOLEAN_ADAPTER:Lcom/lewa/gson/TypeAdapter;

    invoke-virtual {v2, v3, v4}, Lcom/lewa/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/lewa/gson/GsonBuilder;

    move-result-object v2

    const-class v3, Lcom/lewa/bi/common/data/collect/GeoPoint;

    new-instance v4, Lcom/lewa/bi/common/gson/GeoPointAdapter;

    invoke-direct {v4}, Lcom/lewa/bi/common/gson/GeoPointAdapter;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/lewa/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/lewa/gson/GsonBuilder;

    move-result-object v2

    const-class v3, [B

    new-instance v4, Lcom/lewa/bi/common/gson/Base64TypeAdapter;

    invoke-direct {v4}, Lcom/lewa/bi/common/gson/Base64TypeAdapter;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/lewa/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/lewa/gson/GsonBuilder;

    move-result-object v2

    const-class v3, Lcom/lewa/bi/common/data/MultiColumn;

    new-instance v4, Lcom/lewa/bi/common/gson/MultiColumnAdapter;

    invoke-direct {v4}, Lcom/lewa/bi/common/gson/MultiColumnAdapter;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/lewa/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/lewa/gson/GsonBuilder;

    move-result-object v2

    const-class v3, Ljava/util/Date;

    new-instance v4, Lcom/lewa/bi/common/gson/TimestampTypeAdapter;

    invoke-direct {v4}, Lcom/lewa/bi/common/gson/TimestampTypeAdapter;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/lewa/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/lewa/gson/GsonBuilder;

    move-result-object v2

    const-class v3, Lcom/lewa/bi/common/data/collect/AppId;

    const-class v4, Lcom/lewa/bi/common/data/collect/AppId;

    invoke-static {v4}, Lcom/lewa/bi/common/gson/IdAdapter;->of(Ljava/lang/Class;)Lcom/lewa/bi/common/gson/IdAdapter;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lewa/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/lewa/gson/GsonBuilder;

    move-result-object v2

    const-class v3, Lcom/lewa/bi/common/data/collect/ClientId;

    const-class v4, Lcom/lewa/bi/common/data/collect/ClientId;

    invoke-static {v4}, Lcom/lewa/bi/common/gson/IdAdapter;->of(Ljava/lang/Class;)Lcom/lewa/bi/common/gson/IdAdapter;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lewa/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/lewa/gson/GsonBuilder;

    move-result-object v2

    const-class v3, Lcom/lewa/bi/common/data/collect/DeviceId;

    const-class v4, Lcom/lewa/bi/common/data/collect/DeviceId;

    invoke-static {v4}, Lcom/lewa/bi/common/gson/IdAdapter;->of(Ljava/lang/Class;)Lcom/lewa/bi/common/gson/IdAdapter;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lewa/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/lewa/gson/GsonBuilder;

    move-result-object v2

    const-class v3, Lcom/lewa/bi/common/api/ApiRequest;

    const-class v4, Lcom/lewa/bi/common/api/ApiRequest;

    invoke-static {v4, v1}, Lcom/lewa/bi/common/gson/SubclassAdapter;->create(Ljava/lang/Class;[Ljava/lang/String;)Lcom/lewa/bi/common/gson/SubclassAdapter;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lewa/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/lewa/gson/GsonBuilder;

    move-result-object v2

    const-class v3, Lcom/lewa/bi/common/api/ApiResponse;

    const-class v4, Lcom/lewa/bi/common/api/ApiResponse;

    invoke-static {v4, v1}, Lcom/lewa/bi/common/gson/SubclassAdapter;->create(Ljava/lang/Class;[Ljava/lang/String;)Lcom/lewa/bi/common/gson/SubclassAdapter;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lewa/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/lewa/gson/GsonBuilder;

    move-result-object v2

    iput-object v2, p0, Lcom/lewa/bi/common/gson/GsonFactory;->gsonBuiler:Lcom/lewa/gson/GsonBuilder;

    .line 69
    iget-object v2, p0, Lcom/lewa/bi/common/gson/GsonFactory;->gsonBuiler:Lcom/lewa/gson/GsonBuilder;

    invoke-virtual {v2}, Lcom/lewa/gson/GsonBuilder;->create()Lcom/lewa/gson/Gson;

    move-result-object v2

    iput-object v2, p0, Lcom/lewa/bi/common/gson/GsonFactory;->gson:Lcom/lewa/gson/Gson;

    .line 70
    return-void
.end method


# virtual methods
.method public getGson()Lcom/lewa/gson/Gson;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lewa/bi/common/gson/GsonFactory;->gson:Lcom/lewa/gson/Gson;

    return-object v0
.end method

.method public getGsonBuilder()Lcom/lewa/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lewa/bi/common/gson/GsonFactory;->gsonBuiler:Lcom/lewa/gson/GsonBuilder;

    return-object v0
.end method
