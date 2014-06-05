.class public final enum Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

.field public static final enum LEWA:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

.field public static final enum MOLE:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

    const-string v1, "MOLE"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;->MOLE:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

    new-instance v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

    const-string v1, "LEWA"

    invoke-direct {v0, v1, v3}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;->LEWA:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

    sget-object v1, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;->MOLE:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;->LEWA:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;->ENUM$VALUES:[Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;
    .locals 1

    const-class v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;->ENUM$VALUES:[Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

    array-length v1, v0

    new-array v2, v1, [Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ESDKPRODUCT;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
