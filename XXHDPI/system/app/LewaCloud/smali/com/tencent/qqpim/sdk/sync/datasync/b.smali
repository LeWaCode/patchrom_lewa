.class public final Lcom/tencent/qqpim/sdk/sync/datasync/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:[B

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;

.field private l:I

.field private m:S


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->g:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->h:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->i:I

    iput-boolean v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->k:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->l:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->a:I

    return-void
.end method

.method public final a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->k:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(S)V
    .locals 0

    iput-short p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->m:S

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->j:Z

    return-void
.end method

.method public final a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->d:[B

    return-void
.end method

.method public final a()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->d:[B

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->i:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->c:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->h:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->e:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->l:I

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->f:Ljava/lang/String;

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->a:I

    return v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->g:Ljava/lang/String;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->i:I

    return v0
.end method

.method public final i()V
    .locals 2

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->d:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->g:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->i:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->l:I

    return-void
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->j:Z

    return v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->h:I

    return v0
.end method

.method public final l()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->k:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;

    return-object v0
.end method

.method public final m()S
    .locals 1

    iget-short v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->m:S

    return v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/b;->l:I

    return v0
.end method
