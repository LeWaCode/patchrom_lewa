.class public Lcom/tencent/qqpim/sdk/accesslayer/LocalSyncProcessorFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalBackupProcessor(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupProcessor;
    .locals 1

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalBackupProcessor;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalBackupProcessor;-><init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;)V

    return-object v0
.end method

.method public static getLocalRestoreProcessor(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreProcessor;
    .locals 1

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalRestoreProcessor;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/apps/localsync/processors/LocalRestoreProcessor;-><init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;)V

    return-object v0
.end method
