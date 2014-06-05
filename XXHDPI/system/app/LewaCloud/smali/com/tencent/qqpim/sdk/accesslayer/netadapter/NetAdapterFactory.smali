.class public Lcom/tencent/qqpim/sdk/accesslayer/netadapter/NetAdapterFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getNetAdapter()Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_NETADAPTER;->E_CLASS_INDEX_DHWNETADAPTER:Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_NETADAPTER;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_NETADAPTER;->toInt()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/defines/ClassDefiner;->getNetAdapterClassName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/tencent/qqpim/sdk/utils/PimClassBuilder;->newInstanceFromString(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/accesslayer/netadapter/interfaces/a;

    return-object v0
.end method
