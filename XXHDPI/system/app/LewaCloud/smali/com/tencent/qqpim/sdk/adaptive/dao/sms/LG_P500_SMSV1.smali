.class public Lcom/tencent/qqpim/sdk/adaptive/dao/sms/LG_P500_SMSV1;
.super Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getContentValuesDefault(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 2

    const-string v0, "address"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
