.class public abstract Lcom/tencent/qqpim/sdk/sync/contact/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/qqpim/sdk/sync/contact/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/a;->a:Lcom/tencent/qqpim/sdk/sync/contact/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;I)Lcom/tencent/qqpim/sdk/interfaces/e;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-ltz p1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/e;

    goto :goto_0
.end method

.method public static a()Lcom/tencent/qqpim/sdk/sync/contact/a;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/a;->a:Lcom/tencent/qqpim/sdk/sync/contact/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/a;->a:Lcom/tencent/qqpim/sdk/sync/contact/a;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->isSDKVersionBelow2()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/contact/b;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/contact/b;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/a;->a:Lcom/tencent/qqpim/sdk/sync/contact/a;

    :goto_1
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/a;->a:Lcom/tencent/qqpim/sdk/sync/contact/a;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tencent/qqpim/sdk/sync/contact/c;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/sync/contact/c;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/a;->a:Lcom/tencent/qqpim/sdk/sync/contact/a;

    goto :goto_1
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/e;
.end method
