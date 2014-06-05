.class public final enum Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

.field public static final enum TIME_ALL:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

.field public static final enum TIME_ONE_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

.field public static final enum TIME_ONE_YEAR:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

.field public static final enum TIME_SIX_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

.field public static final enum TIME_THREE_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    const-string v1, "TIME_ONE_MONTH"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_ONE_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    new-instance v0, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    const-string v1, "TIME_THREE_MONTH"

    invoke-direct {v0, v1, v3}, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_THREE_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    new-instance v0, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    const-string v1, "TIME_SIX_MONTH"

    invoke-direct {v0, v1, v4}, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_SIX_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    new-instance v0, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    const-string v1, "TIME_ONE_YEAR"

    invoke-direct {v0, v1, v5}, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_ONE_YEAR:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    new-instance v0, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    const-string v1, "TIME_ALL"

    invoke-direct {v0, v1, v6}, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_ALL:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    sget-object v1, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_ONE_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_THREE_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_SIX_MONTH:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_ONE_YEAR:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->TIME_ALL:Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->ENUM$VALUES:[Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;
    .locals 1

    const-class v0, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;->ENUM$VALUES:[Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    array-length v1, v0

    new-array v2, v1, [Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
