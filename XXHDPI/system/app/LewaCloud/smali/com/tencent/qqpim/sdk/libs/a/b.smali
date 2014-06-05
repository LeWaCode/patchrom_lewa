.class public abstract Lcom/tencent/qqpim/sdk/libs/a/b;
.super Ljava/lang/Thread;


# instance fields
.field private volatile a:Z

.field private b:Lcom/tencent/qqpim/sdk/libs/a/e;

.field private c:Lcom/tencent/qqpim/sdk/libs/a/a;


# direct methods
.method protected constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;Lcom/tencent/qqpim/sdk/libs/a/e;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/libs/a/b;->a:Z

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/a/b;->b:Lcom/tencent/qqpim/sdk/libs/a/e;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/a/b;->c:Lcom/tencent/qqpim/sdk/libs/a/a;

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/libs/a/b;->a:Z

    iput-object p3, p0, Lcom/tencent/qqpim/sdk/libs/a/b;->b:Lcom/tencent/qqpim/sdk/libs/a/e;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/tencent/qqpim/sdk/libs/a/a;)Lcom/tencent/qqpim/sdk/libs/a/i;
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/libs/a/b;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/a/b;->b:Lcom/tencent/qqpim/sdk/libs/a/e;

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/libs/a/b;->interrupt()V

    return-void
.end method

.method public final b()Lcom/tencent/qqpim/sdk/libs/a/a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/a/b;->c:Lcom/tencent/qqpim/sdk/libs/a/a;

    return-object v0
.end method

.method public final b(Lcom/tencent/qqpim/sdk/libs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/libs/a/b;->c:Lcom/tencent/qqpim/sdk/libs/a/a;

    return-void
.end method
