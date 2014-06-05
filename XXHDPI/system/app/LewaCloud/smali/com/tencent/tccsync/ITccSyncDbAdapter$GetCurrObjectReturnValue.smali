.class public final enum Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

.field public static final enum TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

.field public static final enum TCC_ERR_EOF:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

.field public static final enum TCC_RRR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    const-string v1, "TCC_RRR_NONE"

    invoke-direct {v0, v1, v3, v3}, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_RRR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    const-string v1, "TCC_ERR_EOF"

    const/16 v2, -0x19

    invoke-direct {v0, v1, v4, v2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR_EOF:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    new-instance v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    const-string v1, "TCC_ERR"

    const/16 v2, -0x7d00

    invoke-direct {v0, v1, v5, v2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_RRR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR_EOF:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->ENUM$VALUES:[Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;
    .locals 1

    const-class v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    return-object v0
.end method

.method public static values()[Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->ENUM$VALUES:[Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    array-length v1, v0

    new-array v2, v1, [Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    iget v0, p0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->value:I

    return v0
.end method
