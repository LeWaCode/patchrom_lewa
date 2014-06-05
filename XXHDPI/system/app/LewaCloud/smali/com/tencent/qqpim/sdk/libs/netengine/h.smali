.class public Lcom/tencent/qqpim/sdk/libs/netengine/h;
.super Lcom/tencent/qqpim/sdk/libs/a/b;


# direct methods
.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;Lcom/tencent/qqpim/sdk/libs/a/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qqpim/sdk/libs/a/b;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;Lcom/tencent/qqpim/sdk/libs/a/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/qqpim/sdk/libs/a/a;)Lcom/tencent/qqpim/sdk/libs/a/i;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/libs/netengine/h;->b()Lcom/tencent/qqpim/sdk/libs/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/sdk/libs/a/a;->a(Lcom/tencent/qqpim/sdk/libs/a/a;)Lcom/tencent/qqpim/sdk/libs/a/i;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpim/sdk/libs/a/b;->a()V

    const-string v0, "BaseTaskProcessor"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/libs/netengine/h;->b()Lcom/tencent/qqpim/sdk/libs/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/libs/netengine/h;->b()Lcom/tencent/qqpim/sdk/libs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/libs/a/a;->c()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/libs/netengine/h;->b()Lcom/tencent/qqpim/sdk/libs/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/libs/a/a;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BaseTaskProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "run error = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "BaseTaskProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "run t = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
