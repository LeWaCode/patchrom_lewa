.class public Lcom/tencent/qqpim/sdk/libs/netengine/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/libs/a/f;


# instance fields
.field private final a:Lcom/tencent/qqpim/sdk/libs/netengine/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/qqpim/sdk/libs/netengine/g;

    new-instance v1, Lcom/tencent/qqpim/sdk/libs/a/h;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/libs/a/h;-><init>()V

    invoke-direct {v0, v1}, Lcom/tencent/qqpim/sdk/libs/netengine/g;-><init>(Lcom/tencent/qqpim/sdk/libs/a/c;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/b;->a:Lcom/tencent/qqpim/sdk/libs/netengine/g;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/NetTypeUtil;->getNetType()I

    move-result v2

    if-eq v0, v2, :cond_0

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->getImsi()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const-string v3, "46001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "46003"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    const-string v0, "46000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "46002"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "46007"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x3

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/tencent/qqpim/sdk/libs/a/d;Lcom/tencent/qqpim/sdk/libs/netengine/d;)Lcom/tencent/qqpim/sdk/libs/a/i;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/tencent/qqpim/sdk/libs/netengine/d;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    new-instance v1, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;

    invoke-direct {v1, p1, p2}, Lcom/tencent/qqpim/sdk/libs/netengine/a/f;-><init>(Lcom/tencent/qqpim/sdk/libs/a/d;Lcom/tencent/qqpim/sdk/libs/netengine/d;)V

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return-object v0

    :cond_0
    const/4 v2, 0x1

    if-ne v2, v1, :cond_2

    new-instance v1, Lcom/tencent/qqpim/sdk/libs/netengine/a/e;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/libs/netengine/a/e;-><init>()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/tencent/qqpim/sdk/libs/netengine/d;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/libs/a/a;->b(I)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/b;->a:Lcom/tencent/qqpim/sdk/libs/netengine/g;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/libs/netengine/g;->a(Lcom/tencent/qqpim/sdk/libs/a/a;)Lcom/tencent/qqpim/sdk/libs/a/i;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Lcom/tencent/qqpim/sdk/libs/a/i;Lcom/tencent/qqpim/sdk/libs/netengine/a/d;)Lcom/tencent/qqpim/sdk/libs/a/i;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/b;->a:Lcom/tencent/qqpim/sdk/libs/netengine/g;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/b;->a:Lcom/tencent/qqpim/sdk/libs/netengine/g;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qqpim/sdk/libs/netengine/g;->a(Lcom/tencent/qqpim/sdk/libs/a/i;Lcom/tencent/qqpim/sdk/libs/a/a;)Lcom/tencent/qqpim/sdk/libs/a/i;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/tencent/qqpim/sdk/libs/a/i;)Z
    .locals 2

    const-string v0, "NetManager"

    const-string v1, "request stopNetTask"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/b;->a:Lcom/tencent/qqpim/sdk/libs/netengine/g;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/sdk/libs/netengine/g;->a(Lcom/tencent/qqpim/sdk/libs/a/i;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/tencent/qqpim/sdk/libs/a/i;)J
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/libs/a/i;->a()Lcom/tencent/qqpim/sdk/libs/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/libs/a/i;->a()Lcom/tencent/qqpim/sdk/libs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/libs/a/a;->d()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/tencent/qqpim/sdk/libs/a/i;)J
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/libs/a/i;->a()Lcom/tencent/qqpim/sdk/libs/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/libs/a/i;->a()Lcom/tencent/qqpim/sdk/libs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/libs/a/a;->e()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
