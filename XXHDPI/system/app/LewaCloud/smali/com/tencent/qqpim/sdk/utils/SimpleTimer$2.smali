.class Lcom/tencent/qqpim/sdk/utils/SimpleTimer$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpim/sdk/utils/SimpleTimer;


# direct methods
.method constructor <init>(Lcom/tencent/qqpim/sdk/utils/SimpleTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/utils/SimpleTimer$2;->this$0:Lcom/tencent/qqpim/sdk/utils/SimpleTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/SimpleTimer$2;->this$0:Lcom/tencent/qqpim/sdk/utils/SimpleTimer;

    #getter for: Lcom/tencent/qqpim/sdk/utils/SimpleTimer;->mTimerHandler:Lcom/tencent/qqpim/sdk/interfaces/h;
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/SimpleTimer;->access$0(Lcom/tencent/qqpim/sdk/utils/SimpleTimer;)Lcom/tencent/qqpim/sdk/interfaces/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/SimpleTimer$2;->this$0:Lcom/tencent/qqpim/sdk/utils/SimpleTimer;

    #getter for: Lcom/tencent/qqpim/sdk/utils/SimpleTimer;->mTimerHandler:Lcom/tencent/qqpim/sdk/interfaces/h;
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/SimpleTimer;->access$0(Lcom/tencent/qqpim/sdk/utils/SimpleTimer;)Lcom/tencent/qqpim/sdk/interfaces/h;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/SimpleTimer$2;->this$0:Lcom/tencent/qqpim/sdk/utils/SimpleTimer;

    #getter for: Lcom/tencent/qqpim/sdk/utils/SimpleTimer;->RET_SUCCESS:I
    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/SimpleTimer;->access$1(Lcom/tencent/qqpim/sdk/utils/SimpleTimer;)I

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/interfaces/h;->a()V

    :cond_0
    return-void
.end method
