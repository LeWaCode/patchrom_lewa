.class public Lcom/tencent/qqpim/sdk/libs/netengine/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/libs/a/g;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/libs/a/b;

.field private b:Ljava/util/List;

.field private c:Ljava/lang/ThreadGroup;

.field private d:Lcom/tencent/qqpim/sdk/libs/a/e;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/libs/a/e;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/f;->a:Lcom/tencent/qqpim/sdk/libs/a/b;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/f;->b:Ljava/util/List;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/f;->c:Ljava/lang/ThreadGroup;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/f;->d:Lcom/tencent/qqpim/sdk/libs/a/e;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/f;->c:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/f;->c:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->stop()V

    :cond_0
    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/f;->c:Ljava/lang/ThreadGroup;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/f;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/f;->b:Ljava/util/List;

    new-instance v0, Ljava/lang/ThreadGroup;

    const-class v1, Lcom/tencent/qqpim/sdk/libs/netengine/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/f;->c:Ljava/lang/ThreadGroup;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/qqpim/sdk/libs/a/a;)Lcom/tencent/qqpim/sdk/libs/a/i;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/f;->a:Lcom/tencent/qqpim/sdk/libs/a/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/f;->a:Lcom/tencent/qqpim/sdk/libs/a/b;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/sdk/libs/a/b;->a(Lcom/tencent/qqpim/sdk/libs/a/a;)Lcom/tencent/qqpim/sdk/libs/a/i;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/qqpim/sdk/libs/a/i;)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/f;->a:Lcom/tencent/qqpim/sdk/libs/a/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/f;->a:Lcom/tencent/qqpim/sdk/libs/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/libs/a/b;->b()Lcom/tencent/qqpim/sdk/libs/a/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/libs/a/i;->a()Lcom/tencent/qqpim/sdk/libs/a/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/f;->a:Lcom/tencent/qqpim/sdk/libs/a/b;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/f;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_2
    move-object v1, v0

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/libs/a/b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/libs/a/b;->b()Lcom/tencent/qqpim/sdk/libs/a/a;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/libs/a/i;->a()Lcom/tencent/qqpim/sdk/libs/a/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/libs/a/b;->a()V

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final b(Lcom/tencent/qqpim/sdk/libs/a/a;)Lcom/tencent/qqpim/sdk/libs/a/i;
    .locals 4

    new-instance v0, Lcom/tencent/qqpim/sdk/libs/netengine/h;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/f;->c:Ljava/lang/ThreadGroup;

    const-class v2, Lcom/tencent/qqpim/sdk/libs/netengine/h;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/sdk/libs/netengine/h;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;Lcom/tencent/qqpim/sdk/libs/a/e;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/f;->a:Lcom/tencent/qqpim/sdk/libs/a/b;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/f;->a:Lcom/tencent/qqpim/sdk/libs/a/b;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/sdk/libs/a/b;->b(Lcom/tencent/qqpim/sdk/libs/a/a;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/f;->a:Lcom/tencent/qqpim/sdk/libs/a/b;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/libs/a/b;->start()V

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/libs/a/i;->a(Lcom/tencent/qqpim/sdk/libs/a/a;)Lcom/tencent/qqpim/sdk/libs/a/i;

    move-result-object v0

    return-object v0
.end method
