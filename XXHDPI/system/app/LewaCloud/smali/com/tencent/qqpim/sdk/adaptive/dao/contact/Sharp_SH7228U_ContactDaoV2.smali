.class public Lcom/tencent/qqpim/sdk/adaptive/dao/contact/Sharp_SH7228U_ContactDaoV2;
.super Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getRecordOfName(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Lcom/tencent/qqpim/sdk/object/d;Lcom/tencent/qqpim/sdk/object/d;)Lcom/tencent/qqpim/sdk/object/d;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const-string v1, "N"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const/4 v1, 0x2

    const-string v2, "\u672a\u547d\u540d"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    :goto_1
    return-object v0

    :cond_2
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/sdk/object/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToNext()Z

    goto :goto_0
.end method

.method protected isHasDefaultGroup(Ljava/lang/String;)V
    .locals 1

    const-string v0, "\u5bb6\u4eba"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u540c\u4e8b"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u670b\u53cb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/adaptive/dao/contact/Sharp_SH7228U_ContactDaoV2;->hasDefaultGroup:Z

    :cond_1
    return-void
.end method
