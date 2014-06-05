.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/e;->a:Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/e;->a:Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/e;->a:Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/e;->a:Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;

    iget-object v1, p1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->c:[B

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;->sendData([B)Z

    move-result v0

    goto :goto_0
.end method
