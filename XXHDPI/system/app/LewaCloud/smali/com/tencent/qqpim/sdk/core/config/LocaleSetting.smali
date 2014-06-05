.class public Lcom/tencent/qqpim/sdk/core/config/LocaleSetting;
.super Ljava/lang/Object;


# static fields
.field private static mObserver:Lcom/tencent/qqpim/sdk/core/config/ILocaleObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/core/config/LocaleSetting;->mObserver:Lcom/tencent/qqpim/sdk/core/config/ILocaleObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reg(Lcom/tencent/qqpim/sdk/core/config/ILocaleObserver;)V
    .locals 0

    sput-object p0, Lcom/tencent/qqpim/sdk/core/config/LocaleSetting;->mObserver:Lcom/tencent/qqpim/sdk/core/config/ILocaleObserver;

    return-void
.end method

.method public static setLocale(I)V
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/core/config/LocaleSetting;->mObserver:Lcom/tencent/qqpim/sdk/core/config/ILocaleObserver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/core/config/LocaleSetting;->mObserver:Lcom/tencent/qqpim/sdk/core/config/ILocaleObserver;

    invoke-interface {v0, p0}, Lcom/tencent/qqpim/sdk/core/config/ILocaleObserver;->setLocale(I)V

    :cond_0
    return-void
.end method
