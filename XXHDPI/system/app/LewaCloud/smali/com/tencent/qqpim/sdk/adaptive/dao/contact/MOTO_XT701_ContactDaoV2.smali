.class public Lcom/tencent/qqpim/sdk/adaptive/dao/contact/MOTO_XT701_ContactDaoV2;
.super Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected AddOneByOneDefault(Ljava/util/List;Ljava/util/List;[I)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/qqpim/sdk/adaptive/dao/contact/MOTO_XT701_ContactDaoV2;->addOneByOne(Ljava/util/List;Ljava/util/List;[I)Z

    move-result v0

    return v0
.end method
