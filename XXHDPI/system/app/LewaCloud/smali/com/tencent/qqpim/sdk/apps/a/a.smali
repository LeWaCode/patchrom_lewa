.class public Lcom/tencent/qqpim/sdk/apps/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/accesslayer/interfaces/a;


# static fields
.field private static volatile b:Lcom/tencent/qqpim/sdk/apps/a/a;


# instance fields
.field private a:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/apps/a/a;->b:Lcom/tencent/qqpim/sdk/apps/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v5, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->a:I

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->e:Ljava/lang/String;

    iput-short v0, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->f:S

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/a/a;->e()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/a;->w:Lcom/tencent/qqpim/sdk/interfaces/a;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/sdk/interfaces/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tencent/qqpim/sdk/interfaces/a;->z:Lcom/tencent/qqpim/sdk/interfaces/a;

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/sdk/interfaces/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/tencent/qqpim/sdk/interfaces/a;->y:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-interface {v1, v4, v5}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)I

    move-result v4

    sget-object v5, Lcom/tencent/qqpim/sdk/interfaces/a;->x:Lcom/tencent/qqpim/sdk/interfaces/a;

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/sdk/interfaces/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getBytesFromBase64Str(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/CryptorUtil;->getSubKeyFromIMEI()[B

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/qqpim/sdk/utils/CryptorUtil;->decryptBytesToString([B[B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v1}, Lcom/tencent/qqpim/sdk/apps/a/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/tencent/qqpim/sdk/apps/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/tencent/qqpim/sdk/apps/a/a;->a(I)V

    iput-object v3, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/a/a;->d()Z

    const/4 v0, 0x1

    :cond_0
    const-string v1, "AccountInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isInitFromSettingOK="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c()Lcom/tencent/qqpim/sdk/apps/a/a;
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/sdk/apps/a/a;->b:Lcom/tencent/qqpim/sdk/apps/a/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/qqpim/sdk/apps/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/apps/a/a;->b:Lcom/tencent/qqpim/sdk/apps/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/apps/a/a;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/apps/a/a;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/sdk/apps/a/a;->b:Lcom/tencent/qqpim/sdk/apps/a/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/apps/a/a;->b:Lcom/tencent/qqpim/sdk/apps/a/a;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->e:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/CryptorUtil;->getSubKeyFromIMEI()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/CryptorUtil;->encryptStringToBytes(Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getBase64Code([B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/a;->w:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/apps/a/a;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->setStringValue(Lcom/tencent/qqpim/sdk/interfaces/a;Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/a;->x:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-interface {v1, v2, v0}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->setStringValue(Lcom/tencent/qqpim/sdk/interfaces/a;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/a;->z:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/apps/a/a;->getAreaCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->setStringValue(Lcom/tencent/qqpim/sdk/interfaces/a;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/a;->y:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/apps/a/a;->getAccountType()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->setIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->a:I

    return-void
.end method


# virtual methods
.method public final a()LWUPSYNC/AccInfo;
    .locals 2

    new-instance v0, LWUPSYNC/AccInfo;

    invoke-direct {v0}, LWUPSYNC/AccInfo;-><init>()V

    iget v1, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->a:I

    iput v1, v0, LWUPSYNC/AccInfo;->accType:I

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->c:Ljava/lang/String;

    iput-object v1, v0, LWUPSYNC/AccInfo;->acc:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getLCString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LWUPSYNC/AccInfo;->LC:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->e:Ljava/lang/String;

    iput-object v1, v0, LWUPSYNC/AccInfo;->loginKey:Ljava/lang/String;

    iget-short v1, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->f:S

    iput-short v1, v0, LWUPSYNC/AccInfo;->language:S

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->a:I

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/a/a;->d()Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/a/a;->d()Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/a/a;->d()Z

    return-void
.end method

.method public clear()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/a/a;->e()V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/a/a;->d()Z

    return-void
.end method

.method public clearAndRetainAccount()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/apps/a/a;->d()Z

    return-void
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->a:I

    return v0
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public isLogined()Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/apps/a/a;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLanguageID(S)V
    .locals 0

    iput-short p1, p0, Lcom/tencent/qqpim/sdk/apps/a/a;->f:S

    return-void
.end method
