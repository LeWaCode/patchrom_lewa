.class public final enum Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;
.super Ljava/lang/Enum;
.source "HealthzResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/bi/common/api/HealthzResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HealthStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

.field public static final enum DB_FAILURE:Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

.field public static final enum DOWN:Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

.field public static final enum OK:Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

.field public static final enum UNKNOWN:Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;->OK:Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

    .line 27
    new-instance v0, Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3}, Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;->DOWN:Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

    .line 33
    new-instance v0, Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

    const-string v1, "DB_FAILURE"

    invoke-direct {v0, v1, v4}, Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;->DB_FAILURE:Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

    .line 39
    new-instance v0, Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;->UNKNOWN:Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

    sget-object v1, Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;->OK:Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;->DOWN:Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;->DB_FAILURE:Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;->UNKNOWN:Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;->$VALUES:[Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

    return-object v0
.end method

.method public static values()[Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;->$VALUES:[Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

    invoke-virtual {v0}, [Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lewa/bi/common/api/HealthzResponse$HealthStatus;

    return-object v0
.end method
