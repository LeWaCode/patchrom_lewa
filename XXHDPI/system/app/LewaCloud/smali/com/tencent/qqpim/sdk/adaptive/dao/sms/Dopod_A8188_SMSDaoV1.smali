.class public Lcom/tencent/qqpim/sdk/adaptive/dao/sms/Dopod_A8188_SMSDaoV1;
.super Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected queryNumberDefault()Landroid/database/Cursor;
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/dao/sms/Dopod_A8188_SMSDaoV1;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/adaptive/dao/sms/Dopod_A8188_SMSDaoV1;->smsUri:Landroid/net/Uri;

    const-string v3, "type>?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
