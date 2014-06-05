.class public final Lcom/tencent/qqpim/sdk/libs/netengine/a/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Timer;

.field private volatile b:J

.field private c:Lcom/tencent/qqpim/sdk/interfaces/h;

.field private d:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/interfaces/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;->a:Ljava/util/Timer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;->c:Lcom/tencent/qqpim/sdk/interfaces/h;

    new-instance v0, Lcom/tencent/qqpim/sdk/libs/netengine/a/h;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/libs/netengine/a/h;-><init>(Lcom/tencent/qqpim/sdk/libs/netengine/a/g;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;->d:Ljava/util/TimerTask;

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;->c:Lcom/tencent/qqpim/sdk/interfaces/h;

    return-void
.end method

.method static synthetic a(Lcom/tencent/qqpim/sdk/libs/netengine/a/g;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/tencent/qqpim/sdk/libs/netengine/a/g;)Lcom/tencent/qqpim/sdk/interfaces/h;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;->c:Lcom/tencent/qqpim/sdk/interfaces/h;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/qqpim/sdk/libs/netengine/a/g;)J
    .locals 4

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;->b:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;->b:J

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-string v0, "SecondTimer"

    const-string v1, "stopTimer"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SecondTimer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stopTimer():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 6

    const-string v0, "SecondTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startTimer scheduleTimeOutTimer:30"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1e

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;->b:J

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;->a:Ljava/util/Timer;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;->d:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SecondTimer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startTimer():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 3

    const-string v0, "SecondTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reStartTimer30"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1e

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/qqpim/sdk/libs/netengine/a/g;->b:J

    return-void
.end method
