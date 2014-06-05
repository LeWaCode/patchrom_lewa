.class public Lcom/tencent/qqpim/sdk/adaptive/dao/calllog/MI_1SC_CallLogDaoV2;
.super Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV2;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getQueryNumber()Landroid/database/Cursor;
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/dao/calllog/MI_1SC_CallLogDaoV2;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "type <> 10"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
