.class public final Lcom/tencent/qqpim/sdk/tccsync/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/accesslayer/interfaces/statistics/IStatisticsUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collectRemoteSyncCheck(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/tencent/qqpim/sdk/tccsync/a/a;->a(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final collectRemoteSyncDataChange(Ljava/lang/String;ZLjava/lang/String;)Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/tencent/qqpim/sdk/tccsync/a/a;->a(Ljava/lang/String;ZLjava/lang/String;)Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeList;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalCalllogNum(Landroid/content/Context;)I
    .locals 1

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/tccsync/a/a;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public final getLocalContactNum(Landroid/content/Context;)I
    .locals 1

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/tccsync/a/a;->b(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public final getLocalSmsNum(Landroid/content/Context;)I
    .locals 1

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/tccsync/a/a;->c(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public final getLocalSmsNum(Landroid/content/Context;Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;)I
    .locals 1

    invoke-static {p1, p2}, Lcom/tencent/qqpim/sdk/tccsync/a/a;->a(Landroid/content/Context;Lcom/tencent/qqpim/sdk/object/sms/SmsTimeType;)I

    move-result v0

    return v0
.end method

.method public final getRemoteCalllogNum()I
    .locals 1

    invoke-static {}, Lcom/tencent/qqpim/sdk/tccsync/a/a;->c()I

    move-result v0

    return v0
.end method

.method public final getRemoteContactNum()I
    .locals 1

    invoke-static {}, Lcom/tencent/qqpim/sdk/tccsync/a/a;->a()I

    move-result v0

    return v0
.end method

.method public final getRemoteSmsNum()I
    .locals 1

    invoke-static {}, Lcom/tencent/qqpim/sdk/tccsync/a/a;->b()I

    move-result v0

    return v0
.end method

.method public final syncCollectLocalDataChange(ILjava/lang/String;)Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;
    .locals 1

    invoke-static {p1, p2}, Lcom/tencent/qqpim/sdk/tccsync/a/a;->a(ILjava/lang/String;)Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;

    move-result-object v0

    return-object v0
.end method

.method public final syncCollectLocalDataChange(ILjava/lang/String;Z)Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/tencent/qqpim/sdk/tccsync/a/a;->a(ILjava/lang/String;Z)Lcom/tencent/qqpim/sdk/tccsync/object/DataChangeStruct;

    move-result-object v0

    return-object v0
.end method

.method public final syncGetLocalAddAndDel(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 1

    invoke-static {p1, p2, p3, p4}, Lcom/tencent/qqpim/sdk/tccsync/a/a;->a(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    return v0
.end method
