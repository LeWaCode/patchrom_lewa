.class public Lcom/tencent/qqpim/sdk/utils/Days2WordingUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static translateDays2Wording(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    const-wide/32 v0, 0x93a80

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const v0, 0x7f0602be

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide/32 v0, 0x127500

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const v0, 0x7f0602bf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x1baf80

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    const v0, 0x7f0602c0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-wide/32 v0, 0x278d00

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    const v0, 0x7f0602c1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-wide/32 v0, 0x4f1a00

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    const v0, 0x7f0602c2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-wide/32 v0, 0x76a700

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    const v0, 0x7f0602c3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-wide/32 v0, 0xed4e00

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    const v0, 0x7f0602c4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-wide/32 v0, 0x1da9c00

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    const v0, 0x7f0602c5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const v0, 0x7f0602c6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/32 v3, 0x15180

    div-long v3, p1, v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static translateInterval2TopbarTips(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    const-wide/32 v0, 0x93a80

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const v0, 0x7f0602c7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide/32 v0, 0x127500

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const v0, 0x7f0602c8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x1baf80

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    const v0, 0x7f0602c9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-wide/32 v0, 0x278d00

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    const v0, 0x7f0602ca

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-wide/32 v0, 0x4f1a00

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    const v0, 0x7f0602cb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-wide/32 v0, 0x76a700

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    const v0, 0x7f0602cc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-wide/32 v0, 0xed4e00

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    const v0, 0x7f0602cd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-wide/32 v0, 0x1da9c00

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    const v0, 0x7f0602ce

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const v0, 0x7f0602cf

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/32 v3, 0x15180

    div-long v3, p1, v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
