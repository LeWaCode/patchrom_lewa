.class public final Lcom/tencent/qqpim/sdk/libs/a/h;
.super Lcom/tencent/qqpim/sdk/libs/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/libs/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/qqpim/sdk/libs/a/a;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/libs/a/a;->f()I

    move-result v1

    const/16 v2, 0xa

    if-gt v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/libs/a/h;->b()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/libs/a/h;->a()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method
