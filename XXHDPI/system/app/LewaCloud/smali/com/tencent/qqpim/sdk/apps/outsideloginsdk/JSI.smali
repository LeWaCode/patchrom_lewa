.class public Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/JSI;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "JSI"


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mLoginKey:Ljava/lang/String;

.field private final mObserver:Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/b;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/JSI;->mObserver:Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7

    const/4 v6, -0x1

    new-instance v1, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;-><init>()V

    invoke-virtual {v1, p1}, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v2, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/c;->f:[B

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;->b([B)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tccsync/TccTeaEncryptDecrypt;->decrypt([B[B)[B

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "JSI"

    const-string v1, "tcc == null"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    sget-object v0, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/c;->g:[B

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/c;->h:[B

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_2

    invoke-static {}, Lcom/tencent/qqpim/sdk/apps/a/a;->c()Lcom/tencent/qqpim/sdk/apps/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/JSI;->mAccount:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/JSI;->mLoginKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->b(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->a(I)V

    const/16 v1, 0x804

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;->setLanguageID(S)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/JSI;->mObserver:Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/b;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/b;->a()V

    goto :goto_0

    :cond_2
    aget-object v3, v2, v0

    sget-object v4, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/c;->g:[B

    invoke-virtual {v1, v4}, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_4

    aget-object v4, v2, v0

    sget-object v5, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/c;->g:[B

    invoke-virtual {v1, v5}, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/JSI;->mAccount:Ljava/lang/String;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    aget-object v3, v2, v0

    sget-object v4, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/c;->h:[B

    invoke-virtual {v1, v4}, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_3

    aget-object v4, v2, v0

    sget-object v5, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/c;->h:[B

    invoke-virtual {v1, v5}, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/a;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qqpim/sdk/apps/outsideloginsdk/JSI;->mLoginKey:Ljava/lang/String;

    goto :goto_2
.end method
