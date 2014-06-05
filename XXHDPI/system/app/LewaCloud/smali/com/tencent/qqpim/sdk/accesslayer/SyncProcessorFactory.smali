.class public Lcom/tencent/qqpim/sdk/accesslayer/SyncProcessorFactory;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_ENGINE_DHW:I = 0x2

.field public static final TYPE_ENGINE_TCC:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyncProcessor(Landroid/content/Context;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessorObsv;I)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-ne v4, p2, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;->E_CLASS_INDEX_SyncProcessor:Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;->toInt()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/defines/ClassDefiner;->getSyncClassName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    aput-object p1, v1, v4

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v5

    const-class v3, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessorObsv;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/qqpim/sdk/utils/PimClassBuilder;->newInstanceFromString(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/ISyncProcessor;

    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;->E_CLASS_INDEX_DhwSyncProcessor:Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_SYNC;->toInt()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/defines/ClassDefiner;->getSyncClassName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
