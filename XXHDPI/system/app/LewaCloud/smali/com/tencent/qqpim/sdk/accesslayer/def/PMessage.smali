.class public Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;
.super Ljava/lang/Object;


# instance fields
.field public arg1:I

.field public arg2:I

.field public arg3:I

.field public msgId:I

.field public obj1:Ljava/lang/Object;

.field public obj2:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg2:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg3:I

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obj1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obj2:Ljava/lang/Object;

    return-void
.end method

.method public static obtainMsg(II)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;
    .locals 6

    const/4 v4, 0x0

    const/4 v2, -0x1

    move v0, p0

    move v1, p1

    move v3, v2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obtainMsg(IIIILjava/lang/Object;Ljava/lang/Object;)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    move-result-object v0

    return-object v0
.end method

.method public static obtainMsg(III)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;
    .locals 6

    const/4 v4, 0x0

    const/4 v3, -0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obtainMsg(IIIILjava/lang/Object;Ljava/lang/Object;)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    move-result-object v0

    return-object v0
.end method

.method public static obtainMsg(IIIILjava/lang/Object;Ljava/lang/Object;)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;
    .locals 1

    new-instance v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;-><init>()V

    iput p0, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    iput p1, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    iput p2, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg2:I

    iput p3, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg3:I

    iput-object p4, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obj1:Ljava/lang/Object;

    iput-object p5, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obj2:Ljava/lang/Object;

    return-object v0
.end method

.method public static obtainMsg(IIILjava/lang/Object;)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;
    .locals 6

    const/4 v3, -0x1

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obtainMsg(IIIILjava/lang/Object;Ljava/lang/Object;)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    move-result-object v0

    return-object v0
.end method

.method public static obtainMsg(ILjava/lang/Object;)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;
    .locals 6

    const/4 v1, -0x1

    const/4 v5, 0x0

    move v0, p0

    move v2, v1

    move v3, v1

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obtainMsg(IIIILjava/lang/Object;Ljava/lang/Object;)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setMsg(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    iget v0, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    iget v0, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg2:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg2:I

    iget v0, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg3:I

    iput v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg3:I

    iget-object v0, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obj1:Ljava/lang/Object;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obj1:Ljava/lang/Object;

    iget-object v0, p1, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obj2:Ljava/lang/Object;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obj2:Ljava/lang/Object;

    goto :goto_0
.end method
