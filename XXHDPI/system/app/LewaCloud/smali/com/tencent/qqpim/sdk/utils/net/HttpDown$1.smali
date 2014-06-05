.class Lcom/tencent/qqpim/sdk/utils/net/HttpDown$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpim/sdk/utils/net/HttpDown;


# direct methods
.method constructor <init>(Lcom/tencent/qqpim/sdk/utils/net/HttpDown;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown$1;->this$0:Lcom/tencent/qqpim/sdk/utils/net/HttpDown;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/net/HttpDown$1;->this$0:Lcom/tencent/qqpim/sdk/utils/net/HttpDown;

    #getter for: Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->mNetEngineObs:Lcom/tencent/qqpim/sdk/utils/net/INetEngineObserver;
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/net/HttpDown;->access$0(Lcom/tencent/qqpim/sdk/utils/net/HttpDown;)Lcom/tencent/qqpim/sdk/utils/net/INetEngineObserver;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/apache/http/HttpEntity;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/tencent/qqpim/sdk/utils/net/INetEngineObserver;->binaryPostResponse(ILorg/apache/http/HttpEntity;Ljava/lang/String;)V

    return-void
.end method
