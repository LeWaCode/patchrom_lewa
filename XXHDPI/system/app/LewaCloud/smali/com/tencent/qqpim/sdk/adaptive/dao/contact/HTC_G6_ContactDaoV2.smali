.class public Lcom/tencent/qqpim/sdk/adaptive/dao/contact/HTC_G6_ContactDaoV2;
.super Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getDraultGroupNames(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\u597d\u53cb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "System Group: Friends"

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string v0, "\u5bb6\u4eba"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "System Group: Family"

    goto :goto_0

    :cond_2
    const-string v0, "\u540c\u4e8b"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "System Group: Coworkers"

    goto :goto_0
.end method

.method protected refreshGroupMap()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/adaptive/dao/contact/HTC_G6_ContactDaoV2;->groupDao:Lcom/tencent/qqpim/sdk/sync/contact/j;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/contact/j;->a()V

    return-void
.end method
