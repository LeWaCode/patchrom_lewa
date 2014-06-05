.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;
.super Ljava/lang/Object;


# instance fields
.field private A:I

.field private B:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;

.field private a:B

.field private b:B

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:[B

.field private g:[B

.field private h:[B

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:S

.field private o:S

.field private p:I

.field private q:I

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Ljava/lang/String;

.field private u:S

.field private v:S

.field private w:Z

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 5

    const/16 v4, 0x280

    const/16 v3, 0x100

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->t:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->w:Z

    iput v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->x:I

    iput v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->y:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->z:I

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->B:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->isSDKVersionLargerOrEquals4_0()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-short v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->u:S

    iput-short v4, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->v:S

    :goto_0
    return-void

    :cond_0
    iput-short v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->u:S

    iput-short v3, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->v:S

    goto :goto_0
.end method


# virtual methods
.method public final A()Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->B:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;

    return-object v0
.end method

.method public final B()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->A:I

    return v0
.end method

.method public final C()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->z:I

    return v0
.end method

.method public final a()I
    .locals 3

    const/4 v1, 0x6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->e:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_4

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->f:[B

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->f:[B

    array-length v2, v2

    if-nez v2, :cond_6

    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->g:[B

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->g:[B

    array-length v2, v2

    if-nez v2, :cond_8

    :cond_7
    const/4 v0, 0x4

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->i:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    const/4 v0, 0x5

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->t:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->t:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_b
    move v0, v1

    goto :goto_0
.end method

.method public final a(B)V
    .locals 0

    iput-byte p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->a:B

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->p:I

    return-void
.end method

.method public final a(Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->B:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->e:Ljava/lang/String;

    return-void
.end method

.method public final a(S)V
    .locals 0

    iput-short p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->n:S

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->w:Z

    return-void
.end method

.method public final a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->f:[B

    return-void
.end method

.method public final b()B
    .locals 1

    iget-byte v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->a:B

    return v0
.end method

.method public final b(B)V
    .locals 0

    iput-byte p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->b:B

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->q:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->i:Ljava/lang/String;

    return-void
.end method

.method public final b(S)V
    .locals 0

    iput-short p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->o:S

    return-void
.end method

.method public final b([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->g:[B

    return-void
.end method

.method public final c()B
    .locals 1

    iget-byte v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->b:B

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->s:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->j:Ljava/lang/String;

    return-void
.end method

.method public final c([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->h:[B

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->d:I

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->k:Ljava/lang/String;

    return-void
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->x:I

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->l:Ljava/lang/String;

    return-void
.end method

.method public final e()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->f:[B

    return-object v0
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->y:I

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->m:Ljava/lang/String;

    return-void
.end method

.method public final f()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->g:[B

    return-object v0
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->A:I

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->r:Ljava/lang/String;

    return-void
.end method

.method public final g()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->h:[B

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->z:I

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->t:Ljava/lang/String;

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->c:Ljava/lang/String;

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final m()S
    .locals 1

    iget-short v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->n:S

    return v0
.end method

.method public final n()S
    .locals 1

    iget-short v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->o:S

    return v0
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->p:I

    return v0
.end method

.method public final p()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->q:I

    return v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->s:I

    return v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final u()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->d:I

    return v0
.end method

.method public final v()S
    .locals 1

    iget-short v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->u:S

    return v0
.end method

.method public final w()S
    .locals 1

    iget-short v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->v:S

    return v0
.end method

.method public final x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->w:Z

    return v0
.end method

.method public final y()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->x:I

    return v0
.end method

.method public final z()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/e;->y:I

    return v0
.end method
