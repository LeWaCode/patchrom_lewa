.class public final enum Lcom/lewa/bi/common/api/ApiServiceMeta;
.super Ljava/lang/Enum;
.source "ApiServiceMeta.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lewa/bi/common/api/ApiServiceMeta;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lewa/bi/common/api/ApiServiceMeta; = null

.field public static final API_REQUEST_PARAM_NAME:Ljava/lang/String; = "apiRequest"

.field public static final enum APP_EVENT:Lcom/lewa/bi/common/api/ApiServiceMeta;

.field public static final enum APP_INSTALL:Lcom/lewa/bi/common/api/ApiServiceMeta;

.field public static final enum APP_RECOMMEND:Lcom/lewa/bi/common/api/ApiServiceMeta;

.field public static final enum DEVICE_FIRST:Lcom/lewa/bi/common/api/ApiServiceMeta;

.field public static final enum DEVICE_REPORT:Lcom/lewa/bi/common/api/ApiServiceMeta;

.field public static final enum LOGIN:Lcom/lewa/bi/common/api/ApiServiceMeta;

.field public static final enum REGISTER:Lcom/lewa/bi/common/api/ApiServiceMeta;

.field public static final REQUIRE_ENCRYPTION_APIS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/lewa/bi/common/api/ApiServiceMeta;",
            ">;"
        }
    .end annotation
.end field

.field private static final metas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lewa/bi/common/api/ApiRequest;",
            ">;",
            "Lcom/lewa/bi/common/api/ApiServiceMeta;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final encryptionType:Lcom/lewa/bi/common/api/EncryptionRequired$Type;

.field private final noAuth:Z

.field private final requestType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/lewa/bi/common/api/ApiRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final responseType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/lewa/bi/common/api/ApiResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    .line 41
    new-instance v0, Lcom/lewa/bi/common/api/ApiServiceMeta;

    const-string v1, "REGISTER"

    const/4 v2, 0x0

    const-string v3, "register"

    const-class v4, Lcom/lewa/bi/common/api/collect/RegisterRequest;

    const-class v5, Lcom/lewa/bi/common/api/collect/RegisterResponse;

    invoke-direct/range {v0 .. v5}, Lcom/lewa/bi/common/api/ApiServiceMeta;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/lewa/bi/common/api/ApiServiceMeta;->REGISTER:Lcom/lewa/bi/common/api/ApiServiceMeta;

    .line 47
    new-instance v0, Lcom/lewa/bi/common/api/ApiServiceMeta;

    const-string v1, "LOGIN"

    const/4 v2, 0x1

    const-string v3, "login"

    const-class v4, Lcom/lewa/bi/common/api/collect/LoginRequest;

    const-class v5, Lcom/lewa/bi/common/api/collect/LoginResponse;

    invoke-direct/range {v0 .. v5}, Lcom/lewa/bi/common/api/ApiServiceMeta;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/lewa/bi/common/api/ApiServiceMeta;->LOGIN:Lcom/lewa/bi/common/api/ApiServiceMeta;

    .line 53
    new-instance v0, Lcom/lewa/bi/common/api/ApiServiceMeta;

    const-string v1, "DEVICE_REPORT"

    const/4 v2, 0x2

    const-string v3, "device-report"

    const-class v4, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;

    const-class v5, Lcom/lewa/bi/common/api/collect/DeviceReportResponse;

    invoke-direct/range {v0 .. v5}, Lcom/lewa/bi/common/api/ApiServiceMeta;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/lewa/bi/common/api/ApiServiceMeta;->DEVICE_REPORT:Lcom/lewa/bi/common/api/ApiServiceMeta;

    .line 59
    new-instance v0, Lcom/lewa/bi/common/api/ApiServiceMeta;

    const-string v1, "APP_EVENT"

    const/4 v2, 0x3

    const-string v3, "app-event"

    const-class v4, Lcom/lewa/bi/common/api/collect/AppEventRequest;

    const-class v5, Lcom/lewa/bi/common/api/collect/AppEventResponse;

    invoke-direct/range {v0 .. v5}, Lcom/lewa/bi/common/api/ApiServiceMeta;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/lewa/bi/common/api/ApiServiceMeta;->APP_EVENT:Lcom/lewa/bi/common/api/ApiServiceMeta;

    .line 65
    new-instance v0, Lcom/lewa/bi/common/api/ApiServiceMeta;

    const-string v1, "APP_RECOMMEND"

    const/4 v2, 0x4

    const-string v3, "app-recommend"

    const-class v4, Lcom/lewa/bi/common/api/recommend/RecommendRequest;

    const-class v5, Lcom/lewa/bi/common/api/recommend/RecommendResponse;

    invoke-direct/range {v0 .. v5}, Lcom/lewa/bi/common/api/ApiServiceMeta;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/lewa/bi/common/api/ApiServiceMeta;->APP_RECOMMEND:Lcom/lewa/bi/common/api/ApiServiceMeta;

    .line 71
    new-instance v0, Lcom/lewa/bi/common/api/ApiServiceMeta;

    const-string v1, "DEVICE_FIRST"

    const/4 v2, 0x5

    const-string v3, "device-first"

    const-class v4, Lcom/lewa/bi/common/api/collect/DeviceFirstRequest;

    const-class v5, Lcom/lewa/bi/common/api/collect/DeviceFirstResponse;

    invoke-direct/range {v0 .. v5}, Lcom/lewa/bi/common/api/ApiServiceMeta;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/lewa/bi/common/api/ApiServiceMeta;->DEVICE_FIRST:Lcom/lewa/bi/common/api/ApiServiceMeta;

    .line 77
    new-instance v0, Lcom/lewa/bi/common/api/ApiServiceMeta;

    const-string v1, "APP_INSTALL"

    const/4 v2, 0x6

    const-string v3, "app-install"

    const-class v4, Lcom/lewa/bi/common/api/collect/AppInstallRequest;

    const-class v5, Lcom/lewa/bi/common/api/collect/AppInstallResponse;

    invoke-direct/range {v0 .. v5}, Lcom/lewa/bi/common/api/ApiServiceMeta;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/lewa/bi/common/api/ApiServiceMeta;->APP_INSTALL:Lcom/lewa/bi/common/api/ApiServiceMeta;

    .line 34
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/lewa/bi/common/api/ApiServiceMeta;

    const/4 v1, 0x0

    sget-object v2, Lcom/lewa/bi/common/api/ApiServiceMeta;->REGISTER:Lcom/lewa/bi/common/api/ApiServiceMeta;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/lewa/bi/common/api/ApiServiceMeta;->LOGIN:Lcom/lewa/bi/common/api/ApiServiceMeta;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/lewa/bi/common/api/ApiServiceMeta;->DEVICE_REPORT:Lcom/lewa/bi/common/api/ApiServiceMeta;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/lewa/bi/common/api/ApiServiceMeta;->APP_EVENT:Lcom/lewa/bi/common/api/ApiServiceMeta;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/lewa/bi/common/api/ApiServiceMeta;->APP_RECOMMEND:Lcom/lewa/bi/common/api/ApiServiceMeta;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/lewa/bi/common/api/ApiServiceMeta;->DEVICE_FIRST:Lcom/lewa/bi/common/api/ApiServiceMeta;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lewa/bi/common/api/ApiServiceMeta;->APP_INSTALL:Lcom/lewa/bi/common/api/ApiServiceMeta;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lewa/bi/common/api/ApiServiceMeta;->$VALUES:[Lcom/lewa/bi/common/api/ApiServiceMeta;

    .line 93
    invoke-static {}, Lcom/lewa/guava/collect/ImmutableMap;->builder()Lcom/lewa/guava/collect/ImmutableMap$Builder;

    move-result-object v7

    .line 95
    .local v7, builder:Lcom/lewa/guava/collect/ImmutableMap$Builder;,"Lcom/lewa/guava/collect/ImmutableMap$Builder<Ljava/lang/Class<+Lcom/lewa/bi/common/api/ApiRequest;>;Lcom/lewa/bi/common/api/ApiServiceMeta;>;"
    invoke-static {}, Lcom/lewa/guava/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v12

    .line 96
    .local v12, uris:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/lewa/guava/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v8

    .line 97
    .local v8, encryptedApis:Ljava/util/Set;,"Ljava/util/Set<Lcom/lewa/bi/common/api/ApiServiceMeta;>;"
    invoke-static {}, Lcom/lewa/bi/common/api/ApiServiceMeta;->values()[Lcom/lewa/bi/common/api/ApiServiceMeta;

    move-result-object v6

    .local v6, arr$:[Lcom/lewa/bi/common/api/ApiServiceMeta;
    array-length v10, v6

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v11, v6, v9

    .line 98
    .local v11, meta:Lcom/lewa/bi/common/api/ApiServiceMeta;
    invoke-virtual {v11}, Lcom/lewa/bi/common/api/ApiServiceMeta;->getEncryptionType()Lcom/lewa/bi/common/api/EncryptionRequired$Type;

    move-result-object v0

    sget-object v1, Lcom/lewa/bi/common/api/EncryptionRequired$Type;->ENFORCED:Lcom/lewa/bi/common/api/EncryptionRequired$Type;

    if-ne v0, v1, :cond_0

    .line 99
    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    invoke-virtual {v11}, Lcom/lewa/bi/common/api/ApiServiceMeta;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v11}, Lcom/lewa/bi/common/api/ApiServiceMeta;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lewa/guava/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 102
    iget-object v0, v11, Lcom/lewa/bi/common/api/ApiServiceMeta;->requestType:Ljava/lang/Class;

    invoke-virtual {v7, v0, v11}, Lcom/lewa/guava/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableMap$Builder;

    .line 97
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 104
    .end local v11           #meta:Lcom/lewa/bi/common/api/ApiServiceMeta;
    :cond_1
    invoke-virtual {v7}, Lcom/lewa/guava/collect/ImmutableMap$Builder;->build()Lcom/lewa/guava/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/lewa/bi/common/api/ApiServiceMeta;->metas:Ljava/util/Map;

    .line 105
    invoke-static {v8}, Lcom/lewa/guava/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/lewa/bi/common/api/ApiServiceMeta;->REQUIRE_ENCRYPTION_APIS:Ljava/util/Set;

    .line 106
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .parameter
    .parameter
    .parameter "uri"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lewa/bi/common/api/ApiRequest;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lewa/bi/common/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p4, requestType:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/lewa/bi/common/api/ApiRequest;>;"
    .local p5, responseType:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/lewa/bi/common/api/ApiResponse;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 114
    iput-object p3, p0, Lcom/lewa/bi/common/api/ApiServiceMeta;->uri:Ljava/lang/String;

    .line 115
    iput-object p4, p0, Lcom/lewa/bi/common/api/ApiServiceMeta;->requestType:Ljava/lang/Class;

    .line 116
    iput-object p5, p0, Lcom/lewa/bi/common/api/ApiServiceMeta;->responseType:Ljava/lang/Class;

    .line 117
    const-class v1, Lcom/lewa/bi/common/api/AuthRequired;

    invoke-virtual {p4, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/lewa/bi/common/api/ApiServiceMeta;->noAuth:Z

    .line 118
    const-class v1, Lcom/lewa/bi/common/api/EncryptionRequired;

    invoke-virtual {p4, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/lewa/bi/common/api/EncryptionRequired;

    .line 120
    .local v0, encryptionRequired:Lcom/lewa/bi/common/api/EncryptionRequired;
    if-nez v0, :cond_1

    sget-object v1, Lcom/lewa/bi/common/api/EncryptionRequired$Type;->OPTIONAL:Lcom/lewa/bi/common/api/EncryptionRequired$Type;

    :goto_1
    iput-object v1, p0, Lcom/lewa/bi/common/api/ApiServiceMeta;->encryptionType:Lcom/lewa/bi/common/api/EncryptionRequired$Type;

    .line 122
    return-void

    .line 117
    .end local v0           #encryptionRequired:Lcom/lewa/bi/common/api/EncryptionRequired;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 120
    .restart local v0       #encryptionRequired:Lcom/lewa/bi/common/api/EncryptionRequired;
    :cond_1
    invoke-interface {v0}, Lcom/lewa/bi/common/api/EncryptionRequired;->value()Lcom/lewa/bi/common/api/EncryptionRequired$Type;

    move-result-object v1

    goto :goto_1
.end method

.method public static getApiServiceMeta(Ljava/lang/Class;)Lcom/lewa/bi/common/api/ApiServiceMeta;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lewa/bi/common/api/ApiRequest;",
            ">;)",
            "Lcom/lewa/bi/common/api/ApiServiceMeta;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, requestType:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/lewa/bi/common/api/ApiRequest;>;"
    sget-object v0, Lcom/lewa/bi/common/api/ApiServiceMeta;->metas:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/bi/common/api/ApiServiceMeta;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lewa/bi/common/api/ApiServiceMeta;
    .locals 1
    .parameter "name"

    .prologue
    .line 34
    const-class v0, Lcom/lewa/bi/common/api/ApiServiceMeta;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lewa/bi/common/api/ApiServiceMeta;

    return-object v0
.end method

.method public static values()[Lcom/lewa/bi/common/api/ApiServiceMeta;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/lewa/bi/common/api/ApiServiceMeta;->$VALUES:[Lcom/lewa/bi/common/api/ApiServiceMeta;

    invoke-virtual {v0}, [Lcom/lewa/bi/common/api/ApiServiceMeta;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lewa/bi/common/api/ApiServiceMeta;

    return-object v0
.end method


# virtual methods
.method public getEncryptionType()Lcom/lewa/bi/common/api/EncryptionRequired$Type;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiServiceMeta;->encryptionType:Lcom/lewa/bi/common/api/EncryptionRequired$Type;

    return-object v0
.end method

.method public getRequestType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lewa/bi/common/api/ApiRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiServiceMeta;->requestType:Ljava/lang/Class;

    return-object v0
.end method

.method public getResponseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lewa/bi/common/api/ApiResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiServiceMeta;->responseType:Ljava/lang/Class;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiServiceMeta;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isEncryptionEnabled()Z
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiServiceMeta;->encryptionType:Lcom/lewa/bi/common/api/EncryptionRequired$Type;

    sget-object v1, Lcom/lewa/bi/common/api/EncryptionRequired$Type;->NO:Lcom/lewa/bi/common/api/EncryptionRequired$Type;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoAuth()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/lewa/bi/common/api/ApiServiceMeta;->noAuth:Z

    return v0
.end method
