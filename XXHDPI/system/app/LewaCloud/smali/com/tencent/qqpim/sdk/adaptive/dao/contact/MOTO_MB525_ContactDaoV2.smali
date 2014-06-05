.class public Lcom/tencent/qqpim/sdk/adaptive/dao/contact/MOTO_MB525_ContactDaoV2;
.super Lcom/tencent/qqpim/sdk/adaptive/dao/contact/MOTO_ME_base_ContactDaoV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/adaptive/dao/contact/MOTO_ME_base_ContactDaoV2;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getDefaultGroupId()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/dao/contact/MOTO_MB525_ContactDaoV2;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/j;

    const-string v1, "\u7b80\u660e\u5730\u5740\u7c3f"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/sdk/sync/contact/j;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected refreshGroupMap()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/dao/contact/MOTO_MB525_ContactDaoV2;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/j;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/contact/j;->a()V

    return-void
.end method
