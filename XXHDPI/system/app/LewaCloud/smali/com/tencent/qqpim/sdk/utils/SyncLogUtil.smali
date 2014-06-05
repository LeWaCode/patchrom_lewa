.class public Lcom/tencent/qqpim/sdk/utils/SyncLogUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeLastLogAndAddNewLog(I)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/qqpim/sdk/utils/SyncLogUtil$1;

    invoke-direct {v1, p0}, Lcom/tencent/qqpim/sdk/utils/SyncLogUtil$1;-><init>(I)V

    const-string v2, "thread_remove_add_sync_log"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
