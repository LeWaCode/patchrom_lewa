.class public final enum Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

.field public static final enum TCC_ERR:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

.field public static final enum TCC_ERR_DATA_ALREADY_EXISTS:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

.field public static final enum TCC_ERR_DATA_BASE_FULL:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

.field public static final enum TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

.field public static final enum TCC_ERR_DATA_COMMAND_NOT_IMPL:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

.field public static final enum TCC_ERR_DATA_INVALID:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

.field public static final enum TCC_ERR_DATA_NOT_FOUND:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

.field public static final enum TCC_ERR_NONE:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

.field public static final enum TCC_ERR_WOULD_BLOCK:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    const-string v1, "TCC_ERR_NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    new-instance v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    const-string v1, "TCC_ERR_DATA_NOT_FOUND"

    const v2, -0x80ea

    invoke-direct {v0, v1, v5, v2}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_NOT_FOUND:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    new-instance v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    const-string v1, "TCC_ERR_DATA_COMMAND_FAILED"

    const v2, -0x80eb

    invoke-direct {v0, v1, v6, v2}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    new-instance v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    const-string v1, "TCC_ERR_DATA_COMMAND_NOT_IMPL"

    const v2, -0x80ec

    invoke-direct {v0, v1, v7, v2}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_NOT_IMPL:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    new-instance v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    const-string v1, "TCC_ERR_DATA_INVALID"

    const v2, -0x80ed

    invoke-direct {v0, v1, v8, v2}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    new-instance v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    const-string v1, "TCC_ERR_DATA_BASE_FULL"

    const/4 v2, 0x5

    const v3, -0x80ee

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_BASE_FULL:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    new-instance v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    const-string v1, "TCC_ERR_DATA_ALREADY_EXISTS"

    const/4 v2, 0x6

    const v3, 0x80ef

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_ALREADY_EXISTS:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    new-instance v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    const-string v1, "TCC_ERR_WOULD_BLOCK"

    const/4 v2, 0x7

    const/16 v3, -0x7d03

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_WOULD_BLOCK:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    new-instance v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    const-string v1, "TCC_ERR"

    const/16 v2, 0x8

    const/16 v3, -0x7d00

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    sget-object v1, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_NOT_FOUND:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_COMMAND_NOT_IMPL:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_BASE_FULL:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_ALREADY_EXISTS:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_WOULD_BLOCK:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->ENUM$VALUES:[Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;
    .locals 1

    const-class v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->ENUM$VALUES:[Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    array-length v1, v0

    new-array v2, v1, [Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->value:I

    return v0
.end method
