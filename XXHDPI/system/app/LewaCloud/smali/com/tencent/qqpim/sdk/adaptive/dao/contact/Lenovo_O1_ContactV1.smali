.class public Lcom/tencent/qqpim/sdk/adaptive/dao/contact/Lenovo_O1_ContactV1;
.super Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected fetionAddDefault(Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "aux_data"

    const/16 v1, 0x8

    invoke-static {v1}, Landroid/provider/Contacts$ContactMethods;->encodePredefinedImProtocol(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected fetionqueryDefault(ILcom/tencent/qqpim/sdk/object/d;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/adaptive/dao/contact/Lenovo_O1_ContactV1;->IMTYPE:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p2, v1, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "FETION"

    invoke-virtual {p2, v1, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    goto :goto_0
.end method
