.class public final Lcom/tencent/qqpim/sdk/object/a/b;
.super Lcom/tencent/qqpim/sdk/object/a/c;


# instance fields
.field private final a:Lcom/tencent/qqpim/sdk/sync/contact/d;

.field private b:[B

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/object/a/c;-><init>()V

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/contact/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/contact/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/object/a/b;->a:Lcom/tencent/qqpim/sdk/sync/contact/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/object/a/b;->b:[B

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/object/d;
    .locals 4

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/a/b;->values:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/a/b;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    if-ne v2, v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/a/b;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_2
    if-gez v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/a/b;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/d;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/a/b;->values:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/d;

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/object/a/b;->c:Z

    return-void
.end method

.method public final a([B)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/object/a/b;->b:[B

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/tencent/qqpim/sdk/utils/MD5Util;->encrypt([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/object/a/b;->b:[B

    goto :goto_0
.end method

.method public final a()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/a/b;->b:[B

    return-object v0
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/a/b;->a:Lcom/tencent/qqpim/sdk/sync/contact/d;

    iget v1, v1, Lcom/tencent/qqpim/sdk/sync/contact/d;->c:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/a/b;->a:Lcom/tencent/qqpim/sdk/sync/contact/d;

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/contact/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/a/b;->a:Lcom/tencent/qqpim/sdk/sync/contact/d;

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/sync/contact/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/object/a/b;->moveToFirst()Z

    move v0, v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/object/a/b;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    if-lt v0, v2, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/object/a/b;->getCurrentValue()Lcom/tencent/qqpim/sdk/object/d;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/object/a/b;->moveToNext()Z

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "X-FOCUS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v5}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/object/a/b;->a:Lcom/tencent/qqpim/sdk/sync/contact/d;

    const/4 v3, 0x1

    iput v3, v2, Lcom/tencent/qqpim/sdk/sync/contact/d;->c:I

    goto :goto_0

    :cond_3
    const-string v4, "ACCOUNTNAME"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/object/a/b;->a:Lcom/tencent/qqpim/sdk/sync/contact/d;

    invoke-virtual {v2, v5}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/qqpim/sdk/sync/contact/d;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const-string v4, "ACCOUNTTYPE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/object/a/b;->a:Lcom/tencent/qqpim/sdk/sync/contact/d;

    invoke-virtual {v2, v5}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/qqpim/sdk/sync/contact/d;->b:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/object/a/b;->c:Z

    return v0
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

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/a/b;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\nstarred = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/a/b;->a:Lcom/tencent/qqpim/sdk/sync/contact/d;

    iget v1, v1, Lcom/tencent/qqpim/sdk/sync/contact/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/a/b;->a:Lcom/tencent/qqpim/sdk/sync/contact/d;

    iget-object v1, v1, Lcom/tencent/qqpim/sdk/sync/contact/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/a/b;->a:Lcom/tencent/qqpim/sdk/sync/contact/d;

    iget-object v1, v1, Lcom/tencent/qqpim/sdk/sync/contact/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isHasPhoto = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/qqpim/sdk/object/a/b;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
