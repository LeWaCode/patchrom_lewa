.class public Lcom/tencent/qqpim/sdk/adaptive/dao/calllog/MEIZU_MX_CallLogDaoV2;
.super Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/calllog/SYSCallLogDaoV2;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected addRawContactID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;)V
    .locals 2

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Lcom/tencent/qqpim/sdk/interfaces/g;->lookupFirstContactIDByPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "contactsid"

    invoke-virtual {p4, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_0
    return-void
.end method
