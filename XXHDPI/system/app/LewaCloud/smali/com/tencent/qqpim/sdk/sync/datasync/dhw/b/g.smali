.class final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;


# direct methods
.method constructor <init>(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/g;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/g;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->updateAllThreadTime()V

    return-void
.end method
