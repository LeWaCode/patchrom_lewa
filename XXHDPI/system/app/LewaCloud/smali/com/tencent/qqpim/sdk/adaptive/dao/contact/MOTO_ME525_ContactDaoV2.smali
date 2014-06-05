.class public Lcom/tencent/qqpim/sdk/adaptive/dao/contact/MOTO_ME525_ContactDaoV2;
.super Lcom/tencent/qqpim/sdk/adaptive/dao/contact/MOTO_Base_Date_ContactDaoV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/adaptive/dao/contact/MOTO_Base_Date_ContactDaoV2;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected insertBatchIdsDefault(Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    const-string v0, "account_name"

    const-string v1, "Contacts"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "account_type"

    const-string v2, "com.motorola.blur.contacts.UNCONNECTED_ACCOUNT"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "sync1"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "sync3"

    const-string v2, "blur"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method
