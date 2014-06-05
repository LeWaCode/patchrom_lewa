.class public final Lcom/tencent/qqpim/sdk/libs/netengine/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/libs/a/f;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/libs/a/e;

.field private b:Lcom/tencent/qqpim/sdk/libs/a/g;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/libs/a/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/qqpim/sdk/libs/a/e;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qqpim/sdk/libs/a/e;-><init>(Lcom/tencent/qqpim/sdk/libs/a/f;Lcom/tencent/qqpim/sdk/libs/a/c;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/g;->a:Lcom/tencent/qqpim/sdk/libs/a/e;

    new-instance v0, Lcom/tencent/qqpim/sdk/libs/netengine/f;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/g;->a:Lcom/tencent/qqpim/sdk/libs/a/e;

    invoke-direct {v0, v1}, Lcom/tencent/qqpim/sdk/libs/netengine/f;-><init>(Lcom/tencent/qqpim/sdk/libs/a/e;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/g;->b:Lcom/tencent/qqpim/sdk/libs/a/g;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/qqpim/sdk/libs/a/a;)Lcom/tencent/qqpim/sdk/libs/a/i;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/libs/a/a;->f()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/g;->b:Lcom/tencent/qqpim/sdk/libs/a/g;

    invoke-interface {v0, p1}, Lcom/tencent/qqpim/sdk/libs/a/g;->b(Lcom/tencent/qqpim/sdk/libs/a/a;)Lcom/tencent/qqpim/sdk/libs/a/i;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/g;->a:Lcom/tencent/qqpim/sdk/libs/a/e;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/g;->a:Lcom/tencent/qqpim/sdk/libs/a/e;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/sdk/libs/a/e;->a(Lcom/tencent/qqpim/sdk/libs/a/a;)Lcom/tencent/qqpim/sdk/libs/a/i;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/qqpim/sdk/libs/a/i;Lcom/tencent/qqpim/sdk/libs/a/a;)Lcom/tencent/qqpim/sdk/libs/a/i;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/g;->b:Lcom/tencent/qqpim/sdk/libs/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/g;->b:Lcom/tencent/qqpim/sdk/libs/a/g;

    invoke-interface {v0, p2}, Lcom/tencent/qqpim/sdk/libs/a/g;->a(Lcom/tencent/qqpim/sdk/libs/a/a;)Lcom/tencent/qqpim/sdk/libs/a/i;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/qqpim/sdk/libs/a/i;)Z
    .locals 1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/g;->b:Lcom/tencent/qqpim/sdk/libs/a/g;

    invoke-interface {v0, p1}, Lcom/tencent/qqpim/sdk/libs/a/g;->a(Lcom/tencent/qqpim/sdk/libs/a/i;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/g;->a:Lcom/tencent/qqpim/sdk/libs/a/e;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/sdk/libs/a/e;->a(Lcom/tencent/qqpim/sdk/libs/a/i;)Z

    move-result v0

    goto :goto_0
.end method
