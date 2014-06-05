.class public Lcom/tencent/qqpim/sdk/adaptive/dao/contact/HW_T9200_ContactDaoV2;
.super Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getDefaultGroupId()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/dao/contact/HW_T9200_ContactDaoV2;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/j;

    const-string v1, "\u6240\u6709\u8054\u7cfb\u4eba"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/contact/j;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected hasDrfaultGroupDefault(Ljava/util/ArrayList;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/qqpim/sdk/adaptive/dao/contact/HW_T9200_ContactDaoV2;->handleOperationsFromCategory(Ljava/util/ArrayList;II)V

    return-void
.end method
