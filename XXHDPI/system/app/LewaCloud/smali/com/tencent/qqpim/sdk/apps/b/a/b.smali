.class public Lcom/tencent/qqpim/sdk/apps/b/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u672a\u5b89\u88c5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u5df2\u5b89\u88c5"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u53ef\u66f4\u65b0"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u4e0b\u8f7d\u4e2d\u65ad"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u7834\u635f"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u4e0b\u8f7d\u6682\u505c"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/b/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(J)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/apps/b/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/sdk/apps/b/a/b;->d:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/b/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/apps/b/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/b/a/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/apps/b/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/tencent/qqpim/sdk/apps/b/a/b;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/tencent/qqpim/sdk/apps/b/a/b;

    iget-object v0, p1, Lcom/tencent/qqpim/sdk/apps/b/a/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/b/a/b;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/qqpim/sdk/apps/b/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/b/a/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/b/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
