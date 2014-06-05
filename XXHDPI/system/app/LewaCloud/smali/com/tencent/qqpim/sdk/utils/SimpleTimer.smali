.class public Lcom/tencent/qqpim/sdk/utils/SimpleTimer;
.super Ljava/lang/Object;


# instance fields
.field private RET_FAILED:I

.field private RET_SUCCESS:I

.field private TIME_IS_UP:I

.field mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private mTimerHandler:Lcom/tencent/qqpim/sdk/interfaces/h;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/interfaces/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qqpim/sdk/utils/SimpleTimer;->TIME_IS_UP:I

    const/16 v0, 0x51

    iput v0, p0, Lcom/tencent/qqpim/sdk/utils/SimpleTimer;->RET_SUCCESS:I

    const/16 v0, 0x52

    iput v0, p0, Lcom/tencent/qqpim/sdk/utils/SimpleTimer;->RET_FAILED:I

    new-instance v0, Lcom/tencent/qqpim/sdk/utils/SimpleTimer$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/utils/SimpleTimer$1;-><init>(Lcom/tencent/qqpim/sdk/utils/SimpleTimer;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/SimpleTimer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/qqpim/sdk/utils/SimpleTimer$2;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/utils/SimpleTimer$2;-><init>(Lcom/tencent/qqpim/sdk/utils/SimpleTimer;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/SimpleTimer;->mRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/utils/SimpleTimer;->mTimerHandler:Lcom/tencent/qqpim/sdk/interfaces/h;

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/qqpim/sdk/utils/SimpleTimer;)Lcom/tencent/qqpim/sdk/interfaces/h;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/SimpleTimer;->mTimerHandler:Lcom/tencent/qqpim/sdk/interfaces/h;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/qqpim/sdk/utils/SimpleTimer;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/utils/SimpleTimer;->RET_SUCCESS:I

    return v0
.end method


# virtual methods
.method public startTimer(I)Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/SimpleTimer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/SimpleTimer;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/SimpleTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/SimpleTimer;->mRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopTimer()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/SimpleTimer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/SimpleTimer;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/SimpleTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/SimpleTimer;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
