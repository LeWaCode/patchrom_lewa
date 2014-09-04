.class public Llewa/lockscreen/view/util/ChineseDateUtil;
.super Ljava/lang/Object;
.source "ChineseDateUtil.java"


# static fields
.field private static baseChineseDate:I

.field private static baseChineseMonth:I

.field private static baseChineseYear:I

.field private static baseDate:I

.field private static baseIndex:I

.field private static baseMonth:I

.field private static baseYear:I

.field private static bigLeapMonthYears:[I

.field private static chineseDateNames:[Ljava/lang/String;

.field private static chineseMonthNames:[Ljava/lang/String;

.field private static final chineseMonths:[C

.field private static final daysInGregorianMonth:[C


# instance fields
.field private chineseDate:I

.field private chineseMonth:I

.field private chineseYear:I

.field private gregorianDate:I

.field private gregorianMonth:I

.field private gregorianYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xb

    const/4 v1, 0x1

    .line 17
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Llewa/lockscreen/view/util/ChineseDateUtil;->daysInGregorianMonth:[C

    .line 19
    const/16 v0, 0x192

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonths:[C

    .line 59
    const/16 v0, 0x76d

    sput v0, Llewa/lockscreen/view/util/ChineseDateUtil;->baseYear:I

    .line 60
    sput v1, Llewa/lockscreen/view/util/ChineseDateUtil;->baseMonth:I

    .line 61
    sput v1, Llewa/lockscreen/view/util/ChineseDateUtil;->baseDate:I

    .line 62
    const/4 v0, 0x0

    sput v0, Llewa/lockscreen/view/util/ChineseDateUtil;->baseIndex:I

    .line 63
    const/16 v0, 0x11f5

    sput v0, Llewa/lockscreen/view/util/ChineseDateUtil;->baseChineseYear:I

    .line 64
    sput v2, Llewa/lockscreen/view/util/ChineseDateUtil;->baseChineseMonth:I

    .line 65
    sput v2, Llewa/lockscreen/view/util/ChineseDateUtil;->baseChineseDate:I

    .line 68
    sput-object v3, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonthNames:[Ljava/lang/String;

    .line 70
    sput-object v3, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseDateNames:[Ljava/lang/String;

    .line 173
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Llewa/lockscreen/view/util/ChineseDateUtil;->bigLeapMonthYears:[I

    return-void

    .line 17
    nop

    :array_0
    .array-data 0x2
        0x1ft 0x0t
        0x1ct 0x0t
        0x1ft 0x0t
        0x1et 0x0t
        0x1ft 0x0t
        0x1et 0x0t
        0x1ft 0x0t
        0x1ft 0x0t
        0x1et 0x0t
        0x1ft 0x0t
        0x1et 0x0t
        0x1ft 0x0t
    .end array-data

    .line 19
    :array_1
    .array-data 0x2
        0x0t 0x0t
        0x4t 0x0t
        0xadt 0x0t
        0x8t 0x0t
        0x5at 0x0t
        0x1t 0x0t
        0xd5t 0x0t
        0x54t 0x0t
        0xb4t 0x0t
        0x9t 0x0t
        0x64t 0x0t
        0x5t 0x0t
        0x59t 0x0t
        0x45t 0x0t
        0x95t 0x0t
        0xat 0x0t
        0xa6t 0x0t
        0x4t 0x0t
        0x55t 0x0t
        0x24t 0x0t
        0xadt 0x0t
        0x8t 0x0t
        0x5at 0x0t
        0x62t 0x0t
        0xdat 0x0t
        0x4t 0x0t
        0xb4t 0x0t
        0x5t 0x0t
        0xb4t 0x0t
        0x55t 0x0t
        0x52t 0x0t
        0xdt 0x0t
        0x94t 0x0t
        0xat 0x0t
        0x4at 0x0t
        0x2at 0x0t
        0x56t 0x0t
        0x2t 0x0t
        0x6dt 0x0t
        0x71t 0x0t
        0x6dt 0x0t
        0x1t 0x0t
        0xdat 0x0t
        0x2t 0x0t
        0xd2t 0x0t
        0x52t 0x0t
        0xa9t 0x0t
        0x5t 0x0t
        0x49t 0x0t
        0xdt 0x0t
        0x2at 0x0t
        0x45t 0x0t
        0x2bt 0x0t
        0x9t 0x0t
        0x56t 0x0t
        0x1t 0x0t
        0xb5t 0x0t
        0x20t 0x0t
        0x6dt 0x0t
        0x1t 0x0t
        0x59t 0x0t
        0x69t 0x0t
        0xd4t 0x0t
        0xat 0x0t
        0xa8t 0x0t
        0x5t 0x0t
        0xa9t 0x0t
        0x56t 0x0t
        0xa5t 0x0t
        0x4t 0x0t
        0x2bt 0x0t
        0x9t 0x0t
        0x9et 0x0t
        0x38t 0x0t
        0xb6t 0x0t
        0x8t 0x0t
        0xect 0x0t
        0x74t 0x0t
        0x6ct 0x0t
        0x5t 0x0t
        0xd4t 0x0t
        0xat 0x0t
        0xe4t 0x0t
        0x6at 0x0t
        0x52t 0x0t
        0x5t 0x0t
        0x95t 0x0t
        0xat 0x0t
        0x5at 0x0t
        0x42t 0x0t
        0x5bt 0x0t
        0x4t 0x0t
        0xb6t 0x0t
        0x4t 0x0t
        0xb4t 0x0t
        0x22t 0x0t
        0x6at 0x0t
        0x5t 0x0t
        0x52t 0x0t
        0x75t 0x0t
        0xc9t 0x0t
        0xat 0x0t
        0x52t 0x0t
        0x5t 0x0t
        0x35t 0x0t
        0x55t 0x0t
        0x4dt 0x0t
        0xat 0x0t
        0x5at 0x0t
        0x2t 0x0t
        0x5dt 0x0t
        0x31t 0x0t
        0xb5t 0x0t
        0x2t 0x0t
        0x6at 0x0t
        0x8at 0x0t
        0x68t 0x0t
        0x5t 0x0t
        0xa9t 0x0t
        0xat 0x0t
        0x8at 0x0t
        0x6at 0x0t
        0x2at 0x0t
        0x5t 0x0t
        0x2dt 0x0t
        0x9t 0x0t
        0xaat 0x0t
        0x48t 0x0t
        0x5at 0x0t
        0x1t 0x0t
        0xb5t 0x0t
        0x9t 0x0t
        0xb0t 0x0t
        0x39t 0x0t
        0x64t 0x0t
        0x5t 0x0t
        0x25t 0x0t
        0x75t 0x0t
        0x95t 0x0t
        0xat 0x0t
        0x96t 0x0t
        0x4t 0x0t
        0x4dt 0x0t
        0x54t 0x0t
        0xadt 0x0t
        0x4t 0x0t
        0xdat 0x0t
        0x4t 0x0t
        0xd4t 0x0t
        0x44t 0x0t
        0xb4t 0x0t
        0x5t 0x0t
        0x54t 0x0t
        0x85t 0x0t
        0x52t 0x0t
        0xdt 0x0t
        0x92t 0x0t
        0xat 0x0t
        0x56t 0x0t
        0x6at 0x0t
        0x56t 0x0t
        0x2t 0x0t
        0x6dt 0x0t
        0x2t 0x0t
        0x6at 0x0t
        0x41t 0x0t
        0xdat 0x0t
        0x2t 0x0t
        0xb2t 0x0t
        0xa1t 0x0t
        0xa9t 0x0t
        0x5t 0x0t
        0x49t 0x0t
        0xdt 0x0t
        0xat 0x0t
        0x6dt 0x0t
        0x2at 0x0t
        0x9t 0x0t
        0x56t 0x0t
        0x1t 0x0t
        0xadt 0x0t
        0x50t 0x0t
        0x6dt 0x0t
        0x1t 0x0t
        0xd9t 0x0t
        0x2t 0x0t
        0xd1t 0x0t
        0x3at 0x0t
        0xa8t 0x0t
        0x5t 0x0t
        0x29t 0x0t
        0x85t 0x0t
        0xa5t 0x0t
        0xct 0x0t
        0x2at 0x0t
        0x9t 0x0t
        0x96t 0x0t
        0x54t 0x0t
        0xb6t 0x0t
        0x8t 0x0t
        0x6ct 0x0t
        0x9t 0x0t
        0x64t 0x0t
        0x45t 0x0t
        0xd4t 0x0t
        0xat 0x0t
        0xa4t 0x0t
        0x5t 0x0t
        0x51t 0x0t
        0x25t 0x0t
        0x95t 0x0t
        0xat 0x0t
        0x2at 0x0t
        0x72t 0x0t
        0x5bt 0x0t
        0x4t 0x0t
        0xb6t 0x0t
        0x4t 0x0t
        0xact 0x0t
        0x52t 0x0t
        0x6at 0x0t
        0x5t 0x0t
        0xd2t 0x0t
        0xat 0x0t
        0xa2t 0x0t
        0x4at 0x0t
        0x4at 0x0t
        0x5t 0x0t
        0x55t 0x0t
        0x94t 0x0t
        0x2dt 0x0t
        0xat 0x0t
        0x5at 0x0t
        0x2t 0x0t
        0x75t 0x0t
        0x61t 0x0t
        0xb5t 0x0t
        0x2t 0x0t
        0x6at 0x0t
        0x3t 0x0t
        0x61t 0x0t
        0x45t 0x0t
        0xa9t 0x0t
        0xat 0x0t
        0x4at 0x0t
        0x5t 0x0t
        0x25t 0x0t
        0x25t 0x0t
        0x2dt 0x0t
        0x9t 0x0t
        0x9at 0x0t
        0x68t 0x0t
        0xdat 0x0t
        0x8t 0x0t
        0xb4t 0x0t
        0x9t 0x0t
        0xa8t 0x0t
        0x59t 0x0t
        0x54t 0x0t
        0x3t 0x0t
        0xa5t 0x0t
        0xat 0x0t
        0x91t 0x0t
        0x3at 0x0t
        0x96t 0x0t
        0x4t 0x0t
        0xadt 0x0t
        0xb0t 0x0t
        0xadt 0x0t
        0x4t 0x0t
        0xdat 0x0t
        0x4t 0x0t
        0xf4t 0x0t
        0x62t 0x0t
        0xb4t 0x0t
        0x5t 0x0t
        0x54t 0x0t
        0xbt 0x0t
        0x44t 0x0t
        0x5dt 0x0t
        0x52t 0x0t
        0xat 0x0t
        0x95t 0x0t
        0x4t 0x0t
        0x55t 0x0t
        0x22t 0x0t
        0x6dt 0x0t
        0x2t 0x0t
        0x5at 0x0t
        0x71t 0x0t
        0xdat 0x0t
        0x2t 0x0t
        0xaat 0x0t
        0x5t 0x0t
        0xb2t 0x0t
        0x55t 0x0t
        0x49t 0x0t
        0xbt 0x0t
        0x4at 0x0t
        0xat 0x0t
        0x2dt 0x0t
        0x39t 0x0t
        0x36t 0x0t
        0x1t 0x0t
        0x6dt 0x0t
        0x80t 0x0t
        0x6dt 0x0t
        0x1t 0x0t
        0xd9t 0x0t
        0x2t 0x0t
        0xe9t 0x0t
        0x6at 0x0t
        0xa8t 0x0t
        0x5t 0x0t
        0x29t 0x0t
        0xbt 0x0t
        0x9at 0x0t
        0x4ct 0x0t
        0xaat 0x0t
        0x8t 0x0t
        0xb6t 0x0t
        0x8t 0x0t
        0xb4t 0x0t
        0x38t 0x0t
        0x6ct 0x0t
        0x9t 0x0t
        0x54t 0x0t
        0x75t 0x0t
        0xd4t 0x0t
        0xat 0x0t
        0xa4t 0x0t
        0x5t 0x0t
        0x45t 0x0t
        0x55t 0x0t
        0x95t 0x0t
        0xat 0x0t
        0x9at 0x0t
        0x4t 0x0t
        0x55t 0x0t
        0x44t 0x0t
        0xb5t 0x0t
        0x4t 0x0t
        0x6at 0x0t
        0x82t 0x0t
        0x6at 0x0t
        0x5t 0x0t
        0xd2t 0x0t
        0xat 0x0t
        0x92t 0x0t
        0x6at 0x0t
        0x4at 0x0t
        0x5t 0x0t
        0x55t 0x0t
        0xat 0x0t
        0x2at 0x0t
        0x4at 0x0t
        0x5at 0x0t
        0x2t 0x0t
        0xb5t 0x0t
        0x2t 0x0t
        0xb2t 0x0t
        0x31t 0x0t
        0x69t 0x0t
        0x3t 0x0t
        0x31t 0x0t
        0x73t 0x0t
        0xa9t 0x0t
        0xat 0x0t
        0x4at 0x0t
        0x5t 0x0t
        0x2dt 0x0t
        0x55t 0x0t
        0x2dt 0x0t
        0x9t 0x0t
        0x5at 0x0t
        0x1t 0x0t
        0xd5t 0x0t
        0x48t 0x0t
        0xb4t 0x0t
        0x9t 0x0t
        0x68t 0x0t
        0x89t 0x0t
        0x54t 0x0t
        0xbt 0x0t
        0xa4t 0x0t
        0xat 0x0t
        0xa5t 0x0t
        0x6at 0x0t
        0x95t 0x0t
        0x4t 0x0t
        0xadt 0x0t
        0x8t 0x0t
        0x6at 0x0t
        0x44t 0x0t
        0xdat 0x0t
        0x4t 0x0t
        0x74t 0x0t
        0x5t 0x0t
        0xb0t 0x0t
        0x25t 0x0t
        0x54t 0x0t
        0x3t 0x0t
    .end array-data

    .line 173
    :array_2
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x88t 0x0t 0x0t 0x0t
        0x93t 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0x9bt 0x0t 0x0t 0x0t
        0x9et 0x0t 0x0t 0x0t
        0xb9t 0x0t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Calendar;Landroid/content/Context;)V
    .locals 5
    .parameter "calendar"
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v3, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonthNames:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 76
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90d000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonthNames:[Ljava/lang/String;

    .line 79
    :cond_0
    sget-object v3, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseDateNames:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 80
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90d000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseDateNames:[Ljava/lang/String;

    .line 84
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 85
    .local v2, year:I
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 86
    .local v1, month:I
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 88
    .local v0, day:I
    invoke-virtual {p0, v2, v1, v0}, Llewa/lockscreen/view/util/ChineseDateUtil;->setGregorian(III)V

    .line 90
    invoke-virtual {p0}, Llewa/lockscreen/view/util/ChineseDateUtil;->computeChineseFields()I

    .line 92
    return-void
.end method


# virtual methods
.method public computeChineseFields()I
    .locals 9

    .prologue
    .line 131
    iget v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->gregorianYear:I

    const/16 v8, 0x76d

    if-lt v7, v8, :cond_0

    iget v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->gregorianYear:I

    const/16 v8, 0x834

    if-le v7, v8, :cond_1

    .line 132
    :cond_0
    const/4 v7, 0x1

    .line 170
    :goto_0
    return v7

    .line 133
    :cond_1
    sget v6, Llewa/lockscreen/view/util/ChineseDateUtil;->baseYear:I

    .line 134
    .local v6, startYear:I
    sget v5, Llewa/lockscreen/view/util/ChineseDateUtil;->baseMonth:I

    .line 135
    .local v5, startMonth:I
    sget v4, Llewa/lockscreen/view/util/ChineseDateUtil;->baseDate:I

    .line 136
    .local v4, startDate:I
    sget v7, Llewa/lockscreen/view/util/ChineseDateUtil;->baseChineseYear:I

    iput v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseYear:I

    .line 137
    sget v7, Llewa/lockscreen/view/util/ChineseDateUtil;->baseChineseMonth:I

    iput v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonth:I

    .line 138
    sget v7, Llewa/lockscreen/view/util/ChineseDateUtil;->baseChineseDate:I

    iput v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseDate:I

    .line 140
    iget v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->gregorianYear:I

    const/16 v8, 0x7d0

    if-lt v7, v8, :cond_2

    .line 141
    sget v7, Llewa/lockscreen/view/util/ChineseDateUtil;->baseYear:I

    add-int/lit8 v6, v7, 0x63

    .line 142
    const/4 v5, 0x1

    .line 143
    const/4 v4, 0x1

    .line 144
    sget v7, Llewa/lockscreen/view/util/ChineseDateUtil;->baseChineseYear:I

    add-int/lit8 v7, v7, 0x63

    iput v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseYear:I

    .line 145
    const/16 v7, 0xb

    iput v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonth:I

    .line 146
    const/16 v7, 0x19

    iput v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseDate:I

    .line 148
    :cond_2
    const/4 v0, 0x0

    .line 149
    .local v0, daysDiff:I
    move v1, v6

    .local v1, i:I
    :goto_1
    iget v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->gregorianYear:I

    if-ge v1, v7, :cond_4

    .line 150
    add-int/lit16 v0, v0, 0x16d

    .line 151
    invoke-virtual {p0, v1}, Llewa/lockscreen/view/util/ChineseDateUtil;->isGregorianLeapYear(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 152
    add-int/lit8 v0, v0, 0x1

    .line 149
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 154
    :cond_4
    move v1, v5

    :goto_2
    iget v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->gregorianMonth:I

    if-ge v1, v7, :cond_5

    .line 155
    iget v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->gregorianYear:I

    invoke-virtual {p0, v7, v1}, Llewa/lockscreen/view/util/ChineseDateUtil;->daysInGregorianMonth(II)I

    move-result v7

    add-int/2addr v0, v7

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 157
    :cond_5
    iget v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->gregorianDate:I

    sub-int/2addr v7, v4

    add-int/2addr v0, v7

    .line 159
    iget v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseDate:I

    add-int/2addr v7, v0

    iput v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseDate:I

    .line 160
    iget v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseYear:I

    iget v8, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonth:I

    invoke-virtual {p0, v7, v8}, Llewa/lockscreen/view/util/ChineseDateUtil;->daysInChineseMonth(II)I

    move-result v2

    .line 161
    .local v2, lastDate:I
    iget v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseYear:I

    iget v8, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonth:I

    invoke-virtual {p0, v7, v8}, Llewa/lockscreen/view/util/ChineseDateUtil;->nextChineseMonth(II)I

    move-result v3

    .line 162
    .local v3, nextMonth:I
    :goto_3
    iget v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseDate:I

    if-le v7, v2, :cond_7

    .line 163
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonth:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 164
    iget v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseYear:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseYear:I

    .line 165
    :cond_6
    iput v3, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonth:I

    .line 166
    iget v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseDate:I

    sub-int/2addr v7, v2

    iput v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseDate:I

    .line 167
    iget v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseYear:I

    iget v8, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonth:I

    invoke-virtual {p0, v7, v8}, Llewa/lockscreen/view/util/ChineseDateUtil;->daysInChineseMonth(II)I

    move-result v2

    .line 168
    iget v7, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseYear:I

    iget v8, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonth:I

    invoke-virtual {p0, v7, v8}, Llewa/lockscreen/view/util/ChineseDateUtil;->nextChineseMonth(II)I

    move-result v3

    goto :goto_3

    .line 170
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public dayOfYear(III)I
    .locals 3
    .parameter "y"
    .parameter "m"
    .parameter "d"

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, c:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 124
    invoke-virtual {p0, p1, v1}, Llewa/lockscreen/view/util/ChineseDateUtil;->daysInGregorianMonth(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_0
    add-int/2addr v0, p3

    .line 127
    return v0
.end method

.method public daysInChineseMonth(II)I
    .locals 8
    .parameter "y"
    .parameter "m"

    .prologue
    const/4 v7, 0x1

    .line 180
    sget v5, Llewa/lockscreen/view/util/ChineseDateUtil;->baseChineseYear:I

    sub-int v5, p1, v5

    sget v6, Llewa/lockscreen/view/util/ChineseDateUtil;->baseIndex:I

    add-int v2, v5, v6

    .line 181
    .local v2, index:I
    const/4 v4, 0x0

    .line 182
    .local v4, v:I
    const/4 v3, 0x0

    .line 183
    .local v3, l:I
    const/16 v0, 0x1e

    .line 184
    .local v0, d:I
    if-gt v7, p2, :cond_1

    const/16 v5, 0x8

    if-gt p2, v5, :cond_1

    .line 185
    sget-object v5, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonths:[C

    mul-int/lit8 v6, v2, 0x2

    aget-char v4, v5, v6

    .line 186
    add-int/lit8 v3, p2, -0x1

    .line 187
    shr-int v5, v4, v3

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v7, :cond_0

    .line 188
    const/16 v0, 0x1d

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    const/16 v5, 0x9

    if-gt v5, p2, :cond_2

    const/16 v5, 0xc

    if-gt p2, v5, :cond_2

    .line 190
    sget-object v5, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonths:[C

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-char v4, v5, v6

    .line 191
    add-int/lit8 v3, p2, -0x9

    .line 192
    shr-int v5, v4, v3

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v7, :cond_0

    .line 193
    const/16 v0, 0x1d

    goto :goto_0

    .line 195
    :cond_2
    sget-object v5, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonths:[C

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-char v4, v5, v6

    .line 196
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v4, v5, 0xf

    .line 197
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 198
    const/4 v0, 0x0

    goto :goto_0

    .line 200
    :cond_3
    const/16 v0, 0x1d

    .line 201
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v5, Llewa/lockscreen/view/util/ChineseDateUtil;->bigLeapMonthYears:[I

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 202
    sget-object v5, Llewa/lockscreen/view/util/ChineseDateUtil;->bigLeapMonthYears:[I

    aget v5, v5, v1

    if-ne v5, v2, :cond_4

    .line 203
    const/16 v0, 0x1e

    .line 204
    goto :goto_0

    .line 201
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public daysInGregorianMonth(II)I
    .locals 3
    .parameter "y"
    .parameter "m"

    .prologue
    .line 115
    sget-object v1, Llewa/lockscreen/view/util/ChineseDateUtil;->daysInGregorianMonth:[C

    add-int/lit8 v2, p2, -0x1

    aget-char v0, v1, v2

    .line 116
    .local v0, d:I
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, p1}, Llewa/lockscreen/view/util/ChineseDateUtil;->isGregorianLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    add-int/lit8 v0, v0, 0x1

    .line 118
    :cond_0
    return v0
.end method

.method public getChineseDate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 245
    const-string v0, ""

    .line 247
    .local v0, ret:Ljava/lang/String;
    iget v1, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonth:I

    if-lez v1, :cond_1

    .line 248
    sget-object v1, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseDateNames:[Ljava/lang/String;

    iget v2, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseDate:I

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 253
    :cond_0
    :goto_0
    return-object v0

    .line 249
    :cond_1
    iget v1, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonth:I

    if-gez v1, :cond_0

    .line 250
    sget-object v1, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseDateNames:[Ljava/lang/String;

    iget v2, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseDate:I

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method public getChineseDay()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Llewa/lockscreen/view/util/ChineseDateUtil;->getChineseMonth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Llewa/lockscreen/view/util/ChineseDateUtil;->getChineseDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChineseMonth()Ljava/lang/String;
    .locals 4

    .prologue
    .line 230
    const-string v0, ""

    .line 232
    .local v0, ret:Ljava/lang/String;
    iget v1, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonth:I

    if-lez v1, :cond_1

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonthNames:[Ljava/lang/String;

    iget v3, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonth:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6708"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    :cond_0
    :goto_0
    return-object v0

    .line 234
    :cond_1
    iget v1, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonth:I

    if-gez v1, :cond_0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonthNames:[Ljava/lang/String;

    iget v3, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonth:I

    neg-int v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6708"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isGregorianLeapYear(I)Z
    .locals 2
    .parameter "year"

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, isLeap:Z
    rem-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_0

    .line 106
    const/4 v0, 0x1

    .line 107
    :cond_0
    rem-int/lit8 v1, p1, 0x64

    if-nez v1, :cond_1

    .line 108
    const/4 v0, 0x0

    .line 109
    :cond_1
    rem-int/lit16 v1, p1, 0x190

    if-nez v1, :cond_2

    .line 110
    const/4 v0, 0x1

    .line 111
    :cond_2
    return v0
.end method

.method public nextChineseMonth(II)I
    .locals 5
    .parameter "y"
    .parameter "m"

    .prologue
    .line 213
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 214
    .local v1, n:I
    if-lez p2, :cond_0

    .line 215
    sget v3, Llewa/lockscreen/view/util/ChineseDateUtil;->baseChineseYear:I

    sub-int v3, p1, v3

    sget v4, Llewa/lockscreen/view/util/ChineseDateUtil;->baseIndex:I

    add-int v0, v3, v4

    .line 216
    .local v0, index:I
    sget-object v3, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonths:[C

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-char v2, v3, v4

    .line 217
    .local v2, v:I
    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 218
    if-ne v2, p2, :cond_0

    .line 219
    neg-int v1, p2

    .line 221
    .end local v0           #index:I
    .end local v2           #v:I
    :cond_0
    const/16 v3, 0xd

    if-ne v1, v3, :cond_1

    .line 222
    const/4 v1, 0x1

    .line 223
    :cond_1
    return v1
.end method

.method public setGregorian(III)V
    .locals 1
    .parameter "y"
    .parameter "m"
    .parameter "d"

    .prologue
    const/4 v0, 0x0

    .line 95
    iput p1, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->gregorianYear:I

    .line 96
    iput p2, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->gregorianMonth:I

    .line 97
    iput p3, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->gregorianDate:I

    .line 98
    iput v0, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseYear:I

    .line 99
    iput v0, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseMonth:I

    .line 100
    iput v0, p0, Llewa/lockscreen/view/util/ChineseDateUtil;->chineseDate:I

    .line 101
    return-void
.end method
