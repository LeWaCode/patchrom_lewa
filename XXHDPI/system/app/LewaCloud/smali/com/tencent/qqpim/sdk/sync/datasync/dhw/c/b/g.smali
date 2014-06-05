.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:I

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;->b:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;->c:J

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;->b:I

    return v0
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;->d:J

    return-void
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;->c:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/c/b/g;->d:J

    return-wide v0
.end method
