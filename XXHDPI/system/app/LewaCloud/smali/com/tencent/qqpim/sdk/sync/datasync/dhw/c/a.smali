.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

.field private b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    iput-object p2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 6

    const/16 v1, 0x36b0

    const/16 v4, 0x1003

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/16 v3, 0x16

    invoke-interface {v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v2

    if-nez v2, :cond_1

    const/16 v0, 0x4650

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v3, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->e()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v3, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->d:I

    if-eq v3, v4, :cond_4

    :cond_2
    const-string v3, "MapProtocolProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "downloadMap() net err stateCode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    iget v0, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->d:I

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    iget-object v2, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->f:La/u;

    invoke-interface {v3, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(La/u;)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->q()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v1, "MapProtocolProcessor"

    const-string v2, "downloadMap() no need download map"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, "MapProtocolProcessor"

    const-string v3, "downloadMap() need download map"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;

    invoke-interface {v2, v3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/e;)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->e()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v2

    if-eqz v2, :cond_7

    iget v3, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->d:I

    if-eq v3, v4, :cond_9

    :cond_7
    const-string v3, "MapProtocolProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "downloadMap() net err stateCode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_8

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_8
    iget v0, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->d:I

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    iget-object v2, v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->f:La/u;

    invoke-interface {v3, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(La/u;)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->c()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;

    move-result-object v2

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;

    if-eq v2, v3, :cond_6

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/16 v2, 0x17

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v2, "MapProtocolProcessor"

    const-string v3, "downloadMap() send comfirm"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    :cond_a
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->c()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->e()Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 8

    const/16 v3, 0x36b0

    const/16 v7, 0x1003

    const/16 v2, 0x4e20

    const/4 v0, 0x0

    const/16 v1, 0x2ee0

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->r()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v1, "MapProtocolProcessor"

    const-string v2, "uploadMap() no need upload"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const-string v4, "MapProtocolProcessor"

    const-string v5, "uploadMap() need upload"

    invoke-static {v4, v5}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/16 v5, 0x18

    invoke-interface {v4, v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "MapProtocolProcessor"

    const-string v6, "uploadMap() send"

    invoke-static {v5, v6}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v5, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    :cond_2
    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->d()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v5, v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;

    sget-object v6, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/c;

    if-ne v5, v6, :cond_3

    iget v4, v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->d:I

    if-eq v4, v7, :cond_6

    move v4, v3

    :goto_1
    if-ne v4, v1, :cond_c

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->b()I

    invoke-interface {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->f()I

    move-result v4

    if-eqz v4, :cond_d

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    iget-object v4, v4, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->f:La/u;

    invoke-interface {v5, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(La/u;)V

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->o()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/16 v5, 0x13

    invoke-interface {v4, v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v5, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    :cond_4
    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->f()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    move-result-object v4

    sget-object v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v4, v5, :cond_5

    move v4, v1

    goto :goto_1

    :cond_5
    sget-object v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->b()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v5, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->a(I)V

    :cond_6
    :goto_2
    move v4, v0

    goto :goto_1

    :cond_7
    sget-object v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->g:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v4, v5, :cond_8

    move v4, v1

    goto :goto_1

    :cond_8
    sget-object v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->f:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v4, v5, :cond_9

    move v4, v1

    goto :goto_1

    :cond_9
    sget-object v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->d:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v4, v5, :cond_a

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->l()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v5, v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->a(I)V

    goto :goto_2

    :cond_a
    sget-object v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->h:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v4, v5, :cond_b

    move v4, v2

    goto :goto_1

    :cond_b
    sget-object v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;->i:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/g;

    if-ne v4, v5, :cond_6

    const/16 v4, 0x5208

    goto :goto_1

    :cond_c
    if-ne v4, v2, :cond_d

    move v0, v2

    goto/16 :goto_0

    :cond_d
    iget-object v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    invoke-interface {v4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->c()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;

    move-result-object v4

    sget-object v5, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;->c:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/f;

    if-eq v4, v5, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    const/16 v2, 0x19

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(I)Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;)Z

    :cond_e
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->b:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/j;->e()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;

    move-result-object v1

    if-eqz v1, :cond_f

    iget v2, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->d:I

    if-eq v2, v7, :cond_11

    :cond_f
    const-string v2, "MapProtocolProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "downloadMap() net err stateCode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_10

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_0

    :cond_10
    iget v0, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->d:I

    goto :goto_3

    :cond_11
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;

    iget-object v1, v1, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/b;->f:La/u;

    invoke-interface {v2, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/a/d;->a(La/u;)V

    goto/16 :goto_0
.end method
