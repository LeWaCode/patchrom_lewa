.class public Llewa/bi/common/BICommonUtil;
.super Ljava/lang/Object;
.source "BICommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/bi/common/BICommonUtil$1;,
        Llewa/bi/common/BICommonUtil$CommandResult;,
        Llewa/bi/common/BICommonUtil$VALUE;
    }
.end annotation


# static fields
.field public static BI_CLEINT_ID:Ljava/lang/String; = null

.field private static final BI_CONFIG_NAME:Ljava/lang/String; = "config.xml"

.field private static BI_DEVICE_FIRST_REPORT:Ljava/lang/String; = null

.field private static BI_DEVICE_FIRST_SAVE:Ljava/lang/String; = null

.field private static BI_LEWA_ACCOUNT:Ljava/lang/String; = null

.field private static BI_LEWA_CALLLOG_NUM:Ljava/lang/String; = null

.field private static BI_LEWA_LASTCONFIG_TIME:Ljava/lang/String; = null

.field private static BI_LEWA_LATITUDE:Ljava/lang/String; = null

.field private static BI_LEWA_LOCATION_TIME:Ljava/lang/String; = null

.field private static BI_LEWA_LONGITUDE:Ljava/lang/String; = null

.field private static BI_LEWA_PARTNER:Ljava/lang/String; = null

.field private static BI_LEWA_UUID:Ljava/lang/String; = null

.field private static BI_LOGIN_LAST_TIME:Ljava/lang/String; = null

.field private static BI_PREFERENCES_NAME:Ljava/lang/String; = null

.field private static BI_REPORT_LAST_TIME:Ljava/lang/String; = null

.field private static BI_REPORT_POLICY:Ljava/lang/String; = null

.field private static final BI_SDCARD_CONFIG_PATH:Ljava/lang/String; = null

.field private static final BI_SDCARD_PATH:Ljava/lang/String; = null

.field private static final BI_SYSTEM_CONFIG_PATH:Ljava/lang/String; = "/system/lewa/config/config.xml"

.field private static final BI_SYSTEM_PATH:Ljava/lang/String; = "/system/lewa/config/"

.field private static final BI_TEMP_CONFIG_PATH:Ljava/lang/String; = "/data/data/lewa/config.xml"

.field private static final BI_TEMP_PATH:Ljava/lang/String; = "/data/data/lewa/"

.field private static final CONFIG_SU_BINARY:Ljava/lang/String; = "su0"

.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "bi_lewa_setting"

    sput-object v0, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    .line 63
    const-string v0, "bi_lewa_setting_client_id"

    sput-object v0, Llewa/bi/common/BICommonUtil;->BI_CLEINT_ID:Ljava/lang/String;

    .line 64
    const-string v0, "bi_lewa_setting_report_policy"

    sput-object v0, Llewa/bi/common/BICommonUtil;->BI_REPORT_POLICY:Ljava/lang/String;

    .line 65
    const-string v0, "bi_lewa_setting_report_time"

    sput-object v0, Llewa/bi/common/BICommonUtil;->BI_REPORT_LAST_TIME:Ljava/lang/String;

    .line 66
    const-string v0, "bi_lewa_setting_login_time"

    sput-object v0, Llewa/bi/common/BICommonUtil;->BI_LOGIN_LAST_TIME:Ljava/lang/String;

    .line 67
    const-string v0, "bi_lewa_setting_lewa_account"

    sput-object v0, Llewa/bi/common/BICommonUtil;->BI_LEWA_ACCOUNT:Ljava/lang/String;

    .line 68
    const-string v0, "bi_lewa_setting_lewa_uuid"

    sput-object v0, Llewa/bi/common/BICommonUtil;->BI_LEWA_UUID:Ljava/lang/String;

    .line 69
    const-string v0, "bi_lewa_latitue"

    sput-object v0, Llewa/bi/common/BICommonUtil;->BI_LEWA_LATITUDE:Ljava/lang/String;

    .line 70
    const-string v0, "bi_lewa_longitue"

    sput-object v0, Llewa/bi/common/BICommonUtil;->BI_LEWA_LONGITUDE:Ljava/lang/String;

    .line 71
    const-string v0, "bi_lewa_location_time"

    sput-object v0, Llewa/bi/common/BICommonUtil;->BI_LEWA_LOCATION_TIME:Ljava/lang/String;

    .line 72
    const-string v0, "bi_lewa_call_num"

    sput-object v0, Llewa/bi/common/BICommonUtil;->BI_LEWA_CALLLOG_NUM:Ljava/lang/String;

    .line 73
    const-string v0, "bi_lewa_config_time"

    sput-object v0, Llewa/bi/common/BICommonUtil;->BI_LEWA_LASTCONFIG_TIME:Ljava/lang/String;

    .line 74
    const-string v0, "bi.lewa.partner"

    sput-object v0, Llewa/bi/common/BICommonUtil;->BI_LEWA_PARTNER:Ljava/lang/String;

    .line 75
    const-string v0, "bi_device_first_report"

    sput-object v0, Llewa/bi/common/BICommonUtil;->BI_DEVICE_FIRST_REPORT:Ljava/lang/String;

    .line 76
    const-string v0, "bi_device_first_save"

    sput-object v0, Llewa/bi/common/BICommonUtil;->BI_DEVICE_FIRST_SAVE:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/LEWA/config/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/bi/common/BICommonUtil;->BI_SDCARD_PATH:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Llewa/bi/common/BICommonUtil;->BI_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "config.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/bi/common/BICommonUtil;->BI_SDCARD_CONFIG_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1095
    return-void
.end method

.method public static CommonDivisor(FF)F
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 931
    cmpg-float v1, p0, p1

    if-gez v1, :cond_0

    .line 932
    move v0, p1

    .line 933
    .local v0, c:F
    move p1, p0

    .line 934
    move p0, v0

    .line 937
    .end local v0           #c:F
    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    .line 940
    .end local p0
    :goto_0
    return p0

    .restart local p0
    :cond_1
    rem-float v1, p0, p1

    invoke-static {p1, v1}, Llewa/bi/common/BICommonUtil;->CommonDivisor(FF)F

    move-result p0

    goto :goto_0
.end method

.method public static checkPermissions(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "permission"

    .prologue
    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 377
    .local v0, localPackageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkPhoneState(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 609
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 610
    .local v0, packageManager:Landroid/content/pm/PackageManager;
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    const/4 v1, 0x0

    .line 614
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static compareDate(JJ)I
    .locals 3
    .parameter "secsStart"
    .parameter "secsEnd"

    .prologue
    const/4 v2, 0x0

    .line 91
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 92
    .local v1, timeStart:Landroid/text/format/Time;
    invoke-virtual {v1, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 93
    iput v2, v1, Landroid/text/format/Time;->second:I

    iput v2, v1, Landroid/text/format/Time;->minute:I

    iput v2, v1, Landroid/text/format/Time;->hour:I

    .line 95
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 96
    .local v0, timeEnd:Landroid/text/format/Time;
    invoke-virtual {v0, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 97
    iput v2, v0, Landroid/text/format/Time;->second:I

    iput v2, v0, Landroid/text/format/Time;->minute:I

    iput v2, v0, Landroid/text/format/Time;->hour:I

    .line 99
    invoke-static {v1, v0}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v2

    return v2
.end method

.method private static copyFromDataToSystem()V
    .locals 2

    .prologue
    .line 1001
    const-string v0, "mount -o remount,rw /system && cp /data/data/lewa/config.xml /system/lewa/config/ && mount -o remount,ro /system "

    .line 1002
    .local v0, command:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Llewa/bi/common/BICommonUtil;->runCommandForResult(Ljava/lang/String;Z)Llewa/bi/common/BICommonUtil$CommandResult;

    .line 1003
    return-void
.end method

.method private static copyFromSystemToData()V
    .locals 2

    .prologue
    .line 994
    const-string v0, "mount -o remount,rw /system && cp /system/lewa/config/config.xml /data/data/lewa/ && chmod -R 755 /data/data/lewa/config.xml && mount -o remount,ro /system "

    .line 996
    .local v0, command:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Llewa/bi/common/BICommonUtil;->runCommandForResult(Ljava/lang/String;Z)Llewa/bi/common/BICommonUtil$CommandResult;

    .line 997
    return-void
.end method

.method public static createSystemConfig()V
    .locals 2

    .prologue
    .line 988
    const-string v0, "mount -o remount,rw /system && mkdir -p /system/lewa/config/ && mount -o remount,ro /system "

    .line 989
    .local v0, command:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Llewa/bi/common/BICommonUtil;->runCommandForResult(Ljava/lang/String;Z)Llewa/bi/common/BICommonUtil$CommandResult;

    .line 990
    return-void
.end method

.method private static deleteTempConfig()V
    .locals 2

    .prologue
    .line 1007
    const-string v0, "rm /data/data/lewa/config.xml"

    .line 1008
    .local v0, command:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Llewa/bi/common/BICommonUtil;->runCommandForResult(Ljava/lang/String;Z)Llewa/bi/common/BICommonUtil$CommandResult;

    .line 1009
    return-void
.end method

.method public static fetch_version_info()Ljava/lang/String;
    .locals 6

    .prologue
    .line 417
    const/4 v3, 0x0

    .line 418
    .local v3, result:Ljava/lang/String;
    new-instance v1, Llewa/bi/common/BICMDExecute;

    invoke-direct {v1}, Llewa/bi/common/BICMDExecute;-><init>()V

    .line 420
    .local v1, cmdexe:Llewa/bi/common/BICMDExecute;
    const/4 v4, 0x2

    :try_start_0
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "/system/bin/cat"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "/proc/version"

    aput-object v5, v0, v4

    .line 421
    .local v0, args:[Ljava/lang/String;
    const-string v4, "system/bin/"

    invoke-virtual {v1, v0, v4}, Llewa/bi/common/BICMDExecute;->run([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 425
    .end local v0           #args:[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 422
    :catch_0
    move-exception v2

    .line 423
    .local v2, ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getActivityName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 507
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 508
    .local v0, am:Landroid/app/ActivityManager;
    const-string v2, "android.permission.GET_TASKS"

    invoke-static {p0, v2}, Llewa/bi/common/BICommonUtil;->checkPermissions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 510
    .local v1, cn:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    .line 516
    .end local v1           #cn:Landroid/content/ComponentName;
    :goto_0
    return-object v2

    .line 512
    :cond_0
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_1

    .line 513
    const-string v2, "lost permission"

    const-string v3, "android.permission.GET_TASKS"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "paramContext"

    .prologue
    .line 478
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 479
    .local v2, localPackageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 481
    .local v0, localApplicationInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    .line 482
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "UMS_APPKEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 484
    move-object v4, v3

    .line 485
    .local v4, umsAppkey:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 497
    .end local v0           #localApplicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #localPackageManager:Landroid/content/pm/PackageManager;
    .end local v3           #str:Ljava/lang/String;
    .end local v4           #umsAppkey:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 487
    .restart local v0       #localApplicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #localPackageManager:Landroid/content/pm/PackageManager;
    .restart local v3       #str:Ljava/lang/String;
    :cond_0
    sget-boolean v5, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v5, :cond_1

    .line 488
    const-string v5, "UmsAgent"

    const-string v6, "Could not read UMS_APPKEY meta-data from AndroidManifest.xml."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .end local v0           #localApplicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #localPackageManager:Landroid/content/pm/PackageManager;
    .end local v3           #str:Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v1

    .line 492
    .local v1, localException:Ljava/lang/Exception;
    sget-boolean v5, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v5, :cond_1

    .line 493
    const-string v5, "UmsAgent"

    const-string v6, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getBIClientId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 248
    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 250
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_CLEINT_ID:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, clientId:Ljava/lang/String;
    return-object v0
.end method

.method public static getBILastConfigTime(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 140
    sget-object v3, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 142
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    sget-object v3, Llewa/bi/common/BICommonUtil;->BI_LEWA_LASTCONFIG_TIME:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 143
    .local v1, time:J
    return-wide v1
.end method

.method public static getBILatitude(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 166
    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 168
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_LEWA_LATITUDE:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, latitude:Ljava/lang/String;
    return-object v0
.end method

.method public static getBILewaAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 223
    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 225
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_LEWA_ACCOUNT:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, lewaAccount:Ljava/lang/String;
    return-object v0
.end method

.method public static getBILocationTime(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 153
    sget-object v3, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    sget-object v3, Llewa/bi/common/BICommonUtil;->BI_LEWA_LOCATION_TIME:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 156
    .local v1, time:J
    return-wide v1
.end method

.method public static getBILongitude(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 179
    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 181
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_LEWA_LONGITUDE:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, longitude:Ljava/lang/String;
    return-object v0
.end method

.method public static getBIPartner(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 211
    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 212
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_LEWA_PARTNER:Ljava/lang/String;

    const-string v3, "lewa"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, partner:Ljava/lang/String;
    return-object v0
.end method

.method public static getBIUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 201
    invoke-static {p0}, Llewa/bi/common/BICommonUtil;->getValidBIUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCellInfo(Landroid/content/Context;)Llewa/bi/common/BISCell;
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    .line 674
    new-instance v0, Llewa/bi/common/BISCell;

    invoke-direct {v0}, Llewa/bi/common/BISCell;-><init>()V

    .line 675
    .local v0, cell:Llewa/bi/common/BISCell;
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 677
    .local v4, mTelNet:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    .line 678
    .local v3, location:Landroid/telephony/gsm/GsmCellLocation;
    if-nez v3, :cond_1

    .line 679
    sget-boolean v8, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v8, :cond_0

    .line 680
    const-string v8, "GsmCellLocation Error"

    const-string v9, "GsmCellLocation is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    const/4 v0, 0x0

    .line 698
    .end local v0           #cell:Llewa/bi/common/BISCell;
    :goto_0
    return-object v0

    .line 685
    .restart local v0       #cell:Llewa/bi/common/BISCell;
    :cond_1
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    .line 687
    .local v7, operator:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 688
    .local v5, mcc:I
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 689
    .local v6, mnc:I
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 690
    .local v1, cid:I
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .line 692
    .local v2, lac:I
    iput v5, v0, Llewa/bi/common/BISCell;->MCC:I

    .line 693
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Llewa/bi/common/BISCell;->MCCMNC:I

    .line 694
    iput v6, v0, Llewa/bi/common/BISCell;->MNC:I

    .line 695
    iput v2, v0, Llewa/bi/common/BISCell;->LAC:I

    .line 696
    iput v1, v0, Llewa/bi/common/BISCell;->CID:I

    goto :goto_0
.end method

.method public static getCurVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "paramContext"

    .prologue
    .line 650
    const-string v0, ""

    .line 653
    .local v0, curversion:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 654
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 655
    .local v2, pi:Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 656
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 657
    :cond_0
    const-string v4, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v4

    .line 659
    :catch_0
    move-exception v1

    .line 660
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v4, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v4, :cond_1

    .line 661
    const-string v4, "VersionInfo"

    const-string v5, "Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    move-object v4, v0

    .line 665
    goto :goto_0
.end method

.method public static getDeviceFirstReportStatus(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 290
    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 292
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_DEVICE_FIRST_REPORT:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 293
    .local v0, report:Z
    return v0
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 573
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Llewa/bi/common/BICommonUtil;->checkPermissions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 574
    const-string v0, ""

    .line 575
    .local v0, deviceId:Ljava/lang/String;
    invoke-static {p0}, Llewa/bi/common/BICommonUtil;->checkPhoneState(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 576
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 578
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 580
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    if-eqz v0, :cond_2

    .line 581
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_1

    .line 582
    const-string v2, "commonUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    .end local v0           #deviceId:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 587
    .restart local v0       #deviceId:Ljava/lang/String;
    :cond_2
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_3

    .line 588
    const-string v2, "commonUtil"

    const-string v3, "deviceId is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 594
    .end local v0           #deviceId:Ljava/lang/String;
    :cond_4
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_5

    .line 595
    const-string v2, "lost permissioin"

    const-string v3, "lost----->android.permission.READ_PHONE_STATE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_5
    const-string v0, ""

    goto :goto_0
.end method

.method public static getDeviceUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "context"

    .prologue
    .line 120
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 123
    .local v2, tm:Landroid/telephony/TelephonyManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, tmDevice:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android_id"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, androidId:Ljava/lang/String;
    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    int-to-long v7, v7

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    invoke-direct {v1, v5, v6, v7, v8}, Ljava/util/UUID;-><init>(JJ)V

    .line 129
    .local v1, deviceUuid:Ljava/util/UUID;
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, uniqueId:Ljava/lang/String;
    return-object v4
.end method

.method public static getItude(Llewa/bi/common/BISCell;Z)Llewa/bi/common/BISItude;
    .locals 20
    .parameter "cell"
    .parameter "mUseLocationService"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 707
    new-instance v7, Llewa/bi/common/BISItude;

    invoke-direct {v7}, Llewa/bi/common/BISItude;-><init>()V

    .line 708
    .local v7, itude:Llewa/bi/common/BISItude;
    if-nez p0, :cond_2

    .line 709
    sget-boolean v17, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v17, :cond_0

    .line 710
    const-string v17, "getItude Error"

    const-string v18, "cell is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_0
    const-string v17, ""

    move-object/from16 v0, v17

    iput-object v0, v7, Llewa/bi/common/BISItude;->latitude:Ljava/lang/String;

    .line 714
    const-string v17, ""

    move-object/from16 v0, v17

    iput-object v0, v7, Llewa/bi/common/BISItude;->longitude:Ljava/lang/String;

    .line 780
    :cond_1
    :goto_0
    return-object v7

    .line 717
    :cond_2
    if-eqz p1, :cond_5

    .line 719
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 721
    .local v3, client:Lorg/apache/http/client/HttpClient;
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    const-string v17, "http://www.google.com/loc/json"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 724
    .local v9, post:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 725
    .local v6, holder:Lorg/json/JSONObject;
    const-string v17, "version"

    const-string v18, "1.1.0"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 726
    const-string v17, "host"

    const-string v18, "maps.google.com"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    const-string v17, "address_language"

    const-string v18, "zh_CN"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 728
    const-string v17, "request_address"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 729
    const-string v17, "radio_type"

    const-string v18, "gsm"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 730
    const-string v17, "carrier"

    const-string v18, "HTC"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 732
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 733
    .local v15, tower:Lorg/json/JSONObject;
    const-string v17, "mobile_country_code"

    move-object/from16 v0, p0

    iget v0, v0, Llewa/bi/common/BISCell;->MCC:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 734
    const-string v17, "mobile_network_code"

    move-object/from16 v0, p0

    iget v0, v0, Llewa/bi/common/BISCell;->MNC:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 735
    const-string v17, "cell_id"

    move-object/from16 v0, p0

    iget v0, v0, Llewa/bi/common/BISCell;->CID:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 736
    const-string v17, "location_area_code"

    move-object/from16 v0, p0

    iget v0, v0, Llewa/bi/common/BISCell;->LAC:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 738
    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    .line 739
    .local v16, towerarray:Lorg/json/JSONArray;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 740
    const-string v17, "cell_towers"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 742
    new-instance v10, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 743
    .local v10, query:Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v9, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 745
    invoke-interface {v3, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 746
    .local v11, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 747
    .local v5, entity:Lorg/apache/http/HttpEntity;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 749
    .local v2, buffReader:Ljava/io/BufferedReader;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 750
    .local v13, strBuff:Ljava/lang/StringBuffer;
    const/4 v12, 0x0

    .line 751
    .local v12, result:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 752
    invoke-virtual {v13, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 763
    .end local v2           #buffReader:Ljava/io/BufferedReader;
    .end local v5           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #holder:Lorg/json/JSONObject;
    .end local v10           #query:Lorg/apache/http/entity/StringEntity;
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    .end local v12           #result:Ljava/lang/String;
    .end local v13           #strBuff:Ljava/lang/StringBuffer;
    .end local v15           #tower:Lorg/json/JSONObject;
    .end local v16           #towerarray:Lorg/json/JSONArray;
    :catch_0
    move-exception v4

    .line 764
    .local v4, e:Ljava/lang/Exception;
    :try_start_1
    sget-boolean v17, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v17, :cond_3

    .line 765
    const-string v17, "getItude"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 768
    :cond_3
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 769
    const/4 v3, 0x0

    .line 770
    goto/16 :goto_0

    .line 755
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #buffReader:Ljava/io/BufferedReader;
    .restart local v5       #entity:Lorg/apache/http/HttpEntity;
    .restart local v6       #holder:Lorg/json/JSONObject;
    .restart local v10       #query:Lorg/apache/http/entity/StringEntity;
    .restart local v11       #response:Lorg/apache/http/HttpResponse;
    .restart local v12       #result:Ljava/lang/String;
    .restart local v13       #strBuff:Ljava/lang/StringBuffer;
    .restart local v15       #tower:Lorg/json/JSONObject;
    .restart local v16       #towerarray:Lorg/json/JSONArray;
    :cond_4
    :try_start_2
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 756
    .local v8, json:Lorg/json/JSONObject;
    new-instance v14, Lorg/json/JSONObject;

    const-string v17, "location"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 758
    .local v14, subjosn:Lorg/json/JSONObject;
    const-string v17, "latitude"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Llewa/bi/common/BISItude;->latitude:Ljava/lang/String;

    .line 759
    const-string v17, "longitude"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Llewa/bi/common/BISItude;->longitude:Ljava/lang/String;

    .line 761
    const-string v17, "Itude"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v7, Llewa/bi/common/BISItude;->latitude:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v7, Llewa/bi/common/BISItude;->longitude:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 768
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 769
    const/4 v3, 0x0

    .line 770
    goto/16 :goto_0

    .line 768
    .end local v2           #buffReader:Ljava/io/BufferedReader;
    .end local v5           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #holder:Lorg/json/JSONObject;
    .end local v8           #json:Lorg/json/JSONObject;
    .end local v10           #query:Lorg/apache/http/entity/StringEntity;
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    .end local v12           #result:Ljava/lang/String;
    .end local v13           #strBuff:Ljava/lang/StringBuffer;
    .end local v14           #subjosn:Lorg/json/JSONObject;
    .end local v15           #tower:Lorg/json/JSONObject;
    .end local v16           #towerarray:Lorg/json/JSONArray;
    :catchall_0
    move-exception v17

    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 769
    const/4 v3, 0x0

    throw v17

    .line 774
    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    .end local v9           #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_5
    const-string v17, ""

    move-object/from16 v0, v17

    iput-object v0, v7, Llewa/bi/common/BISItude;->latitude:Ljava/lang/String;

    .line 775
    const-string v17, ""

    move-object/from16 v0, v17

    iput-object v0, v7, Llewa/bi/common/BISItude;->longitude:Ljava/lang/String;

    .line 776
    sget-boolean v17, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v17, :cond_1

    .line 777
    const-string v17, "getItude"

    const-string v18, "not auto getItude, value is \"\""

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getLastCallLogNum(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 306
    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 308
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_LEWA_CALLLOG_NUM:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 309
    .local v0, num:I
    return v0
.end method

.method public static getLastLoginTime(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 350
    sget-object v3, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 352
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    sget-object v3, Llewa/bi/common/BICommonUtil;->BI_LOGIN_LAST_TIME:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 353
    .local v1, time:J
    return-wide v1
.end method

.method public static getLastReportTime(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 325
    sget-object v3, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 327
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    sget-object v3, Llewa/bi/common/BICommonUtil;->BI_REPORT_LAST_TIME:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 328
    .local v1, time:J
    return-wide v1
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 807
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 809
    .local v0, manager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 810
    .local v1, type:I
    const-string v2, "UNKOWN"

    .line 811
    .local v2, typeString:Ljava/lang/String;
    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 812
    const-string v2, "CDMA"

    .line 814
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 815
    const-string v2, "EDGE"

    .line 817
    :cond_1
    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    .line 818
    const-string v2, "EVDO_0"

    .line 820
    :cond_2
    const/4 v3, 0x6

    if-ne v1, v3, :cond_3

    .line 821
    const-string v2, "EVDO_A"

    .line 823
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 824
    const-string v2, "GPRS"

    .line 826
    :cond_4
    const/16 v3, 0x8

    if-ne v1, v3, :cond_5

    .line 827
    const-string v2, "HSDPA"

    .line 829
    :cond_5
    const/16 v3, 0xa

    if-ne v1, v3, :cond_6

    .line 830
    const-string v2, "HSPA"

    .line 832
    :cond_6
    const/16 v3, 0x9

    if-ne v1, v3, :cond_7

    .line 833
    const-string v2, "HSUPA"

    .line 835
    :cond_7
    const/4 v3, 0x3

    if-ne v1, v3, :cond_8

    .line 836
    const-string v2, "UMTS"

    .line 838
    :cond_8
    if-nez v1, :cond_9

    .line 839
    const-string v2, "UNKOWN"

    .line 842
    :cond_9
    return-object v2
.end method

.method public static getOsVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "paramContext"

    .prologue
    .line 549
    const-string v0, ""

    .line 550
    .local v0, osVersion:Ljava/lang/String;
    invoke-static {p0}, Llewa/bi/common/BICommonUtil;->checkPhoneState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 552
    sget-boolean v1, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v1, :cond_0

    .line 553
    const-string v1, "android_osVersion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OsVerson"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, v0

    .line 562
    :goto_0
    return-object v1

    .line 558
    :cond_1
    sget-boolean v1, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v1, :cond_2

    .line 559
    const-string v1, "android_osVersion"

    const-string v2, "OsVerson get failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 528
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 530
    .local v0, am:Landroid/app/ActivityManager;
    const-string v2, "android.permission.GET_TASKS"

    invoke-static {p0, v2}, Llewa/bi/common/BICommonUtil;->checkPermissions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 532
    .local v1, cn:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 538
    .end local v1           #cn:Landroid/content/ComponentName;
    :goto_0
    return-object v2

    .line 534
    :cond_0
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_1

    .line 535
    const-string v2, "lost permission"

    const-string v3, "android.permission.GET_TASKS"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getReportPolicyMode(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 273
    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 275
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_REPORT_POLICY:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 276
    .local v1, type:I
    return v1
.end method

.method public static getSdkVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "paramContext"

    .prologue
    .line 625
    const-string v0, ""

    .line 626
    .local v0, osVersion:Ljava/lang/String;
    invoke-static {p0}, Llewa/bi/common/BICommonUtil;->checkPhoneState(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 627
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 628
    sget-boolean v1, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v1, :cond_0

    .line 629
    const-string v1, "android_osVersion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OsVerson"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, v0

    .line 638
    :goto_0
    return-object v1

    .line 634
    :cond_1
    sget-boolean v1, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v1, :cond_2

    .line 635
    const-string v1, "android_osVersion"

    const-string v2, "OsVerson get failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 464
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 465
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 466
    .local v1, localSimpleDateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTimedayGap(JJ)I
    .locals 8
    .parameter "secsStart"
    .parameter "secsEnd"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 103
    cmp-long v4, p2, p0

    if-lez v4, :cond_0

    .line 104
    const/4 v4, -0x1

    .line 116
    :goto_0
    return v4

    .line 106
    :cond_0
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 107
    .local v3, timeStart:Landroid/text/format/Time;
    invoke-virtual {v3, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 108
    iput v5, v3, Landroid/text/format/Time;->second:I

    iput v5, v3, Landroid/text/format/Time;->minute:I

    iput v5, v3, Landroid/text/format/Time;->hour:I

    .line 110
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 111
    .local v2, timeEnd:Landroid/text/format/Time;
    invoke-virtual {v2, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 112
    iput v5, v2, Landroid/text/format/Time;->second:I

    iput v5, v2, Landroid/text/format/Time;->minute:I

    iput v5, v2, Landroid/text/format/Time;->hour:I

    .line 114
    invoke-virtual {v3, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-virtual {v2, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 116
    .local v0, secsGap:J
    const-wide/32 v4, 0x5265c00

    div-long v4, v0, v4

    long-to-int v4, v4

    goto :goto_0
.end method

.method private static getValidBIUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 957
    const/4 v4, 0x0

    .line 958
    .local v4, uuid:Ljava/lang/String;
    new-instance v0, Llewa/bi/common/BICommonUtil$VALUE;

    const/4 v6, 0x0

    invoke-direct {v0, v6}, Llewa/bi/common/BICommonUtil$VALUE;-><init>(Llewa/bi/common/BICommonUtil$1;)V

    .line 959
    .local v0, configValue:Llewa/bi/common/BICommonUtil$VALUE;
    sget-object v6, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 961
    .local v3, sharedPreferences:Landroid/content/SharedPreferences;
    sget-object v6, Llewa/bi/common/BICommonUtil;->BI_LEWA_UUID:Ljava/lang/String;

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 962
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v5, v4

    .line 983
    .end local v4           #uuid:Ljava/lang/String;
    .local v5, uuid:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 966
    .end local v5           #uuid:Ljava/lang/String;
    .restart local v4       #uuid:Ljava/lang/String;
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 967
    new-instance v2, Ljava/io/File;

    const-string v6, "/data/data/lewa/config.xml"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 969
    .local v2, sSystemFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 970
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 972
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 973
    invoke-static {}, Llewa/bi/common/BICommonUtil;->copyFromSystemToData()V

    .line 974
    const-string v6, "/data/data/lewa/config.xml"

    invoke-static {v6, v0}, Llewa/bi/common/BICommonUtil;->readConfig(Ljava/lang/String;Llewa/bi/common/BICommonUtil$VALUE;)Llewa/bi/common/BICommonUtil$VALUE;

    move-result-object v0

    .line 975
    invoke-virtual {v0}, Llewa/bi/common/BICommonUtil$VALUE;->getBIUuid()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 980
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v5, v4

    .end local v4           #uuid:Ljava/lang/String;
    .restart local v5       #uuid:Ljava/lang/String;
    goto :goto_0

    .line 977
    .end local v5           #uuid:Ljava/lang/String;
    .restart local v4       #uuid:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 978
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #sSystemFile:Ljava/io/File;
    :cond_2
    move-object v5, v4

    .line 983
    .end local v4           #uuid:Ljava/lang/String;
    .restart local v5       #uuid:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 881
    const-string v3, ""

    .line 883
    .local v3, versionName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 884
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 885
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 886
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 887
    :cond_0
    const-string v4, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v4

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v4, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v4, :cond_1

    .line 891
    const-string v4, "UmsAgent"

    const-string v5, "Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    move-object v4, v3

    .line 894
    goto :goto_0
.end method

.method public static getXmlItemValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "key"

    .prologue
    .line 898
    const/4 v2, 0x0

    .line 899
    .local v2, map:Ljava/util/Map;
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/lewa/shared_prefs/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 900
    .local v1, mFile:Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 902
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x400

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 903
    .local v3, str:Ljava/io/BufferedInputStream;
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v2

    .line 904
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 905
    if-eqz v2, :cond_1

    .line 906
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 907
    .local v4, value:Ljava/lang/String;
    sget-boolean v5, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v5, :cond_0

    .line 908
    const-string v5, "getXmlItemValue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 921
    .end local v3           #str:Ljava/io/BufferedInputStream;
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v5, "getXmlItemValue"

    const-string v6, "getSharedPreferences"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 921
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    const-string v4, ""

    goto :goto_0

    .line 914
    :catch_1
    move-exception v0

    .line 915
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v5, "getXmlItemValue"

    const-string v6, "getSharedPreferences"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 916
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 917
    .local v0, e:Ljava/io/IOException;
    const-string v5, "getXmlItemValue"

    const-string v6, "getSharedPreferences"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static isHaveGravity(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 790
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 791
    .local v0, manager:Landroid/hardware/SensorManager;
    if-nez v0, :cond_0

    .line 792
    const/4 v1, 0x0

    .line 794
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 435
    const-string v3, "android.permission.INTERNET"

    invoke-static {p0, v3}, Llewa/bi/common/BICommonUtil;->checkPermissions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 436
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 438
    .local v0, cManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 441
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 442
    const/4 v2, 0x1

    .line 454
    .end local v0           #cManager:Landroid/net/ConnectivityManager;
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 444
    .restart local v0       #cManager:Landroid/net/ConnectivityManager;
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_1
    sget-boolean v3, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v3, :cond_0

    .line 445
    const-string v3, "error"

    const-string v4, "Network error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 450
    .end local v0           #cManager:Landroid/net/ConnectivityManager;
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_2
    sget-boolean v3, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v3, :cond_0

    .line 451
    const-string v3, " lost  permission"

    const-string v4, "lost----> android.permission.INTERNET"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isNetworkTypeWifi(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 853
    const-string v3, "android.permission.INTERNET"

    invoke-static {p0, v3}, Llewa/bi/common/BICommonUtil;->checkPermissions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 854
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 856
    .local v0, cManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 858
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WIFI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 859
    const/4 v2, 0x1

    .line 870
    .end local v0           #cManager:Landroid/net/ConnectivityManager;
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 861
    .restart local v0       #cManager:Landroid/net/ConnectivityManager;
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_1
    sget-boolean v3, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v3, :cond_0

    .line 862
    const-string v3, "error"

    const-string v4, "Network not wifi"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 867
    .end local v0           #cManager:Landroid/net/ConnectivityManager;
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_2
    sget-boolean v3, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v3, :cond_0

    .line 868
    const-string v3, " lost  permission"

    const-string v4, "lost----> android.permission.INTERNET"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isWiFiActive(Landroid/content/Context;)Z
    .locals 7
    .parameter "inContext"

    .prologue
    const/4 v4, 0x0

    .line 387
    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v5}, Llewa/bi/common/BICommonUtil;->checkPermissions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 388
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 389
    .local v1, context:Landroid/content/Context;
    const-string v5, "connectivity"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 391
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 393
    .local v3, info:[Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 394
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 395
    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WIFI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 396
    const/4 v4, 0x1

    .line 407
    .end local v0           #connectivity:Landroid/net/ConnectivityManager;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #i:I
    .end local v3           #info:[Landroid/net/NetworkInfo;
    :cond_0
    :goto_1
    return v4

    .line 394
    .restart local v0       #connectivity:Landroid/net/ConnectivityManager;
    .restart local v1       #context:Landroid/content/Context;
    .restart local v2       #i:I
    .restart local v3       #info:[Landroid/net/NetworkInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 403
    .end local v0           #connectivity:Landroid/net/ConnectivityManager;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #i:I
    .end local v3           #info:[Landroid/net/NetworkInfo;
    :cond_2
    sget-boolean v5, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v5, :cond_0

    .line 404
    const-string v5, "lost permission"

    const-string v6, "lost--->android.permission.ACCESS_WIFI_STATE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static nCommonDivisor(Ljava/util/List;I)F
    .locals 2
    .parameter
    .parameter "n"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;I)F"
        }
    .end annotation

    .prologue
    .line 925
    .local p0, time:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 926
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 927
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v1}, Llewa/bi/common/BICommonUtil;->nCommonDivisor(Ljava/util/List;I)F

    move-result v1

    invoke-static {v0, v1}, Llewa/bi/common/BICommonUtil;->CommonDivisor(FF)F

    move-result v0

    goto :goto_0
.end method

.method private static readConfig(Ljava/lang/String;Llewa/bi/common/BICommonUtil$VALUE;)Llewa/bi/common/BICommonUtil$VALUE;
    .locals 11
    .parameter "path"
    .parameter "config_value"

    .prologue
    .line 1038
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1039
    .local v6, files:Ljava/io/File;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1040
    .local v7, in:Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 1041
    .local v8, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v10, "UTF-8"

    invoke-interface {v8, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1042
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .local v5, event:I
    :goto_0
    const/4 v10, 0x1

    if-eq v5, v10, :cond_1

    .line 1044
    packed-switch v5, :pswitch_data_0

    .line 1042
    :cond_0
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_0

    .line 1046
    :pswitch_0
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 1047
    .local v2, count:I
    const/4 v0, 0x0

    .line 1048
    .local v0, attrName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, attrValue:Ljava/lang/String;
    move v3, v2

    .line 1049
    .end local v2           #count:I
    .local v3, count:I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3           #count:I
    .restart local v2       #count:I
    if-lez v3, :cond_0

    .line 1050
    invoke-interface {v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 1051
    const-string v10, "name"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1052
    invoke-interface {v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 1053
    sget-object v10, Llewa/bi/common/BICommonUtil;->BI_LEWA_UUID:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1054
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    .line 1055
    .local v9, text:Ljava/lang/String;
    invoke-virtual {p1, v9}, Llewa/bi/common/BICommonUtil$VALUE;->setBIUuid(Ljava/lang/String;)V

    move v3, v2

    .line 1056
    .end local v2           #count:I
    .restart local v3       #count:I
    goto :goto_1

    .line 1063
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    .end local v3           #count:I
    .end local v9           #text:Ljava/lang/String;
    :cond_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1071
    .end local v5           #event:I
    .end local v6           #files:Ljava/io/File;
    .end local v7           #in:Ljava/io/InputStream;
    .end local v8           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_2
    return-object p1

    .line 1064
    :catch_0
    move-exception v4

    .line 1065
    .local v4, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 1066
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    .line 1067
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 1068
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v4

    .line 1069
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v4           #e:Ljava/io/IOException;
    .restart local v0       #attrName:Ljava/lang/String;
    .restart local v1       #attrValue:Ljava/lang/String;
    .restart local v2       #count:I
    .restart local v5       #event:I
    .restart local v6       #files:Ljava/io/File;
    .restart local v7       #in:Ljava/io/InputStream;
    .restart local v8       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    move v3, v2

    .end local v2           #count:I
    .restart local v3       #count:I
    goto :goto_1

    .line 1044
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static runCommandForResult(Ljava/lang/String;Z)Llewa/bi/common/BICommonUtil$CommandResult;
    .locals 8
    .parameter "command"
    .parameter "root"

    .prologue
    .line 1108
    const/4 v3, 0x0

    .line 1109
    .local v3, process:Ljava/lang/Process;
    const/4 v1, 0x0

    .line 1110
    .local v1, os:Ljava/io/DataOutputStream;
    new-instance v4, Llewa/bi/common/BICommonUtil$CommandResult;

    invoke-direct {v4}, Llewa/bi/common/BICommonUtil$CommandResult;-><init>()V

    .line 1113
    .local v4, ret:Llewa/bi/common/BICommonUtil$CommandResult;
    if-eqz p1, :cond_0

    .line 1114
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "su0"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 1115
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    .end local v1           #os:Ljava/io/DataOutputStream;
    .local v2, os:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1117
    const-string v5, "exit\n"

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 1123
    .end local v2           #os:Ljava/io/DataOutputStream;
    .restart local v1       #os:Ljava/io/DataOutputStream;
    :goto_0
    :try_start_2
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v5}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Llewa/bi/common/BICommonUtil$CommandResult;->result:Ljava/lang/String;

    .line 1125
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v5}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Llewa/bi/common/BICommonUtil$CommandResult;->error:Ljava/lang/String;

    .line 1127
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, v4, Llewa/bi/common/BICommonUtil$CommandResult;->success:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1134
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1137
    :goto_2
    return-object v4

    .line 1121
    :cond_0
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    goto :goto_0

    .line 1127
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1129
    :catch_0
    move-exception v0

    .line 1130
    .local v0, e:Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string v5, ""

    iput-object v5, v4, Llewa/bi/common/BICommonUtil$CommandResult;->result:Ljava/lang/String;

    .line 1131
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Llewa/bi/common/BICommonUtil$CommandResult;->error:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1134
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .end local v1           #os:Ljava/io/DataOutputStream;
    .restart local v2       #os:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #os:Ljava/io/DataOutputStream;
    .restart local v1       #os:Ljava/io/DataOutputStream;
    goto :goto_4

    .line 1129
    .end local v1           #os:Ljava/io/DataOutputStream;
    .restart local v2       #os:Ljava/io/DataOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #os:Ljava/io/DataOutputStream;
    .restart local v1       #os:Ljava/io/DataOutputStream;
    goto :goto_3
.end method

.method public static setBIClientId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "clientId"

    .prologue
    .line 261
    sget-object v1, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 263
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_CLEINT_ID:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 264
    return-void
.end method

.method public static setBILastConfigTime(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "time"

    .prologue
    .line 134
    sget-object v1, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 136
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_LEWA_LASTCONFIG_TIME:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    return-void
.end method

.method public static setBILatitude(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "latitue"

    .prologue
    .line 160
    sget-object v1, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 162
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_LEWA_LATITUDE:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 163
    return-void
.end method

.method public static setBILewaAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "lewaAccount"

    .prologue
    .line 236
    sget-object v1, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 238
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_LEWA_ACCOUNT:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 239
    return-void
.end method

.method public static setBILocationTime(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "time"

    .prologue
    .line 147
    sget-object v1, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 149
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_LEWA_LOCATION_TIME:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    return-void
.end method

.method public static setBILongitude(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "longitue"

    .prologue
    .line 173
    sget-object v1, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 175
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_LEWA_LONGITUDE:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    return-void
.end method

.method public static setBIPartner(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "partner"

    .prologue
    .line 206
    sget-object v1, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 207
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_LEWA_PARTNER:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    return-void
.end method

.method public static setBIUUID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "uuid"

    .prologue
    .line 190
    invoke-static {p0, p1}, Llewa/bi/common/BICommonUtil;->setValidBIUUID(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public static setDeviceFirstReportStatus(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "report"

    .prologue
    .line 301
    sget-object v1, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 303
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_DEVICE_FIRST_REPORT:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 304
    return-void
.end method

.method public static setLastCallLogNum(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "num"

    .prologue
    .line 313
    sget-object v1, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 315
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_LEWA_CALLLOG_NUM:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 316
    return-void
.end method

.method public static setLastLoginTime(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "time"

    .prologue
    .line 363
    sget-object v1, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 365
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_LOGIN_LAST_TIME:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 366
    return-void
.end method

.method public static setLastReportTime(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "time"

    .prologue
    .line 338
    sget-object v1, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 340
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_REPORT_LAST_TIME:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 341
    return-void
.end method

.method public static setReportPolicyMode(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "policy"

    .prologue
    .line 280
    sget-object v1, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 282
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_REPORT_POLICY:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 283
    return-void
.end method

.method private static setValidBIUUID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "uuid"

    .prologue
    .line 947
    sget-object v1, Llewa/bi/common/BICommonUtil;->BI_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 949
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Llewa/bi/common/BICommonUtil;->BI_LEWA_UUID:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 950
    const-string v1, "/data/data/lewa/config.xml"

    invoke-static {v1, p1}, Llewa/bi/common/BICommonUtil;->writeConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-static {}, Llewa/bi/common/BICommonUtil;->copyFromDataToSystem()V

    .line 952
    invoke-static {}, Llewa/bi/common/BICommonUtil;->deleteTempConfig()V

    .line 953
    return-void
.end method

.method private static writeConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "path"
    .parameter "uuid"

    .prologue
    .line 1014
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1015
    .local v1, out:Ljava/io/OutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 1016
    .local v2, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v3, "UTF-8"

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1017
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1018
    const-string v3, ""

    const-string v4, "map"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1020
    const-string v3, ""

    const-string v4, "string"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1021
    const-string v3, ""

    const-string v4, "name"

    const-string v5, "bi_lewa_setting_lewa_uuid"

    invoke-interface {v2, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1022
    if-eqz p1, :cond_0

    invoke-interface {v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1023
    :cond_0
    const-string v3, ""

    const-string v4, "string"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1025
    const-string v3, ""

    const-string v4, "map"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1026
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1028
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 1029
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    .end local v1           #out:Ljava/io/OutputStream;
    .end local v2           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    return-void

    .line 1030
    :catch_0
    move-exception v0

    .line 1031
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
