.class public final enum Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

.field public static final enum NET:Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

.field public static final enum UNAVAILABLE:Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

.field public static final enum UNKNOW:Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

.field public static final enum WAP:Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

.field public static final enum WIFI:Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;->WIFI:Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    new-instance v0, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    const-string v1, "WAP"

    invoke-direct {v0, v1, v3}, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;->WAP:Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    new-instance v0, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    const-string v1, "NET"

    invoke-direct {v0, v1, v4}, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;->NET:Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    new-instance v0, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    const-string v1, "UNKNOW"

    invoke-direct {v0, v1, v5}, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;->UNKNOW:Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    new-instance v0, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    const-string v1, "UNAVAILABLE"

    invoke-direct {v0, v1, v6}, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;->UNAVAILABLE:Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;->WIFI:Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;->WAP:Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;->NET:Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;->UNKNOW:Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;->UNAVAILABLE:Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;->ENUM$VALUES:[Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;
    .locals 1

    const-class v0, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;->ENUM$VALUES:[Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    array-length v1, v0

    new-array v2, v1, [Lcom/tencent/qqpim/sdk/utils/net/NetWorkType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
