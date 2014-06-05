.class public Lcom/tencent/qqpim/sdk/adaptive/dao/sms/SE_LT26W_SMSDaoV2;
.super Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV2;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getQueryNumberSelect()Ljava/lang/String;
    .locals 1

    const-string v0, "type not in (6,5,4,3) AND address<>\'go.10086.cn\' AND address<>\'WAPPush\' AND delivery_status<>3 or delivery_status is null"

    return-object v0
.end method

.method protected hasDeliveryStatus(Landroid/database/Cursor;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "delivery_status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
