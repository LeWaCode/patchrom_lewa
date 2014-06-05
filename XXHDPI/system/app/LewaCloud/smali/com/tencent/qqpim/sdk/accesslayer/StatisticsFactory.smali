.class public Lcom/tencent/qqpim/sdk/accesslayer/StatisticsFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatisticsUtil()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;
    .locals 1

    new-instance v0, Lcom/tencent/qqpim/sdk/tccsync/a/b;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/tccsync/a/b;-><init>()V

    return-object v0
.end method
