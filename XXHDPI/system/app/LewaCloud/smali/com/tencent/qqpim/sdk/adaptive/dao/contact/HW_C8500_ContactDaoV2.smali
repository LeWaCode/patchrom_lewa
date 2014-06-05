.class public Lcom/tencent/qqpim/sdk/adaptive/dao/contact/HW_C8500_ContactDaoV2;
.super Lcom/tencent/qqpim/sdk/adaptive/dao/contact/SIM_Acount_Name_ContactDaoV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/adaptive/dao/contact/SIM_Acount_Name_ContactDaoV2;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected lookNameByPhoneDefault(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
