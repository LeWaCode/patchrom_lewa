.class public final enum Lcom/lewa/bi/common/data/collect/ApkActivity$Type;
.super Ljava/lang/Enum;
.source "ApkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/bi/common/data/collect/ApkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lewa/bi/common/data/collect/ApkActivity$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lewa/bi/common/data/collect/ApkActivity$Type;

.field public static final enum INSTALL:Lcom/lewa/bi/common/data/collect/ApkActivity$Type;

.field public static final enum UNINSTALL:Lcom/lewa/bi/common/data/collect/ApkActivity$Type;

.field public static final enum UPGRADE:Lcom/lewa/bi/common/data/collect/ApkActivity$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/lewa/bi/common/data/collect/ApkActivity$Type;

    const-string v1, "INSTALL"

    invoke-direct {v0, v1, v2}, Lcom/lewa/bi/common/data/collect/ApkActivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/data/collect/ApkActivity$Type;->INSTALL:Lcom/lewa/bi/common/data/collect/ApkActivity$Type;

    .line 28
    new-instance v0, Lcom/lewa/bi/common/data/collect/ApkActivity$Type;

    const-string v1, "UNINSTALL"

    invoke-direct {v0, v1, v3}, Lcom/lewa/bi/common/data/collect/ApkActivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/data/collect/ApkActivity$Type;->UNINSTALL:Lcom/lewa/bi/common/data/collect/ApkActivity$Type;

    .line 32
    new-instance v0, Lcom/lewa/bi/common/data/collect/ApkActivity$Type;

    const-string v1, "UPGRADE"

    invoke-direct {v0, v1, v4}, Lcom/lewa/bi/common/data/collect/ApkActivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/data/collect/ApkActivity$Type;->UPGRADE:Lcom/lewa/bi/common/data/collect/ApkActivity$Type;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lewa/bi/common/data/collect/ApkActivity$Type;

    sget-object v1, Lcom/lewa/bi/common/data/collect/ApkActivity$Type;->INSTALL:Lcom/lewa/bi/common/data/collect/ApkActivity$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lewa/bi/common/data/collect/ApkActivity$Type;->UNINSTALL:Lcom/lewa/bi/common/data/collect/ApkActivity$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lewa/bi/common/data/collect/ApkActivity$Type;->UPGRADE:Lcom/lewa/bi/common/data/collect/ApkActivity$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lewa/bi/common/data/collect/ApkActivity$Type;->$VALUES:[Lcom/lewa/bi/common/data/collect/ApkActivity$Type;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lewa/bi/common/data/collect/ApkActivity$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 20
    const-class v0, Lcom/lewa/bi/common/data/collect/ApkActivity$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lewa/bi/common/data/collect/ApkActivity$Type;

    return-object v0
.end method

.method public static values()[Lcom/lewa/bi/common/data/collect/ApkActivity$Type;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/lewa/bi/common/data/collect/ApkActivity$Type;->$VALUES:[Lcom/lewa/bi/common/data/collect/ApkActivity$Type;

    invoke-virtual {v0}, [Lcom/lewa/bi/common/data/collect/ApkActivity$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lewa/bi/common/data/collect/ApkActivity$Type;

    return-object v0
.end method
