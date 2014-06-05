.class final Lcom/tencent/qqpim/sdk/libs/netengine/a/h;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/tencent/qqpim/sdk/libs/netengine/a/g;


# direct methods
.method constructor <init>(Lcom/tencent/qqpim/sdk/libs/netengine/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/h;->a:Lcom/tencent/qqpim/sdk/libs/netengine/a/g;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/h;->a:Lcom/tencent/qqpim/sdk/libs/netengine/a/g;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;->a(Lcom/tencent/qqpim/sdk/libs/netengine/a/g;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const-string v0, "SecondTimer"

    const-string v1, "SecondTimer time out stop"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/h;->a:Lcom/tencent/qqpim/sdk/libs/netengine/a/g;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;->b(Lcom/tencent/qqpim/sdk/libs/netengine/a/g;)Lcom/tencent/qqpim/sdk/interfaces/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/interfaces/h;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/h;->a:Lcom/tencent/qqpim/sdk/libs/netengine/a/g;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;->c(Lcom/tencent/qqpim/sdk/libs/netengine/a/g;)J

    goto :goto_0
.end method
