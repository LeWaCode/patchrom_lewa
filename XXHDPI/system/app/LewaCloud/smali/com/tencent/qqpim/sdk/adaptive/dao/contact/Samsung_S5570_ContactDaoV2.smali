.class public Lcom/tencent/qqpim/sdk/adaptive/dao/contact/Samsung_S5570_ContactDaoV2;
.super Lcom/tencent/qqpim/sdk/adaptive/dao/contact/SumSung_GT_I9000_ContactV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/adaptive/dao/contact/SumSung_GT_I9000_ContactV2;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected entityToOPS(Lcom/tencent/qqpim/sdk/object/d;)V
    .locals 3

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    const-string v0, ";"

    invoke-virtual {p1, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ";\u672a\u547d\u540d;;;"

    invoke-virtual {p1, v2, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
