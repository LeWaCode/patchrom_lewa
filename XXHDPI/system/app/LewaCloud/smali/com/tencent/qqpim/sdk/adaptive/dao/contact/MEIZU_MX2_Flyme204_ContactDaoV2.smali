.class public Lcom/tencent/qqpim/sdk/adaptive/dao/contact/MEIZU_MX2_Flyme204_ContactDaoV2;
.super Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public changeTheDataRawContactId()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected dealAccountNameType(Landroid/content/ContentProviderOperation$Builder;Lcom/tencent/qqpim/sdk/sync/contact/d;)V
    .locals 0

    return-void
.end method
