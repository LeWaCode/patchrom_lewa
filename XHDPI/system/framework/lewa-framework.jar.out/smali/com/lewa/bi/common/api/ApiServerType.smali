.class public final enum Lcom/lewa/bi/common/api/ApiServerType;
.super Ljava/lang/Enum;
.source "ApiServerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lewa/bi/common/api/ApiServerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lewa/bi/common/api/ApiServerType;

.field public static final enum CANARY:Lcom/lewa/bi/common/api/ApiServerType;

.field public static final enum DEV:Lcom/lewa/bi/common/api/ApiServerType;

.field public static final enum PROD:Lcom/lewa/bi/common/api/ApiServerType;


# instance fields
.field private final defaultServerUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 20
    new-instance v0, Lcom/lewa/bi/common/api/ApiServerType;

    const-string v1, "PROD"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "http://api.lewa.com:80"

    aput-object v3, v2, v4

    const-string v3, "http://api.lewa.com:8080"

    aput-object v3, v2, v5

    const-string v3, "http://110.75.189.56:80"

    aput-object v3, v2, v6

    const-string v3, "http://110.75.189.56:8080"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v4, v2}, Lcom/lewa/bi/common/api/ApiServerType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/lewa/bi/common/api/ApiServerType;->PROD:Lcom/lewa/bi/common/api/ApiServerType;

    .line 28
    new-instance v0, Lcom/lewa/bi/common/api/ApiServerType;

    const-string v1, "CANARY"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "http://canary.lewa.com:80"

    aput-object v3, v2, v4

    const-string v3, "http://canary.lewa.com:8080"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v5, v2}, Lcom/lewa/bi/common/api/ApiServerType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/lewa/bi/common/api/ApiServerType;->CANARY:Lcom/lewa/bi/common/api/ApiServerType;

    .line 32
    new-instance v0, Lcom/lewa/bi/common/api/ApiServerType;

    const-string v1, "DEV"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "http://dev.lewa.com:80"

    aput-object v3, v2, v4

    const-string v3, "http://dev.lewa.com:8080"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v6, v2}, Lcom/lewa/bi/common/api/ApiServerType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/lewa/bi/common/api/ApiServerType;->DEV:Lcom/lewa/bi/common/api/ApiServerType;

    .line 16
    new-array v0, v7, [Lcom/lewa/bi/common/api/ApiServerType;

    sget-object v1, Lcom/lewa/bi/common/api/ApiServerType;->PROD:Lcom/lewa/bi/common/api/ApiServerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lewa/bi/common/api/ApiServerType;->CANARY:Lcom/lewa/bi/common/api/ApiServerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lewa/bi/common/api/ApiServerType;->DEV:Lcom/lewa/bi/common/api/ApiServerType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/lewa/bi/common/api/ApiServerType;->$VALUES:[Lcom/lewa/bi/common/api/ApiServerType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "defaultServerUrls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/lewa/guava/base/Preconditions;->checkArgument(Z)V

    .line 38
    invoke-static {p3}, Lcom/lewa/guava/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/bi/common/api/ApiServerType;->defaultServerUrls:Ljava/util/List;

    .line 39
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lewa/bi/common/api/ApiServerType;
    .locals 1
    .parameter "name"

    .prologue
    .line 16
    const-class v0, Lcom/lewa/bi/common/api/ApiServerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lewa/bi/common/api/ApiServerType;

    return-object v0
.end method

.method public static values()[Lcom/lewa/bi/common/api/ApiServerType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/lewa/bi/common/api/ApiServerType;->$VALUES:[Lcom/lewa/bi/common/api/ApiServerType;

    invoke-virtual {v0}, [Lcom/lewa/bi/common/api/ApiServerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lewa/bi/common/api/ApiServerType;

    return-object v0
.end method


# virtual methods
.method public getDefaultServerUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lewa/bi/common/api/ApiServerType;->defaultServerUrls:Ljava/util/List;

    return-object v0
.end method
