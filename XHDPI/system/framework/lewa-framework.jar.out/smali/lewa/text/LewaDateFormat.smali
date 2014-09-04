.class public Llewa/text/LewaDateFormat;
.super Ljava/text/SimpleDateFormat;
.source "LewaDateFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "pattern"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 0
    .parameter "template"
    .parameter "value"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .parameter "template"
    .parameter "locale"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 27
    return-void
.end method

.method private getDetailedAmPm(I)Ljava/lang/String;
    .locals 5
    .parameter "hour"

    .prologue
    .line 30
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90d0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 31
    .local v2, segments:[I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90d0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, names:[Ljava/lang/String;
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 33
    aget v3, v2, v0

    if-lt p1, v3, :cond_0

    .line 34
    aget-object v3, v1, v0

    .line 38
    :goto_1
    return-object v3

    .line 32
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 38
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 5
    .parameter "date"
    .parameter "buffer"
    .parameter "fieldPos"

    .prologue
    .line 42
    invoke-virtual {p0}, Llewa/text/LewaDateFormat;->getDateFormatSymbols()Ljava/text/DateFormatSymbols;

    move-result-object v1

    .line 43
    .local v1, symbols:Ljava/text/DateFormatSymbols;
    iget-object v2, p0, Llewa/text/LewaDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 44
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, ampmString:[Ljava/lang/String;
    iget-object v2, p0, Llewa/text/LewaDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Llewa/text/LewaDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {p0, v3}, Llewa/text/LewaDateFormat;->getDetailedAmPm(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 46
    invoke-virtual {v1, v0}, Ljava/text/DateFormatSymbols;->setAmPmStrings([Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, v1}, Llewa/text/LewaDateFormat;->setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V

    .line 48
    invoke-super {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v2

    return-object v2
.end method
