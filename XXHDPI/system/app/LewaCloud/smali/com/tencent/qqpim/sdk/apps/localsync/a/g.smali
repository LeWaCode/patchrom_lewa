.class final Lcom/tencent/qqpim/sdk/apps/localsync/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/qqpim/sdk/apps/localsync/a/e;

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:I

.field private final synthetic e:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

.field private final synthetic f:I

.field private final synthetic g:J


# direct methods
.method constructor <init>(Lcom/tencent/qqpim/sdk/apps/localsync/a/e;IIILcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/g;->a:Lcom/tencent/qqpim/sdk/apps/localsync/a/e;

    iput p2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/g;->b:I

    iput p3, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/g;->c:I

    iput p4, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/g;->d:I

    iput-object p5, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/g;->e:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    iput p6, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/g;->f:I

    iput-wide p7, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/g;->g:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/g;->b:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/g;->c:I

    :goto_0
    if-ge v1, v2, :cond_0

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/g;->d:I

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/g;->a:Lcom/tencent/qqpim/sdk/apps/localsync/a/e;

    iget v3, v3, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->h:I

    if-eq v0, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/g;->e:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/g;->e:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    iget v4, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/g;->f:I

    add-int/lit8 v0, v1, 0x1

    const/16 v5, 0x64

    invoke-interface {v3, v4, v1, v5}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;->onBackupProgressChange(III)V

    move v1, v0

    :cond_2
    :try_start_0
    iget-wide v3, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/g;->g:J

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
