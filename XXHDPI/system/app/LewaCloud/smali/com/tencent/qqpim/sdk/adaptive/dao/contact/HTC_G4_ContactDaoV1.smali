.class public Lcom/tencent/qqpim/sdk/adaptive/dao/contact/HTC_G4_ContactDaoV1;
.super Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected addUserByGroupIdsDefault()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/adaptive/dao/contact/HTC_G4_ContactDaoV1;->addUserDefaultValuesDefault()V

    return-void
.end method

.method protected addUserDefaultValuesDefault()V
    .locals 3

    sget-object v0, Lcom/tencent/qqpim/sdk/adaptive/dao/contact/HTC_G4_ContactDaoV1;->values:Landroid/content/ContentValues;

    const-string v1, "extra_group"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
