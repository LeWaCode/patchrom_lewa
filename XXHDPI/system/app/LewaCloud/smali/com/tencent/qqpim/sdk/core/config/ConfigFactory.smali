.class Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;
.super Ljava/lang/Object;


# static fields
.field public static final DATA_UPLOAD:Z = true

.field private static final DEBUG_AS_RELEASE_DEFAULT:Z = true

.field public static final ENABLE_SHARING_SYNC_MAP:Z = true

.field private static final FEATURE_UPLOAD_ADDRESS_AS_RELEASE:Z = true

.field public static final GRAY_RELEASE:Z = false

.field public static final GROUP_SYNC_TYPE:B = 0x0t

.field public static final IS_PLOG_ENCRYPTION:Z = true

.field public static final IS_TEST_VERSION:Z = false

.field private static final LOGCAT_DISPLAY_ENABLE_DEFAULT:Z = true

.field private static final LOG_TO_FILE_ENABLE_DEFAULT:Z = false

.field private static final LOG_UPLOAD_MODE_DEFAULT:I = 0x0

.field private static final LOG_WRITE_LEVEL_DEFAULT:I = 0x2

.field private static NEED_CLOSE_SOFT_MARKET:Z = false

.field private static final NEED_CLOSE_SOFT_MARKET_DEFAULT:Z = false

.field public static final NEED_FIRST_GUIDE:Z = false

.field public static final SUPPORT_QQSERVICE_STYLE:I = 0x0

.field private static final SYNC_CONTACT_IMAGES:Z = true

.field public static final SYNC_CONTACT_PHOTO_WITH_DATA:Z = false

.field private static final TAG:Ljava/lang/String; = "ConfigFactory"

.field protected static m_DynamicKey_SYNC_URL:Ljava/lang/String;

.field protected static m_HOST_TEST_INTERNAL:Ljava/lang/String;

.field protected static m_POST_URL_WUP_SERVER:Ljava/lang/String;

.field protected static m_SYNC_URL:Ljava/lang/String;

.field protected static m_URL_OFT_MARKET:Ljava/lang/String;

.field protected static m_URL_SOFT_BACKUP:Ljava/lang/String;

.field protected static m_URL_SOFT_UPLOAD:Ljava/lang/String;

.field protected static m_URL_YUN_LOGIN:Ljava/lang/String;


# instance fields
.field private DEBUG_AS_RELEASE:Z

.field protected LC_STRING:Ljava/lang/String;

.field private LOGCAT_DISPLAY_ENABLE:Z

.field private LOG_TO_FILE_ENABLE:Z

.field private LOG_UPLOAD_MODE:I

.field private LOG_WRITE_LEVEL:I

.field private isDebugServer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->NEED_CLOSE_SOFT_MARKET:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->isDebugServer:Z

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->DEBUG_AS_RELEASE:Z

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->LOGCAT_DISPLAY_ENABLE:Z

    iput-boolean v1, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->LOG_TO_FILE_ENABLE:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->LOG_WRITE_LEVEL:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->LOG_UPLOAD_MODE:I

    const-string v0, "E8BF561EF973E811"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->LC_STRING:Ljava/lang/String;

    return-void
.end method

.method public static getCloudCmd_URL()Ljava/lang/String;
    .locals 1

    const-string v0, "http://pmir.3g.qq.com"

    return-object v0
.end method

.method public static getDynamicKey_SYNC_URL()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_DynamicKey_SYNC_URL:Ljava/lang/String;

    return-object v0
.end method

.method public static getHOST_TEST_INTERNAL()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_HOST_TEST_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method public static getMANAGEWEBSITE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "http://pim.3g.qq.com/?un=%s&lk=%s&hl=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getOperationUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "s%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :cond_1
    :goto_1
    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object p0, v0

    goto :goto_1
.end method

.method public static getPOST_LOG_URL()Ljava/lang/String;
    .locals 1

    const-string v0, "http://jsync.3g.qq.com/postpimlogs/"

    return-object v0
.end method

.method public static getPOST_URL_WUP_SERVER()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_POST_URL_WUP_SERVER:Ljava/lang/String;

    return-object v0
.end method

.method public static getPOST_URL_YUN_LOGIN()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_URL_YUN_LOGIN:Ljava/lang/String;

    return-object v0
.end method

.method public static final getSYNC_CONTACT_IMAGES()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getSYNC_URL()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_SYNC_URL:Ljava/lang/String;

    return-object v0
.end method

.method public static getURL_SOFT_BACKUP()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_URL_SOFT_BACKUP:Ljava/lang/String;

    return-object v0
.end method

.method public static getURL_SOFT_MARKET()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_URL_OFT_MARKET:Ljava/lang/String;

    return-object v0
.end method

.method public static getURL_SOFT_UPLOAD()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_URL_SOFT_UPLOAD:Ljava/lang/String;

    return-object v0
.end method

.method private initCloudModeEnvir()V
    .locals 4

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->initReleaseEnvironment()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/object/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/qqpim/sdk/object/b;->e()Z

    move-result v0

    invoke-static {}, Lcom/tencent/qqpim/sdk/object/b;->d()Z

    move-result v1

    invoke-static {}, Lcom/tencent/qqpim/sdk/object/b;->f()S

    move-result v2

    invoke-static {}, Lcom/tencent/qqpim/sdk/object/b;->g()I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->setLOG_TO_FILE_ENABLE(Z)V

    invoke-virtual {p0, v1}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->setLOGCAT_DISPLAY_ENABLE(Z)V

    invoke-virtual {p0, v2}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->setLOG_WRITE_LEVEL(I)V

    iput v3, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->LOG_UPLOAD_MODE:I

    :cond_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/object/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/qqpim/sdk/object/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->initDebugServer()V

    :cond_1
    return-void
.end method

.method private initDebugEnvironment()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->initDebugServer()V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->initDebugSwitches()V

    return-void
.end method

.method private initDebugEnvironmentWithReleaseServer()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->initReleaseServer()V

    return-void
.end method

.method private initDebugServer()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->isDebugServer:Z

    const-string v0, "newsynctest.cs0309.3g.qq.com"

    sput-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_SYNC_URL:Ljava/lang/String;

    const-string v0, "mpscrypto.cs0309.3g.qq.com"

    sput-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_DynamicKey_SYNC_URL:Ljava/lang/String;

    const-string v0, "http://jsync.cs0309.3g.qq.com/android"

    sput-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_POST_URL_WUP_SERVER:Ljava/lang/String;

    const-string v0, "http://jsync.cs0309.3g.qq.com"

    sput-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_URL_SOFT_BACKUP:Ljava/lang/String;

    const-string v0, "http://binzai.cs0309.3g.qq.com"

    sput-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_URL_SOFT_UPLOAD:Ljava/lang/String;

    const-string v0, "http://wuptest.cs0309.3g.qq.com"

    sput-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_URL_OFT_MARKET:Ljava/lang/String;

    const-string v0, "http://wuptest.cs0309.3g.qq.com"

    sput-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_HOST_TEST_INTERNAL:Ljava/lang/String;

    const-string v0, "http://hanjiewu.cs0309.3g.qq.com/web_pim"

    sput-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_URL_YUN_LOGIN:Ljava/lang/String;

    return-void
.end method

.method private initDebugSwitches()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->setLOG_TO_FILE_ENABLE(Z)V

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->setLOGCAT_DISPLAY_ENABLE(Z)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->setLOG_WRITE_LEVEL(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->LOG_UPLOAD_MODE:I

    return-void
.end method

.method private initLocalModeEnvir()V
    .locals 1

    new-instance v0, Lcom/tencent/qqpim/sdk/a/a;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/a/a;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->initReleaseEnvironment()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->DEBUG_AS_RELEASE:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->initReleaseServer()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->initDebugEnvironment()V

    goto :goto_0
.end method

.method private initReleaseEnvironment()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->initReleaseServer()V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->initReleaseSwitches()V

    return-void
.end method

.method private initReleaseServer()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->isDebugServer:Z

    const-string v0, "sync.3g.qq.com"

    sput-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_SYNC_URL:Ljava/lang/String;

    const-string v0, "syncsec.3g.qq.com"

    sput-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_DynamicKey_SYNC_URL:Ljava/lang/String;

    const-string v0, "http://jsync.3g.qq.com/android"

    sput-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_POST_URL_WUP_SERVER:Ljava/lang/String;

    const-string v0, "http://jsync.3g.qq.com"

    sput-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_URL_SOFT_BACKUP:Ljava/lang/String;

    const-string v0, "http://uploadserver.3g.qq.com"

    sput-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_URL_SOFT_UPLOAD:Ljava/lang/String;

    const-string v0, "http://pmir.3g.qq.com"

    sput-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_URL_OFT_MARKET:Ljava/lang/String;

    const-string v0, "http://pmir.3g.qq.com"

    sput-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_HOST_TEST_INTERNAL:Ljava/lang/String;

    const-string v0, "http://pim.qq.com/qrlogin"

    sput-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_URL_YUN_LOGIN:Ljava/lang/String;

    return-void
.end method

.method private initReleaseSwitches()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->setLOG_TO_FILE_ENABLE(Z)V

    invoke-virtual {p0, v1}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->setLOGCAT_DISPLAY_ENABLE(Z)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->setLOG_WRITE_LEVEL(I)V

    iput v1, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->LOG_UPLOAD_MODE:I

    return-void
.end method

.method public static isNEED_CLOSE_SOFT_MARKET()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->NEED_CLOSE_SOFT_MARKET:Z

    return v0
.end method

.method private static setDynamicKey_SYNC_URL(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_DynamicKey_SYNC_URL:Ljava/lang/String;

    return-void
.end method

.method private static setHOST_TEST_INTERNAL_URL(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_HOST_TEST_INTERNAL:Ljava/lang/String;

    return-void
.end method

.method private setIsDebugServer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->isDebugServer:Z

    return-void
.end method

.method private setLOG_UPLOAD_MODE(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->LOG_UPLOAD_MODE:I

    return-void
.end method

.method public static setNEED_CLOSE_SOFT_MARKET(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->NEED_CLOSE_SOFT_MARKET:Z

    return-void
.end method

.method private static setPOST_URL_WUP_SERVER(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_POST_URL_WUP_SERVER:Ljava/lang/String;

    return-void
.end method

.method private static setPOST_URL_YUN_LOGIN(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_URL_YUN_LOGIN:Ljava/lang/String;

    return-void
.end method

.method private static setSYNC_URL(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_SYNC_URL:Ljava/lang/String;

    return-void
.end method

.method private static setURL_OFT_MARKET(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_URL_OFT_MARKET:Ljava/lang/String;

    return-void
.end method

.method private static setURL_SOFT_BACKUP(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_URL_SOFT_BACKUP:Ljava/lang/String;

    return-void
.end method

.method private static setURL_SOFT_UPLOAD(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->m_URL_SOFT_UPLOAD:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLOG_UPLOAD_MODE()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->LOG_UPLOAD_MODE:I

    return v0
.end method

.method public getLOG_WRITE_LEVEL()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->LOG_WRITE_LEVEL:I

    return v0
.end method

.method public initEnvironment()V
    .locals 1

    invoke-static {}, Lcom/tencent/qqpim/sdk/object/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->initCloudModeEnvir()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->initLocalModeEnvir()V

    goto :goto_0
.end method

.method public isDebugServer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->isDebugServer:Z

    return v0
.end method

.method public isLOGCAT_DISPLAY_ENABLE()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->LOGCAT_DISPLAY_ENABLE:Z

    return v0
.end method

.method public isLOG_TO_FILE_ENABLE()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->LOG_TO_FILE_ENABLE:Z

    return v0
.end method

.method public setLOGCAT_DISPLAY_ENABLE(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->LOGCAT_DISPLAY_ENABLE:Z

    return-void
.end method

.method public setLOG_TO_FILE_ENABLE(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->LOG_TO_FILE_ENABLE:Z

    return-void
.end method

.method protected setLOG_WRITE_LEVEL(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->LOG_WRITE_LEVEL:I

    return-void
.end method

.method public switchToDebugMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->DEBUG_AS_RELEASE:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
