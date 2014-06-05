.class public Lcom/tencent/qqpim/sdk/accesslayer/SyncLogMgrFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertSyncDataTypeToLogDataType(I)I
    .locals 1

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_5
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_7
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_9
    const/16 v0, 0xb

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_6
        0x4 -> :sswitch_1
        0x8 -> :sswitch_5
        0x10 -> :sswitch_2
        0x40 -> :sswitch_8
        0x80 -> :sswitch_9
        0x100 -> :sswitch_7
        0x200 -> :sswitch_4
        0x400 -> :sswitch_3
    .end sparse-switch
.end method

.method public static convertSyncOperationTypeToLogOperType(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_0

    move v0, v1

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/4 v0, -0x1

    goto :goto_0

    :sswitch_2
    move v0, v1

    goto :goto_0

    :sswitch_3
    move v0, v1

    goto :goto_0

    :sswitch_4
    move v0, v2

    goto :goto_0

    :sswitch_5
    move v0, v2

    goto :goto_0

    :sswitch_6
    move v0, v2

    goto :goto_0

    :sswitch_7
    move v0, v1

    goto :goto_0

    :sswitch_8
    move v0, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0xd5 -> :sswitch_8
        0x0 -> :sswitch_1
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_2
        0xcb -> :sswitch_3
        0xcc -> :sswitch_4
        0xcd -> :sswitch_5
        0xd5 -> :sswitch_6
        0xd7 -> :sswitch_7
    .end sparse-switch
.end method

.method public static convertSyncResultToLogResult(I)I
    .locals 1

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getSyncLogMgr()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/ISyncLogMgr;
    .locals 1

    invoke-static {}, Lcom/tencent/qqpim/sdk/sync/a/a;->a()Lcom/tencent/qqpim/sdk/sync/a/a;

    move-result-object v0

    return-object v0
.end method
