.class public Llewa/bi/report/BIReportService;
.super Landroid/app/Service;
.source "BIReportService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/bi/report/BIReportService$SimNetworkInfo;,
        Llewa/bi/report/BIReportService$ServiceHandler;
    }
.end annotation


# static fields
.field private static ALARM_TYPE_DEFAULT:I = 0x0

.field private static ALARM_TYPE_RANDOM:I = 0x0

.field private static final DAY_TIME:I = 0x15180

.field private static final DEBUG:Z = false

.field private static final LEWA_BI_DEBUG_FILE:Ljava/lang/String; = "/data/biDebug.txt"

.field private static final LEWA_BI_TEST_FILE:Ljava/lang/String; = "/data/biTest.txt"

.field private static final MILLISECOND:I = 0x3e8

.field private static final MINUTE_TIME:I = 0x3c

.field private static final MONTHDAY:I = 0x1e

.field private static final REPORT_ENDTIME_KEY:Ljava/lang/String; = "reportPrefEndTime"

.field private static final REPORT_STARTTIME_KEY:Ljava/lang/String; = "reportPrefBeginTime"

.field private static final SIM_1:I = 0x0

.field private static final SIM_2:I = 0x1

.field public static final START_TYPE:Ljava/lang/String; = "start_type"

.field public static final START_TYPE_BOOT:I = 0x2

.field public static final START_TYPE_CONNECT:I = 0x1

.field public static final START_TYPE_DATE_CHANGE:I = 0x3

.field public static final START_TYPE_IMMEDIATELY:I = 0x6

.field public static final START_TYPE_RANDOM_ALARM:I = 0x5

.field public static final START_TYPE_TO_TIME:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BIReportService"

.field private static final WEEKDAY:I = 0x7


# instance fields
.field private final CONFIG_FILE:Ljava/lang/String;

.field private baseTestUri:Ljava/lang/String;

.field private baseUri:Ljava/lang/String;

.field private httpsTestUri:Ljava/lang/String;

.field private httpsUri:Ljava/lang/String;

.field private mConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llewa/bi/common/BIConfigItem;",
            ">;"
        }
    .end annotation
.end field

.field private mEndReportTime:I

.field private mLooperTime:I

.field private mNetworkHelper:Llewa/util/NetworkHelperFactory$NetworkHelper;

.field private mRandomAlarmTime:Z

.field private volatile mServiceHandler:Llewa/bi/report/BIReportService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mStartReportTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    sput v0, Llewa/bi/report/BIReportService;->ALARM_TYPE_DEFAULT:I

    .line 140
    const/4 v0, 0x1

    sput v0, Llewa/bi/report/BIReportService;->ALARM_TYPE_RANDOM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 114
    const-string v0, "biconfig.json"

    iput-object v0, p0, Llewa/bi/report/BIReportService;->CONFIG_FILE:Ljava/lang/String;

    .line 117
    const-string v0, "http://bi.lewaos.com:8080/json/"

    iput-object v0, p0, Llewa/bi/report/BIReportService;->baseUri:Ljava/lang/String;

    .line 118
    const-string v0, "http://bitest.lewaos.com:8080/json/"

    iput-object v0, p0, Llewa/bi/report/BIReportService;->baseTestUri:Ljava/lang/String;

    .line 119
    const-string v0, "https://bi.lewaos.com:8443/json/"

    iput-object v0, p0, Llewa/bi/report/BIReportService;->httpsUri:Ljava/lang/String;

    .line 120
    const-string v0, "https://bitest.lewaos.com:8443/json/"

    iput-object v0, p0, Llewa/bi/report/BIReportService;->httpsTestUri:Ljava/lang/String;

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    .line 144
    iput v1, p0, Llewa/bi/report/BIReportService;->mStartReportTime:I

    .line 145
    const/4 v0, 0x7

    iput v0, p0, Llewa/bi/report/BIReportService;->mEndReportTime:I

    .line 146
    const/16 v0, 0x3c

    iput v0, p0, Llewa/bi/report/BIReportService;->mLooperTime:I

    .line 149
    iput-boolean v1, p0, Llewa/bi/report/BIReportService;->mRandomAlarmTime:Z

    .line 1645
    return-void
.end method

.method private InitBIConfigItem(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Llewa/bi/common/BIConfigItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1689
    invoke-direct {p0, p1}, Llewa/bi/report/BIReportService;->loadBIConfig(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 1690
    .local v0, configs:Ljava/util/List;,"Ljava/util/List<Llewa/bi/common/BIConfigItem;>;"
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 1691
    .local v5, timeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    if-eqz v0, :cond_8

    .line 1692
    iget-object v7, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 1693
    iget-object v7, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1695
    :cond_0
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    .line 1696
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llewa/bi/common/BIConfigItem;

    .line 1697
    .local v3, item:Llewa/bi/common/BIConfigItem;
    invoke-virtual {v3}, Llewa/bi/common/BIConfigItem;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "reportPrefBeginTime"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1698
    invoke-virtual {v3}, Llewa/bi/common/BIConfigItem;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Llewa/bi/report/BIReportService;->mStartReportTime:I

    .line 1699
    iget-object v7, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1700
    :cond_2
    invoke-virtual {v3}, Llewa/bi/common/BIConfigItem;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "reportPrefEndTime"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1701
    invoke-virtual {v3}, Llewa/bi/common/BIConfigItem;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Llewa/bi/report/BIReportService;->mEndReportTime:I

    .line 1702
    iget-object v7, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1704
    :cond_3
    iget-object v7, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1705
    invoke-direct {p0, v3}, Llewa/bi/report/BIReportService;->getTime(Lcom/lewa/bi/common/data/collect/ConfigItem;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 1706
    .local v4, time:Ljava/lang/Float;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 1707
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1708
    sget-boolean v7, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v7, :cond_1

    .line 1709
    const-string v7, "BIReportService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "config report frequent : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Llewa/bi/common/BIConfigItem;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reportFrequencyType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Llewa/bi/common/BIConfigItem;->getReportFrequencyType()Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " time : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1716
    .end local v3           #item:Llewa/bi/common/BIConfigItem;
    .end local v4           #time:Ljava/lang/Float;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 1717
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v5, v7}, Llewa/bi/common/BICommonUtil;->nCommonDivisor(Ljava/util/List;I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Llewa/bi/report/BIReportService;->mLooperTime:I

    .line 1719
    :cond_5
    sget-boolean v7, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v7, :cond_6

    .line 1720
    const-string v7, "BIReportService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "looperTime is = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Llewa/bi/report/BIReportService;->mLooperTime:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " StartReportTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Llewa/bi/report/BIReportService;->mStartReportTime:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " EndReportTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Llewa/bi/report/BIReportService;->mEndReportTime:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-static {}, Llewa/bi/common/BICommonUtil;->createSystemConfig()V

    .line 1730
    invoke-static {p1}, Llewa/bi/common/BICommonUtil;->getBIUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 1731
    .local v6, uuid:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1732
    invoke-static {p1}, Llewa/bi/common/BICommonUtil;->getDeviceUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1734
    .local v1, deviceUuid:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1736
    invoke-static {p1, v1}, Llewa/bi/common/BICommonUtil;->setBIUUID(Landroid/content/Context;Ljava/lang/String;)V

    .line 1743
    .end local v1           #deviceUuid:Ljava/lang/String;
    :cond_7
    :goto_2
    iget-object v7, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    return-object v7

    .line 1724
    .end local v6           #uuid:Ljava/lang/String;
    :cond_8
    const-string v7, "BIReportService"

    const-string v8, "InitBIConfigItem configs is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1740
    .restart local v6       #uuid:Ljava/lang/String;
    :cond_9
    invoke-static {p1, v6}, Llewa/bi/common/BICommonUtil;->setBIUUID(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private SetRandomAlarmTime()V
    .locals 9

    .prologue
    .line 262
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 263
    .local v2, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 264
    iget v5, v2, Landroid/text/format/Time;->hour:I

    iget v6, p0, Llewa/bi/report/BIReportService;->mEndReportTime:I

    if-ge v5, v6, :cond_0

    .line 265
    const-wide/16 v0, 0x0

    .line 266
    .local v0, minute:D
    iget v5, v2, Landroid/text/format/Time;->hour:I

    iget v6, p0, Llewa/bi/report/BIReportService;->mStartReportTime:I

    if-lt v5, v6, :cond_1

    .line 267
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Llewa/bi/report/BIReportService;->mEndReportTime:I

    iget v8, v2, Landroid/text/format/Time;->hour:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x3c

    iget v8, v2, Landroid/text/format/Time;->minute:I

    rsub-int/lit8 v8, v8, 0x3c

    add-int/2addr v7, v8

    int-to-double v7, v7

    mul-double v0, v5, v7

    .line 271
    :goto_0
    const-wide/high16 v5, 0x404e

    mul-double/2addr v5, v0

    double-to-long v3, v5

    .line 272
    .local v3, times:J
    invoke-direct {p0, p0, v3, v4}, Llewa/bi/report/BIReportService;->setRandomAlarm(Landroid/content/Context;J)V

    .line 274
    .end local v0           #minute:D
    .end local v3           #times:J
    :cond_0
    return-void

    .line 269
    .restart local v0       #minute:D
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Llewa/bi/report/BIReportService;->mEndReportTime:I

    iget v8, p0, Llewa/bi/report/BIReportService;->mStartReportTime:I

    sub-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x3c

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Llewa/bi/report/BIReportService;->mStartReportTime:I

    iget v8, v2, Landroid/text/format/Time;->hour:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x3c

    int-to-double v7, v7

    add-double/2addr v5, v7

    iget v7, v2, Landroid/text/format/Time;->minute:I

    rsub-int/lit8 v7, v7, 0x3c

    int-to-double v7, v7

    add-double v0, v5, v7

    goto :goto_0
.end method

.method private addAppEvent(Landroid/database/Cursor;Ljava/util/List;)V
    .locals 7
    .parameter "cEvent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/AppEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1079
    .local p2, appEvents:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppEvent;>;"
    const-string v5, "eventId"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1080
    .local v2, eventIndex:I
    const-string v5, "label"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1081
    .local v3, lableIndex:I
    const-string v5, "appId"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1082
    .local v1, appIdIndex:I
    const-string v5, "time"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 1084
    .local v4, timeIndex:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1086
    :cond_0
    new-instance v0, Lcom/lewa/bi/common/data/collect/AppEvent;

    invoke-direct {v0}, Lcom/lewa/bi/common/data/collect/AppEvent;-><init>()V

    .line 1087
    .local v0, appEvent:Lcom/lewa/bi/common/data/collect/AppEvent;
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lewa/bi/common/data/collect/AppEvent;->setEventType(Ljava/lang/String;)V

    .line 1088
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/lewa/bi/common/data/collect/AppEvent;->setTimestamp(J)V

    .line 1089
    new-instance v5, Lcom/lewa/bi/common/data/collect/AppId;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/lewa/bi/common/data/collect/AppId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/lewa/bi/common/data/collect/AppEvent;->setId(Lcom/lewa/bi/common/data/collect/AppId;)V

    .line 1090
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lewa/bi/common/data/collect/AppEvent;->setDescription(Ljava/lang/String;)V

    .line 1091
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1094
    .end local v0           #appEvent:Lcom/lewa/bi/common/data/collect/AppEvent;
    :cond_1
    return-void
.end method

.method private addAppEventMap(Landroid/database/Cursor;Ljava/util/List;Landroid/content/ContentResolver;)V
    .locals 20
    .parameter "cEvent"
    .parameter
    .parameter "cr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/AppEvent;",
            ">;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1097
    .local p2, appEvents:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppEvent;>;"
    const-string v2, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1098
    .local v13, idIndex:I
    const-string v2, "eventId"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1099
    .local v11, eventIndex:I
    const-string v2, "label"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1100
    .local v16, lableIndex:I
    const-string v2, "appId"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1101
    .local v9, appIdIndex:I
    const-string v2, "time"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 1103
    .local v17, timeIndex:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1105
    :cond_0
    new-instance v8, Lcom/lewa/bi/common/data/collect/AppEvent;

    invoke-direct {v8}, Lcom/lewa/bi/common/data/collect/AppEvent;-><init>()V

    .line 1106
    .local v8, appEventMap:Lcom/lewa/bi/common/data/collect/AppEvent;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/lewa/bi/common/data/collect/AppEvent;->setEventType(Ljava/lang/String;)V

    .line 1107
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/lewa/bi/common/data/collect/AppEvent;->setTimestamp(J)V

    .line 1108
    new-instance v2, Lcom/lewa/bi/common/data/collect/AppId;

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lewa/bi/common/data/collect/AppId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcom/lewa/bi/common/data/collect/AppEvent;->setId(Lcom/lewa/bi/common/data/collect/AppId;)V

    .line 1109
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/lewa/bi/common/data/collect/AppEvent;->setDescription(Ljava/lang/String;)V

    .line 1110
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1111
    .local v12, eventMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Llewa/bi/provider/BI$EventMapColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "eventKey"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "EventValue"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "time"

    aput-object v5, v4, v2

    const-string v5, "event_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1116
    .local v10, cEventMap:Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 1117
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1119
    :cond_1
    const-string v2, "eventKey"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1121
    .local v14, idKey:I
    const-string v2, "EventValue"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1123
    .local v15, idValue:I
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1126
    invoke-virtual {v8, v12}, Lcom/lewa/bi/common/data/collect/AppEvent;->setProperties(Ljava/util/Map;)V

    .line 1128
    .end local v14           #idKey:I
    .end local v15           #idValue:I
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1130
    :cond_3
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1131
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1133
    .end local v8           #appEventMap:Lcom/lewa/bi/common/data/collect/AppEvent;
    .end local v10           #cEventMap:Landroid/database/Cursor;
    .end local v12           #eventMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method private addAppInstall(Landroid/database/Cursor;Ljava/util/List;)V
    .locals 25
    .parameter "cAppInstall"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/AppInstallInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1466
    .local p2, appInfos:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppInstallInfo;>;"
    const-string v22, "event"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1467
    .local v14, eventIndex:I
    const-string v22, "package"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1468
    .local v15, idIndex:I
    const-string v22, "version"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 1469
    .local v21, versionIndex:I
    const-string v22, "appName"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 1470
    .local v17, packageNameIndex:I
    const-string v22, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 1471
    .local v20, statusIndex:I
    const-string v22, "netType"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1472
    .local v16, netTypeIndex:I
    const-string v22, "packageSize"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 1473
    .local v18, packageSieIndex:I
    const-string v22, "path"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 1474
    .local v19, pathIndex:I
    const-string v22, "clientTime"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1475
    .local v13, ctimeIndex:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1477
    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1478
    .local v4, id:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1479
    .local v3, event:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1480
    .local v5, version:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1481
    .local v6, packageName:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1482
    .local v10, status:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1483
    .local v8, netType:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1484
    .local v9, packageSize:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1485
    .local v7, path:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1486
    .local v11, ctime:J
    sget-boolean v22, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v22, :cond_1

    .line 1487
    const-string v22, "BIReportService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "device first "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_1
    new-instance v2, Lcom/lewa/bi/common/data/collect/AppInstallInfo;

    invoke-direct/range {v2 .. v12}, Lcom/lewa/bi/common/data/collect/AppInstallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1490
    .local v2, aii:Lcom/lewa/bi/common/data/collect/AppInstallInfo;
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1491
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-nez v22, :cond_0

    .line 1493
    .end local v2           #aii:Lcom/lewa/bi/common/data/collect/AppInstallInfo;
    .end local v3           #event:Ljava/lang/String;
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #version:Ljava/lang/String;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #netType:Ljava/lang/String;
    .end local v9           #packageSize:Ljava/lang/String;
    .end local v10           #status:Ljava/lang/String;
    .end local v11           #ctime:J
    :cond_2
    return-void
.end method

.method private addDefaultAppEvent(Landroid/database/Cursor;Ljava/util/List;)V
    .locals 9
    .parameter "cEvent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/AppEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1007
    .local p2, appEvents:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppEvent;>;"
    const-string v6, "eventId"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1008
    .local v2, eventIndex:I
    const-string v6, "label"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 1009
    .local v4, lableIndex:I
    const-string v6, "appId"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1010
    .local v1, appIdIndex:I
    const-string v6, "time"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 1011
    .local v5, timeIndex:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1013
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1014
    .local v3, eventName:Ljava/lang/String;
    sget-boolean v6, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v6, :cond_1

    .line 1015
    const-string v6, "BIReportService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "eventName "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_1
    if-eqz v3, :cond_2

    invoke-direct {p0, v3}, Llewa/bi/report/BIReportService;->containConfigEvent(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1018
    new-instance v0, Lcom/lewa/bi/common/data/collect/AppEvent;

    invoke-direct {v0}, Lcom/lewa/bi/common/data/collect/AppEvent;-><init>()V

    .line 1019
    .local v0, appEvent:Lcom/lewa/bi/common/data/collect/AppEvent;
    invoke-virtual {v0, v3}, Lcom/lewa/bi/common/data/collect/AppEvent;->setEventType(Ljava/lang/String;)V

    .line 1020
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/lewa/bi/common/data/collect/AppEvent;->setTimestamp(J)V

    .line 1021
    new-instance v6, Lcom/lewa/bi/common/data/collect/AppId;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/lewa/bi/common/data/collect/AppId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/lewa/bi/common/data/collect/AppEvent;->setId(Lcom/lewa/bi/common/data/collect/AppId;)V

    .line 1022
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lewa/bi/common/data/collect/AppEvent;->setDescription(Ljava/lang/String;)V

    .line 1023
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    .end local v0           #appEvent:Lcom/lewa/bi/common/data/collect/AppEvent;
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1027
    .end local v3           #eventName:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private addDefaultAppEventMap(Landroid/database/Cursor;Ljava/util/List;Landroid/content/ContentResolver;)V
    .locals 21
    .parameter "cEvent"
    .parameter
    .parameter "cr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/AppEvent;",
            ">;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1030
    .local p2, appEvents:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppEvent;>;"
    const-string v2, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1031
    .local v14, idIndex:I
    const-string v2, "eventId"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1032
    .local v11, eventIndex:I
    const-string v2, "label"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 1033
    .local v17, lableIndex:I
    const-string v2, "appId"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1034
    .local v9, appIdIndex:I
    const-string v2, "time"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 1035
    .local v18, timeIndex:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1037
    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1038
    .local v13, eventName:Ljava/lang/String;
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_1

    .line 1039
    const-string v2, "BIReportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eventMapName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_1
    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Llewa/bi/report/BIReportService;->containConfigEvent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1042
    new-instance v8, Lcom/lewa/bi/common/data/collect/AppEvent;

    invoke-direct {v8}, Lcom/lewa/bi/common/data/collect/AppEvent;-><init>()V

    .line 1043
    .local v8, appEventMap:Lcom/lewa/bi/common/data/collect/AppEvent;
    invoke-virtual {v8, v13}, Lcom/lewa/bi/common/data/collect/AppEvent;->setEventType(Ljava/lang/String;)V

    .line 1044
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/lewa/bi/common/data/collect/AppEvent;->setTimestamp(J)V

    .line 1045
    new-instance v2, Lcom/lewa/bi/common/data/collect/AppId;

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lewa/bi/common/data/collect/AppId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcom/lewa/bi/common/data/collect/AppEvent;->setId(Lcom/lewa/bi/common/data/collect/AppId;)V

    .line 1046
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/lewa/bi/common/data/collect/AppEvent;->setDescription(Ljava/lang/String;)V

    .line 1047
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1048
    .local v12, eventMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Llewa/bi/provider/BI$EventMapColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "eventKey"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "EventValue"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "time"

    aput-object v5, v4, v2

    const-string v5, "event_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1054
    .local v10, cEventMap:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    .line 1055
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1057
    :cond_2
    const-string v2, "eventKey"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1059
    .local v15, idKey:I
    const-string v2, "EventValue"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1062
    .local v16, idValue:I
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_3

    .line 1065
    const-string v2, "BIReportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eventMap "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1068
    invoke-virtual {v8, v12}, Lcom/lewa/bi/common/data/collect/AppEvent;->setProperties(Ljava/util/Map;)V

    .line 1070
    .end local v15           #idKey:I
    .end local v16           #idValue:I
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1072
    :cond_5
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    .end local v8           #appEventMap:Lcom/lewa/bi/common/data/collect/AppEvent;
    .end local v10           #cEventMap:Landroid/database/Cursor;
    .end local v12           #eventMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1076
    .end local v13           #eventName:Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private addDeviceFirst(Landroid/database/Cursor;Ljava/util/List;)V
    .locals 12
    .parameter "cDeviceFirst"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/FirstAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1565
    .local p2, appInfos:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/FirstAppInfo;>;"
    const-string v9, "name"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1566
    .local v6, nameIndex:I
    const-string v9, "id"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1567
    .local v3, idIndex:I
    const-string v9, "ver"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1568
    .local v7, versionIndex:I
    const-string v9, "vname"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1569
    .local v8, versionNameIndex:I
    const-string v9, "md5"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 1570
    .local v5, md5Index:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1572
    :cond_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1573
    .local v2, id:Ljava/lang/String;
    sget-boolean v9, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v9, :cond_1

    .line 1574
    const-string v9, "BIReportService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "device first "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_1
    if-eqz v2, :cond_4

    .line 1577
    new-instance v0, Lcom/lewa/bi/common/data/collect/FirstAppInfo;

    new-instance v9, Lcom/lewa/bi/common/data/collect/AppId;

    invoke-direct {v9, v2}, Lcom/lewa/bi/common/data/collect/AppId;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v9, v10, v11}, Lcom/lewa/bi/common/data/collect/FirstAppInfo;-><init>(Lcom/lewa/bi/common/data/collect/AppId;Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    .local v0, appInfo:Lcom/lewa/bi/common/data/collect/FirstAppInfo;
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1581
    .local v4, md5:Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v9, ""

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1582
    invoke-virtual {v0, v4}, Lcom/lewa/bi/common/data/collect/FirstAppInfo;->setMd5(Ljava/lang/String;)V

    .line 1584
    :cond_2
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1585
    .local v1, appName:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v9, ""

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1586
    invoke-virtual {v0, v1}, Lcom/lewa/bi/common/data/collect/FirstAppInfo;->setAppName(Ljava/lang/String;)V

    .line 1588
    :cond_3
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1590
    .end local v0           #appInfo:Lcom/lewa/bi/common/data/collect/FirstAppInfo;
    .end local v1           #appName:Ljava/lang/String;
    .end local v4           #md5:Ljava/lang/String;
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1592
    .end local v2           #id:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private cancelAlarm(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1859
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Llewa/bi/report/BIReportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1860
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Llewa/bi/report/BIReportReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1861
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "bi.lewa.action.UPLOAD_TIME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1862
    sget v3, Llewa/bi/report/BIReportService;->ALARM_TYPE_DEFAULT:I

    const/high16 v4, 0x1000

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1864
    .local v2, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1865
    return-void
.end method

.method private containConfigEvent(Ljava/lang/String;)Z
    .locals 3
    .parameter "eventName"

    .prologue
    .line 998
    iget-object v2, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/bi/common/BIConfigItem;

    .line 999
    .local v1, item:Llewa/bi/common/BIConfigItem;
    invoke-virtual {v1}, Llewa/bi/common/BIConfigItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1000
    const/4 v2, 0x1

    .line 1003
    .end local v1           #item:Llewa/bi/common/BIConfigItem;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private deleteEventSpecial(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "cr"
    .parameter "key"

    .prologue
    .line 1135
    sget-object v1, Llewa/bi/provider/BI$EventColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "eventId"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "label"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "appId"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "time"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "type"

    aput-object v3, v2, v0

    const-string v3, "eventId=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1140
    .local v6, cEvent:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1141
    :cond_0
    const/4 v0, 0x0

    .line 1177
    :goto_0
    return v0

    .line 1143
    :cond_1
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1144
    .local v8, eventType:I
    const/4 v0, 0x2

    if-ne v8, v0, :cond_4

    .line 1146
    :try_start_0
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1147
    .local v10, idMapIndex:I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1149
    :cond_2
    sget-object v0, Llewa/bi/provider/BI$EventMapColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "event_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1151
    sget-object v0, Llewa/bi/provider/BI$EventColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1153
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 1155
    :cond_3
    const/4 v0, 0x1

    .line 1159
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1156
    .end local v10           #idMapIndex:I
    :catch_0
    move-exception v7

    .line 1157
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "BIReportService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove event map exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1159
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1177
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1159
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1163
    :cond_4
    :try_start_2
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1164
    .local v9, idIndex:I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1166
    :cond_5
    sget-object v0, Llewa/bi/provider/BI$EventColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1168
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-nez v0, :cond_5

    .line 1170
    :cond_6
    const/4 v0, 0x1

    .line 1174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1171
    .end local v9           #idIndex:I
    :catch_1
    move-exception v7

    .line 1172
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_3
    const-string v0, "BIReportService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove event exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private deleteOldData(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 507
    invoke-virtual {p0}, Llewa/bi/report/BIReportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 508
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x240c8400

    sub-long v3, v5, v7

    .line 509
    .local v3, time:J
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 510
    .local v2, dayTime:Landroid/text/format/Time;
    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 511
    iput v9, v2, Landroid/text/format/Time;->hour:I

    .line 512
    iput v9, v2, Landroid/text/format/Time;->minute:I

    .line 513
    iput v9, v2, Landroid/text/format/Time;->second:I

    .line 514
    invoke-virtual {v2, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 516
    sget-object v5, Llewa/bi/provider/BI$AppUsageColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "time<?"

    new-array v7, v10, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 519
    .local v0, count:I
    sget-boolean v5, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v5, :cond_0

    .line 520
    const-string v5, "BIReportService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppUsageColumns the count is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_0
    sget-object v5, Llewa/bi/provider/BI$EventColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "time<?"

    new-array v7, v10, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 526
    sget-boolean v5, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v5, :cond_1

    .line 527
    const-string v5, "BIReportService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EventColumns the count is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_1
    sget-object v5, Llewa/bi/provider/BI$EventMapColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "time<?"

    new-array v7, v10, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 532
    sget-boolean v5, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v5, :cond_2

    .line 533
    const-string v5, "BIReportService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EventMapColumns the count is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_2
    return v10
.end method

.method private getAppNetInfo(Landroid/content/Context;Llewa/bi/common/BIConfigItem;)Ljava/util/List;
    .locals 47
    .parameter "context"
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Llewa/bi/common/BIConfigItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/bi/common/data/collect/AppTrafficInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 824
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Llewa/bi/common/BIConfigItem;->getLastReportTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 825
    :cond_0
    const/4 v10, 0x0

    .line 995
    :cond_1
    :goto_0
    return-object v10

    .line 830
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Llewa/bi/common/BIConfigItem;->getLastReportTime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Llewa/bi/common/BICommonUtil;->getTimedayGap(JJ)I

    move-result v11

    .line 833
    .local v11, count:I
    const/4 v3, 0x7

    if-le v11, v3, :cond_3

    const/4 v11, 0x7

    .line 834
    :cond_3
    sget-boolean v3, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v3, :cond_4

    .line 835
    const-string v3, "BIReportService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "traffic days : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_4
    if-gtz v11, :cond_5

    .line 838
    const/4 v10, 0x0

    goto :goto_0

    .line 840
    :cond_5
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 841
    .local v12, currentTime:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 842
    iget v3, v12, Landroid/text/format/Time;->second:I

    iput v3, v12, Landroid/text/format/Time;->minute:I

    iput v3, v12, Landroid/text/format/Time;->hour:I

    .line 843
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v31

    .line 845
    .local v31, secsTime:J
    new-array v0, v11, [J

    move-object/from16 v42, v0

    .line 846
    .local v42, time:[J
    const/16 v20, 0x0

    .line 847
    .local v20, inc:I
    :goto_1
    if-lez v11, :cond_6

    .line 848
    add-int/lit8 v11, v11, -0x1

    .line 849
    add-int/lit8 v20, v20, 0x1

    .line 850
    move/from16 v0, v20

    mul-int/lit16 v3, v0, 0x3e8

    const v4, 0x15180

    mul-int/2addr v3, v4

    int-to-long v3, v3

    sub-long v3, v31, v3

    aput-wide v3, v42, v11

    goto :goto_1

    .line 853
    :cond_6
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 854
    .local v10, appNetInfos:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppTrafficInfo;>;"
    const-string v3, "netstats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v24

    .line 857
    .local v24, mStatsService:Landroid/net/INetworkStatsService;
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 858
    .local v29, networkInfos:Ljava/util/List;,"Ljava/util/List<Llewa/bi/report/BIReportService$SimNetworkInfo;>;"
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 859
    .local v23, knownUids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static/range {p1 .. p1}, Llewa/bi/sim/LewaSimManagerHelp;->getSimManager(Landroid/content/Context;)Llewa/bi/sim/LewaSimManagerHelp$SimManager;

    move-result-object v33

    .line 861
    .local v33, simManager:Llewa/bi/sim/LewaSimManagerHelp$SimManager;
    const/16 v39, 0x0

    .line 862
    .local v39, template0:Landroid/net/NetworkTemplate;
    if-eqz v33, :cond_7

    .line 863
    const/4 v3, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Llewa/bi/sim/LewaSimManagerHelp$SimManager;->buildTemplateMobileBySlot(I)Landroid/net/NetworkTemplate;

    move-result-object v39

    .line 865
    :cond_7
    if-eqz v39, :cond_8

    .line 866
    new-instance v34, Llewa/bi/report/BIReportService$SimNetworkInfo;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Llewa/bi/report/BIReportService$SimNetworkInfo;-><init>(Llewa/bi/report/BIReportService;)V

    .line 867
    .local v34, simNetworkInfo0:Llewa/bi/report/BIReportService$SimNetworkInfo;
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llewa/bi/report/BIReportService$SimNetworkInfo;->setNetworkTemplate(Landroid/net/NetworkTemplate;)V

    .line 868
    const/4 v3, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Llewa/bi/report/BIReportService$SimNetworkInfo;->setSlot(I)V

    .line 869
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    .end local v34           #simNetworkInfo0:Llewa/bi/report/BIReportService$SimNetworkInfo;
    :cond_8
    const/16 v40, 0x0

    .line 873
    .local v40, template1:Landroid/net/NetworkTemplate;
    if-eqz v33, :cond_9

    .line 874
    const/4 v3, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Llewa/bi/sim/LewaSimManagerHelp$SimManager;->buildTemplateMobileBySlot(I)Landroid/net/NetworkTemplate;

    move-result-object v40

    .line 876
    :cond_9
    if-eqz v40, :cond_a

    .line 877
    new-instance v35, Llewa/bi/report/BIReportService$SimNetworkInfo;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Llewa/bi/report/BIReportService$SimNetworkInfo;-><init>(Llewa/bi/report/BIReportService;)V

    .line 878
    .local v35, simNetworkInfo1:Llewa/bi/report/BIReportService$SimNetworkInfo;
    move-object/from16 v0, v35

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Llewa/bi/report/BIReportService$SimNetworkInfo;->setNetworkTemplate(Landroid/net/NetworkTemplate;)V

    .line 879
    const/4 v3, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Llewa/bi/report/BIReportService$SimNetworkInfo;->setSlot(I)V

    .line 880
    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    .end local v35           #simNetworkInfo1:Llewa/bi/report/BIReportService$SimNetworkInfo;
    :cond_a
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifi()Landroid/net/NetworkTemplate;

    move-result-object v41

    .line 884
    .local v41, templateWifi:Landroid/net/NetworkTemplate;
    if-eqz v41, :cond_b

    .line 885
    new-instance v36, Llewa/bi/report/BIReportService$SimNetworkInfo;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Llewa/bi/report/BIReportService$SimNetworkInfo;-><init>(Llewa/bi/report/BIReportService;)V

    .line 886
    .local v36, simNetworkInfoWifi:Llewa/bi/report/BIReportService$SimNetworkInfo;
    move-object/from16 v0, v36

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Llewa/bi/report/BIReportService$SimNetworkInfo;->setNetworkTemplate(Landroid/net/NetworkTemplate;)V

    .line 887
    const/4 v3, -0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Llewa/bi/report/BIReportService$SimNetworkInfo;->setSlot(I)V

    .line 888
    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    .end local v36           #simNetworkInfoWifi:Llewa/bi/report/BIReportService$SimNetworkInfo;
    :cond_b
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Llewa/bi/report/BIReportService$SimNetworkInfo;

    .line 892
    .local v28, networkInfo:Llewa/bi/report/BIReportService$SimNetworkInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/bi/report/BIReportService;->mNetworkHelper:Llewa/util/NetworkHelperFactory$NetworkHelper;

    invoke-virtual/range {v28 .. v28}, Llewa/bi/report/BIReportService$SimNetworkInfo;->getNetworkTemplate()Landroid/net/NetworkTemplate;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v42, v4

    const-wide/32 v6, 0x5265c00

    sub-long/2addr v4, v6

    move-object/from16 v0, v42

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-wide v6, v42, v6

    const-wide/32 v45, 0x5265c00

    add-long v6, v6, v45

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Llewa/util/NetworkHelperFactory$NetworkHelper;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v38

    .line 897
    .local v38, stats:Landroid/net/NetworkStats;
    if-nez v38, :cond_10

    const/16 v37, 0x0

    .line 898
    .local v37, size:I
    :goto_2
    sget-boolean v3, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v3, :cond_d

    .line 899
    const-string v3, "BIReportService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stats="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ##size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_d
    const/4 v15, 0x0

    .line 902
    .local v15, entry:Landroid/net/NetworkStats$Entry;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v37

    if-ge v0, v1, :cond_c

    .line 903
    move-object/from16 v0, v38

    move/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v15

    .line 904
    iget v0, v15, Landroid/net/NetworkStats$Entry;->uid:I

    move/from16 v44, v0

    .line 905
    .local v44, uid:I
    const/16 v3, 0x2710

    move/from16 v0, v44

    if-lt v0, v3, :cond_11

    const/16 v3, 0x4e1f

    move/from16 v0, v44

    if-gt v0, v3, :cond_11

    const/16 v22, 0x1

    .line 908
    .local v22, isApp:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move/from16 v0, v44

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v30

    .line 909
    .local v30, packageNameList:[Ljava/lang/String;
    sget-boolean v3, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v3, :cond_e

    .line 910
    if-eqz v30, :cond_12

    move-object/from16 v0, v30

    array-length v3, v0

    if-lez v3, :cond_12

    .line 911
    const-string v3, "BIReportService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#appId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v30, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_e
    :goto_5
    if-eqz v22, :cond_f

    .line 918
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 902
    :cond_f
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 897
    .end local v15           #entry:Landroid/net/NetworkStats$Entry;
    .end local v17           #i:I
    .end local v22           #isApp:Z
    .end local v30           #packageNameList:[Ljava/lang/String;
    .end local v37           #size:I
    .end local v44           #uid:I
    :cond_10
    invoke-virtual/range {v38 .. v38}, Landroid/net/NetworkStats;->size()I

    move-result v37

    goto/16 :goto_2

    .line 905
    .restart local v15       #entry:Landroid/net/NetworkStats$Entry;
    .restart local v17       #i:I
    .restart local v37       #size:I
    .restart local v44       #uid:I
    :cond_11
    const/16 v22, 0x0

    goto :goto_4

    .line 913
    .restart local v22       #isApp:Z
    .restart local v30       #packageNameList:[Ljava/lang/String;
    :cond_12
    const-string v3, "BIReportService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 922
    .end local v15           #entry:Landroid/net/NetworkStats$Entry;
    .end local v17           #i:I
    .end local v22           #isApp:Z
    .end local v28           #networkInfo:Llewa/bi/report/BIReportService$SimNetworkInfo;
    .end local v30           #packageNameList:[Ljava/lang/String;
    .end local v37           #size:I
    .end local v38           #stats:Landroid/net/NetworkStats;
    .end local v44           #uid:I
    :cond_13
    sget-boolean v3, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v3, :cond_14

    .line 923
    new-instance v27, Landroid/text/format/Time;

    invoke-direct/range {v27 .. v27}, Landroid/text/format/Time;-><init>()V

    .line 924
    .local v27, netStartTime:Landroid/text/format/Time;
    const/4 v3, 0x0

    aget-wide v3, v42, v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 925
    const-string v3, "BIReportService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#time"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    .end local v27           #netStartTime:Landroid/text/format/Time;
    :cond_14
    const/4 v13, 0x0

    .local v13, day:I
    :goto_6
    move-object/from16 v0, v42

    array-length v3, v0

    if-ge v13, v3, :cond_1f

    .line 928
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_15
    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/Integer;

    .line 929
    .local v44, uid:Ljava/lang/Integer;
    const/16 v16, 0x0

    .line 930
    .local v16, hasData:Z
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [I

    move-object/from16 v43, v0

    .line 931
    .local v43, totals:[I
    const/16 v25, 0x0

    .line 932
    .local v25, netInfo:Lcom/lewa/bi/common/data/collect/AppTrafficInfo;
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_8
    move-object/from16 v0, v43

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_1d

    .line 934
    const/4 v9, 0x0

    .line 935
    .local v9, hentry:Landroid/net/NetworkStatsHistory$Entry;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/bi/report/BIReportService;->mNetworkHelper:Llewa/util/NetworkHelperFactory$NetworkHelper;

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llewa/bi/report/BIReportService$SimNetworkInfo;

    invoke-virtual {v3}, Llewa/bi/report/BIReportService$SimNetworkInfo;->getNetworkTemplate()Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0xa

    invoke-virtual/range {v2 .. v7}, Llewa/util/NetworkHelperFactory$NetworkHelper;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v2

    .line 940
    .local v2, history:Landroid/net/NetworkStatsHistory;
    aget-wide v3, v42, v13

    aget-wide v5, v42, v13

    const-wide/32 v7, 0x5265c00

    add-long/2addr v5, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual/range {v2 .. v9}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v9

    .line 943
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v30

    .line 945
    .restart local v30       #packageNameList:[Ljava/lang/String;
    if-nez v25, :cond_16

    .line 946
    new-instance v26, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;

    invoke-direct/range {v26 .. v26}, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    .end local v25           #netInfo:Lcom/lewa/bi/common/data/collect/AppTrafficInfo;
    .local v26, netInfo:Lcom/lewa/bi/common/data/collect/AppTrafficInfo;
    :try_start_1
    aget-wide v3, v42, v13

    const-wide/32 v5, 0x2932e00

    add-long/2addr v3, v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->setTime(J)V

    .line 948
    new-instance v3, Lcom/lewa/bi/common/data/collect/AppId;

    const/4 v4, 0x0

    aget-object v4, v30, v4

    invoke-direct {v3, v4}, Lcom/lewa/bi/common/data/collect/AppId;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->setId(Lcom/lewa/bi/common/data/collect/AppId;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v25, v26

    .line 951
    .end local v26           #netInfo:Lcom/lewa/bi/common/data/collect/AppTrafficInfo;
    .restart local v25       #netInfo:Lcom/lewa/bi/common/data/collect/AppTrafficInfo;
    :cond_16
    if-eqz v9, :cond_1a

    :try_start_2
    iget-wide v3, v9, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_17

    iget-wide v3, v9, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1a

    .line 952
    :cond_17
    new-instance v21, Lcom/lewa/bi/common/data/collect/NicTraffic;

    invoke-direct/range {v21 .. v21}, Lcom/lewa/bi/common/data/collect/NicTraffic;-><init>()V

    .line 953
    .local v21, info:Lcom/lewa/bi/common/data/collect/NicTraffic;
    const-string v19, ""

    .line 954
    .local v19, imsi:Ljava/lang/String;
    if-eqz v33, :cond_18

    .line 955
    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llewa/bi/report/BIReportService$SimNetworkInfo;

    invoke-virtual {v3}, Llewa/bi/report/BIReportService$SimNetworkInfo;->getSlot()I

    move-result v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Llewa/bi/sim/LewaSimManagerHelp$SimManager;->getSubscriberId(I)Ljava/lang/String;

    .line 957
    :cond_18
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 958
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lewa/bi/common/data/collect/NicTraffic;->setImsi(Ljava/lang/String;)V

    .line 960
    :cond_19
    iget-wide v3, v9, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Lcom/lewa/bi/common/data/collect/NicTraffic;->setUpStream(J)V

    .line 961
    iget-wide v3, v9, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Lcom/lewa/bi/common/data/collect/NicTraffic;->setDownStream(J)V

    .line 963
    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llewa/bi/report/BIReportService$SimNetworkInfo;

    invoke-virtual {v3}, Llewa/bi/report/BIReportService$SimNetworkInfo;->getSlot()I

    move-result v3

    if-nez v3, :cond_1b

    .line 964
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->setSim1Info(Lcom/lewa/bi/common/data/collect/NicTraffic;)V

    .line 965
    const/16 v16, 0x1

    .line 932
    .end local v2           #history:Landroid/net/NetworkStatsHistory;
    .end local v19           #imsi:Ljava/lang/String;
    .end local v21           #info:Lcom/lewa/bi/common/data/collect/NicTraffic;
    .end local v30           #packageNameList:[Ljava/lang/String;
    :cond_1a
    :goto_9
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_8

    .line 966
    .restart local v2       #history:Landroid/net/NetworkStatsHistory;
    .restart local v19       #imsi:Ljava/lang/String;
    .restart local v21       #info:Lcom/lewa/bi/common/data/collect/NicTraffic;
    .restart local v30       #packageNameList:[Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llewa/bi/report/BIReportService$SimNetworkInfo;

    invoke-virtual {v3}, Llewa/bi/report/BIReportService$SimNetworkInfo;->getSlot()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    .line 967
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->setSim2Info(Lcom/lewa/bi/common/data/collect/NicTraffic;)V

    .line 968
    const/16 v16, 0x1

    goto :goto_9

    .line 969
    :cond_1c
    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llewa/bi/report/BIReportService$SimNetworkInfo;

    invoke-virtual {v3}, Llewa/bi/report/BIReportService$SimNetworkInfo;->getSlot()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1a

    .line 970
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->setWifiInfo(Lcom/lewa/bi/common/data/collect/NicTraffic;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 971
    const/16 v16, 0x1

    goto :goto_9

    .line 974
    .end local v2           #history:Landroid/net/NetworkStatsHistory;
    .end local v19           #imsi:Ljava/lang/String;
    .end local v21           #info:Lcom/lewa/bi/common/data/collect/NicTraffic;
    .end local v30           #packageNameList:[Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 975
    .local v14, e:Ljava/lang/Exception;
    :goto_a
    sget-boolean v3, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v3, :cond_1a

    .line 976
    const-string v3, "BIReportService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetworkStatsHistory"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 980
    .end local v9           #hentry:Landroid/net/NetworkStatsHistory$Entry;
    .end local v14           #e:Ljava/lang/Exception;
    :cond_1d
    if-eqz v25, :cond_15

    if-eqz v16, :cond_15

    .line 981
    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 982
    sget-boolean v3, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v3, :cond_15

    .line 983
    const-string v3, "BIReportService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->getId()Lcom/lewa/bi/common/data/collect/AppId;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Sim1Info:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->getSim1Info()Lcom/lewa/bi/common/data/collect/NicTraffic;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Sim2Info:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->getSim2Info()Lcom/lewa/bi/common/data/collect/NicTraffic;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WifiInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/lewa/bi/common/data/collect/AppTrafficInfo;->getWifiInfo()Lcom/lewa/bi/common/data/collect/NicTraffic;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 927
    .end local v16           #hasData:Z
    .end local v17           #i:I
    .end local v25           #netInfo:Lcom/lewa/bi/common/data/collect/AppTrafficInfo;
    .end local v43           #totals:[I
    .end local v44           #uid:Ljava/lang/Integer;
    :cond_1e
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    .line 992
    :cond_1f
    sget-boolean v3, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v3, :cond_1

    .line 993
    const-string v3, "BIReportService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appNetInfos size :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 974
    .restart local v2       #history:Landroid/net/NetworkStatsHistory;
    .restart local v9       #hentry:Landroid/net/NetworkStatsHistory$Entry;
    .restart local v16       #hasData:Z
    .restart local v17       #i:I
    .restart local v26       #netInfo:Lcom/lewa/bi/common/data/collect/AppTrafficInfo;
    .restart local v30       #packageNameList:[Ljava/lang/String;
    .restart local v43       #totals:[I
    .restart local v44       #uid:Ljava/lang/Integer;
    :catch_1
    move-exception v14

    move-object/from16 v25, v26

    .end local v26           #netInfo:Lcom/lewa/bi/common/data/collect/AppTrafficInfo;
    .restart local v25       #netInfo:Lcom/lewa/bi/common/data/collect/AppTrafficInfo;
    goto/16 :goto_a
.end method

.method private getBIConfigItem(Landroid/content/Context;Ljava/lang/String;)Llewa/bi/common/BIConfigItem;
    .locals 4
    .parameter "context"
    .parameter "Key"

    .prologue
    const/4 v2, 0x0

    .line 1747
    iget-object v3, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 1748
    :cond_0
    invoke-direct {p0, p1}, Llewa/bi/report/BIReportService;->InitBIConfigItem(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    .line 1749
    iget-object v3, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move-object v1, v2

    .line 1759
    :goto_0
    return-object v1

    .line 1753
    :cond_2
    iget-object v3, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/bi/common/BIConfigItem;

    .line 1754
    .local v1, item:Llewa/bi/common/BIConfigItem;
    invoke-virtual {v1}, Llewa/bi/common/BIConfigItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .end local v1           #item:Llewa/bi/common/BIConfigItem;
    :cond_4
    move-object v1, v2

    .line 1759
    goto :goto_0
.end method

.method private getClientId(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 592
    new-instance v0, Lcom/lewa/bi/common/api/ApiServiceClient;

    invoke-static {}, Lcom/lewa/bi/common/api/ApiConfig;->builder()Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v5

    iget-object v6, p0, Llewa/bi/report/BIReportService;->baseUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->setHttpUrl(Ljava/lang/String;)Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v5

    iget-object v6, p0, Llewa/bi/report/BIReportService;->httpsUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->setHttpsUrl(Ljava/lang/String;)Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->build()Lcom/lewa/bi/common/api/ApiConfig;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/lewa/bi/common/api/ApiServiceClient;-><init>(Lcom/lewa/bi/common/api/ApiConfig;)V

    .line 596
    .local v0, client:Lcom/lewa/bi/common/api/ApiServiceClient;
    sget-boolean v5, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v5, :cond_0

    .line 597
    const-string v5, "BIReportService"

    const-string v6, "ApiServiceClient client = new ApiServiceClient(baseUri):"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_0
    invoke-static {p1}, Llewa/bi/utils/LewaUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lewa/bi/common/api/ApiServiceClient;->setAppAgent(Ljava/lang/String;)V

    .line 600
    new-instance v3, Lcom/lewa/bi/common/api/collect/RegisterRequest;

    invoke-direct {p0, p1}, Llewa/bi/report/BIReportService;->getDeviceProfile(Landroid/content/Context;)Lcom/lewa/bi/common/data/collect/DeviceProfile;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/lewa/bi/common/api/collect/RegisterRequest;-><init>(Lcom/lewa/bi/common/data/collect/DeviceProfile;)V

    .line 601
    .local v3, request:Lcom/lewa/bi/common/api/collect/RegisterRequest;
    sget-boolean v5, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v5, :cond_1

    .line 602
    const-string v5, "BIReportService"

    const-string v6, "RegisterRequest request = new RegisterRequest(device)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_1
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/lewa/bi/common/api/ApiServiceClient;->execute(Lcom/lewa/bi/common/api/ApiRequest;)Lcom/lewa/bi/common/api/ApiResponse;

    move-result-object v4

    check-cast v4, Lcom/lewa/bi/common/api/collect/RegisterResponse;

    .line 606
    .local v4, response:Lcom/lewa/bi/common/api/collect/RegisterResponse;
    invoke-virtual {v4}, Lcom/lewa/bi/common/api/collect/RegisterResponse;->getClientId()Lcom/lewa/bi/common/data/collect/ClientId;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lewa/bi/common/data/collect/ClientId;->getId()Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, clientId:Ljava/lang/String;
    sget-boolean v5, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v5, :cond_2

    .line 609
    const-string v5, "BIReportService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDeviceId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_2
    invoke-static {p1, v1}, Llewa/bi/common/BICommonUtil;->setBIClientId(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    .end local v1           #clientId:Ljava/lang/String;
    .end local v4           #response:Lcom/lewa/bi/common/api/collect/RegisterResponse;
    :goto_0
    return-object v1

    .line 613
    :catch_0
    move-exception v2

    .line 615
    .local v2, e:Lcom/lewa/bi/common/api/ApiException;
    const-string v5, "BIReportService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDeviceId exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/lewa/bi/common/api/ApiException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDeviceProfile(Landroid/content/Context;)Lcom/lewa/bi/common/data/collect/DeviceProfile;
    .locals 16
    .parameter "context"

    .prologue
    .line 622
    new-instance v1, Lcom/lewa/bi/common/data/collect/DeviceProfile;

    invoke-direct {v1}, Lcom/lewa/bi/common/data/collect/DeviceProfile;-><init>()V

    .line 624
    .local v1, device:Lcom/lewa/bi/common/data/collect/DeviceProfile;
    const-string v13, "ro.lewa.version"

    const-string v14, "unknown"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/lewa/bi/common/data/collect/DeviceProfile;->setFirmwareVersion(Ljava/lang/String;)V

    .line 625
    const-string v13, "ro.lewa.device"

    const-string v14, "unknown"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 626
    .local v9, lewaDevice:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "unknown"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 627
    :cond_0
    const-string v13, "ro.product.model"

    const-string v14, "unknown"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/lewa/bi/common/data/collect/DeviceProfile;->setHardwareModel(Ljava/lang/String;)V

    .line 631
    :goto_0
    const-string v13, "ro.sys.partner"

    invoke-static/range {p1 .. p1}, Llewa/bi/common/BICommonUtil;->getBIPartner(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/lewa/bi/common/data/collect/DeviceProfile;->setChannel(Ljava/lang/String;)V

    .line 632
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/lewa/bi/common/data/collect/DeviceProfile;->setLocale(Ljava/lang/String;)V

    .line 633
    const-string v13, "ro.build.version.sdk"

    const-string v14, "unknown"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/lewa/bi/common/data/collect/DeviceProfile;->setAndroidVersion(Ljava/lang/String;)V

    .line 634
    const-string v13, "ro.lewa.osversion"

    const-string v14, "0"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/lewa/bi/common/data/collect/DeviceProfile;->setLewaosVersion(Ljava/lang/String;)V

    .line 635
    const-string v13, "ro.sys.setChannelType"

    const-string v14, "unknown"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/lewa/bi/common/data/collect/DeviceProfile;->setChannelType(Ljava/lang/String;)V

    .line 638
    const-string v13, "wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Llewa/bi/report/BIReportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 639
    .local v12, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 640
    .local v7, info:Landroid/net/wifi/WifiInfo;
    if-eqz v7, :cond_2

    .line 641
    sget-boolean v13, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v13, :cond_1

    .line 642
    const-string v13, "BIReportService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "macAddress="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_1
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/lewa/bi/common/data/collect/DeviceProfile;->setMacAddress(Ljava/lang/String;)V

    .line 648
    :cond_2
    invoke-virtual/range {p0 .. p0}, Llewa/bi/report/BIReportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "persist.sys.eml"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 649
    .local v8, lewaAccount:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 650
    sget-boolean v13, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v13, :cond_3

    .line 651
    const-string v13, "BIReportService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "lewaAccount="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_3
    invoke-virtual {v1, v8}, Lcom/lewa/bi/common/data/collect/DeviceProfile;->setLewaAccount(Ljava/lang/String;)V

    .line 656
    :cond_4
    invoke-static/range {p1 .. p1}, Llewa/bi/sim/LewaSimManagerHelp;->getSimManager(Landroid/content/Context;)Llewa/bi/sim/LewaSimManagerHelp$SimManager;

    move-result-object v10

    .line 657
    .local v10, simManager:Llewa/bi/sim/LewaSimManagerHelp$SimManager;
    if-eqz v10, :cond_c

    .line 661
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Llewa/bi/sim/LewaSimManagerHelp$SimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    .line 662
    .local v5, imsi:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 663
    sget-boolean v13, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v13, :cond_5

    .line 664
    const-string v13, "BIReportService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "imsi="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_5
    invoke-virtual {v1, v5}, Lcom/lewa/bi/common/data/collect/DeviceProfile;->setCarrier(Ljava/lang/String;)V

    .line 669
    :cond_6
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Llewa/bi/sim/LewaSimManagerHelp$SimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .line 670
    .local v6, imsi2:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 671
    sget-boolean v13, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v13, :cond_7

    .line 672
    const-string v13, "BIReportService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "imsi2="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_7
    invoke-virtual {v1, v6}, Lcom/lewa/bi/common/data/collect/DeviceProfile;->setCarrier2(Ljava/lang/String;)V

    .line 680
    :cond_8
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Llewa/bi/sim/LewaSimManagerHelp$SimManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v3

    .line 681
    .local v3, imei:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 682
    sget-boolean v13, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v13, :cond_9

    .line 683
    const-string v13, "BIReportService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "imei="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_9
    invoke-virtual {v1, v3}, Lcom/lewa/bi/common/data/collect/DeviceProfile;->setImei(Ljava/lang/String;)V

    .line 688
    :cond_a
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Llewa/bi/sim/LewaSimManagerHelp$SimManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v4

    .line 689
    .local v4, imei2:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c

    .line 690
    sget-boolean v13, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v13, :cond_b

    .line 691
    const-string v13, "BIReportService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "imei2="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_b
    invoke-virtual {v1, v4}, Lcom/lewa/bi/common/data/collect/DeviceProfile;->setImei2(Ljava/lang/String;)V

    .line 698
    .end local v3           #imei:Ljava/lang/String;
    .end local v4           #imei2:Ljava/lang/String;
    .end local v5           #imsi:Ljava/lang/String;
    .end local v6           #imsi2:Ljava/lang/String;
    :cond_c
    invoke-static/range {p1 .. p1}, Llewa/bi/common/BICommonUtil;->getBIUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 700
    .local v11, uuid:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 701
    invoke-static/range {p1 .. p1}, Llewa/bi/common/BICommonUtil;->getDeviceUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 702
    .local v2, deviceUuid:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 704
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Llewa/bi/common/BICommonUtil;->setBIUUID(Landroid/content/Context;Ljava/lang/String;)V

    .line 705
    invoke-virtual {v1, v2}, Lcom/lewa/bi/common/data/collect/DeviceProfile;->setDeviceUuid(Ljava/lang/String;)V

    .line 712
    .end local v2           #deviceUuid:Ljava/lang/String;
    :cond_d
    :goto_1
    return-object v1

    .line 629
    .end local v7           #info:Landroid/net/wifi/WifiInfo;
    .end local v8           #lewaAccount:Ljava/lang/String;
    .end local v10           #simManager:Llewa/bi/sim/LewaSimManagerHelp$SimManager;
    .end local v11           #uuid:Ljava/lang/String;
    .end local v12           #wifi:Landroid/net/wifi/WifiManager;
    :cond_e
    invoke-virtual {v1, v9}, Lcom/lewa/bi/common/data/collect/DeviceProfile;->setHardwareModel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 709
    .restart local v7       #info:Landroid/net/wifi/WifiInfo;
    .restart local v8       #lewaAccount:Ljava/lang/String;
    .restart local v10       #simManager:Llewa/bi/sim/LewaSimManagerHelp$SimManager;
    .restart local v11       #uuid:Ljava/lang/String;
    .restart local v12       #wifi:Landroid/net/wifi/WifiManager;
    :cond_f
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Llewa/bi/common/BICommonUtil;->setBIUUID(Landroid/content/Context;Ljava/lang/String;)V

    .line 710
    invoke-virtual {v1, v11}, Lcom/lewa/bi/common/data/collect/DeviceProfile;->setDeviceUuid(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getTime(Lcom/lewa/bi/common/data/collect/ConfigItem;)F
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 1669
    invoke-virtual {p1}, Lcom/lewa/bi/common/data/collect/ConfigItem;->getReportFrequencyType()Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    move-result-object v0

    .line 1671
    .local v0, type:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;
    sget-object v2, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->DISABLED:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    if-ne v0, v2, :cond_1

    .line 1684
    :cond_0
    :goto_0
    return v1

    .line 1673
    :cond_1
    sget-object v2, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->REALTIME:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    if-ne v0, v2, :cond_2

    .line 1674
    const/high16 v1, 0x4270

    goto :goto_0

    .line 1675
    :cond_2
    sget-object v2, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->DAILY:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    if-ne v0, v2, :cond_3

    .line 1676
    const v1, 0x47a8c000

    goto :goto_0

    .line 1677
    :cond_3
    sget-object v2, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->CUSTOM:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    if-ne v0, v2, :cond_4

    .line 1678
    invoke-virtual {p1}, Lcom/lewa/bi/common/data/collect/ConfigItem;->getReportFrequencyInterval()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    int-to-float v1, v1

    goto :goto_0

    .line 1679
    :cond_4
    sget-object v2, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->WEEKLY:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    if-ne v0, v2, :cond_5

    .line 1680
    const v1, 0x4913a800

    goto :goto_0

    .line 1681
    :cond_5
    sget-object v2, Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;->MONTHLY:Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    if-ne v0, v2, :cond_0

    .line 1682
    const v1, 0x4a1e3400

    goto :goto_0
.end method

.method private loadBIConfig(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Llewa/bi/common/BIConfigItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1763
    const/4 v1, 0x0

    .line 1764
    .local v1, cfs:Ljava/util/List;,"Ljava/util/List<Llewa/bi/common/BIConfigItem;>;"
    invoke-direct {p0, p1}, Llewa/bi/report/BIReportService;->loadConfigFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1765
    .local v2, configStr:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1766
    const-string v2, "[{\"name\":\"reportPrefBeginTime\",\"value\":\"0\"},{\"name\":\"reportPrefEndTime\",\"value\":\"6\"},{\"cf\":\"DAILY\",\"name\":\"device\",\"rf\":\"DAILY\",\"net\":\"WIFI_ONLY\"},{\"cf\":\"REALTIME\",\"name\":\"event-default\",\"rf\":\"DAILY\",\"net\":\"WIFI_ONLY\"}]"

    .line 1768
    :cond_0
    sget-boolean v6, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v6, :cond_1

    .line 1769
    const-string v6, "BIReportService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadBIConfig configStr = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    :cond_1
    new-instance v6, Lcom/lewa/bi/common/gson/GsonFactory;

    invoke-direct {v6}, Lcom/lewa/bi/common/gson/GsonFactory;-><init>()V

    invoke-virtual {v6}, Lcom/lewa/bi/common/gson/GsonFactory;->getGson()Lcom/lewa/gson/Gson;

    move-result-object v4

    .line 1772
    .local v4, gson:Lcom/lewa/gson/Gson;
    new-instance v6, Llewa/bi/report/BIReportService$1;

    invoke-direct {v6, p0}, Llewa/bi/report/BIReportService$1;-><init>(Llewa/bi/report/BIReportService;)V

    invoke-virtual {v6}, Llewa/bi/report/BIReportService$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 1775
    .local v5, listType:Ljava/lang/reflect/Type;
    :try_start_0
    invoke-virtual {v4, v2, v5}, Lcom/lewa/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/List;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1780
    :goto_0
    return-object v1

    .line 1776
    :catch_0
    move-exception v3

    .line 1777
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "BIReportService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadBIConfig configStr exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadConfigFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 1807
    const/4 v1, 0x0

    .line 1809
    .local v1, configInfo:Ljava/lang/String;
    :try_start_0
    const-string v6, "biconfig.json"

    invoke-virtual {p1, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 1810
    .local v3, inStream:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1811
    .local v5, stream:Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x800

    new-array v0, v6, [B

    .line 1812
    .local v0, buffer:[B
    const/4 v4, -0x1

    .line 1813
    .local v4, length:I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 1814
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1819
    .end local v0           #buffer:[B
    .end local v3           #inStream:Ljava/io/FileInputStream;
    .end local v4           #length:I
    .end local v5           #stream:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 1820
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v6, "BIReportService"

    const-string v7, "load config file not exit"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :goto_1
    return-object v1

    .line 1816
    .restart local v0       #buffer:[B
    .restart local v3       #inStream:Ljava/io/FileInputStream;
    .restart local v4       #length:I
    .restart local v5       #stream:Ljava/io/ByteArrayOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1817
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1818
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1821
    .end local v0           #buffer:[B
    .end local v3           #inStream:Ljava/io/FileInputStream;
    .end local v4           #length:I
    .end local v5           #stream:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v2

    .line 1822
    .local v2, e:Ljava/io/IOException;
    const-string v6, "BIReportService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load config file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private loginDaily(Landroid/content/Context;)Lcom/lewa/bi/common/api/collect/LoginResponse;
    .locals 8
    .parameter "context"

    .prologue
    .line 1441
    new-instance v0, Lcom/lewa/bi/common/api/ApiServiceClient;

    invoke-static {}, Lcom/lewa/bi/common/api/ApiConfig;->builder()Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v5

    iget-object v6, p0, Llewa/bi/report/BIReportService;->baseUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->setHttpUrl(Ljava/lang/String;)Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v5

    iget-object v6, p0, Llewa/bi/report/BIReportService;->httpsUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->setHttpsUrl(Ljava/lang/String;)Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->build()Lcom/lewa/bi/common/api/ApiConfig;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/lewa/bi/common/api/ApiServiceClient;-><init>(Lcom/lewa/bi/common/api/ApiConfig;)V

    .line 1444
    .local v0, client:Lcom/lewa/bi/common/api/ApiServiceClient;
    invoke-static {p1}, Llewa/bi/utils/LewaUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lewa/bi/common/api/ApiServiceClient;->setAppAgent(Ljava/lang/String;)V

    .line 1445
    new-instance v3, Lcom/lewa/bi/common/api/collect/LoginRequest;

    invoke-direct {v3}, Lcom/lewa/bi/common/api/collect/LoginRequest;-><init>()V

    .line 1446
    .local v3, request:Lcom/lewa/bi/common/api/collect/LoginRequest;
    new-instance v1, Lcom/lewa/bi/common/data/collect/ClientId;

    invoke-static {p1}, Llewa/bi/common/BICommonUtil;->getBIClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/lewa/bi/common/data/collect/ClientId;-><init>(Ljava/lang/String;)V

    .line 1447
    .local v1, clientId:Lcom/lewa/bi/common/data/collect/ClientId;
    invoke-virtual {v3, v1}, Lcom/lewa/bi/common/api/collect/LoginRequest;->setClientId(Lcom/lewa/bi/common/data/collect/ClientId;)V

    .line 1448
    invoke-static {p1}, Llewa/bi/common/BICommonUtil;->getBILastConfigTime(Landroid/content/Context;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/lewa/bi/common/api/collect/LoginRequest;->setLastConfigTimestamp(J)V

    .line 1449
    invoke-virtual {v0, v1}, Lcom/lewa/bi/common/api/ApiServiceClient;->setClientId(Lcom/lewa/bi/common/data/collect/ClientId;)V

    .line 1451
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/lewa/bi/common/api/ApiServiceClient;->execute(Lcom/lewa/bi/common/api/ApiRequest;)Lcom/lewa/bi/common/api/ApiResponse;

    move-result-object v4

    check-cast v4, Lcom/lewa/bi/common/api/collect/LoginResponse;

    .line 1452
    .local v4, response:Lcom/lewa/bi/common/api/collect/LoginResponse;
    sget-boolean v5, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v5, :cond_0

    .line 1453
    const-string v5, "BIReportService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loginDaily success "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1462
    .end local v4           #response:Lcom/lewa/bi/common/api/collect/LoginResponse;
    :cond_0
    :goto_0
    return-object v4

    .line 1456
    :catch_0
    move-exception v2

    .line 1457
    .local v2, e:Lcom/lewa/bi/common/api/ApiException;
    sget-boolean v5, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v5, :cond_1

    .line 1458
    const-string v5, "BIReportService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "login failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/lewa/bi/common/api/ApiException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private needReportData(Llewa/bi/common/BIConfigItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 277
    invoke-direct {p0, p1}, Llewa/bi/report/BIReportService;->getTime(Lcom/lewa/bi/common/data/collect/ConfigItem;)F

    move-result v5

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    float-to-long v0, v5

    .line 278
    .local v0, frequencyTypeTime:J
    sget-boolean v5, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v5, :cond_0

    .line 279
    const-string v5, "BIReportService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "judge to reportData name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Llewa/bi/common/BIConfigItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " FrequencyType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Llewa/bi/common/BIConfigItem;->getReportFrequencyType()Lcom/lewa/bi/common/data/collect/ConfigItem$FrequencyType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-nez v5, :cond_2

    .line 283
    sget-boolean v4, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v4, :cond_1

    .line 284
    const-string v4, "BIReportService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no need to reportData name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Llewa/bi/common/BIConfigItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_1
    :goto_0
    return v3

    .line 287
    :cond_2
    const-wide/32 v5, 0x5265c00

    cmp-long v5, v0, v5

    if-ltz v5, :cond_5

    .line 288
    iget-boolean v5, p0, Llewa/bi/report/BIReportService;->mRandomAlarmTime:Z

    if-nez v5, :cond_4

    .line 289
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 290
    .local v2, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 291
    sget-boolean v5, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v5, :cond_3

    .line 292
    const-string v5, "BIReportService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needReportData key:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Llewa/bi/common/BIConfigItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " time.hour:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/text/format/Time;->hour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mStartReportTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Llewa/bi/report/BIReportService;->mStartReportTime:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mEndReportTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Llewa/bi/report/BIReportService;->mEndReportTime:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_3
    iget v5, v2, Landroid/text/format/Time;->hour:I

    iget v6, p0, Llewa/bi/report/BIReportService;->mEndReportTime:I

    if-lt v5, v6, :cond_1

    .line 299
    .end local v2           #time:Landroid/text/format/Time;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1}, Llewa/bi/common/BIConfigItem;->getLastReportTime()J

    move-result-wide v7

    add-long/2addr v7, v0

    invoke-static {v5, v6, v7, v8}, Llewa/bi/common/BICommonUtil;->compareDate(JJ)I

    move-result v5

    if-ltz v5, :cond_6

    move v3, v4

    .line 300
    goto :goto_0

    .line 303
    :cond_5
    invoke-virtual {p1}, Llewa/bi/common/BIConfigItem;->getLastReportTime()J

    move-result-wide v5

    add-long/2addr v5, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_6

    move v3, v4

    .line 304
    goto/16 :goto_0

    .line 308
    :cond_6
    sget-boolean v4, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v4, :cond_1

    .line 309
    const-string v4, "BIReportService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no need to report, name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Llewa/bi/common/BIConfigItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " FrequencyTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lastTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Llewa/bi/common/BIConfigItem;->getLastReportTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " currentTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private needToReport(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 541
    invoke-static {p1}, Llewa/bi/common/BICommonUtil;->getBIClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 542
    invoke-direct {p0, p1}, Llewa/bi/report/BIReportService;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 543
    sget-boolean v5, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v5, :cond_0

    .line 544
    const-string v5, "BIReportService"

    const-string v6, "the clientID not exit"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_0
    :goto_0
    return v4

    .line 548
    :cond_1
    sget-boolean v6, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v6, :cond_2

    .line 549
    const-string v6, "BIReportService"

    const-string v7, "close the BIAutoReportService"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_2
    new-instance v6, Landroid/content/Intent;

    const-class v7, Llewa/bi/report/BIAutoReportService;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 554
    :cond_3
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 555
    .local v3, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 556
    iget v6, v3, Landroid/text/format/Time;->hour:I

    iget v7, p0, Llewa/bi/report/BIReportService;->mEndReportTime:I

    if-ge v6, v7, :cond_4

    iget-boolean v6, p0, Llewa/bi/report/BIReportService;->mRandomAlarmTime:Z

    if-eqz v6, :cond_5

    .line 557
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p1}, Llewa/bi/common/BICommonUtil;->getLastLoginTime(Landroid/content/Context;)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Llewa/bi/common/BICommonUtil;->compareDate(JJ)I

    move-result v6

    if-lez v6, :cond_6

    .line 559
    invoke-direct {p0, p1}, Llewa/bi/report/BIReportService;->loginDaily(Landroid/content/Context;)Lcom/lewa/bi/common/api/collect/LoginResponse;

    move-result-object v2

    .line 560
    .local v2, response:Lcom/lewa/bi/common/api/collect/LoginResponse;
    if-eqz v2, :cond_5

    .line 561
    invoke-virtual {p0, p1}, Llewa/bi/report/BIReportService;->setMonthTrafficInfo(Landroid/content/Context;)V

    .line 562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Llewa/bi/common/BICommonUtil;->setLastLoginTime(Landroid/content/Context;J)V

    .line 563
    invoke-virtual {v2}, Lcom/lewa/bi/common/api/collect/LoginResponse;->getConfigItems()Ljava/util/List;

    move-result-object v0

    .line 564
    .local v0, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/ConfigItem;>;"
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 565
    new-instance v6, Lcom/lewa/bi/common/gson/GsonFactory;

    invoke-direct {v6}, Lcom/lewa/bi/common/gson/GsonFactory;-><init>()V

    invoke-virtual {v6}, Lcom/lewa/bi/common/gson/GsonFactory;->getGson()Lcom/lewa/gson/Gson;

    move-result-object v1

    .line 566
    .local v1, gson:Lcom/lewa/gson/Gson;
    invoke-virtual {v1, v0}, Lcom/lewa/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Llewa/bi/report/BIReportService;->saveConfigFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 567
    invoke-virtual {v2}, Lcom/lewa/bi/common/api/collect/LoginResponse;->getConfigTimestamp()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Llewa/bi/common/BICommonUtil;->setBILastConfigTime(Landroid/content/Context;J)V

    .line 568
    invoke-direct {p0, p1}, Llewa/bi/report/BIReportService;->InitBIConfigItem(Landroid/content/Context;)Ljava/util/List;

    .line 569
    iget v6, p0, Llewa/bi/report/BIReportService;->mLooperTime:I

    int-to-long v6, v6

    invoke-direct {p0, p0, v6, v7}, Llewa/bi/report/BIReportService;->setAlarm(Landroid/content/Context;J)V

    .line 580
    .end local v0           #configItems:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/ConfigItem;>;"
    .end local v1           #gson:Lcom/lewa/gson/Gson;
    .end local v2           #response:Lcom/lewa/bi/common/api/collect/LoginResponse;
    :cond_5
    :goto_1
    invoke-virtual {p0}, Llewa/bi/report/BIReportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lewa_upload_debug_log"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-gtz v6, :cond_7

    .line 581
    sget-boolean v5, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v5, :cond_0

    .line 582
    const-string v5, "BIReportService"

    const-string v6, "user refuse to report data "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 573
    :cond_6
    iget-boolean v6, p0, Llewa/bi/report/BIReportService;->mRandomAlarmTime:Z

    if-eqz v6, :cond_5

    .line 575
    iput-boolean v4, p0, Llewa/bi/report/BIReportService;->mRandomAlarmTime:Z

    goto :goto_1

    :cond_7
    move v4, v5

    .line 587
    goto/16 :goto_0
.end method

.method private reportAppInstall(Landroid/content/Context;Landroid/content/ContentResolver;)Z
    .locals 16
    .parameter "context"
    .parameter "cr"

    .prologue
    .line 1496
    const/4 v8, 0x0

    .line 1498
    .local v8, cAppInstall:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Llewa/bi/provider/BI$MarketInstallColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1502
    :goto_0
    if-nez v8, :cond_0

    .line 1503
    const/4 v1, 0x0

    .line 1562
    :goto_1
    return v1

    .line 1499
    :catch_0
    move-exception v11

    .line 1500
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1504
    .end local v11           #e:Ljava/lang/Exception;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1505
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1506
    const/4 v1, 0x0

    goto :goto_1

    .line 1508
    :cond_1
    new-instance v9, Lcom/lewa/bi/common/api/ApiServiceClient;

    invoke-static {}, Lcom/lewa/bi/common/api/ApiConfig;->builder()Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/bi/report/BIReportService;->baseUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->setHttpUrl(Ljava/lang/String;)Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/bi/report/BIReportService;->httpsUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->setHttpsUrl(Ljava/lang/String;)Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->build()Lcom/lewa/bi/common/api/ApiConfig;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/lewa/bi/common/api/ApiServiceClient;-><init>(Lcom/lewa/bi/common/api/ApiConfig;)V

    .line 1511
    .local v9, client:Lcom/lewa/bi/common/api/ApiServiceClient;
    invoke-static/range {p1 .. p1}, Llewa/bi/utils/LewaUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lewa/bi/common/api/ApiServiceClient;->setAppAgent(Ljava/lang/String;)V

    .line 1512
    new-instance v15, Lcom/lewa/bi/common/api/collect/AppInstallResponse;

    invoke-direct {v15}, Lcom/lewa/bi/common/api/collect/AppInstallResponse;-><init>()V

    .line 1513
    .local v15, response:Lcom/lewa/bi/common/api/collect/AppInstallResponse;
    new-instance v10, Lcom/lewa/bi/common/data/collect/ClientId;

    invoke-static/range {p1 .. p1}, Llewa/bi/common/BICommonUtil;->getBIClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/lewa/bi/common/data/collect/ClientId;-><init>(Ljava/lang/String;)V

    .line 1514
    .local v10, clientId:Lcom/lewa/bi/common/data/collect/ClientId;
    new-instance v14, Lcom/lewa/bi/common/api/collect/AppInstallRequest;

    invoke-direct {v14, v10}, Lcom/lewa/bi/common/api/collect/AppInstallRequest;-><init>(Lcom/lewa/bi/common/data/collect/ClientId;)V

    .line 1516
    .local v14, request:Lcom/lewa/bi/common/api/collect/AppInstallRequest;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1517
    .local v7, appSnapshot:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppInstallInfo;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7}, Llewa/bi/report/BIReportService;->addAppInstall(Landroid/database/Cursor;Ljava/util/List;)V

    .line 1518
    invoke-virtual {v14, v7}, Lcom/lewa/bi/common/api/collect/AppInstallRequest;->setAppInstalls(Ljava/util/List;)V

    .line 1519
    const-string v1, "ro.lewa.device"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1520
    .local v13, lewaDevice:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "unknown"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1521
    :cond_2
    const-string v1, "ro.product.model"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1523
    :cond_3
    invoke-virtual {v14, v13}, Lcom/lewa/bi/common/api/collect/AppInstallRequest;->setHardwareModel(Ljava/lang/String;)V

    .line 1524
    const-string v1, "ro.sys.partner"

    invoke-static/range {p1 .. p1}, Llewa/bi/common/BICommonUtil;->getBIPartner(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/lewa/bi/common/api/collect/AppInstallRequest;->setChannel(Ljava/lang/String;)V

    .line 1528
    :try_start_1
    invoke-virtual {v9, v10}, Lcom/lewa/bi/common/api/ApiServiceClient;->setClientId(Lcom/lewa/bi/common/data/collect/ClientId;)V

    .line 1529
    sget-boolean v1, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v1, :cond_4

    .line 1530
    const-string v1, "BIReportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportAppInstall request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    :cond_4
    invoke-virtual {v9, v14}, Lcom/lewa/bi/common/api/ApiServiceClient;->execute(Lcom/lewa/bi/common/api/ApiRequest;)Lcom/lewa/bi/common/api/ApiResponse;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/lewa/bi/common/api/collect/AppInstallResponse;

    move-object v15, v0

    .line 1533
    sget-boolean v1, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v1, :cond_5

    .line 1534
    const-string v1, "BIReportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportAppInstall success response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1537
    :cond_5
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1539
    :cond_6
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 1540
    .local v12, idMapIndex:I
    sget-object v1, Llewa/bi/provider/BI$MarketInstallColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1542
    sget-object v1, Llewa/bi/provider/BI$MarketInstallColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1544
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-nez v1, :cond_6

    .line 1549
    .end local v12           #idMapIndex:I
    :cond_7
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1551
    :goto_2
    const/4 v1, 0x1

    .line 1557
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1546
    :catch_1
    move-exception v11

    .line 1547
    .restart local v11       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "BIReportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove event map exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1549
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 1552
    .end local v11           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v11

    .line 1553
    .local v11, e:Lcom/lewa/bi/common/api/ApiException;
    :try_start_6
    sget-boolean v1, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v1, :cond_8

    .line 1554
    const-string v1, "BIReportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportAppInstall exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/lewa/bi/common/api/ApiException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1557
    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1559
    sget-boolean v1, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v1, :cond_9

    .line 1560
    const-string v1, "BIReportService"

    const-string v2, "reportAppInstall failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1549
    .end local v11           #e:Lcom/lewa/bi/common/api/ApiException;
    :catchall_0
    move-exception v1

    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1557
    :catchall_1
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private reportData(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 317
    monitor-enter p0

    .line 318
    :try_start_0
    invoke-direct {p0, p1}, Llewa/bi/report/BIReportService;->needToReport(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 319
    sget-boolean v6, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v6, :cond_0

    .line 320
    const-string v6, "BIReportService"

    const-string v7, "start to reportData"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    invoke-virtual {p0}, Llewa/bi/report/BIReportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 327
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-static {p1}, Llewa/bi/common/BICommonUtil;->getDeviceFirstReportStatus(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 328
    invoke-direct {p0, p1, v1}, Llewa/bi/report/BIReportService;->reportDeviceFirst(Landroid/content/Context;Landroid/content/ContentResolver;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 329
    const/4 v6, 0x1

    invoke-static {p1, v6}, Llewa/bi/common/BICommonUtil;->setDeviceFirstReportStatus(Landroid/content/Context;Z)V

    .line 332
    :cond_1
    invoke-static {p0}, Llewa/bi/common/BICommonUtil;->isWiFiActive(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 333
    invoke-direct {p0, p1, v1}, Llewa/bi/report/BIReportService;->reportAppInstall(Landroid/content/Context;Landroid/content/ContentResolver;)Z

    .line 335
    :cond_2
    iget-object v6, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    if-eqz v6, :cond_3

    iget-object v6, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 336
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p1}, Llewa/bi/common/BICommonUtil;->getLastReportTime(Landroid/content/Context;)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Llewa/bi/common/BICommonUtil;->compareDate(JJ)I

    move-result v6

    if-lez v6, :cond_4

    .line 338
    const-string v6, "BIReportService"

    const-string v7, " the mConfigs is null or size equal zero"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-direct {p0, p1, v1}, Llewa/bi/report/BIReportService;->reportEvent(Landroid/content/Context;Landroid/content/ContentResolver;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    invoke-direct {p0, p1, v1, v6}, Llewa/bi/report/BIReportService;->reportDeviceInfo(Landroid/content/Context;Landroid/content/ContentResolver;Llewa/bi/common/BIConfigItem;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Llewa/bi/common/BICommonUtil;->setLastReportTime(Landroid/content/Context;J)V

    .line 387
    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_4
    :goto_0
    monitor-exit p0

    .line 388
    return-void

    .line 344
    .restart local v1       #cr:Landroid/content/ContentResolver;
    :cond_5
    const/4 v0, 0x0

    .line 345
    .local v0, bChange:Z
    iget-object v6, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llewa/bi/common/BIConfigItem;

    .line 346
    .local v3, item:Llewa/bi/common/BIConfigItem;
    invoke-virtual {v3}, Llewa/bi/common/BIConfigItem;->getName()Ljava/lang/String;

    move-result-object v4

    .line 347
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v3}, Llewa/bi/common/BIConfigItem;->getSendNetwork()Lcom/lewa/bi/common/data/collect/ConfigItem$SendNetwork;

    move-result-object v5

    .line 348
    .local v5, sendNet:Lcom/lewa/bi/common/data/collect/ConfigItem$SendNetwork;
    sget-object v6, Lcom/lewa/bi/common/data/collect/ConfigItem$SendNetwork;->WIFI_ONLY:Lcom/lewa/bi/common/data/collect/ConfigItem$SendNetwork;

    if-ne v6, v5, :cond_7

    invoke-static {p0}, Llewa/bi/common/BICommonUtil;->isWiFiActive(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 351
    :cond_7
    const-string v6, "reportPrefBeginTime"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "reportPrefEndTime"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 353
    const-string v6, "device"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 354
    invoke-direct {p0, v3}, Llewa/bi/report/BIReportService;->needReportData(Llewa/bi/common/BIConfigItem;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 355
    invoke-direct {p0, p1, v1, v3}, Llewa/bi/report/BIReportService;->reportDeviceInfo(Landroid/content/Context;Landroid/content/ContentResolver;Llewa/bi/common/BIConfigItem;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Llewa/bi/common/BIConfigItem;->setLastReportTime(J)V

    .line 357
    const/4 v0, 0x1

    goto :goto_1

    .line 360
    :cond_8
    const-string v6, "event-default"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 361
    invoke-direct {p0, v3}, Llewa/bi/report/BIReportService;->needReportData(Llewa/bi/common/BIConfigItem;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 362
    invoke-direct {p0, p1, v1}, Llewa/bi/report/BIReportService;->reportDefaultEvent(Landroid/content/Context;Landroid/content/ContentResolver;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Llewa/bi/common/BIConfigItem;->setLastReportTime(J)V

    .line 364
    const/4 v0, 0x1

    goto :goto_1

    .line 368
    :cond_9
    invoke-direct {p0, v3}, Llewa/bi/report/BIReportService;->needReportData(Llewa/bi/common/BIConfigItem;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 369
    invoke-direct {p0, p1, v1, v4}, Llewa/bi/report/BIReportService;->reportEventSpecial(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Llewa/bi/common/BIConfigItem;->setLastReportTime(J)V

    .line 371
    const/4 v0, 0x1

    goto :goto_1

    .line 374
    :cond_a
    invoke-direct {p0, v3}, Llewa/bi/report/BIReportService;->getTime(Lcom/lewa/bi/common/data/collect/ConfigItem;)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    .line 375
    invoke-direct {p0, p1, v1, v4}, Llewa/bi/report/BIReportService;->deleteEventSpecial(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 387
    .end local v0           #bChange:Z
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Llewa/bi/common/BIConfigItem;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #sendNet:Lcom/lewa/bi/common/data/collect/ConfigItem$SendNetwork;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 381
    .restart local v0       #bChange:Z
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_b
    if-eqz v0, :cond_4

    .line 382
    :try_start_1
    iget-object v6, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    invoke-direct {p0, p1, v6}, Llewa/bi/report/BIReportService;->saveConfig(Landroid/content/Context;Ljava/util/List;)V

    .line 383
    iget v6, p0, Llewa/bi/report/BIReportService;->mLooperTime:I

    int-to-long v6, v6

    invoke-direct {p0, p0, v6, v7}, Llewa/bi/report/BIReportService;->setAlarm(Landroid/content/Context;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private reportDefaultEvent(Landroid/content/Context;Landroid/content/ContentResolver;)Z
    .locals 20
    .parameter "context"
    .parameter "cr"

    .prologue
    .line 1252
    sget-object v3, Llewa/bi/provider/BI$EventColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "eventId"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "label"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "appId"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "time"

    aput-object v5, v4, v2

    const-string v5, "type=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1257
    .local v9, cEvent:Landroid/database/Cursor;
    sget-object v3, Llewa/bi/provider/BI$EventColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "eventId"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "label"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "appId"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "time"

    aput-object v5, v4, v2

    const-string v5, "type=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1262
    .local v10, cEventMap:Landroid/database/Cursor;
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_0

    .line 1263
    const-string v2, "BIReportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cEventMap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_0
    if-eqz v9, :cond_1

    if-nez v10, :cond_4

    .line 1266
    :cond_1
    if-eqz v9, :cond_2

    .line 1267
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1269
    :cond_2
    if-eqz v10, :cond_3

    .line 1270
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1272
    :cond_3
    const/4 v2, 0x0

    .line 1348
    :goto_0
    return v2

    .line 1274
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    if-nez v2, :cond_5

    .line 1275
    const-string v2, "BIReportService"

    const-string v3, "Event count is zero "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1277
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1278
    const/4 v2, 0x1

    goto :goto_0

    .line 1280
    :cond_5
    new-instance v11, Lcom/lewa/bi/common/api/ApiServiceClient;

    invoke-static {}, Lcom/lewa/bi/common/api/ApiConfig;->builder()Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/bi/report/BIReportService;->baseUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->setHttpUrl(Ljava/lang/String;)Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/bi/report/BIReportService;->httpsUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->setHttpsUrl(Ljava/lang/String;)Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->build()Lcom/lewa/bi/common/api/ApiConfig;

    move-result-object v2

    invoke-direct {v11, v2}, Lcom/lewa/bi/common/api/ApiServiceClient;-><init>(Lcom/lewa/bi/common/api/ApiConfig;)V

    .line 1283
    .local v11, client:Lcom/lewa/bi/common/api/ApiServiceClient;
    invoke-static/range {p1 .. p1}, Llewa/bi/utils/LewaUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/lewa/bi/common/api/ApiServiceClient;->setAppAgent(Ljava/lang/String;)V

    .line 1284
    new-instance v19, Lcom/lewa/bi/common/api/collect/AppEventRequest;

    invoke-direct/range {v19 .. v19}, Lcom/lewa/bi/common/api/collect/AppEventRequest;-><init>()V

    .line 1285
    .local v19, request:Lcom/lewa/bi/common/api/collect/AppEventRequest;
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 1286
    .local v8, appEvents:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppEvent;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Llewa/bi/report/BIReportService;->addDefaultAppEvent(Landroid/database/Cursor;Ljava/util/List;)V

    .line 1287
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v8, v1}, Llewa/bi/report/BIReportService;->addDefaultAppEventMap(Landroid/database/Cursor;Ljava/util/List;Landroid/content/ContentResolver;)V

    .line 1288
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_6

    .line 1289
    const-string v2, "BIReportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportDefaultEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_6
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/lewa/bi/common/api/collect/AppEventRequest;->setAppEvents(Ljava/util/List;)V

    .line 1292
    new-instance v12, Lcom/lewa/bi/common/data/collect/ClientId;

    invoke-static/range {p1 .. p1}, Llewa/bi/common/BICommonUtil;->getBIClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Lcom/lewa/bi/common/data/collect/ClientId;-><init>(Ljava/lang/String;)V

    .line 1293
    .local v12, clientId:Lcom/lewa/bi/common/data/collect/ClientId;
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/lewa/bi/common/api/collect/AppEventRequest;->setClientId(Lcom/lewa/bi/common/data/collect/ClientId;)V

    .line 1294
    invoke-virtual {v11, v12}, Lcom/lewa/bi/common/api/ApiServiceClient;->setClientId(Lcom/lewa/bi/common/data/collect/ClientId;)V

    .line 1296
    :try_start_0
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/lewa/bi/common/api/ApiServiceClient;->execute(Lcom/lewa/bi/common/api/ApiRequest;)Lcom/lewa/bi/common/api/ApiResponse;
    :try_end_0
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1298
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1300
    :cond_7
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 1301
    .local v18, idMapIndex:I
    const-string v2, "eventId"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1302
    .local v15, eventIndex:I
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1303
    .local v16, eventName:Ljava/lang/String;
    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1304
    .local v14, eventID:I
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_8

    .line 1305
    const-string v2, "BIReportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eventIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  eventName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " eventID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Llewa/bi/report/BIReportService;->containConfigEvent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1308
    sget-object v2, Llewa/bi/provider/BI$EventMapColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "event_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1310
    sget-object v2, Llewa/bi/provider/BI$EventColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1313
    :cond_9
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_7

    .line 1318
    .end local v14           #eventID:I
    .end local v15           #eventIndex:I
    .end local v16           #eventName:Ljava/lang/String;
    .end local v18           #idMapIndex:I
    :cond_a
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1321
    :goto_1
    :try_start_3
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 1322
    .local v17, idIndex:I
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1324
    :cond_b
    const-string v2, "eventId"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1325
    .restart local v15       #eventIndex:I
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1326
    .restart local v16       #eventName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Llewa/bi/report/BIReportService;->containConfigEvent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1327
    sget-object v2, Llewa/bi/provider/BI$EventColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1330
    :cond_c
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    if-nez v2, :cond_b

    .line 1335
    .end local v15           #eventIndex:I
    .end local v16           #eventName:Ljava/lang/String;
    :cond_d
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1338
    .end local v17           #idIndex:I
    :goto_2
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_e

    .line 1339
    const-string v2, "BIReportService"

    const-string v3, "reportDefaultEvent success"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1341
    :cond_e
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1315
    :catch_0
    move-exception v13

    .line 1316
    .local v13, e:Ljava/lang/Exception;
    :try_start_5
    const-string v2, "BIReportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove default event map exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1318
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 1342
    .end local v13           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v13

    .line 1343
    .local v13, e:Lcom/lewa/bi/common/api/ApiException;
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_f

    .line 1344
    const-string v2, "BIReportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportDefaultEvent failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/lewa/bi/common/api/ApiException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1318
    .end local v13           #e:Lcom/lewa/bi/common/api/ApiException;
    :catchall_0
    move-exception v2

    :try_start_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_7
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1332
    :catch_2
    move-exception v13

    .line 1333
    .local v13, e:Ljava/lang/Exception;
    :try_start_8
    const-string v2, "BIReportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove default event exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1335
    :try_start_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v13           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_9
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_9 .. :try_end_9} :catch_1
.end method

.method private reportDeviceFirst(Landroid/content/Context;Landroid/content/ContentResolver;)Z
    .locals 14
    .parameter "context"
    .parameter "cr"

    .prologue
    .line 1595
    const/4 v8, 0x0

    .line 1597
    .local v8, cDeviceFirst:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Llewa/bi/provider/BI$DeviceReportColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "name"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "id"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const-string v4, "ver"

    aput-object v4, v3, v1

    const/4 v1, 0x4

    const-string v4, "vname"

    aput-object v4, v3, v1

    const/4 v1, 0x5

    const-string v4, "md5"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1603
    :goto_0
    if-nez v8, :cond_0

    .line 1604
    const/4 v1, 0x0

    .line 1643
    :goto_1
    return v1

    .line 1600
    :catch_0
    move-exception v11

    .line 1601
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1605
    .end local v11           #e:Ljava/lang/Exception;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1606
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1607
    const/4 v1, 0x0

    goto :goto_1

    .line 1609
    :cond_1
    new-instance v9, Lcom/lewa/bi/common/api/ApiServiceClient;

    invoke-static {}, Lcom/lewa/bi/common/api/ApiConfig;->builder()Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Llewa/bi/report/BIReportService;->baseUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->setHttpUrl(Ljava/lang/String;)Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Llewa/bi/report/BIReportService;->httpsUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->setHttpsUrl(Ljava/lang/String;)Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->build()Lcom/lewa/bi/common/api/ApiConfig;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/lewa/bi/common/api/ApiServiceClient;-><init>(Lcom/lewa/bi/common/api/ApiConfig;)V

    .line 1612
    .local v9, client:Lcom/lewa/bi/common/api/ApiServiceClient;
    invoke-static {p1}, Llewa/bi/utils/LewaUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lewa/bi/common/api/ApiServiceClient;->setAppAgent(Ljava/lang/String;)V

    .line 1613
    new-instance v13, Lcom/lewa/bi/common/api/collect/DeviceFirstResponse;

    invoke-direct {v13}, Lcom/lewa/bi/common/api/collect/DeviceFirstResponse;-><init>()V

    .line 1614
    .local v13, response:Lcom/lewa/bi/common/api/collect/DeviceFirstResponse;
    new-instance v10, Lcom/lewa/bi/common/data/collect/ClientId;

    invoke-static {p1}, Llewa/bi/common/BICommonUtil;->getBIClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/lewa/bi/common/data/collect/ClientId;-><init>(Ljava/lang/String;)V

    .line 1615
    .local v10, clientId:Lcom/lewa/bi/common/data/collect/ClientId;
    new-instance v12, Lcom/lewa/bi/common/api/collect/DeviceFirstRequest;

    invoke-direct {v12, v10}, Lcom/lewa/bi/common/api/collect/DeviceFirstRequest;-><init>(Lcom/lewa/bi/common/data/collect/ClientId;)V

    .line 1617
    .local v12, request:Lcom/lewa/bi/common/api/collect/DeviceFirstRequest;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1618
    .local v7, appSnapshot:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/FirstAppInfo;>;"
    invoke-direct {p0, v8, v7}, Llewa/bi/report/BIReportService;->addDeviceFirst(Landroid/database/Cursor;Ljava/util/List;)V

    .line 1619
    invoke-virtual {v12, v7}, Lcom/lewa/bi/common/api/collect/DeviceFirstRequest;->setAppSnapshot(Ljava/util/List;)V

    .line 1623
    :try_start_1
    invoke-virtual {v9, v10}, Lcom/lewa/bi/common/api/ApiServiceClient;->setClientId(Lcom/lewa/bi/common/data/collect/ClientId;)V

    .line 1624
    sget-boolean v1, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v1, :cond_2

    .line 1625
    const-string v1, "BIReportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportDeviceFirst request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :cond_2
    invoke-virtual {v9, v12}, Lcom/lewa/bi/common/api/ApiServiceClient;->execute(Lcom/lewa/bi/common/api/ApiRequest;)Lcom/lewa/bi/common/api/ApiResponse;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/lewa/bi/common/api/collect/DeviceFirstResponse;

    move-object v13, v0

    .line 1628
    sget-boolean v1, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v1, :cond_3

    .line 1629
    const-string v1, "BIReportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportDeviceFirst response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    const-string v1, "BIReportService"

    const-string v2, "reportDeviceFirst success"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1632
    :cond_3
    const/4 v1, 0x1

    .line 1638
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1633
    :catch_1
    move-exception v11

    .line 1634
    .local v11, e:Lcom/lewa/bi/common/api/ApiException;
    :try_start_2
    sget-boolean v1, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v1, :cond_4

    .line 1635
    const-string v1, "BIReportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportDeviceFirst exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/lewa/bi/common/api/ApiException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1638
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1640
    sget-boolean v1, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v1, :cond_5

    .line 1641
    const-string v1, "BIReportService"

    const-string v2, "reportDeviceFirst failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1638
    .end local v11           #e:Lcom/lewa/bi/common/api/ApiException;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private reportDeviceInfo(Landroid/content/Context;Landroid/content/ContentResolver;Llewa/bi/common/BIConfigItem;)Z
    .locals 31
    .parameter "context"
    .parameter "cr"
    .parameter "item"

    .prologue
    .line 716
    sget-object v4, Llewa/bi/provider/BI$AppUsageColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 718
    .local v12, cAppUsage:Landroid/database/Cursor;
    if-eqz v12, :cond_a

    .line 719
    new-instance v13, Lcom/lewa/bi/common/api/ApiServiceClient;

    invoke-static {}, Lcom/lewa/bi/common/api/ApiConfig;->builder()Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Llewa/bi/report/BIReportService;->baseUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->setHttpUrl(Ljava/lang/String;)Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Llewa/bi/report/BIReportService;->httpsUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->setHttpsUrl(Ljava/lang/String;)Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->build()Lcom/lewa/bi/common/api/ApiConfig;

    move-result-object v4

    invoke-direct {v13, v4}, Lcom/lewa/bi/common/api/ApiServiceClient;-><init>(Lcom/lewa/bi/common/api/ApiConfig;)V

    .line 722
    .local v13, client:Lcom/lewa/bi/common/api/ApiServiceClient;
    invoke-static/range {p1 .. p1}, Llewa/bi/utils/LewaUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/lewa/bi/common/api/ApiServiceClient;->setAppAgent(Ljava/lang/String;)V

    .line 723
    new-instance v29, Lcom/lewa/bi/common/api/collect/DeviceReportResponse;

    invoke-direct/range {v29 .. v29}, Lcom/lewa/bi/common/api/collect/DeviceReportResponse;-><init>()V

    .line 724
    .local v29, response:Lcom/lewa/bi/common/api/collect/DeviceReportResponse;
    new-instance v14, Lcom/lewa/bi/common/data/collect/ClientId;

    invoke-static/range {p1 .. p1}, Llewa/bi/common/BICommonUtil;->getBIClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v4}, Lcom/lewa/bi/common/data/collect/ClientId;-><init>(Ljava/lang/String;)V

    .line 725
    .local v14, clientId:Lcom/lewa/bi/common/data/collect/ClientId;
    new-instance v28, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;

    move-object/from16 v0, v28

    invoke-direct {v0, v14}, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;-><init>(Lcom/lewa/bi/common/data/collect/ClientId;)V

    .line 726
    .local v28, request:Lcom/lewa/bi/common/api/collect/DeviceReportRequest;
    const-string v4, "_id"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 727
    .local v19, idIndex:I
    const-string v4, "appName"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 728
    .local v24, nameIndex:I
    const-string v4, "startTime"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 729
    .local v30, startIndex:I
    const-string v4, "drution"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 731
    .local v15, durtionIndex:I
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 733
    .local v11, appUsages:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppUsage;>;"
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 735
    :cond_0
    new-instance v3, Lcom/lewa/bi/common/data/collect/AppUsage;

    new-instance v4, Lcom/lewa/bi/common/data/collect/AppId;

    move/from16 v0, v24

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/lewa/bi/common/data/collect/AppId;-><init>(Ljava/lang/String;)V

    move/from16 v0, v30

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct/range {v3 .. v8}, Lcom/lewa/bi/common/data/collect/AppUsage;-><init>(Lcom/lewa/bi/common/data/collect/AppId;JJ)V

    .line 738
    .local v3, appUsage:Lcom/lewa/bi/common/data/collect/AppUsage;
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 741
    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->setAppUsages(Ljava/util/List;)V

    .line 745
    .end local v3           #appUsage:Lcom/lewa/bi/common/data/collect/AppUsage;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Llewa/bi/report/BIReportService;->getAppNetInfo(Landroid/content/Context;Llewa/bi/common/BIConfigItem;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->setAppTrafficInfo(Ljava/util/List;)V

    .line 747
    invoke-direct/range {p0 .. p1}, Llewa/bi/report/BIReportService;->getDeviceProfile(Landroid/content/Context;)Lcom/lewa/bi/common/data/collect/DeviceProfile;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->setDevice(Lcom/lewa/bi/common/data/collect/DeviceProfile;)V

    .line 750
    invoke-static/range {p1 .. p1}, Llewa/bi/common/BICommonUtil;->getBILatitude(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    .line 751
    .local v20, latitude:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Llewa/bi/common/BICommonUtil;->getBILongitude(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 752
    .local v23, longitude:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 753
    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->setLocationHistories(Ljava/util/List;)V

    .line 754
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .local v21, locationHistories:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/LocationHistory;>;"
    new-instance v17, Lcom/lewa/bi/common/data/collect/GeoPoint;

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/lewa/bi/common/data/collect/GeoPoint;-><init>(DD)V

    .line 757
    .local v17, geoPoint:Lcom/lewa/bi/common/data/collect/GeoPoint;
    sget-boolean v4, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v4, :cond_2

    .line 758
    const-string v4, "BIReportService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reportDeviceInfo latitude:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/lewa/bi/common/data/collect/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " longitude:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/lewa/bi/common/data/collect/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_2
    new-instance v22, Lcom/lewa/bi/common/data/collect/LocationHistory;

    invoke-direct/range {v22 .. v22}, Lcom/lewa/bi/common/data/collect/LocationHistory;-><init>()V

    .line 762
    .local v22, locationHistory:Lcom/lewa/bi/common/data/collect/LocationHistory;
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lewa/bi/common/data/collect/LocationHistory;->setGeoPoint(Lcom/lewa/bi/common/data/collect/GeoPoint;)V

    .line 763
    invoke-static/range {p1 .. p1}, Llewa/bi/common/BICommonUtil;->getBILocationTime(Landroid/content/Context;)J

    move-result-wide v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/lewa/bi/common/data/collect/LocationHistory;->setTimestamp(J)V

    .line 764
    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->setLocationHistories(Ljava/util/List;)V

    .line 769
    .end local v17           #geoPoint:Lcom/lewa/bi/common/data/collect/GeoPoint;
    .end local v21           #locationHistories:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/LocationHistory;>;"
    .end local v22           #locationHistory:Lcom/lewa/bi/common/data/collect/LocationHistory;
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .local v10, appSnapshot:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    .line 771
    .local v25, pManager:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v26

    .line 772
    .local v26, packlist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_4

    .line 773
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/pm/PackageInfo;

    .line 774
    .local v27, pak:Landroid/content/pm/PackageInfo;
    new-instance v9, Lcom/lewa/bi/common/data/collect/AppInfo;

    new-instance v4, Lcom/lewa/bi/common/data/collect/AppId;

    move-object/from16 v0, v27

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/lewa/bi/common/data/collect/AppId;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {v9, v4, v5, v6}, Lcom/lewa/bi/common/data/collect/AppInfo;-><init>(Lcom/lewa/bi/common/data/collect/AppId;Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    .local v9, appInfo:Lcom/lewa/bi/common/data/collect/AppInfo;
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p0 .. p0}, Llewa/bi/report/BIReportService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/lewa/bi/common/data/collect/AppInfo;->setAppName(Ljava/lang/String;)V

    .line 778
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 780
    .end local v9           #appInfo:Lcom/lewa/bi/common/data/collect/AppInfo;
    .end local v27           #pak:Landroid/content/pm/PackageInfo;
    :cond_4
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/lewa/bi/common/api/collect/DeviceReportRequest;->setAppSnapshot(Ljava/util/List;)V

    .line 784
    :try_start_0
    invoke-virtual {v13, v14}, Lcom/lewa/bi/common/api/ApiServiceClient;->setClientId(Lcom/lewa/bi/common/data/collect/ClientId;)V

    .line 785
    sget-boolean v4, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v4, :cond_5

    .line 786
    const-string v4, "BIReportService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reportDeviceInfo request:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_5
    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Lcom/lewa/bi/common/api/ApiServiceClient;->execute(Lcom/lewa/bi/common/api/ApiRequest;)Lcom/lewa/bi/common/api/ApiResponse;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/lewa/bi/common/api/collect/DeviceReportResponse;

    move-object/from16 v29, v0

    .line 789
    sget-boolean v4, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v4, :cond_6

    .line 790
    const-string v4, "BIReportService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reportDeviceInfo response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_6
    const-string v4, ""

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Llewa/bi/common/BICommonUtil;->setBILatitude(Landroid/content/Context;Ljava/lang/String;)V

    .line 793
    const-string v4, ""

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Llewa/bi/common/BICommonUtil;->setBILongitude(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 797
    :cond_7
    sget-object v4, Llewa/bi/provider/BI$AppUsageColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 799
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_7

    .line 802
    :cond_8
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 804
    sget-boolean v4, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v4, :cond_9

    .line 805
    const-string v4, "BIReportService"

    const-string v5, "reportDeviceInfo success"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_9
    const/4 v4, 0x1

    .line 820
    .end local v10           #appSnapshot:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppInfo;>;"
    .end local v11           #appUsages:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppUsage;>;"
    .end local v13           #client:Lcom/lewa/bi/common/api/ApiServiceClient;
    .end local v14           #clientId:Lcom/lewa/bi/common/data/collect/ClientId;
    .end local v15           #durtionIndex:I
    .end local v18           #i:I
    .end local v19           #idIndex:I
    .end local v20           #latitude:Ljava/lang/String;
    .end local v23           #longitude:Ljava/lang/String;
    .end local v24           #nameIndex:I
    .end local v25           #pManager:Landroid/content/pm/PackageManager;
    .end local v26           #packlist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v28           #request:Lcom/lewa/bi/common/api/collect/DeviceReportRequest;
    .end local v29           #response:Lcom/lewa/bi/common/api/collect/DeviceReportResponse;
    .end local v30           #startIndex:I
    :goto_1
    return v4

    .line 802
    .restart local v10       #appSnapshot:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppInfo;>;"
    .restart local v11       #appUsages:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppUsage;>;"
    .restart local v13       #client:Lcom/lewa/bi/common/api/ApiServiceClient;
    .restart local v14       #clientId:Lcom/lewa/bi/common/data/collect/ClientId;
    .restart local v15       #durtionIndex:I
    .restart local v18       #i:I
    .restart local v19       #idIndex:I
    .restart local v20       #latitude:Ljava/lang/String;
    .restart local v23       #longitude:Ljava/lang/String;
    .restart local v24       #nameIndex:I
    .restart local v25       #pManager:Landroid/content/pm/PackageManager;
    .restart local v26       #packlist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v28       #request:Lcom/lewa/bi/common/api/collect/DeviceReportRequest;
    .restart local v29       #response:Lcom/lewa/bi/common/api/collect/DeviceReportResponse;
    .restart local v30       #startIndex:I
    :catchall_0
    move-exception v4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_2
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_2 .. :try_end_2} :catch_0

    .line 808
    :catch_0
    move-exception v16

    .line 809
    .local v16, e:Lcom/lewa/bi/common/api/ApiException;
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 810
    sget-boolean v4, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v4, :cond_a

    .line 811
    const-string v4, "BIReportService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reportDeviceInfo exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/lewa/bi/common/api/ApiException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    .end local v10           #appSnapshot:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppInfo;>;"
    .end local v11           #appUsages:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppUsage;>;"
    .end local v13           #client:Lcom/lewa/bi/common/api/ApiServiceClient;
    .end local v14           #clientId:Lcom/lewa/bi/common/data/collect/ClientId;
    .end local v15           #durtionIndex:I
    .end local v16           #e:Lcom/lewa/bi/common/api/ApiException;
    .end local v18           #i:I
    .end local v19           #idIndex:I
    .end local v20           #latitude:Ljava/lang/String;
    .end local v23           #longitude:Ljava/lang/String;
    .end local v24           #nameIndex:I
    .end local v25           #pManager:Landroid/content/pm/PackageManager;
    .end local v26           #packlist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v28           #request:Lcom/lewa/bi/common/api/collect/DeviceReportRequest;
    .end local v29           #response:Lcom/lewa/bi/common/api/collect/DeviceReportResponse;
    .end local v30           #startIndex:I
    :cond_a
    sget-boolean v4, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v4, :cond_b

    .line 817
    const-string v4, "BIReportService"

    const-string v5, "reportDeviceInfo failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_b
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private reportEvent(Landroid/content/Context;Landroid/content/ContentResolver;)Z
    .locals 17
    .parameter "context"
    .parameter "cr"

    .prologue
    .line 1353
    sget-object v3, Llewa/bi/provider/BI$EventColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "eventId"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "label"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "appId"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "time"

    aput-object v5, v4, v2

    const-string v5, "type=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1359
    .local v9, cEvent:Landroid/database/Cursor;
    sget-object v3, Llewa/bi/provider/BI$EventColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "eventId"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "label"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "appId"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "time"

    aput-object v5, v4, v2

    const-string v5, "type=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1365
    .local v10, cEventMap:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    if-nez v10, :cond_3

    .line 1366
    :cond_0
    if-eqz v9, :cond_1

    .line 1367
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1369
    :cond_1
    if-eqz v10, :cond_2

    .line 1370
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1372
    :cond_2
    const/4 v2, 0x0

    .line 1437
    :goto_0
    return v2

    .line 1375
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    if-nez v2, :cond_4

    .line 1376
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1377
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1378
    const/4 v2, 0x1

    goto :goto_0

    .line 1381
    :cond_4
    new-instance v11, Lcom/lewa/bi/common/api/ApiServiceClient;

    invoke-static {}, Lcom/lewa/bi/common/api/ApiConfig;->builder()Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/bi/report/BIReportService;->baseUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->setHttpUrl(Ljava/lang/String;)Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/bi/report/BIReportService;->httpsUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->setHttpsUrl(Ljava/lang/String;)Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->build()Lcom/lewa/bi/common/api/ApiConfig;

    move-result-object v2

    invoke-direct {v11, v2}, Lcom/lewa/bi/common/api/ApiServiceClient;-><init>(Lcom/lewa/bi/common/api/ApiConfig;)V

    .line 1384
    .local v11, client:Lcom/lewa/bi/common/api/ApiServiceClient;
    invoke-static/range {p1 .. p1}, Llewa/bi/utils/LewaUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/lewa/bi/common/api/ApiServiceClient;->setAppAgent(Ljava/lang/String;)V

    .line 1385
    new-instance v16, Lcom/lewa/bi/common/api/collect/AppEventRequest;

    invoke-direct/range {v16 .. v16}, Lcom/lewa/bi/common/api/collect/AppEventRequest;-><init>()V

    .line 1386
    .local v16, request:Lcom/lewa/bi/common/api/collect/AppEventRequest;
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 1387
    .local v8, appEvents:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppEvent;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Llewa/bi/report/BIReportService;->addAppEvent(Landroid/database/Cursor;Ljava/util/List;)V

    .line 1388
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v8, v1}, Llewa/bi/report/BIReportService;->addAppEventMap(Landroid/database/Cursor;Ljava/util/List;Landroid/content/ContentResolver;)V

    .line 1389
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/lewa/bi/common/api/collect/AppEventRequest;->setAppEvents(Ljava/util/List;)V

    .line 1390
    new-instance v12, Lcom/lewa/bi/common/data/collect/ClientId;

    invoke-static/range {p1 .. p1}, Llewa/bi/common/BICommonUtil;->getBIClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Lcom/lewa/bi/common/data/collect/ClientId;-><init>(Ljava/lang/String;)V

    .line 1391
    .local v12, clientId:Lcom/lewa/bi/common/data/collect/ClientId;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/lewa/bi/common/api/collect/AppEventRequest;->setClientId(Lcom/lewa/bi/common/data/collect/ClientId;)V

    .line 1392
    invoke-virtual {v11, v12}, Lcom/lewa/bi/common/api/ApiServiceClient;->setClientId(Lcom/lewa/bi/common/data/collect/ClientId;)V

    .line 1395
    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/lewa/bi/common/api/ApiServiceClient;->execute(Lcom/lewa/bi/common/api/ApiRequest;)Lcom/lewa/bi/common/api/ApiResponse;
    :try_end_0
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1398
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1400
    :cond_5
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1401
    .local v15, idMapIndex:I
    sget-object v2, Llewa/bi/provider/BI$EventMapColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "event_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1403
    sget-object v2, Llewa/bi/provider/BI$EventColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1405
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_5

    .line 1410
    .end local v15           #idMapIndex:I
    :cond_6
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1414
    :goto_1
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1416
    :cond_7
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1417
    .local v14, idIndex:I
    sget-object v2, Llewa/bi/provider/BI$EventColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1419
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    if-nez v2, :cond_7

    .line 1424
    .end local v14           #idIndex:I
    :cond_8
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1427
    :goto_2
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_9

    .line 1428
    const-string v2, "BIReportService"

    const-string v3, "reportEvent success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1430
    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1407
    :catch_0
    move-exception v13

    .line 1408
    .local v13, e:Ljava/lang/Exception;
    :try_start_5
    const-string v2, "BIReportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove event map exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1410
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 1431
    .end local v13           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v13

    .line 1432
    .local v13, e:Lcom/lewa/bi/common/api/ApiException;
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_a

    .line 1433
    const-string v2, "BIReportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "report event failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/lewa/bi/common/api/ApiException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1410
    .end local v13           #e:Lcom/lewa/bi/common/api/ApiException;
    :catchall_0
    move-exception v2

    :try_start_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_7
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1421
    :catch_2
    move-exception v13

    .line 1422
    .local v13, e:Ljava/lang/Exception;
    :try_start_8
    const-string v2, "BIReportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove event exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1424
    :try_start_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v13           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_9
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_9 .. :try_end_9} :catch_1
.end method

.method private reportEventSpecial(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 17
    .parameter "context"
    .parameter "cr"
    .parameter "key"

    .prologue
    .line 1181
    sget-object v3, Llewa/bi/provider/BI$EventColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "eventId"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "label"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "appId"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "time"

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const-string v5, "type"

    aput-object v5, v4, v2

    const-string v5, "eventId=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1186
    .local v9, cEvent:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1187
    :cond_0
    const/4 v2, 0x0

    .line 1248
    :goto_0
    return v2

    .line 1189
    :cond_1
    new-instance v10, Lcom/lewa/bi/common/api/ApiServiceClient;

    invoke-static {}, Lcom/lewa/bi/common/api/ApiConfig;->builder()Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/bi/report/BIReportService;->baseUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->setHttpUrl(Ljava/lang/String;)Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/bi/report/BIReportService;->httpsUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->setHttpsUrl(Ljava/lang/String;)Lcom/lewa/bi/common/api/ApiConfig$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lewa/bi/common/api/ApiConfig$Builder;->build()Lcom/lewa/bi/common/api/ApiConfig;

    move-result-object v2

    invoke-direct {v10, v2}, Lcom/lewa/bi/common/api/ApiServiceClient;-><init>(Lcom/lewa/bi/common/api/ApiConfig;)V

    .line 1192
    .local v10, client:Lcom/lewa/bi/common/api/ApiServiceClient;
    invoke-static/range {p1 .. p1}, Llewa/bi/utils/LewaUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/lewa/bi/common/api/ApiServiceClient;->setAppAgent(Ljava/lang/String;)V

    .line 1193
    new-instance v16, Lcom/lewa/bi/common/api/collect/AppEventRequest;

    invoke-direct/range {v16 .. v16}, Lcom/lewa/bi/common/api/collect/AppEventRequest;-><init>()V

    .line 1194
    .local v16, request:Lcom/lewa/bi/common/api/collect/AppEventRequest;
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 1195
    .local v8, appEvents:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/bi/common/data/collect/AppEvent;>;"
    const-string v2, "type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1196
    .local v13, eventType:I
    const/4 v2, 0x2

    if-ne v13, v2, :cond_5

    .line 1197
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v9, v8, v1}, Llewa/bi/report/BIReportService;->addAppEventMap(Landroid/database/Cursor;Ljava/util/List;Landroid/content/ContentResolver;)V

    .line 1202
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/lewa/bi/common/api/collect/AppEventRequest;->setAppEvents(Ljava/util/List;)V

    .line 1203
    new-instance v11, Lcom/lewa/bi/common/data/collect/ClientId;

    invoke-static/range {p1 .. p1}, Llewa/bi/common/BICommonUtil;->getBIClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Lcom/lewa/bi/common/data/collect/ClientId;-><init>(Ljava/lang/String;)V

    .line 1204
    .local v11, clientId:Lcom/lewa/bi/common/data/collect/ClientId;
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/lewa/bi/common/api/collect/AppEventRequest;->setClientId(Lcom/lewa/bi/common/data/collect/ClientId;)V

    .line 1205
    invoke-virtual {v10, v11}, Lcom/lewa/bi/common/api/ApiServiceClient;->setClientId(Lcom/lewa/bi/common/data/collect/ClientId;)V

    .line 1207
    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/lewa/bi/common/api/ApiServiceClient;->execute(Lcom/lewa/bi/common/api/ApiRequest;)Lcom/lewa/bi/common/api/ApiResponse;
    :try_end_0
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1208
    const/4 v2, 0x2

    if-ne v13, v2, :cond_7

    .line 1210
    :try_start_1
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1211
    .local v15, idMapIndex:I
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1213
    :cond_2
    sget-object v2, Llewa/bi/provider/BI$EventMapColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "event_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1215
    sget-object v2, Llewa/bi/provider/BI$EventColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1217
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 1222
    :cond_3
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1239
    .end local v15           #idMapIndex:I
    :goto_2
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_4

    .line 1240
    const-string v2, "BIReportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportEventSpecial success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1242
    :cond_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1199
    .end local v11           #clientId:Lcom/lewa/bi/common/data/collect/ClientId;
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Llewa/bi/report/BIReportService;->addAppEvent(Landroid/database/Cursor;Ljava/util/List;)V

    goto/16 :goto_1

    .line 1219
    .restart local v11       #clientId:Lcom/lewa/bi/common/data/collect/ClientId;
    :catch_0
    move-exception v12

    .line 1220
    .local v12, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "BIReportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove event map exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1222
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1243
    .end local v12           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v12

    .line 1244
    .local v12, e:Lcom/lewa/bi/common/api/ApiException;
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_6

    .line 1245
    const-string v2, "BIReportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "report event ApiException failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lcom/lewa/bi/common/api/ApiException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1222
    .end local v12           #e:Lcom/lewa/bi/common/api/ApiException;
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_5
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1226
    :cond_7
    :try_start_6
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1227
    .local v14, idIndex:I
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1229
    :cond_8
    sget-object v2, Llewa/bi/provider/BI$EventColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1231
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result v2

    if-nez v2, :cond_8

    .line 1236
    :cond_9
    :try_start_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 1233
    .end local v14           #idIndex:I
    :catch_2
    move-exception v12

    .line 1234
    .local v12, e:Ljava/lang/Exception;
    :try_start_8
    const-string v2, "BIReportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove event exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1236
    :try_start_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .end local v12           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_9
    .catch Lcom/lewa/bi/common/api/ApiException; {:try_start_9 .. :try_end_9} :catch_1
.end method

.method private saveConfig(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Llewa/bi/common/BIConfigItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1784
    .local p2, config:Ljava/util/List;,"Ljava/util/List<Llewa/bi/common/BIConfigItem;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1785
    new-instance v1, Lcom/lewa/bi/common/gson/GsonFactory;

    invoke-direct {v1}, Lcom/lewa/bi/common/gson/GsonFactory;-><init>()V

    invoke-virtual {v1}, Lcom/lewa/bi/common/gson/GsonFactory;->getGson()Lcom/lewa/gson/Gson;

    move-result-object v0

    .line 1786
    .local v0, gson:Lcom/lewa/gson/Gson;
    invoke-virtual {v0, p2}, Lcom/lewa/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Llewa/bi/report/BIReportService;->saveConfigFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 1788
    .end local v0           #gson:Lcom/lewa/gson/Gson;
    :cond_0
    return-void
.end method

.method private saveConfigFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "configInfo"

    .prologue
    .line 1792
    :try_start_0
    const-string v2, "biconfig.json"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1794
    .local v1, outStream:Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1795
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1796
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_0

    .line 1797
    const-string v2, "BIReportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveConfigFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1804
    .end local v1           #outStream:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 1799
    :catch_0
    move-exception v0

    .line 1800
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "BIReportService"

    const-string v3, "save config file not exit"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1801
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 1802
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BIReportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save config file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setAlarm(Landroid/content/Context;J)V
    .locals 9
    .parameter "context"
    .parameter "time"

    .prologue
    .line 1829
    const-wide/16 v5, 0x3c

    cmp-long v5, p2, v5

    if-gez v5, :cond_0

    .line 1842
    :goto_0
    return-void

    .line 1832
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v7, p2

    add-long v1, v5, v7

    .line 1833
    .local v1, atTime:J
    sget-boolean v5, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v5, :cond_1

    .line 1834
    const-string v5, "BIReportService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set alarm time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    :cond_1
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Llewa/bi/report/BIReportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1837
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    const-class v5, Llewa/bi/report/BIReportReceiver;

    invoke-direct {v3, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1838
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "bi.lewa.action.UPLOAD_TIME"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1839
    sget v5, Llewa/bi/report/BIReportService;->ALARM_TYPE_DEFAULT:I

    const/high16 v6, 0x1000

    invoke-static {p0, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1841
    .local v4, sender:Landroid/app/PendingIntent;
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private setRandomAlarm(Landroid/content/Context;J)V
    .locals 9
    .parameter "context"
    .parameter "time"

    .prologue
    .line 1845
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v7, p2

    add-long v1, v5, v7

    .line 1846
    .local v1, atTime:J
    sget-boolean v5, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v5, :cond_0

    .line 1847
    const-string v5, "BIReportService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set random alarm time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    invoke-static {p1, p2, p3}, Llewa/bi/common/BICommonUtil;->setLastReportTime(Landroid/content/Context;J)V

    .line 1850
    :cond_0
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Llewa/bi/report/BIReportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1851
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    const-class v5, Llewa/bi/report/BIReportReceiver;

    invoke-direct {v3, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1852
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "bi.lewa.action.RANDOM_TIME"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1853
    sget v5, Llewa/bi/report/BIReportService;->ALARM_TYPE_RANDOM:I

    const/high16 v6, 0x1000

    invoke-static {p0, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1855
    .local v4, sender:Landroid/app/PendingIntent;
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1856
    return-void
.end method

.method private static snapToCycleDay(I)J
    .locals 4
    .parameter "cycleDay"

    .prologue
    const/4 v3, 0x1

    .line 491
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 492
    .local v0, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 493
    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    if-lt v1, p0, :cond_0

    .line 494
    iget v1, v0, Landroid/text/format/Time;->month:I

    if-ne v1, v3, :cond_1

    .line 495
    const/16 v1, 0xb

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 496
    iget v1, v0, Landroid/text/format/Time;->year:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/text/format/Time;->year:I

    .line 501
    :cond_0
    :goto_0
    iput p0, v0, Landroid/text/format/Time;->monthDay:I

    .line 502
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/format/Time;->second:I

    iput v1, v0, Landroid/text/format/Time;->minute:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 503
    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    return-wide v1

    .line 498
    :cond_1
    iget v1, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/text/format/Time;->month:I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 156
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/biDebug.txt"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, biDebugIndicator:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    const/4 v3, 0x1

    sput-boolean v3, Llewa/bi/common/BIConstants;->DebugMode:Z

    .line 160
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/biTest.txt"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, biTestIndicator:Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    iget-object v3, p0, Llewa/bi/report/BIReportService;->baseTestUri:Ljava/lang/String;

    iput-object v3, p0, Llewa/bi/report/BIReportService;->baseUri:Ljava/lang/String;

    .line 163
    iget-object v3, p0, Llewa/bi/report/BIReportService;->httpsTestUri:Ljava/lang/String;

    iput-object v3, p0, Llewa/bi/report/BIReportService;->httpsUri:Ljava/lang/String;

    .line 166
    :cond_1
    invoke-static {p0}, Llewa/util/NetworkHelperFactory;->getNetworkHelper(Landroid/content/Context;)Llewa/util/NetworkHelperFactory$NetworkHelper;

    move-result-object v3

    iput-object v3, p0, Llewa/bi/report/BIReportService;->mNetworkHelper:Llewa/util/NetworkHelperFactory$NetworkHelper;

    .line 167
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "BIReportService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, thread:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 169
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, p0, Llewa/bi/report/BIReportService;->mServiceLooper:Landroid/os/Looper;

    .line 170
    new-instance v3, Llewa/bi/report/BIReportService$ServiceHandler;

    iget-object v4, p0, Llewa/bi/report/BIReportService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, v4}, Llewa/bi/report/BIReportService$ServiceHandler;-><init>(Llewa/bi/report/BIReportService;Landroid/os/Looper;)V

    iput-object v3, p0, Llewa/bi/report/BIReportService;->mServiceHandler:Llewa/bi/report/BIReportService$ServiceHandler;

    .line 171
    sget-boolean v3, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v3, :cond_2

    .line 172
    const-string v3, "BIReportService"

    const-string v4, "BIReportService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Llewa/bi/report/BIReportService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 194
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 209
    if-nez p1, :cond_1

    .line 210
    const-string v2, "BIReportService"

    const-string v3, "onHandleIntent: intent is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const-string v2, "start_type"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 214
    .local v1, type:I
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_2

    .line 215
    const-string v2, "BIReportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHandleIntent: type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 219
    invoke-direct {p0, p0}, Llewa/bi/report/BIReportService;->deleteOldData(Landroid/content/Context;)Z

    .line 220
    invoke-direct {p0, p0}, Llewa/bi/report/BIReportService;->InitBIConfigItem(Landroid/content/Context;)Ljava/util/List;

    .line 221
    iget v2, p0, Llewa/bi/report/BIReportService;->mLooperTime:I

    int-to-long v2, v2

    invoke-direct {p0, p0, v2, v3}, Llewa/bi/report/BIReportService;->setAlarm(Landroid/content/Context;J)V

    .line 222
    invoke-direct {p0}, Llewa/bi/report/BIReportService;->SetRandomAlarmTime()V

    goto :goto_0

    .line 223
    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 224
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_4

    .line 225
    const-string v2, "BIReportService"

    const-string v3, "Alarm time is reached"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_4
    invoke-static {p0}, Llewa/bi/common/BICommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 228
    iget-object v2, p0, Llewa/bi/report/BIReportService;->mServiceHandler:Llewa/bi/report/BIReportService$ServiceHandler;

    invoke-virtual {v2}, Llewa/bi/report/BIReportService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 229
    .local v0, msg:Landroid/os/Message;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Llewa/bi/report/BIReportService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "start_type"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 232
    iget-object v2, p0, Llewa/bi/report/BIReportService;->mServiceHandler:Llewa/bi/report/BIReportService$ServiceHandler;

    invoke-virtual {v2, v0}, Llewa/bi/report/BIReportService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    .end local v0           #msg:Landroid/os/Message;
    :cond_5
    iget v2, p0, Llewa/bi/report/BIReportService;->mLooperTime:I

    int-to-long v2, v2

    invoke-direct {p0, p0, v2, v3}, Llewa/bi/report/BIReportService;->setAlarm(Landroid/content/Context;J)V

    goto :goto_0

    .line 235
    :cond_6
    if-ne v1, v5, :cond_9

    .line 236
    iget-object v2, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    if-eqz v2, :cond_7

    iget-object v2, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_8

    .line 237
    :cond_7
    invoke-direct {p0, p0}, Llewa/bi/report/BIReportService;->InitBIConfigItem(Landroid/content/Context;)Ljava/util/List;

    .line 239
    :cond_8
    invoke-direct {p0, p0}, Llewa/bi/report/BIReportService;->reportData(Landroid/content/Context;)V

    goto :goto_0

    .line 240
    :cond_9
    const/4 v2, 0x5

    if-ne v1, v2, :cond_c

    .line 241
    iget-object v2, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    if-eqz v2, :cond_a

    iget-object v2, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_b

    .line 242
    :cond_a
    invoke-direct {p0, p0}, Llewa/bi/report/BIReportService;->InitBIConfigItem(Landroid/content/Context;)Ljava/util/List;

    .line 244
    :cond_b
    iput-boolean v5, p0, Llewa/bi/report/BIReportService;->mRandomAlarmTime:Z

    .line 245
    invoke-direct {p0, p0}, Llewa/bi/report/BIReportService;->reportData(Landroid/content/Context;)V

    .line 246
    const/4 v2, 0x0

    iput-boolean v2, p0, Llewa/bi/report/BIReportService;->mRandomAlarmTime:Z

    goto/16 :goto_0

    .line 247
    :cond_c
    const/4 v2, 0x3

    if-ne v1, v2, :cond_f

    .line 248
    iget-object v2, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    if-eqz v2, :cond_d

    iget-object v2, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e

    .line 249
    :cond_d
    invoke-direct {p0, p0}, Llewa/bi/report/BIReportService;->InitBIConfigItem(Landroid/content/Context;)Ljava/util/List;

    .line 251
    :cond_e
    iget v2, p0, Llewa/bi/report/BIReportService;->mLooperTime:I

    int-to-long v2, v2

    invoke-direct {p0, p0, v2, v3}, Llewa/bi/report/BIReportService;->setAlarm(Landroid/content/Context;J)V

    .line 252
    invoke-direct {p0}, Llewa/bi/report/BIReportService;->SetRandomAlarmTime()V

    goto/16 :goto_0

    .line 253
    :cond_f
    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 254
    iget-object v2, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    if-eqz v2, :cond_10

    iget-object v2, p0, Llewa/bi/report/BIReportService;->mConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_11

    .line 255
    :cond_10
    invoke-direct {p0, p0}, Llewa/bi/report/BIReportService;->InitBIConfigItem(Landroid/content/Context;)Ljava/util/List;

    .line 257
    :cond_11
    invoke-direct {p0, p0}, Llewa/bi/report/BIReportService;->reportData(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 178
    iget-object v1, p0, Llewa/bi/report/BIReportService;->mServiceHandler:Llewa/bi/report/BIReportService$ServiceHandler;

    invoke-virtual {v1}, Llewa/bi/report/BIReportService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 179
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 180
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 181
    iget-object v1, p0, Llewa/bi/report/BIReportService;->mServiceHandler:Llewa/bi/report/BIReportService$ServiceHandler;

    invoke-virtual {v1, v0}, Llewa/bi/report/BIReportService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 183
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1
.end method

.method public setMonthTrafficInfo(Landroid/content/Context;)V
    .locals 24
    .parameter "context"

    .prologue
    .line 391
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 392
    .local v11, currentTime:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v11, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 393
    iget v2, v11, Landroid/text/format/Time;->monthDay:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 394
    new-instance v21, Landroid/text/format/Time;

    invoke-direct/range {v21 .. v21}, Landroid/text/format/Time;-><init>()V

    .line 395
    .local v21, time:Landroid/text/format/Time;
    iget v2, v11, Landroid/text/format/Time;->month:I

    if-nez v2, :cond_6

    .line 396
    iget v2, v11, Landroid/text/format/Time;->year:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v21

    iput v2, v0, Landroid/text/format/Time;->year:I

    .line 397
    const/16 v2, 0xb

    move-object/from16 v0, v21

    iput v2, v0, Landroid/text/format/Time;->month:I

    .line 398
    const/4 v2, 0x1

    move-object/from16 v0, v21

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    .line 404
    :goto_0
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_0

    .line 405
    const-string v2, "BIReportService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMonthTrafficInfo time:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    :try_start_0
    const-string v2, "netpolicy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v18

    .line 411
    .local v18, policyService:Landroid/net/INetworkPolicyManager;
    invoke-static/range {p1 .. p1}, Llewa/bi/sim/LewaSimManagerHelp;->getSimManager(Landroid/content/Context;)Llewa/bi/sim/LewaSimManagerHelp$SimManager;

    move-result-object v19

    .line 413
    .local v19, simManager:Llewa/bi/sim/LewaSimManagerHelp$SimManager;
    const/4 v3, 0x0

    .line 414
    .local v3, template0:Landroid/net/NetworkTemplate;
    if-eqz v19, :cond_1

    .line 415
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Llewa/bi/sim/LewaSimManagerHelp$SimManager;->buildTemplateMobileBySlot(I)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 417
    :cond_1
    if-eqz v3, :cond_2

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/bi/report/BIReportService;->mNetworkHelper:Llewa/util/NetworkHelperFactory$NetworkHelper;

    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Llewa/util/NetworkHelperFactory$NetworkHelper;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v20

    .line 421
    .local v20, state:Landroid/net/NetworkStats;
    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v22

    .line 422
    .local v22, used:J
    invoke-interface/range {v18 .. v18}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v16

    .line 423
    .local v16, policies:[Landroid/net/NetworkPolicy;
    move-object/from16 v10, v16

    .local v10, arr$:[Landroid/net/NetworkPolicy;
    array-length v14, v10

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1
    if-ge v13, v14, :cond_2

    aget-object v17, v10, v13

    .line 424
    .local v17, policy:Landroid/net/NetworkPolicy;
    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 425
    move-object/from16 v0, v17

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v8, -0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_7

    .line 426
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_2

    .line 427
    const-string v2, "BIReportService"

    const-string v4, "setMonthTrafficInfo the user not set GEMINI_SIM_1"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v10           #arr$:[Landroid/net/NetworkPolicy;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v16           #policies:[Landroid/net/NetworkPolicy;
    .end local v17           #policy:Landroid/net/NetworkPolicy;
    .end local v20           #state:Landroid/net/NetworkStats;
    .end local v22           #used:J
    :cond_2
    :goto_2
    const/4 v5, 0x0

    .line 447
    .local v5, template2:Landroid/net/NetworkTemplate;
    if-eqz v19, :cond_3

    .line 448
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Llewa/bi/sim/LewaSimManagerHelp$SimManager;->buildTemplateMobileBySlot(I)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 450
    :cond_3
    if-eqz v5, :cond_4

    .line 451
    move-object/from16 v0, p0

    iget-object v4, v0, Llewa/bi/report/BIReportService;->mNetworkHelper:Llewa/util/NetworkHelperFactory$NetworkHelper;

    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Llewa/util/NetworkHelperFactory$NetworkHelper;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v20

    .line 454
    .restart local v20       #state:Landroid/net/NetworkStats;
    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v22

    .line 455
    .restart local v22       #used:J
    invoke-interface/range {v18 .. v18}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v16

    .line 456
    .restart local v16       #policies:[Landroid/net/NetworkPolicy;
    move-object/from16 v10, v16

    .restart local v10       #arr$:[Landroid/net/NetworkPolicy;
    array-length v14, v10

    .restart local v14       #len$:I
    const/4 v13, 0x0

    .restart local v13       #i$:I
    :goto_3
    if-ge v13, v14, :cond_4

    aget-object v17, v10, v13

    .line 457
    .restart local v17       #policy:Landroid/net/NetworkPolicy;
    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v5}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 458
    move-object/from16 v0, v17

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v8, -0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_a

    .line 459
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_4

    .line 460
    const-string v2, "BIReportService"

    const-string v4, "setMonthTrafficInfo the user not set GEMINI_SIM_2"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    .end local v10           #arr$:[Landroid/net/NetworkPolicy;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v16           #policies:[Landroid/net/NetworkPolicy;
    .end local v17           #policy:Landroid/net/NetworkPolicy;
    .end local v20           #state:Landroid/net/NetworkStats;
    .end local v22           #used:J
    :cond_4
    :goto_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 488
    .end local v3           #template0:Landroid/net/NetworkTemplate;
    .end local v5           #template2:Landroid/net/NetworkTemplate;
    .end local v18           #policyService:Landroid/net/INetworkPolicyManager;
    .end local v19           #simManager:Llewa/bi/sim/LewaSimManagerHelp$SimManager;
    .end local v21           #time:Landroid/text/format/Time;
    :cond_5
    :goto_5
    return-void

    .line 400
    .restart local v21       #time:Landroid/text/format/Time;
    :cond_6
    iget v2, v11, Landroid/text/format/Time;->year:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/text/format/Time;->year:I

    .line 401
    iget v2, v11, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v21

    iput v2, v0, Landroid/text/format/Time;->month:I

    .line 402
    const/4 v2, 0x1

    move-object/from16 v0, v21

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_0

    .line 431
    .restart local v3       #template0:Landroid/net/NetworkTemplate;
    .restart local v10       #arr$:[Landroid/net/NetworkPolicy;
    .restart local v13       #i$:I
    .restart local v14       #len$:I
    .restart local v16       #policies:[Landroid/net/NetworkPolicy;
    .restart local v17       #policy:Landroid/net/NetworkPolicy;
    .restart local v18       #policyService:Landroid/net/INetworkPolicyManager;
    .restart local v19       #simManager:Llewa/bi/sim/LewaSimManagerHelp$SimManager;
    .restart local v20       #state:Landroid/net/NetworkStats;
    .restart local v22       #used:J
    :cond_7
    :try_start_1
    move-object/from16 v0, v17

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->adjustTime:J

    move-object/from16 v0, v17

    iget v2, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v2}, Llewa/bi/report/BIReportService;->snapToCycleDay(I)J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-nez v2, :cond_8

    .line 432
    move-object/from16 v0, v17

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->adjustBytes:J

    add-long v22, v22, v6

    .line 434
    :cond_8
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 435
    .local v15, map:Ljava/util/Map;
    const-string v2, "flow_limit_imei"

    move-object/from16 v0, v17

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v15, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string v2, "flos_use_imei"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v15, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string v2, "OS_FLOW_MONTHLY"

    move-object/from16 v0, p1

    invoke-static {v0, v2, v15}, Llewa/bi/BIAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 438
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_2

    .line 439
    const-string v2, "BIReportService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMonthTrafficInfo GEMINI_SIM_1 limit:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " used:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 482
    .end local v3           #template0:Landroid/net/NetworkTemplate;
    .end local v10           #arr$:[Landroid/net/NetworkPolicy;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v15           #map:Ljava/util/Map;
    .end local v16           #policies:[Landroid/net/NetworkPolicy;
    .end local v17           #policy:Landroid/net/NetworkPolicy;
    .end local v18           #policyService:Landroid/net/INetworkPolicyManager;
    .end local v19           #simManager:Llewa/bi/sim/LewaSimManagerHelp$SimManager;
    .end local v20           #state:Landroid/net/NetworkStats;
    .end local v22           #used:J
    :catch_0
    move-exception v12

    .line 483
    .local v12, e:Landroid/os/RemoteException;
    const-string v2, "BIReportService"

    const-string v4, "setMonthTrafficInfo exception"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 423
    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v3       #template0:Landroid/net/NetworkTemplate;
    .restart local v10       #arr$:[Landroid/net/NetworkPolicy;
    .restart local v13       #i$:I
    .restart local v14       #len$:I
    .restart local v16       #policies:[Landroid/net/NetworkPolicy;
    .restart local v17       #policy:Landroid/net/NetworkPolicy;
    .restart local v18       #policyService:Landroid/net/INetworkPolicyManager;
    .restart local v19       #simManager:Llewa/bi/sim/LewaSimManagerHelp$SimManager;
    .restart local v20       #state:Landroid/net/NetworkStats;
    .restart local v22       #used:J
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 464
    .restart local v5       #template2:Landroid/net/NetworkTemplate;
    :cond_a
    :try_start_2
    move-object/from16 v0, v17

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->adjustTime:J

    move-object/from16 v0, v17

    iget v2, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v2}, Llewa/bi/report/BIReportService;->snapToCycleDay(I)J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-nez v2, :cond_b

    .line 465
    move-object/from16 v0, v17

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->adjustBytes:J

    add-long v22, v22, v6

    .line 467
    :cond_b
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 468
    .restart local v15       #map:Ljava/util/Map;
    const-string v2, "flow_limit_imei2"

    move-object/from16 v0, v17

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v15, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-string v2, "flos_use_imei2"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v15, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const-string v2, "OS_FLOW_MONTHLY"

    move-object/from16 v0, p1

    invoke-static {v0, v2, v15}, Llewa/bi/BIAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 471
    sget-boolean v2, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v2, :cond_4

    .line 472
    const-string v2, "BIReportService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMonthTrafficInfo GEMINI_SIM_2 limit:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " used:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 484
    .end local v3           #template0:Landroid/net/NetworkTemplate;
    .end local v5           #template2:Landroid/net/NetworkTemplate;
    .end local v10           #arr$:[Landroid/net/NetworkPolicy;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v15           #map:Ljava/util/Map;
    .end local v16           #policies:[Landroid/net/NetworkPolicy;
    .end local v17           #policy:Landroid/net/NetworkPolicy;
    .end local v18           #policyService:Landroid/net/INetworkPolicyManager;
    .end local v19           #simManager:Llewa/bi/sim/LewaSimManagerHelp$SimManager;
    .end local v20           #state:Landroid/net/NetworkStats;
    .end local v22           #used:J
    :catch_1
    move-exception v12

    .line 485
    .local v12, e:Ljava/lang/InterruptedException;
    const-string v2, "BIReportService"

    const-string v4, "setMonthTrafficInfo thread sleep exception"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 456
    .end local v12           #e:Ljava/lang/InterruptedException;
    .restart local v3       #template0:Landroid/net/NetworkTemplate;
    .restart local v5       #template2:Landroid/net/NetworkTemplate;
    .restart local v10       #arr$:[Landroid/net/NetworkPolicy;
    .restart local v13       #i$:I
    .restart local v14       #len$:I
    .restart local v16       #policies:[Landroid/net/NetworkPolicy;
    .restart local v17       #policy:Landroid/net/NetworkPolicy;
    .restart local v18       #policyService:Landroid/net/INetworkPolicyManager;
    .restart local v19       #simManager:Llewa/bi/sim/LewaSimManagerHelp$SimManager;
    .restart local v20       #state:Landroid/net/NetworkStats;
    .restart local v22       #used:J
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3
.end method
