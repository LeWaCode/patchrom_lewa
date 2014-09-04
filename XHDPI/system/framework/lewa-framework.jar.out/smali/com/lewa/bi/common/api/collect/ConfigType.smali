.class public final enum Lcom/lewa/bi/common/api/collect/ConfigType;
.super Ljava/lang/Enum;
.source "ConfigType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lewa/bi/common/api/collect/ConfigType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lewa/bi/common/api/collect/ConfigType;

.field public static final enum DEFAULT:Lcom/lewa/bi/common/api/collect/ConfigType;


# instance fields
.field private final name:Ljava/lang/String;

.field private final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/lewa/bi/common/api/collect/ConfigType;

    const-string v1, "DEFAULT"

    const-string v2, "default"

    invoke-direct {v0, v1, v3, v2}, Lcom/lewa/bi/common/api/collect/ConfigType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lewa/bi/common/api/collect/ConfigType;->DEFAULT:Lcom/lewa/bi/common/api/collect/ConfigType;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/lewa/bi/common/api/collect/ConfigType;

    sget-object v1, Lcom/lewa/bi/common/api/collect/ConfigType;->DEFAULT:Lcom/lewa/bi/common/api/collect/ConfigType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lewa/bi/common/api/collect/ConfigType;->$VALUES:[Lcom/lewa/bi/common/api/collect/ConfigType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lewa/bi/common/api/collect/ConfigType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    .line 22
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p4, valueType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/lewa/bi/common/api/collect/ConfigType;->name:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/lewa/bi/common/api/collect/ConfigType;->valueType:Ljava/lang/Class;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lewa/bi/common/api/collect/ConfigType;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/lewa/bi/common/api/collect/ConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lewa/bi/common/api/collect/ConfigType;

    return-object v0
.end method

.method public static values()[Lcom/lewa/bi/common/api/collect/ConfigType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/lewa/bi/common/api/collect/ConfigType;->$VALUES:[Lcom/lewa/bi/common/api/collect/ConfigType;

    invoke-virtual {v0}, [Lcom/lewa/bi/common/api/collect/ConfigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lewa/bi/common/api/collect/ConfigType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/ConfigType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValueType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lewa/bi/common/api/collect/ConfigType;->valueType:Ljava/lang/Class;

    return-object v0
.end method
