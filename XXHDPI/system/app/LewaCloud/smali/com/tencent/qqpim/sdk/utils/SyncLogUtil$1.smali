.class Lcom/tencent/qqpim/sdk/utils/SyncLogUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$newLogType:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/utils/SyncLogUtil$1;->val$newLogType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/SyncLogMgrFactory;->getSyncLogMgr()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncLogMgr;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncLogMgr;->getNewestSyncLogEntity(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->get_id()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncLogMgr;->deleteSyncLog(Ljava/lang/String;)I

    iget v2, p0, Lcom/tencent/qqpim/sdk/utils/SyncLogUtil$1;->val$newLogType:I

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;->setOperationType(I)V

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncLogMgr;->addSyncLog(Lcom/tencent/qqpim/sdk/accesslayer/def/SyncLogEntity;)J

    :cond_0
    return-void
.end method
