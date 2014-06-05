.class public Lcom/tencent/qqpim/sdk/adaptive/dao/sms/SamSung_I9000_miui2413_SMSDaoV2;
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

    const-string v0, "type not in (6,5,4,3) AND address<>\'WAPPush\' AND address<>\'krobot_001\'"

    return-object v0
.end method

.method protected returnGetAllEntityIdCursor()Landroid/database/Cursor;
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/dao/sms/SamSung_I9000_miui2413_SMSDaoV2;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "address <>\'WAPPush\' AND address<>\'krobot_001\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
