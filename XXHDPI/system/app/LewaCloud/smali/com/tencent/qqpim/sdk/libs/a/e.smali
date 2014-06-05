.class public Lcom/tencent/qqpim/sdk/libs/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/libs/a/f;

.field private b:Lcom/tencent/qqpim/sdk/libs/a/c;

.field private c:Ljava/util/concurrent/BlockingQueue;

.field private d:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/libs/a/f;Lcom/tencent/qqpim/sdk/libs/a/c;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/a/e;->a:Lcom/tencent/qqpim/sdk/libs/a/f;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/a/e;->b:Lcom/tencent/qqpim/sdk/libs/a/c;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/a/e;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/a/e;->d:Ljava/util/concurrent/BlockingQueue;

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/libs/a/e;->a:Lcom/tencent/qqpim/sdk/libs/a/f;

    iput-object p2, p0, Lcom/tencent/qqpim/sdk/libs/a/e;->b:Lcom/tencent/qqpim/sdk/libs/a/c;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/a/e;->b:Lcom/tencent/qqpim/sdk/libs/a/c;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/a/e;->c:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/libs/a/e;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpim/sdk/libs/a/c;->a(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/qqpim/sdk/libs/a/a;)Lcom/tencent/qqpim/sdk/libs/a/i;
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/a/e;->b:Lcom/tencent/qqpim/sdk/libs/a/c;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/sdk/libs/a/c;->a(Lcom/tencent/qqpim/sdk/libs/a/a;)Z

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/libs/a/i;->a(Lcom/tencent/qqpim/sdk/libs/a/a;)Lcom/tencent/qqpim/sdk/libs/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/a/e;->a:Lcom/tencent/qqpim/sdk/libs/a/f;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/a/e;->a:Lcom/tencent/qqpim/sdk/libs/a/f;

    goto :goto_0
.end method

.method public a(Lcom/tencent/qqpim/sdk/libs/a/i;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/libs/a/i;->a()Lcom/tencent/qqpim/sdk/libs/a/a;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/libs/a/e;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/libs/a/e;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v2

    :cond_2
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/libs/a/e;->a:Lcom/tencent/qqpim/sdk/libs/a/f;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/libs/a/e;->a:Lcom/tencent/qqpim/sdk/libs/a/f;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/libs/a/e;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/libs/a/e;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/a/e;->a:Lcom/tencent/qqpim/sdk/libs/a/f;

    :cond_4
    move v0, v1

    goto :goto_0
.end method
