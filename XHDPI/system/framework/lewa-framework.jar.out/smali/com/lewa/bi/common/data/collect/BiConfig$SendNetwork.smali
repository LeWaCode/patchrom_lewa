.class public final enum Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;
.super Ljava/lang/Enum;
.source "BiConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/bi/common/data/collect/BiConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SendNetwork"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;

.field public static final enum ALL:Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;

.field public static final DEFAULT:Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;

.field public static final enum WIFI_ONLY:Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;

    const-string v1, "WIFI_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;->WIFI_ONLY:Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;

    new-instance v0, Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v3}, Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;->ALL:Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;

    sget-object v1, Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;->WIFI_ONLY:Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;->ALL:Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;->$VALUES:[Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;

    .line 72
    sget-object v0, Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;->WIFI_ONLY:Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;

    sput-object v0, Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;->DEFAULT:Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;
    .locals 1
    .parameter "name"

    .prologue
    .line 69
    const-class v0, Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;

    return-object v0
.end method

.method public static values()[Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;->$VALUES:[Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;

    invoke-virtual {v0}, [Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lewa/bi/common/data/collect/BiConfig$SendNetwork;

    return-object v0
.end method
