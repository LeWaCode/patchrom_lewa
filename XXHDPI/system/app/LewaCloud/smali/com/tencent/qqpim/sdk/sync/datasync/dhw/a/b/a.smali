.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/util/ArrayList;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->a:Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/b;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->c:I

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->e:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)J
    .locals 4

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    :goto_1
    return-wide v0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-wide/16 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->e:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/a/b/a;->a(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method
