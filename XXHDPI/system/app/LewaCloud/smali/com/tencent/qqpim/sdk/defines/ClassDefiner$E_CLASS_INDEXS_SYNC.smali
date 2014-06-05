.class public final enum Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;

.field public static final enum E_CLASS_INDEX_DhwSyncProcessor:Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;

.field public static final enum E_CLASS_INDEX_SyncProcessor:Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;

    const-string v1, "E_CLASS_INDEX_DhwSyncProcessor"

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;->E_CLASS_INDEX_DhwSyncProcessor:Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;

    new-instance v0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;

    const-string v1, "E_CLASS_INDEX_SyncProcessor"

    invoke-direct {v0, v1, v3, v3}, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;->E_CLASS_INDEX_SyncProcessor:Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;

    sget-object v1, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;->E_CLASS_INDEX_DhwSyncProcessor:Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;->E_CLASS_INDEX_SyncProcessor:Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;->ENUM$VALUES:[Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;->value:I

    iput p3, p0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;
    .locals 1

    const-class v0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;->ENUM$VALUES:[Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;

    array-length v1, v0

    new-array v2, v1, [Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;->value:I

    return v0
.end method
