.class public Lcom/tencent/qqpim/sdk/core/config/ConfigDao;
.super Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;

# interfaces
.implements Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigDao"

.field private static volatile instance:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

.field public static versionCode:I

.field public static versionHotfix:I

.field public static versionMajor:I

.field public static versionMinor:I


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private setting:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->versionMajor:I

    sput v0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->versionMinor:I

    sput v0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->versionHotfix:I

    sput v0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->versionCode:I

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->instance:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setting:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v1, "SettingInfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setting:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setting:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setting:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->initConfigDao()V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->instance:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->instance:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->instance:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->instance:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initConfigDao()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->initEnvironment()V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->initLogEnvir()V

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getSYNC_URL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/a;->e:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/interfaces/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v3, Lcom/tencent/qqpim/sdk/interfaces/a;->h:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-virtual {v3}, Lcom/tencent/qqpim/sdk/interfaces/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->versionMajor:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->versionMinor:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->versionHotfix:I

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "/data/data/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/a;->f:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/interfaces/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setting:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/a;->k:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/interfaces/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/a;->k:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-virtual {v1}, Lcom/tencent/qqpim/sdk/interfaces/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Lcom/tencent/qqpim/sdk/a/a;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/a/a;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->LC_STRING:Ljava/lang/String;

    :cond_2
    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->initOMS(Lcom/tencent/qqpim/sdk/a/a;)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->initDefaultConfig()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private initDefaultConfig()V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/a;->m:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-virtual {p0, v0, v5}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)I

    move-result v2

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/a;->n:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-virtual {p0, v0, v5}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)I

    move-result v1

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v3, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v2, :cond_0

    if-eq v1, v0, :cond_1

    :cond_0
    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/a;->D:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-virtual {p0, v1, v7}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)I

    move-result v1

    if-ne v1, v7, :cond_3

    if-eqz v2, :cond_2

    invoke-static {v6}, Lcom/tencent/qqpim/sdk/core/config/LocaleSetting;->setLocale(I)V

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/a;->D:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-virtual {p0, v1, v6}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)V

    :goto_1
    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/a;->m:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-virtual {p0, v1, v5}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)V

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/a;->n:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)V

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/a;->d:Lcom/tencent/qqpim/sdk/interfaces/a;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)V

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/a;->r:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-virtual {p0, v0, v6}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setBooleanValue(Lcom/tencent/qqpim/sdk/interfaces/a;Z)V

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/a;->s:Lcom/tencent/qqpim/sdk/interfaces/a;

    const-wide/32 v1, 0x278d00

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setLongValue(Lcom/tencent/qqpim/sdk/interfaces/a;J)V

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/a;->q:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setLongValue(Lcom/tencent/qqpim/sdk/interfaces/a;J)V

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/a;->u:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-virtual {p0, v0, v6}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setBooleanValue(Lcom/tencent/qqpim/sdk/interfaces/a;Z)V

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/a;->t:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-virtual {p0, v0, v6}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setBooleanValue(Lcom/tencent/qqpim/sdk/interfaces/a;Z)V

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/a;->p:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setLongValue(Lcom/tencent/qqpim/sdk/interfaces/a;J)V

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/a;->v:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-virtual {p0, v0, v5}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setBooleanValue(Lcom/tencent/qqpim/sdk/interfaces/a;Z)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v5}, Lcom/tencent/qqpim/sdk/core/config/LocaleSetting;->setLocale(I)V

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/a;->D:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-virtual {p0, v1, v5}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/tencent/qqpim/sdk/core/config/LocaleSetting;->setLocale(I)V

    goto :goto_1
.end method

.method private initLogEnvir()V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->isLOGCAT_DISPLAY_ENABLE()Z

    move-result v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->setLogcatSwitch(Z)V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->isLOG_TO_FILE_ENABLE()Z

    move-result v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->setLogFileSwitch(Z)V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getLOG_WRITE_LEVEL()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->setLogLevel(I)V

    return-void
.end method

.method private initOMS(Lcom/tencent/qqpim/sdk/a/a;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/qqpim/sdk/a/a;

    invoke-direct {p1}, Lcom/tencent/qqpim/sdk/a/a;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/a/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no_soft"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setNEED_CLOSE_SOFT_MARKET(Z)V

    :cond_1
    return-void
.end method

.method public static release()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->instance:Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    return-void
.end method


# virtual methods
.method public addActionStaticData(IJ)V
    .locals 6

    const/4 v5, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/a;->i:Lcom/tencent/qqpim/sdk/interfaces/a;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getStringValue(Lcom/tencent/qqpim/sdk/interfaces/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/a;->j:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-virtual {p0, v1, v5}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)I

    move-result v1

    const/16 v3, 0x32

    if-lt v1, v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v3, -0x1

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/a;->i:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setStringValue(Lcom/tencent/qqpim/sdk/interfaces/a;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/interfaces/a;->j:Lcom/tencent/qqpim/sdk/interfaces/a;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)V

    return-void

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public displayLogcat(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setLOGCAT_DISPLAY_ENABLE(Z)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->initLogEnvir()V

    return-void
.end method

.method public enableFileLog()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setLOG_TO_FILE_ENABLE(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setLOG_WRITE_LEVEL(I)V

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->initLogEnvir()V

    return-void
.end method

.method public getBooleanValue(Lcom/tencent/qqpim/sdk/interfaces/a;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setting:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/interfaces/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFloatValue(Lcom/tencent/qqpim/sdk/interfaces/a;F)F
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setting:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/interfaces/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setting:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/interfaces/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->LC_STRING:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getLOG_UPLOAD_MODE()I
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->getLOG_UPLOAD_MODE()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLOG_WRITE_LEVEL()I
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->getLOG_WRITE_LEVEL()I

    move-result v0

    return v0
.end method

.method public getLongValue(Lcom/tencent/qqpim/sdk/interfaces/a;J)J
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setting:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/interfaces/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStringValue(Lcom/tencent/qqpim/sdk/interfaces/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->setting:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/interfaces/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic initEnvironment()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->initEnvironment()V

    return-void
.end method

.method public bridge synthetic isDebugServer()Z
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->isDebugServer()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLOGCAT_DISPLAY_ENABLE()Z
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->isLOGCAT_DISPLAY_ENABLE()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLOG_TO_FILE_ENABLE()Z
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->isLOG_TO_FILE_ENABLE()Z

    move-result v0

    return v0
.end method

.method public reInitEnvir()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->initConfigDao()V

    return-void
.end method

.method public removeValue(Lcom/tencent/qqpim/sdk/interfaces/a;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/interfaces/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setBooleanValue(Lcom/tencent/qqpim/sdk/interfaces/a;Z)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/interfaces/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setFloatValue(Lcom/tencent/qqpim/sdk/interfaces/a;F)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/interfaces/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/interfaces/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setLC(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->LC_STRING:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setLOGCAT_DISPLAY_ENABLE(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->setLOGCAT_DISPLAY_ENABLE(Z)V

    return-void
.end method

.method public bridge synthetic setLOG_TO_FILE_ENABLE(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->setLOG_TO_FILE_ENABLE(Z)V

    return-void
.end method

.method public setLongValue(Lcom/tencent/qqpim/sdk/interfaces/a;J)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/interfaces/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setStringValue(Lcom/tencent/qqpim/sdk/interfaces/a;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/interfaces/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public switchToDebugEnvir(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->switchToDebugMode(Z)V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->reInitEnvir()V

    return-void
.end method

.method public bridge synthetic switchToDebugMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/qqpim/sdk/core/config/ConfigFactory;->switchToDebugMode(Z)V

    return-void
.end method
