.class public final Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil;
.super Ljava/lang/Object;


# static fields
.field public static final CHINA_MOBILE:I = 0x0

.field public static final CHINA_TELECOM:I = 0x2

.field public static final CHINA_UNICOM:I = 0x1

.field private static ESCAPE_SERVICE:Ljava/lang/String; = null

.field public static final NO_NETOP:I = -0x2

.field public static final OTHER:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PhoneInfoUtil"

.field private static TELEPHONY_REGISTRY:Ljava/lang/String;

.field private static TELEPHONY_SERVICE:Ljava/lang/String;

.field private static sDualSimDevice:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "tms_"

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil;->ESCAPE_SERVICE:Ljava/lang/String;

    const-string v0, "[com.android.internal.telephony.ITelephony]"

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil;->TELEPHONY_SERVICE:Ljava/lang/String;

    const-string v0, "[com.android.internal.telephony.ITelephonyRegistry]"

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil;->TELEPHONY_REGISTRY:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil;->sDualSimDevice:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getNetworkOperatorCode()I
    .locals 3

    const/4 v1, -0x2

    sget-object v2, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil;->hasSIM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const-string v2, "46000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46007"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v2, "46001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "46003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public static getPhoneStorageSize(Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil$SizeInfo;)V
    .locals 1

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil;->getSizeInfo(Ljava/io/File;Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil$SizeInfo;)V

    return-void
.end method

.method public static getSimState(Landroid/content/Context;)I
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const-string v1, "PhoneInfoUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSimState="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSizeInfo(Ljava/io/File;Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil$SizeInfo;)V
    .locals 5

    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v1

    iput-wide v3, p1, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil$SizeInfo;->availdSize:J

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v3, v0

    mul-long v0, v3, v1

    iput-wide v0, p1, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil$SizeInfo;->totalSize:J

    return-void
.end method

.method public static getStorageCardSize(Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil$SizeInfo;)V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-static {}, Lcom/tencent/qqpim/sdk/utils/FileUtil;->hasStorageCard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil;->getSizeInfo(Ljava/io/File;Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil$SizeInfo;)V

    :goto_0
    return-void

    :cond_0
    iput-wide v1, p0, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil$SizeInfo;->availdSize:J

    iput-wide v1, p0, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil$SizeInfo;->totalSize:J

    goto :goto_0
.end method

.method public static hasSIM(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil;->getSimState(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDualSimDevice()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil;->sDualSimDevice:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "service"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "list"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/ScriptRunner;->exec([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    array-length v0, v4

    if-lez v0, :cond_7

    array-length v5, v4

    move v2, v3

    move v0, v3

    move v1, v3

    :goto_0
    if-lt v2, v5, :cond_3

    if-gt v1, v8, :cond_0

    if-le v0, v8, :cond_6

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil;->sDualSimDevice:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil;->sDualSimDevice:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil;->sDualSimDevice:Ljava/lang/Boolean;

    :cond_2
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil;->sDualSimDevice:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    :try_start_1
    aget-object v6, v4, v2

    sget-object v7, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil;->ESCAPE_SERVICE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil;->TELEPHONY_SERVICE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    sget-object v7, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil;->TELEPHONY_REGISTRY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil;->sDualSimDevice:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil;->sDualSimDevice:Ljava/lang/Boolean;

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil;->sDualSimDevice:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public static isSimAvailable(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/tencent/qqpim/sdk/utils/PhoneInfoUtil;->getSimState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
