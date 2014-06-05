.class public Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;
.super Ljava/lang/Object;


# instance fields
.field private mTimeType:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

.field private subType:I

.field private threadPhoneList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->threadPhoneList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->subType:I

    return-void
.end method


# virtual methods
.method public getSmsStartTime()J
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->getTimeType()Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_ALL:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v1

    invoke-virtual {v3}, Ljava/util/Date;->getMonth()I

    move-result v0

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->getTimeType()Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    move-result-object v4

    sget-object v5, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_ONE_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    add-int/lit8 v1, v1, -0x1

    const/16 v0, 0xc

    :cond_1
    :goto_1
    invoke-virtual {v3, v1}, Ljava/util/Date;->setYear(I)V

    invoke-virtual {v3, v0}, Ljava/util/Date;->setMonth(I)V

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    if-le v2, v0, :cond_8

    :goto_2
    invoke-virtual {v3, v0}, Ljava/util/Date;->setDate(I)V

    invoke-virtual {v3, v6}, Ljava/util/Date;->setHours(I)V

    invoke-virtual {v3, v6}, Ljava/util/Date;->setMinutes(I)V

    invoke-virtual {v3, v6}, Ljava/util/Date;->setSeconds(I)V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->getTimeType()Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    move-result-object v4

    sget-object v5, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_THREE_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    if-ne v4, v5, :cond_5

    const/4 v4, 0x3

    if-gt v0, v4, :cond_4

    add-int/lit8 v1, v1, -0x1

    rsub-int/lit8 v0, v0, 0x3

    rsub-int/lit8 v0, v0, 0xc

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x3

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->getTimeType()Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    move-result-object v4

    sget-object v5, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_SIX_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    if-ne v4, v5, :cond_7

    const/4 v4, 0x6

    if-gt v0, v4, :cond_6

    add-int/lit8 v1, v1, -0x1

    rsub-int/lit8 v0, v0, 0x6

    rsub-int/lit8 v0, v0, 0xc

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, -0x6

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->getTimeType()Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    move-result-object v4

    sget-object v5, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_ONE_YEAR:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    if-ne v4, v5, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_2
.end method

.method public getSubType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->subType:I

    return v0
.end method

.method public getThreadPhoneList()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->threadPhoneList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTimeType()Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->mTimeType:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    return-object v0
.end method

.method public setSubType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->subType:I

    return-void
.end method

.method public setThreadPhoneList(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->threadPhoneList:Ljava/util/ArrayList;

    return-void
.end method

.method public setTimeType(Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/object/sms/SmsSyncArg;->mTimeType:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    return-void
.end method
