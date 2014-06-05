.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(IIIID)I
    .locals 4

    int-to-double v0, p2

    if-lez p0, :cond_0

    if-ltz p1, :cond_0

    if-gt p1, p0, :cond_0

    mul-int/lit8 v2, p1, 0x64

    div-int/2addr v2, p0

    int-to-double v2, v2

    mul-double/2addr v2, p4

    add-double/2addr v0, v2

    :cond_0
    int-to-double v2, p3

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    int-to-double v0, p3

    :cond_1
    int-to-double v2, p2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    int-to-double v0, p2

    :cond_2
    double-to-int v0, v0

    return v0
.end method

.method public static a(IIIILjava/lang/Object;)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;
    .locals 11

    const/16 v10, 0x60

    const/16 v9, 0x5f

    const/4 v8, 0x4

    const/16 v7, 0x2d

    const/4 v1, 0x0

    const/16 v0, 0x2003

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obtainMsg(IIIILjava/lang/Object;Ljava/lang/Object;)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    move-result-object v6

    packed-switch p1, :pswitch_data_0

    :goto_0
    move-object v0, v6

    :goto_1
    return-object v0

    :pswitch_0
    const/4 v0, 0x2

    invoke-static {v6, v0, v1, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    const-string v0, "DhwEngineDataProgressStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init begin progress:2 total:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x3

    invoke-static {v6, v0, v1, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    const-string v0, "DhwEngineDataProgressStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init end progress:3 total:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_1

    :pswitch_2
    packed-switch p1, :pswitch_data_1

    :goto_2
    :pswitch_3
    const-string v0, "DhwEngineDataProgressStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dataType"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_1

    :pswitch_4
    const-string v0, "DhwEngineDataProgressStrategy"

    const-string v1, "data begin--------------------"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v8, p2, p3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto :goto_2

    :pswitch_5
    invoke-static {v6, v8, p2, p3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    const-string v0, "DhwEngineDataProgressStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data begin progress:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v6, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_6
    const-wide v4, 0x3fda3d70a3d70a3eL

    move v0, p2

    move v1, p3

    move v2, v8

    move v3, v7

    invoke-static/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;->a(IIIID)I

    move-result v0

    invoke-static {v6, v0, p2, p3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto/16 :goto_2

    :pswitch_7
    invoke-static {v6, v7, p2, p3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto/16 :goto_2

    :pswitch_8
    invoke-static {v6, v7, p2, p3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto/16 :goto_2

    :pswitch_9
    const-wide/high16 v4, 0x3fe0

    move v0, p2

    move v1, p3

    move v2, v7

    move v3, v9

    invoke-static/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;->a(IIIID)I

    move-result v0

    invoke-static {v6, v0, p2, p3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto/16 :goto_2

    :pswitch_a
    invoke-static {v6, v9, p2, p3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto/16 :goto_2

    :pswitch_b
    invoke-static {v6, v9, p2, p3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto/16 :goto_2

    :pswitch_c
    invoke-static {v6, v10, p2, p3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    const-string v0, "DhwEngineDataProgressStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data end progress:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v6, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_d
    const-string v0, "DhwEngineDataProgressStrategy"

    const-string v1, "data end--------------------"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v10, p2, p3}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto/16 :goto_2

    :pswitch_e
    const/16 v0, 0x63

    invoke-static {v6, v0, v1, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    const-string v0, "DhwEngineDataProgressStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sync_end begin progress:99 total:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_1

    :pswitch_f
    const/16 v0, 0x64

    invoke-static {v6, v0, v1, v1}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/c;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    const-string v0, "DhwEngineDataProgressStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sync_end finished progress:100 total:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_3
        :pswitch_c
        :pswitch_4
        :pswitch_d
    .end packed-switch
.end method

.method private static final a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V
    .locals 0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    iput p3, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg2:I

    iput p2, p0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg3:I

    goto :goto_0
.end method
