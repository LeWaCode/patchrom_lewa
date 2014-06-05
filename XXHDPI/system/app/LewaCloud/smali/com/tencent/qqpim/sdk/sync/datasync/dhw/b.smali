.class final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/List;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;)V
    .locals 2

    const/16 v1, 0xf

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;->a:Ljava/util/List;

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;->b:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;->c:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;-><init>(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a;)V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;->b:I

    return v0
.end method

.method protected final a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/f;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final b()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;->c:I

    return v0
.end method

.method protected final c()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;->d:I

    return v0
.end method

.method protected final d()V
    .locals 2

    const/16 v1, 0xf

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;->b:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;->c:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;->d:I

    return-void
.end method

.method protected final e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b;->a:Ljava/util/List;

    return-object v0
.end method
