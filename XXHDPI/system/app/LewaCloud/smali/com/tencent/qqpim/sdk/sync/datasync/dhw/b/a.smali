.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;


# instance fields
.field private b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->c:J

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

    return-void
.end method

.method public static a()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;

    return-object v0
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->a(I)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

    invoke-virtual {v0, p2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->b(I)V

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->c:J

    return-void
.end method

.method public final a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->c()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->b(S)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->d()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->c(S)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->e()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->d(S)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->f()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->e(S)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->g()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->f(S)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->a()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->g(S)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->n()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->h(S)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->o()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->i(S)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/h;->p()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->j(S)V

    :cond_0
    return-void
.end method

.method public final b()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;
    .locals 5

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->getManufaturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qqpim/sdk/c/a/b;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->c(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->c:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;->a(S)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/a;

    return-object v0
.end method
