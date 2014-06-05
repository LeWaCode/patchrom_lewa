.class public final Lcom/tencent/qqpim/sdk/utils/PhoneNumberUtil;
.super Ljava/lang/Object;


# static fields
.field private static final PREFIX_NUMBER:[Ljava/lang/String; = null

.field public static final SP_MOBILE:I = 0x0

.field public static final SP_TELECOM:I = 0x2

.field public static final SP_UNICOM:I = 0x1

.field public static final SP_UNKNOWN:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "+86"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "12593"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "17909"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "17951"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "17911"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "10193"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "12583"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "12520"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "96688"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/PhoneNumberUtil;->PREFIX_NUMBER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkValidate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/tencent/qqpim/sdk/utils/PhoneNumberUtil;->isNumberValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/tencent/qqpim/sdk/utils/PhoneNumberUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static equalsPrex(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tencent/qqpim/sdk/utils/PhoneNumberUtil;->PREFIX_NUMBER:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getIPPhoneNumByCode(I)[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    packed-switch p0, :pswitch_data_0

    const-string v1, "12593"

    aput-object v1, v0, v2

    const-string v1, "17951"

    aput-object v1, v0, v3

    :goto_0
    return-object v0

    :pswitch_0
    const-string v1, "12593"

    aput-object v1, v0, v2

    const-string v1, "17951"

    aput-object v1, v0, v3

    goto :goto_0

    :pswitch_1
    const-string v1, "10193"

    aput-object v1, v0, v2

    const-string v1, "17911"

    aput-object v1, v0, v3

    goto :goto_0

    :pswitch_2
    const-string v1, "17909"

    aput-object v1, v0, v2

    const-string v1, "17901"

    aput-object v1, v0, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getIndentityNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x8

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getSQLEqual(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/tencent/qqpim/sdk/utils/PhoneNumberUtil;->getIndentityNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " like \'%"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " =\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static isNumberValid(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xa

    new-array v2, v1, [C

    fill-array-data v2, :array_0

    array-length v3, v2

    move v1, v0

    :goto_1
    if-lt v1, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    aget-char v4, v2, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :array_0
    .array-data 0x2
        0x2ft 0x0t
        0x3at 0x0t
        0x23t 0x0t
        0x2ct 0x0t
        0x3bt 0x0t
        0x2et 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x4et 0x0t
        0x2at 0x0t
    .end array-data
.end method

.method public static removePrex(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    sget-object v1, Lcom/tencent/qqpim/sdk/utils/PhoneNumberUtil;->PREFIX_NUMBER:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    :goto_1
    return-object p0

    :cond_1
    aget-object v3, v1, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static startWithPrex(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    sget-object v2, Lcom/tencent/qqpim/sdk/utils/PhoneNumberUtil;->PREFIX_NUMBER:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    aget-object v4, v2, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
