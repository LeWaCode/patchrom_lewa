.class public final Lcom/tencent/qqpim/sdk/object/a/e;
.super Lcom/tencent/qqpim/sdk/object/a/c;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/object/a/c;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/qqpim/sdk/object/a/e;->a:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/object/a/e;->a:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/sdk/object/a/e;->a:J

    return-void
.end method

.method public final b()[B
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/a/e;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/a/e;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PHOTO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/d;->b()[B

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final c()[B
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/a/e;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    move-object v0, v3

    :goto_1
    if-nez v0, :cond_2

    move-object v0, v3

    :goto_2
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/a/e;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PHOTO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/d;->b()[B

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/MD5Util;->encrypt([B)[B

    move-result-object v0

    goto :goto_2
.end method

.method public final bridge synthetic getCheckSum()I
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpim/sdk/object/a/c;->getCheckSum()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getCheckSum(Lcom/tencent/qqpim/sdk/interfaces/c;)J
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/qqpim/sdk/object/a/c;->getCheckSum(Lcom/tencent/qqpim/sdk/interfaces/c;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getEntityType()Lcom/tencent/qqpim/sdk/interfaces/b;
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpim/sdk/object/a/c;->getEntityType()Lcom/tencent/qqpim/sdk/interfaces/b;

    move-result-object v0

    return-object v0
.end method
