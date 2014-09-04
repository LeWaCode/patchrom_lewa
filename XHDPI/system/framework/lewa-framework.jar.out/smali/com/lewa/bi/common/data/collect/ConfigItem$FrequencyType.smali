.class public final enum Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;
.super Ljava/lang/Enum;
.source "ConfigItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/bi/common/data/collect/ConfigItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrequencyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

.field public static final enum CUSTOM:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

.field public static final enum DAILY:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

.field public static final DEFAULT:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

.field public static final enum DISABLED:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

.field public static final enum MONTHLY:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

.field public static final enum REALTIME:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

.field public static final enum WEEKLY:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->DISABLED:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    new-instance v0, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    const-string v1, "REALTIME"

    invoke-direct {v0, v1, v4}, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->REALTIME:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    new-instance v0, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    const-string v1, "DAILY"

    invoke-direct {v0, v1, v5}, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->DAILY:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    new-instance v0, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    const-string v1, "WEEKLY"

    invoke-direct {v0, v1, v6}, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->WEEKLY:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    new-instance v0, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    const-string v1, "MONTHLY"

    invoke-direct {v0, v1, v7}, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->MONTHLY:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    new-instance v0, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    const-string v1, "CUSTOM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->CUSTOM:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    .line 16
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    sget-object v1, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->DISABLED:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->REALTIME:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->DAILY:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->WEEKLY:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->MONTHLY:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->CUSTOM:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->$VALUES:[Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    .line 19
    sget-object v0, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->DAILY:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    sput-object v0, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->DEFAULT:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;
    .locals 1
    .parameter "name"

    .prologue
    .line 16
    const-class v0, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    return-object v0
.end method

.method public static values()[Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->$VALUES:[Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    invoke-virtual {v0}, [Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    return-object v0
.end method
