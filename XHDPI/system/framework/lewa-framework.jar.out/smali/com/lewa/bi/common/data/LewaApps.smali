.class public final enum Lcom/lewa/bi/common/data/LewaApps;
.super Ljava/lang/Enum;
.source "LewaApps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lewa/bi/common/data/LewaApps;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lewa/bi/common/data/LewaApps;

.field public static final enum OTA:Lcom/lewa/bi/common/data/LewaApps;

.field public static final enum SMS:Lcom/lewa/bi/common/data/LewaApps;


# instance fields
.field private final appId:Lcom/lewa/bi/common/data/collect/AppId;

.field private final eventTypes:Ljava/util/List;
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
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 22
    new-instance v0, Lcom/lewa/bi/common/data/LewaApps;

    const-string v1, "OTA"

    const-string v2, "com.lewatek.ota"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "ota"

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/lewa/bi/common/data/LewaApps;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/lewa/bi/common/data/LewaApps;->OTA:Lcom/lewa/bi/common/data/LewaApps;

    .line 26
    new-instance v0, Lcom/lewa/bi/common/data/LewaApps;

    const-string v1, "SMS"

    const-string v2, "com.lewatek.sms"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "send"

    aput-object v4, v3, v5

    const-string v4, "receive"

    aput-object v4, v3, v6

    const-string v4, "delete"

    aput-object v4, v3, v7

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/lewa/bi/common/data/LewaApps;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/lewa/bi/common/data/LewaApps;->SMS:Lcom/lewa/bi/common/data/LewaApps;

    .line 17
    new-array v0, v7, [Lcom/lewa/bi/common/data/LewaApps;

    sget-object v1, Lcom/lewa/bi/common/data/LewaApps;->OTA:Lcom/lewa/bi/common/data/LewaApps;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lewa/bi/common/data/LewaApps;->SMS:Lcom/lewa/bi/common/data/LewaApps;

    aput-object v1, v0, v6

    sput-object v0, Lcom/lewa/bi/common/data/LewaApps;->$VALUES:[Lcom/lewa/bi/common/data/LewaApps;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "id"
    .parameter "eventTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    new-instance v0, Lcom/lewa/bi/common/data/collect/AppId;

    invoke-direct {v0, p3}, Lcom/lewa/bi/common/data/collect/AppId;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lewa/bi/common/data/LewaApps;->appId:Lcom/lewa/bi/common/data/collect/AppId;

    .line 37
    invoke-static {p4}, Lcom/lewa/guava/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/bi/common/data/LewaApps;->eventTypes:Ljava/util/List;

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lewa/bi/common/data/LewaApps;
    .locals 1
    .parameter "name"

    .prologue
    .line 17
    const-class v0, Lcom/lewa/bi/common/data/LewaApps;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lewa/bi/common/data/LewaApps;

    return-object v0
.end method

.method public static values()[Lcom/lewa/bi/common/data/LewaApps;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/lewa/bi/common/data/LewaApps;->$VALUES:[Lcom/lewa/bi/common/data/LewaApps;

    invoke-virtual {v0}, [Lcom/lewa/bi/common/data/LewaApps;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lewa/bi/common/data/LewaApps;

    return-object v0
.end method


# virtual methods
.method public getAppId()Lcom/lewa/bi/common/data/collect/AppId;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lewa/bi/common/data/LewaApps;->appId:Lcom/lewa/bi/common/data/collect/AppId;

    return-object v0
.end method

.method public getEventTypes()Ljava/util/List;
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
    .line 45
    iget-object v0, p0, Lcom/lewa/bi/common/data/LewaApps;->eventTypes:Ljava/util/List;

    return-object v0
.end method
