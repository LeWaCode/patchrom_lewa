.class public Lcom/tencent/qqpim/sdk/utils/QQPimUtils;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_OPEN_ABOUT:Ljava/lang/String; = "com.tencent.qqpim.action_open_about"

.field public static final ACTION_OPEN_ACCOUNT:Ljava/lang/String; = "com.tencent.qqpim.action_open_account"

.field public static final ACTION_OPEN_MAINUI:Ljava/lang/String; = "com.tencent.qqpim.action_open_mainui"

.field public static final ACTION_OPEN_RecommendActivity:Ljava/lang/String; = "com.tencent.qqpim.action_open_recommendactivity"

.field public static ACTIVITY_MANAGER:Landroid/app/ActivityManager; = null

.field public static APPLICATION_CONTEXT:Landroid/content/Context; = null

.field public static final CATEGORY_OPEN_ABOUT:Ljava/lang/String; = "com.tencent.qqpim.category_open_about"

.field public static final CATEGORY_OPEN_ACCOUNT:Ljava/lang/String; = "com.tencent.qqpim.category_open_account"

.field public static final CATEGORY_OPEN_MAINUI:Ljava/lang/String; = "com.tencent.qqpim.category_open_mainui"

.field public static final CATEGORY_OPEN_RecommendActivity:Ljava/lang/String; = "com.tencent.qqpim.category_open_recommendactivity"

.field public static final RESULT_FAILED:I = 0x2002

.field public static final RESULT_NOT_ENOUGH_SPACE:I = 0x2003

.field public static final RESULT_SUCCESS:I = 0x2001

.field public static final RESULT_USER_CANCEL:I = 0x2004

.field public static final SDCARD_MAP_DIR:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "QQPimUtils"

.field public static mAppIsRunningByUser:Z

.field private static volatile mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

.field public static userStoppedSync:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->ACTIVITY_MANAGER:Landroid/app/ActivityManager;

    sput-boolean v1, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mAppIsRunningByUser:Z

    sput-boolean v1, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->userStoppedSync:Z

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getSDCardDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    sput-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->SDCARD_MAP_DIR:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/.qqpim/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearMapDir()V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getMapDir(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getMapDir(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".map"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/FileUtil;->delAllFilesOfFolder(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, ".map"

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/FileUtil;->delAllFilesOfFolder(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static createFilesDir(Z)Z
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getMapDir(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "QQPimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createFilesDir(), err: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBase64Code([B)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/tencent/qqpim/sdk/utils/Base64;->encodeBase64([B)[B

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "QQPimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getBase64Code(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static getBase64Code(Ljava/lang/String;)[B
    .locals 4

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/Base64;->encodeBase64([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "QQPimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getBase64Code(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBase64CodeFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/Base64;->encodeBase64([B)[B

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "QQPimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getBase64CodeFromString(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static getBytesFromBase64Str(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/Base64;->decodeBase64([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "QQPimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getStringFromBase64Code(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCacheDir()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFileDir()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getImei()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getImei(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImei(Z)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getRawImeiFromMachine()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QQPimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "raw imei from machine"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getImeiFromXml()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getImeiFromXml()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/a;->g:Lcom/tencent/qqpim/sdk/interfaces/a;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/sdk/interfaces/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLCString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    invoke-interface {v0}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getLC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5(Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_2
    const-string v3, "QQPimUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMD5(), "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_3
    const-string v3, "QQPimUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMD5(), "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public static getMapDir(Z)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->SDCARD_MAP_DIR:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/a;->f:Lcom/tencent/qqpim/sdk/interfaces/a;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/sdk/interfaces/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QQPimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMapDir() Dir = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMobileServerURL()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getPOST_URL_WUP_SERVER()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMobileSynServerURL()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getServerURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQQPimVersion()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/VersionUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "0"

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/VersionUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRawImeiFromMachine()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDCardDir()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSDPath()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getServerURL()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/a;->e:Lcom/tencent/qqpim/sdk/interfaces/a;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/sdk/interfaces/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QQPimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getServerURL(), url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStringFromBase64Bytes([B)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, ""

    :try_start_0
    invoke-static {p0}, Lcom/tencent/qqpim/sdk/utils/Base64;->decodeBase64([B)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "QQPimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getStringFromBase64Code(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getStringFromBase64Code(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, ""

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/Base64;->decodeBase64([B)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "QQPimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getStringFromBase64Code(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getUTCStringFromTime(J)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "GMT-0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x10

    new-array v4, v1, [C

    move v2, v0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v2, v0, :cond_0

    const/16 v0, 0x5a

    aput-char v0, v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v0, 0x20

    if-ne v5, v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    const/16 v5, 0x54

    aput-char v5, v4, v1

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x2d

    if-eq v5, v0, :cond_2

    const/16 v0, 0x3a

    if-eq v5, v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    aput-char v5, v4, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "QQPimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUTCStringFromTime(),"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static isImeiDisable()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v2

    sput-object v2, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    :cond_0
    sget-object v2, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    sget-object v3, Lcom/tencent/qqpim/sdk/interfaces/a;->C:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-interface {v2, v3, v0}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getBooleanValue(Lcom/tencent/qqpim/sdk/interfaces/a;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    sget-object v3, Lcom/tencent/qqpim/sdk/interfaces/a;->g:Lcom/tencent/qqpim/sdk/interfaces/a;

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/sdk/interfaces/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "COMN:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "COMN:0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "COMN:null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    const-string v2, "QQPimUtils"

    const-string v3, "isImeiDisable() 1"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getRawImeiFromMachine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "QQPimUtils"

    const-string v2, "isImeiDisable() imei empty"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string v0, "QQPimUtils"

    const-string v2, "isImeiDisable() imei 0,null"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v3, "QQPimUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isImeiDisable() imei = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->setImeiToXml(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    sget-object v3, Lcom/tencent/qqpim/sdk/interfaces/a;->C:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-interface {v2, v3, v1}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->setBooleanValue(Lcom/tencent/qqpim/sdk/interfaces/a;Z)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "QQPimUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isImeiDisable() oldImei = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "COMN:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->setImeiToXml(Ljava/lang/String;)V

    :cond_7
    sget-object v2, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    sget-object v3, Lcom/tencent/qqpim/sdk/interfaces/a;->C:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-interface {v2, v3, v1}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->setBooleanValue(Lcom/tencent/qqpim/sdk/interfaces/a;Z)V

    goto/16 :goto_0
.end method

.method public static openBrower(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    :try_start_0
    const-string v1, "\\+"

    const-string v2, "%2b"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_2
    new-instance v1, Lcom/tencent/qqpim/sdk/utils/WebAddress;

    invoke-direct {v1, v0}, Lcom/tencent/qqpim/sdk/utils/WebAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/utils/WebAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "QQPimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "openBrower(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "QQPimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "openBrower(), url replace e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    move-object v0, p0

    goto :goto_1
.end method

.method public static openSysContact(Landroid/content/Context;)V
    .locals 4

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/adaptive/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->e()Lcom/tencent/qqpim/sdk/adaptive/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/adaptive/b/d;->a()Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "QQPimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "openSysContact(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendMsg(Landroid/os/Handler;III)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static sendMsg(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static setACTIVITY_MANAGER(Landroid/app/ActivityManager;)V
    .locals 0

    sput-object p0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->ACTIVITY_MANAGER:Landroid/app/ActivityManager;

    return-void
.end method

.method public static setAPPLICATION_CONTEXT(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    return-void
.end method

.method public static setImeiToXml(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->mConfigDao:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/a;->g:Lcom/tencent/qqpim/sdk/interfaces/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "COMN:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->setStringValue(Lcom/tencent/qqpim/sdk/interfaces/a;Ljava/lang/String;)V

    return-void
.end method

.method public static timeStrTrans(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, -0x1

    if-nez p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    :try_start_0
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v0, "\u5e74"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_2

    const-string v0, "\u6708"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_2

    const-string v0, "\u65e5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/adaptive/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->e()Lcom/tencent/qqpim/sdk/adaptive/b/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqpim/sdk/adaptive/b/d;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "QQPimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "timeStrTrans(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
