.class public final enum Lcom/lewa/bi/common/api/ReasonCode;
.super Ljava/lang/Enum;
.source "ReasonCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lewa/bi/common/api/ReasonCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lewa/bi/common/api/ReasonCode;

.field public static final enum ENCRYPTION_REQUIRED:Lcom/lewa/bi/common/api/ReasonCode;

.field public static final enum EXCEED_LIMIT:Lcom/lewa/bi/common/api/ReasonCode;

.field public static final enum INTERNAL:Lcom/lewa/bi/common/api/ReasonCode;

.field public static final enum INVALID_ENCRYPTED_DATA:Lcom/lewa/bi/common/api/ReasonCode;

.field public static final enum INVALID_PARAMETER:Lcom/lewa/bi/common/api/ReasonCode;

.field public static final enum INVALID_SIGNATURE:Lcom/lewa/bi/common/api/ReasonCode;

.field public static final enum NOT_AUTHORIZED:Lcom/lewa/bi/common/api/ReasonCode;

.field public static final enum NOT_SUPPORTED_CLIENT_VERSION:Lcom/lewa/bi/common/api/ReasonCode;

.field public static final enum OPERATION_DENIED:Lcom/lewa/bi/common/api/ReasonCode;

.field public static final enum SESSION_EXPIRED_OR_INVALID:Lcom/lewa/bi/common/api/ReasonCode;

.field public static final enum UNKNOWN:Lcom/lewa/bi/common/api/ReasonCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/lewa/bi/common/api/ReasonCode;

    const-string v1, "INVALID_PARAMETER"

    invoke-direct {v0, v1, v3}, Lcom/lewa/bi/common/api/ReasonCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/api/ReasonCode;->INVALID_PARAMETER:Lcom/lewa/bi/common/api/ReasonCode;

    .line 24
    new-instance v0, Lcom/lewa/bi/common/api/ReasonCode;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v4}, Lcom/lewa/bi/common/api/ReasonCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/api/ReasonCode;->INTERNAL:Lcom/lewa/bi/common/api/ReasonCode;

    .line 30
    new-instance v0, Lcom/lewa/bi/common/api/ReasonCode;

    const-string v1, "OPERATION_DENIED"

    invoke-direct {v0, v1, v5}, Lcom/lewa/bi/common/api/ReasonCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/api/ReasonCode;->OPERATION_DENIED:Lcom/lewa/bi/common/api/ReasonCode;

    .line 36
    new-instance v0, Lcom/lewa/bi/common/api/ReasonCode;

    const-string v1, "EXCEED_LIMIT"

    invoke-direct {v0, v1, v6}, Lcom/lewa/bi/common/api/ReasonCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/api/ReasonCode;->EXCEED_LIMIT:Lcom/lewa/bi/common/api/ReasonCode;

    .line 42
    new-instance v0, Lcom/lewa/bi/common/api/ReasonCode;

    const-string v1, "NOT_SUPPORTED_CLIENT_VERSION"

    invoke-direct {v0, v1, v7}, Lcom/lewa/bi/common/api/ReasonCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/api/ReasonCode;->NOT_SUPPORTED_CLIENT_VERSION:Lcom/lewa/bi/common/api/ReasonCode;

    .line 48
    new-instance v0, Lcom/lewa/bi/common/api/ReasonCode;

    const-string v1, "ENCRYPTION_REQUIRED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lewa/bi/common/api/ReasonCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/api/ReasonCode;->ENCRYPTION_REQUIRED:Lcom/lewa/bi/common/api/ReasonCode;

    .line 54
    new-instance v0, Lcom/lewa/bi/common/api/ReasonCode;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lewa/bi/common/api/ReasonCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/api/ReasonCode;->UNKNOWN:Lcom/lewa/bi/common/api/ReasonCode;

    .line 61
    new-instance v0, Lcom/lewa/bi/common/api/ReasonCode;

    const-string v1, "INVALID_ENCRYPTED_DATA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lewa/bi/common/api/ReasonCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/api/ReasonCode;->INVALID_ENCRYPTED_DATA:Lcom/lewa/bi/common/api/ReasonCode;

    .line 70
    new-instance v0, Lcom/lewa/bi/common/api/ReasonCode;

    const-string v1, "NOT_AUTHORIZED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lewa/bi/common/api/ReasonCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/api/ReasonCode;->NOT_AUTHORIZED:Lcom/lewa/bi/common/api/ReasonCode;

    .line 76
    new-instance v0, Lcom/lewa/bi/common/api/ReasonCode;

    const-string v1, "INVALID_SIGNATURE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/lewa/bi/common/api/ReasonCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/api/ReasonCode;->INVALID_SIGNATURE:Lcom/lewa/bi/common/api/ReasonCode;

    .line 82
    new-instance v0, Lcom/lewa/bi/common/api/ReasonCode;

    const-string v1, "SESSION_EXPIRED_OR_INVALID"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/lewa/bi/common/api/ReasonCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lewa/bi/common/api/ReasonCode;->SESSION_EXPIRED_OR_INVALID:Lcom/lewa/bi/common/api/ReasonCode;

    .line 11
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/lewa/bi/common/api/ReasonCode;

    sget-object v1, Lcom/lewa/bi/common/api/ReasonCode;->INVALID_PARAMETER:Lcom/lewa/bi/common/api/ReasonCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lewa/bi/common/api/ReasonCode;->INTERNAL:Lcom/lewa/bi/common/api/ReasonCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lewa/bi/common/api/ReasonCode;->OPERATION_DENIED:Lcom/lewa/bi/common/api/ReasonCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lewa/bi/common/api/ReasonCode;->EXCEED_LIMIT:Lcom/lewa/bi/common/api/ReasonCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lewa/bi/common/api/ReasonCode;->NOT_SUPPORTED_CLIENT_VERSION:Lcom/lewa/bi/common/api/ReasonCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lewa/bi/common/api/ReasonCode;->ENCRYPTION_REQUIRED:Lcom/lewa/bi/common/api/ReasonCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lewa/bi/common/api/ReasonCode;->UNKNOWN:Lcom/lewa/bi/common/api/ReasonCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lewa/bi/common/api/ReasonCode;->INVALID_ENCRYPTED_DATA:Lcom/lewa/bi/common/api/ReasonCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lewa/bi/common/api/ReasonCode;->NOT_AUTHORIZED:Lcom/lewa/bi/common/api/ReasonCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/lewa/bi/common/api/ReasonCode;->INVALID_SIGNATURE:Lcom/lewa/bi/common/api/ReasonCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/lewa/bi/common/api/ReasonCode;->SESSION_EXPIRED_OR_INVALID:Lcom/lewa/bi/common/api/ReasonCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lewa/bi/common/api/ReasonCode;->$VALUES:[Lcom/lewa/bi/common/api/ReasonCode;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lewa/bi/common/api/ReasonCode;
    .locals 1
    .parameter "name"

    .prologue
    .line 11
    const-class v0, Lcom/lewa/bi/common/api/ReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lewa/bi/common/api/ReasonCode;

    return-object v0
.end method

.method public static values()[Lcom/lewa/bi/common/api/ReasonCode;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/lewa/bi/common/api/ReasonCode;->$VALUES:[Lcom/lewa/bi/common/api/ReasonCode;

    invoke-virtual {v0}, [Lcom/lewa/bi/common/api/ReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lewa/bi/common/api/ReasonCode;

    return-object v0
.end method
