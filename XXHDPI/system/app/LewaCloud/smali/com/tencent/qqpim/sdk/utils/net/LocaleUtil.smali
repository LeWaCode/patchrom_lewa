.class public Lcom/tencent/qqpim/sdk/utils/net/LocaleUtil;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/core/config/ILocaleObserver;


# static fields
.field public static final PRCHINA:S = 0x804s

.field public static final TAIWAN:S = 0x404s

.field public static final USA:S = 0x409s


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final auto()S
    .locals 2

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/LocaleUtil;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x804

    :goto_0
    return v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x404

    goto :goto_0

    :cond_1
    const/16 v0, 0x409

    goto :goto_0
.end method

.method private static final getDefaultLocale()Ljava/util/Locale;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    :cond_0
    return-object v0
.end method

.method public static getIsSetAutoAndSystemNotChinese()Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/a;->D:Lcom/tencent/qqpim/sdk/interfaces/a;

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)I

    move-result v1

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/LocaleUtil;->isEnglish()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getLanguageID()S
    .locals 4

    const/16 v0, 0x409

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/a;->D:Lcom/tencent/qqpim/sdk/interfaces/a;

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/LocaleUtil;->auto()S

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/LocaleUtil;->auto()S

    move-result v0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x804

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x404

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public static final getLanguageIdForProtocol()I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/LocaleUtil;->getSettingLocale()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x404

    goto :goto_0

    :cond_2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x409

    goto :goto_0
.end method

.method public static getSettingLocale()Ljava/util/Locale;
    .locals 3

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/a;->D:Lcom/tencent/qqpim/sdk/interfaces/a;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->getIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)I

    move-result v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/LocaleUtil;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/LocaleUtil;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    goto :goto_0

    :pswitch_3
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    goto :goto_0

    :pswitch_4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static isEnglish()Z
    .locals 2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/LocaleUtil;->getSettingLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLocaleCorrect()Z
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/LocaleUtil;->getSettingLocale()Ljava/util/Locale;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimplifiedChinese()Z
    .locals 2

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/LocaleUtil;->getSettingLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTraditionalChinese()Z
    .locals 2

    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/LocaleUtil;->getSettingLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final setLanguageSetting(I)V
    .locals 2

    invoke-static {}, Lcom/tencent/qqpim/sdk/core/config/ConfigDao;->getInstance()Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/sdk/interfaces/a;->D:Lcom/tencent/qqpim/sdk/interfaces/a;

    invoke-interface {v0, v1, p0}, Lcom/tencent/qqpim/sdk/interfaces/IConfigDao;->setIntValue(Lcom/tencent/qqpim/sdk/interfaces/a;I)V

    return-void
.end method


# virtual methods
.method public setLocale(I)V
    .locals 3

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void

    :pswitch_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/LocaleUtil;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/net/LocaleUtil;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0

    :pswitch_2
    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0

    :pswitch_3
    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0

    :pswitch_4
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
