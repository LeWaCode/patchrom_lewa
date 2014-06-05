.class public Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/sync/datasync/dhw/d;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/i;

.field private b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/d;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/d;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/i;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/d;

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/d;

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;

    invoke-direct {v0, p0, p2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/f;-><init>(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/d;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/i;

    return-void
.end method

.method private a(IILcom/tencent/qqpim/sdk/defines/SyncTaskFilter;)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/i;

    invoke-interface {v0, p3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/i;->a(Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/i;

    invoke-interface {v0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/i;->a(II)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/i;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/i;->a()I

    move-result v0

    return v0
.end method

.method public a(IILcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;Lcom/tencent/qqpim/sdk/defines/SyncTaskFilter;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;->a(IILcom/tencent/qqpim/sdk/defines/SyncTaskFilter;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/i;

    invoke-interface {v0, p3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/i;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;)V

    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;->a(IILcom/tencent/qqpim/sdk/defines/SyncTaskFilter;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :pswitch_0
    const/4 v1, 0x1

    invoke-static {v1, p3}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(ILjava/lang/String;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, p3}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(ILjava/lang/String;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, p3}, Lcom/tencent/qqpim/sdk/accesslayer/a;->a(ILjava/lang/String;)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;

    move-result-object v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/i;

    invoke-interface {v2, v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/i;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/a/a;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/i;

    invoke-interface {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/i;->a(Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;)V

    return-void
.end method

.method public a(Lcom/tencent/qqpim/sdk/sync/datasync/b;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/i;

    invoke-interface {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/i;->a(Lcom/tencent/qqpim/sdk/sync/datasync/b;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/i;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/i;->b()V

    return-void
.end method

.method public onSyncStateChanged(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/d;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/d;

    invoke-interface {v0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/d;->onSyncStateChanged(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;)V

    goto :goto_0
.end method
