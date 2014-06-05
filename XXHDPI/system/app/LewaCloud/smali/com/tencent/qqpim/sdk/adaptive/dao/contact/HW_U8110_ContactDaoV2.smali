.class public Lcom/tencent/qqpim/sdk/adaptive/dao/contact/HW_U8110_ContactDaoV2;
.super Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected eventToBuilder(Lcom/tencent/qqpim/sdk/object/d;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, ""

    if-eqz v0, :cond_1

    array-length v4, v0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_2

    :cond_1
    move-object v0, v1

    const-string v1, "mimetype"

    const-string v2, "vnd.android.huawei.cursor.item/google_extension"

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "data2"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "data1"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v0, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v3

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method protected refreshGroupMap()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/dao/contact/HW_U8110_ContactDaoV2;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/j;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/contact/j;->a()V

    return-void
.end method
