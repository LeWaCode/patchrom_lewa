.class public Lcom/tencent/qqpim/sdk/adaptive/dao/contact/ZTE_N600_ContactDaoV2;
.super Lcom/tencent/qqpim/sdk/adaptive/dao/contact/ZTE_Base_ContactDaoV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/adaptive/dao/contact/ZTE_Base_ContactDaoV2;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected refreshGroupMap()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/dao/contact/ZTE_N600_ContactDaoV2;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/j;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/contact/j;->a()V

    return-void
.end method
