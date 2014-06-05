.class public final Lcom/tencent/qqpim/sdk/apps/localsync/a/a;
.super Lcom/tencent/qqpim/sdk/apps/localsync/a/e;


# instance fields
.field private i:[Lcom/tencent/qqpim/sdk/interfaces/IEntity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/e;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->i:[Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->f:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    return-void
.end method

.method private static b(I)V
    .locals 1

    const/16 v0, 0x7539

    invoke-static {v0, p0}, Lcom/tencent/qqpim/sdk/c/a/e;->a(II)V

    const/16 v0, 0x75e8

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/e;->a(I)V

    const/16 v0, 0x75bf

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/e;->a(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 13

    const/4 v12, 0x2

    const/4 v11, -0x1

    const/16 v1, 0x10

    const/4 v10, -0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->f:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    invoke-interface {v0, v1, v3, v3}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;->onBackupProgressChange(III)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->f:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    const/16 v4, 0x14

    const-wide/16 v5, 0x1f4

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->h:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->h:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->a(ILcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;IIJI)V

    invoke-static {}, Lcom/tencent/qqpim/sdk/accesslayer/a;->f()[Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->i:[Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->b()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->i:[Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->i:[Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {v3}, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->b(I)V

    move v0, v11

    :goto_0
    return v0

    :cond_1
    sget-boolean v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->e:Z

    if-eqz v0, :cond_2

    invoke-static {v12}, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->b(I)V

    move v0, v10

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->i:[Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->a([Lcom/tencent/qqpim/sdk/interfaces/IEntity;I)Ljava/util/LinkedList;

    move-result-object v5

    sget-boolean v0, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->e:Z

    if-eqz v0, :cond_3

    invoke-static {v12}, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->b(I)V

    move v0, v10

    goto :goto_0

    :cond_3
    const-string v7, "calllog2.bak"

    iget-object v8, p0, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->f:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;

    const/16 v9, 0x14

    move-object v4, p0

    move v6, v1

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->a(Ljava/util/LinkedList;ILjava/lang/String;Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalBackupObserver;I)I

    move-result v0

    if-ne v0, v11, :cond_4

    invoke-static {v3}, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->b(I)V

    move v0, v11

    goto :goto_0

    :cond_4
    if-ne v0, v10, :cond_5

    invoke-static {v12}, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->b(I)V

    move v0, v10

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/apps/localsync/a/a;->b(I)V

    goto :goto_0
.end method
