.class public Llewa/laml/data/DateTimeVariableUpdater;
.super Llewa/laml/data/NotifierVariableUpdater;
.source "DateTimeVariableUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/data/DateTimeVariableUpdater$1;,
        Llewa/laml/data/DateTimeVariableUpdater$TimeUpdater;,
        Llewa/laml/data/DateTimeVariableUpdater$Accuracy;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DateTimeVariableUpdater"

.field private static final TIME_DAY:I = 0x5265c00

.field private static final TIME_HOUR:I = 0x36ee80

.field private static final TIME_MINUTE:I = 0xea60

.field private static final TIME_SECOND:I = 0x3e8

.field public static final USE_TAG:Ljava/lang/String; = "DateTime"


# instance fields
.field private mAmPm:Llewa/laml/util/IndexedNumberVariable;

.field protected mCalendar:Ljava/util/Calendar;

.field private mCurDay:I

.field private mCurrentTime:J

.field private mDate:Llewa/laml/util/IndexedNumberVariable;

.field private mDateLunar:Llewa/laml/util/IndexedNumberVariable;

.field private mDayOfWeek:Llewa/laml/util/IndexedNumberVariable;

.field private mHour12:Llewa/laml/util/IndexedNumberVariable;

.field private mHour24:Llewa/laml/util/IndexedNumberVariable;

.field private mLastUpdatedTime:J

.field private mLocale:Ljava/util/Locale;

.field private mMinute:Llewa/laml/util/IndexedNumberVariable;

.field private mMonth:Llewa/laml/util/IndexedNumberVariable;

.field private mMonthLunar:Llewa/laml/util/IndexedNumberVariable;

.field private mMonthLunarLeap:Llewa/laml/util/IndexedNumberVariable;

.field private mNextAlarm:Llewa/laml/util/IndexedStringVariable;

.field private mNextUpdateTime:J

.field private mSecond:Llewa/laml/util/IndexedNumberVariable;

.field private mTime:Llewa/laml/util/IndexedNumberVariable;

.field private mTimeAccuracy:J

.field private mTimeFormat:Llewa/laml/util/IndexedNumberVariable;

.field private mTimeSys:Llewa/laml/util/IndexedNumberVariable;

.field private final mTimeUpdater:Ljava/lang/Runnable;

.field private mYear:Llewa/laml/util/IndexedNumberVariable;

.field private mYearLunar:Llewa/laml/util/IndexedNumberVariable;

.field private mYearLunar1864:Llewa/laml/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Llewa/laml/data/VariableUpdaterManager;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 88
    sget-object v0, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;->Minute:Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

    invoke-direct {p0, p1, v0}, Llewa/laml/data/DateTimeVariableUpdater;-><init>(Llewa/laml/data/VariableUpdaterManager;Llewa/laml/data/DateTimeVariableUpdater$Accuracy;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Llewa/laml/data/VariableUpdaterManager;Ljava/lang/String;)V
    .locals 8
    .parameter "m"
    .parameter "accuracy"

    .prologue
    .line 98
    const-string v5, "android.intent.action.TIME_SET"

    invoke-direct {p0, p1, v5}, Llewa/laml/data/NotifierVariableUpdater;-><init>(Llewa/laml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Llewa/laml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    .line 100
    new-instance v5, Llewa/laml/data/DateTimeVariableUpdater$TimeUpdater;

    invoke-direct {v5, p0}, Llewa/laml/data/DateTimeVariableUpdater$TimeUpdater;-><init>(Llewa/laml/data/DateTimeVariableUpdater;)V

    iput-object v5, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, ac:Llewa/laml/data/DateTimeVariableUpdater$Accuracy;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 103
    invoke-static {}, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;->values()[Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

    move-result-object v2

    .local v2, arr$:[Llewa/laml/data/DateTimeVariableUpdater$Accuracy;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 104
    .local v0, a:Llewa/laml/data/DateTimeVariableUpdater$Accuracy;
    invoke-virtual {v0}, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 105
    move-object v1, v0

    .line 110
    .end local v0           #a:Llewa/laml/data/DateTimeVariableUpdater$Accuracy;
    .end local v2           #arr$:[Llewa/laml/data/DateTimeVariableUpdater$Accuracy;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    if-nez v1, :cond_1

    .line 111
    sget-object v1, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;->Minute:Llewa/laml/data/DateTimeVariableUpdater$Accuracy;

    .line 112
    const-string v5, "DateTimeVariableUpdater"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid accuracy tag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    invoke-direct {p0, v1}, Llewa/laml/data/DateTimeVariableUpdater;->initInner(Llewa/laml/data/DateTimeVariableUpdater$Accuracy;)V

    .line 115
    return-void

    .line 103
    .restart local v0       #a:Llewa/laml/data/DateTimeVariableUpdater$Accuracy;
    .restart local v2       #arr$:[Llewa/laml/data/DateTimeVariableUpdater$Accuracy;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Llewa/laml/data/VariableUpdaterManager;Llewa/laml/data/DateTimeVariableUpdater$Accuracy;)V
    .locals 1
    .parameter "m"
    .parameter "accuracy"

    .prologue
    .line 118
    const-string v0, "android.intent.action.TIME_SET"

    invoke-direct {p0, p1, v0}, Llewa/laml/data/NotifierVariableUpdater;-><init>(Llewa/laml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    .line 120
    new-instance v0, Llewa/laml/data/DateTimeVariableUpdater$TimeUpdater;

    invoke-direct {v0, p0}, Llewa/laml/data/DateTimeVariableUpdater$TimeUpdater;-><init>(Llewa/laml/data/DateTimeVariableUpdater;)V

    iput-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 121
    invoke-direct {p0, p2}, Llewa/laml/data/DateTimeVariableUpdater;->initInner(Llewa/laml/data/DateTimeVariableUpdater$Accuracy;)V

    .line 122
    return-void
.end method

.method static synthetic access$000(Llewa/laml/data/DateTimeVariableUpdater;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Llewa/laml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method private checkUpdateTime()V
    .locals 8

    .prologue
    .line 125
    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v4

    invoke-virtual {v4}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 127
    .local v2, currentTimeMillis:J
    iget-wide v4, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    div-long v4, v2, v4

    iget-wide v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    mul-long v0, v4, v6

    .line 128
    .local v0, currentTime:J
    iget-wide v4, p0, Llewa/laml/data/DateTimeVariableUpdater;->mCurrentTime:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_0

    .line 129
    iput-wide v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mCurrentTime:J

    .line 130
    iget-wide v4, p0, Llewa/laml/data/DateTimeVariableUpdater;->mCurrentTime:J

    iget-wide v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Llewa/laml/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    .line 131
    invoke-direct {p0}, Llewa/laml/data/DateTimeVariableUpdater;->updateTime()V

    .line 132
    iget-object v4, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTimeSys:Llewa/laml/util/IndexedNumberVariable;

    long-to-double v5, v2

    invoke-virtual {v4, v5, v6}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 133
    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v4

    invoke-virtual {v4}, Llewa/laml/ScreenContext;->requestUpdate()V

    .line 135
    :cond_0
    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v4

    invoke-virtual {v4}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    iget-wide v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    sub-long/2addr v6, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    return-void
.end method

.method private initInner(Llewa/laml/data/DateTimeVariableUpdater$Accuracy;)V
    .locals 5
    .parameter "accuracy"

    .prologue
    const-wide/32 v3, 0x36ee80

    .line 139
    const-string v0, "DateTimeVariableUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init with accuracy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object v0, Llewa/laml/data/DateTimeVariableUpdater$1;->$SwitchMap$lewa$laml$data$DateTimeVariableUpdater$Accuracy:[I

    invoke-virtual {p1}, Llewa/laml/data/DateTimeVariableUpdater$Accuracy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 154
    iput-wide v3, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 157
    :goto_0
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "year"

    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mYear:Llewa/laml/util/IndexedNumberVariable;

    .line 158
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "month"

    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mMonth:Llewa/laml/util/IndexedNumberVariable;

    .line 159
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "date"

    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mDate:Llewa/laml/util/IndexedNumberVariable;

    .line 160
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "year_lunar"

    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mYearLunar:Llewa/laml/util/IndexedNumberVariable;

    .line 161
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "year_lunar1864"

    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mYearLunar1864:Llewa/laml/util/IndexedNumberVariable;

    .line 162
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "month_lunar"

    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mMonthLunar:Llewa/laml/util/IndexedNumberVariable;

    .line 163
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "month_lunar_leap"

    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mMonthLunarLeap:Llewa/laml/util/IndexedNumberVariable;

    .line 164
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "date_lunar"

    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mDateLunar:Llewa/laml/util/IndexedNumberVariable;

    .line 165
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "day_of_week"

    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mDayOfWeek:Llewa/laml/util/IndexedNumberVariable;

    .line 167
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "ampm"

    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mAmPm:Llewa/laml/util/IndexedNumberVariable;

    .line 168
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "hour12"

    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mHour12:Llewa/laml/util/IndexedNumberVariable;

    .line 169
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "hour24"

    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mHour24:Llewa/laml/util/IndexedNumberVariable;

    .line 170
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "minute"

    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mMinute:Llewa/laml/util/IndexedNumberVariable;

    .line 171
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "second"

    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mSecond:Llewa/laml/util/IndexedNumberVariable;

    .line 172
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "time"

    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTime:Llewa/laml/util/IndexedNumberVariable;

    .line 173
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "time_sys"

    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTimeSys:Llewa/laml/util/IndexedNumberVariable;

    .line 174
    iget-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTimeSys:Llewa/laml/util/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 175
    new-instance v0, Llewa/laml/util/IndexedStringVariable;

    const-string v1, "next_alarm_time"

    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mNextAlarm:Llewa/laml/util/IndexedStringVariable;

    .line 177
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    const-string v1, "time_format"

    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTimeFormat:Llewa/laml/util/IndexedNumberVariable;

    .line 179
    iget-object v2, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTimeFormat:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0

    :goto_1
    invoke-virtual {v2, v0, v1}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 182
    invoke-direct {p0}, Llewa/laml/data/DateTimeVariableUpdater;->updateTime()V

    .line 183
    return-void

    .line 142
    :pswitch_0
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    goto/16 :goto_0

    .line 145
    :pswitch_1
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    goto/16 :goto_0

    .line 148
    :pswitch_2
    iput-wide v3, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    goto/16 :goto_0

    .line 151
    :pswitch_3
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    goto/16 :goto_0

    .line 179
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshAlarm()V
    .locals 3

    .prologue
    .line 186
    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, nextAlarm:Ljava/lang/String;
    iget-object v1, p0, Llewa/laml/data/DateTimeVariableUpdater;->mNextAlarm:Llewa/laml/util/IndexedStringVariable;

    invoke-virtual {v1, v0}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method private updateTime()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 193
    .local v1, elapsedTime:J
    iget-wide v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    sub-long v6, v1, v6

    const-wide/16 v8, 0xc8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 194
    iget-object v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 195
    iget-object v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 196
    .local v5, year:I
    iget-object v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v6, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 197
    .local v4, month:I
    iget-object v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 198
    .local v0, date:I
    iget-object v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mAmPm:Llewa/laml/util/IndexedNumberVariable;

    iget-object v7, p0, Llewa/laml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 199
    iget-object v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mHour12:Llewa/laml/util/IndexedNumberVariable;

    iget-object v7, p0, Llewa/laml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 200
    iget-object v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mHour24:Llewa/laml/util/IndexedNumberVariable;

    iget-object v7, p0, Llewa/laml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 201
    iget-object v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mMinute:Llewa/laml/util/IndexedNumberVariable;

    iget-object v7, p0, Llewa/laml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 202
    iget-object v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mYear:Llewa/laml/util/IndexedNumberVariable;

    int-to-double v7, v5

    invoke-virtual {v6, v7, v8}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 203
    iget-object v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mMonth:Llewa/laml/util/IndexedNumberVariable;

    int-to-double v7, v4

    invoke-virtual {v6, v7, v8}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 204
    iget-object v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mDate:Llewa/laml/util/IndexedNumberVariable;

    int-to-double v7, v0

    invoke-virtual {v6, v7, v8}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 205
    iget-object v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mDayOfWeek:Llewa/laml/util/IndexedNumberVariable;

    iget-object v7, p0, Llewa/laml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 206
    iget-object v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mSecond:Llewa/laml/util/IndexedNumberVariable;

    iget-object v7, p0, Llewa/laml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 207
    iget v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mCurDay:I

    if-eq v0, v6, :cond_0

    .line 208
    invoke-static {v5, v4, v0}, Llewa/util/LunarDate;->calLunar(III)[J

    move-result-object v3

    .line 209
    .local v3, lunarDate:[J
    iget-object v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mYearLunar:Llewa/laml/util/IndexedNumberVariable;

    const/4 v7, 0x0

    aget-wide v7, v3, v7

    long-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 210
    iget-object v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mMonthLunar:Llewa/laml/util/IndexedNumberVariable;

    aget-wide v7, v3, v10

    long-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 211
    iget-object v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mDateLunar:Llewa/laml/util/IndexedNumberVariable;

    aget-wide v7, v3, v11

    long-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 212
    iget-object v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mYearLunar1864:Llewa/laml/util/IndexedNumberVariable;

    const/4 v7, 0x3

    aget-wide v7, v3, v7

    long-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 213
    iget-object v6, p0, Llewa/laml/data/DateTimeVariableUpdater;->mMonthLunarLeap:Llewa/laml/util/IndexedNumberVariable;

    const/4 v7, 0x6

    aget-wide v7, v3, v7

    long-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 215
    .end local v3           #lunarDate:[J
    :cond_0
    iput-wide v1, p0, Llewa/laml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    .line 217
    .end local v0           #date:I
    .end local v4           #month:I
    .end local v5           #year:I
    :cond_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 220
    invoke-super {p0}, Llewa/laml/data/NotifierVariableUpdater;->finish()V

    .line 221
    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 222
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 225
    invoke-super {p0}, Llewa/laml/data/NotifierVariableUpdater;->init()V

    .line 226
    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mLocale:Ljava/util/Locale;

    .line 227
    iget-object v2, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTimeFormat:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0

    :goto_0
    invoke-virtual {v2, v0, v1}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 230
    invoke-direct {p0}, Llewa/laml/data/DateTimeVariableUpdater;->refreshAlarm()V

    .line 231
    invoke-direct {p0}, Llewa/laml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 232
    return-void

    .line 227
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "intent"
    .parameter "o"

    .prologue
    .line 235
    invoke-direct {p0}, Llewa/laml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 236
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 239
    invoke-super {p0}, Llewa/laml/data/NotifierVariableUpdater;->pause()V

    .line 240
    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->isGlobalThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 245
    invoke-super {p0}, Llewa/laml/data/NotifierVariableUpdater;->resume()V

    .line 246
    invoke-direct {p0}, Llewa/laml/data/DateTimeVariableUpdater;->refreshAlarm()V

    .line 247
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    .line 248
    invoke-virtual {p0}, Llewa/laml/data/DateTimeVariableUpdater;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 249
    .local v0, locale:Ljava/util/Locale;
    iget-object v1, p0, Llewa/laml/data/DateTimeVariableUpdater;->mLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    iget-object v1, p0, Llewa/laml/data/DateTimeVariableUpdater;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Llewa/laml/data/DateTimeVariableUpdater;->mCurrentTime:J

    .line 251
    iput-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mLocale:Ljava/util/Locale;

    .line 253
    :cond_0
    invoke-direct {p0}, Llewa/laml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 254
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 257
    invoke-super {p0, p1, p2}, Llewa/laml/data/NotifierVariableUpdater;->tick(J)V

    .line 258
    iget-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTime:Llewa/laml/util/IndexedNumberVariable;

    long-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 259
    iget-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater;->mTimeSys:Llewa/laml/util/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 260
    invoke-direct {p0}, Llewa/laml/data/DateTimeVariableUpdater;->updateTime()V

    .line 261
    return-void
.end method
