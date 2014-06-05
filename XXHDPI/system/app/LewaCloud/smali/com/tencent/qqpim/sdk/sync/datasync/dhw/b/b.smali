.class public final Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a:Z

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


# virtual methods
.method public final a(IIIILjava/lang/Object;)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;
    .locals 7

    const/16 v0, 0x2003

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obtainMsg(IIIILjava/lang/Object;Ljava/lang/Object;)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    move-result-object v6

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v6

    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a:Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v6, v0, v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    const-string v0, "DhwEngineContactProgressStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init begin progress:2 total:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v6, v0, v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    const-string v0, "DhwEngineContactProgressStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init end progress:3 total:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    packed-switch p2, :pswitch_data_1

    :goto_1
    :pswitch_3
    move-object v0, v6

    :goto_2
    const-string v1, "DhwEngineContactProgressStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dataType"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " total:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg3:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "DhwEngineContactProgressStrategy"

    const-string v1, "contactBase begin--------------------"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto :goto_1

    :pswitch_5
    const/4 v0, 0x4

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    const-string v0, "DhwEngineContactProgressStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "contactBase begin progress:"

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

    goto :goto_1

    :pswitch_6
    const/4 v2, 0x4

    const/16 v3, 0x2d

    const-wide v4, 0x3fda3d70a3d70a3eL

    move v0, p3

    move v1, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(IIIID)I

    move-result v0

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto/16 :goto_1

    :pswitch_7
    const/16 v0, 0x2d

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto/16 :goto_1

    :pswitch_8
    const/16 v0, 0x2d

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto/16 :goto_1

    :pswitch_9
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    const-wide/high16 v4, 0x3fe0

    move v0, p3

    move v1, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(IIIID)I

    move-result v0

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto/16 :goto_1

    :pswitch_a
    const/16 v0, 0x5f

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto/16 :goto_1

    :pswitch_b
    const/16 v0, 0x5f

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto/16 :goto_1

    :pswitch_c
    const/16 v0, 0x60

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    const-string v0, "DhwEngineContactProgressStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "contactBase end progress:"

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

    goto/16 :goto_1

    :pswitch_d
    const-string v0, "DhwEngineContactProgressStrategy"

    const-string v1, "contactBase end--------------------"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x60

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    packed-switch p2, :pswitch_data_2

    :goto_3
    :pswitch_e
    move-object v0, v6

    goto/16 :goto_2

    :pswitch_f
    const-string v0, "DhwEngineContactProgressStrategy"

    const-string v1, "group begin--------------------"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x60

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto :goto_3

    :pswitch_10
    const/16 v0, 0x60

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    const-string v0, "DhwEngineContactProgressStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "group begin progress:"

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

    goto :goto_3

    :pswitch_11
    const/16 v2, 0x60

    const/16 v3, 0x61

    const-wide v4, 0x3f847ae147ae147bL

    move v0, p3

    move v1, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(IIIID)I

    move-result v0

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto :goto_3

    :pswitch_12
    const/16 v0, 0x61

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto :goto_3

    :pswitch_13
    const/16 v0, 0x61

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto :goto_3

    :pswitch_14
    const/16 v2, 0x61

    const/16 v3, 0x62

    const-wide v4, 0x3f847ae147ae147bL

    move v0, p3

    move v1, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(IIIID)I

    move-result v0

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto :goto_3

    :pswitch_15
    const/16 v0, 0x62

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto :goto_3

    :pswitch_16
    const/16 v0, 0x62

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto/16 :goto_3

    :pswitch_17
    const/16 v0, 0x63

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    const-string v0, "DhwEngineContactProgressStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "group end progress:"

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

    goto/16 :goto_3

    :pswitch_18
    const-string v0, "DhwEngineContactProgressStrategy"

    const-string v1, "group end--------------------"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x63

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto/16 :goto_3

    :cond_2
    const/4 v0, 0x3

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a:Z

    const/16 v0, 0x2012

    iput v0, v6, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    packed-switch p2, :pswitch_data_3

    :goto_4
    :pswitch_19
    move-object v0, v6

    goto/16 :goto_2

    :pswitch_1a
    const-string v0, "DhwEngineContactProgressStrategy"

    const-string v1, "avatar begin--------------------"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto :goto_4

    :pswitch_1b
    const/4 v0, 0x0

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    const-string v0, "DhwEngineContactProgressStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "avatar begin progress:"

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

    goto :goto_4

    :pswitch_1c
    const/4 v2, 0x0

    const/16 v3, 0x2d

    const-wide v4, 0x3fdccccccccccccdL

    move v0, p3

    move v1, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(IIIID)I

    move-result v0

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto :goto_4

    :pswitch_1d
    const/16 v0, 0x2d

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto :goto_4

    :pswitch_1e
    const/16 v0, 0x2d

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto :goto_4

    :pswitch_1f
    const/16 v2, 0x2d

    const/16 v3, 0x62

    const-wide v4, 0x3fe0f5c28f5c28f6L

    move v0, p3

    move v1, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(IIIID)I

    move-result v0

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto :goto_4

    :pswitch_20
    const/16 v0, 0x62

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto :goto_4

    :pswitch_21
    const/16 v0, 0x62

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto :goto_4

    :pswitch_22
    const/16 v0, 0x63

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    const-string v0, "DhwEngineContactProgressStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "avatar end progress:"

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

    goto/16 :goto_4

    :pswitch_23
    const-string v0, "DhwEngineContactProgressStrategy"

    const-string v1, "avatar end--------------------"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x63

    invoke-static {v6, v0, p3, p4}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    goto/16 :goto_4

    :pswitch_24
    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x2012

    iput v0, v6, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    :cond_3
    const/16 v0, 0x63

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v6, v0, v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    const-string v0, "DhwEngineContactProgressStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sync_end begin progress:99 total:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_25
    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x2012

    iput v0, v6, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->msgId:I

    :cond_4
    const/16 v0, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v6, v0, v1, v2}, Lcom/tencent/qqpim/sdk/sync/datasync/dhw/b/b;->a(Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;III)V

    const-string v0, "DhwEngineContactProgressStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sync_end finished progress:100 total:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_26
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    const/16 v0, 0x2019

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obtainMsg(II)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    move-result-object v6

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/16 v0, 0x2021

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obtainMsg(II)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    move-result-object v6

    goto/16 :goto_0

    :pswitch_27
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const/16 v0, 0x2020

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obtainMsg(II)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    move-result-object v6

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/16 v0, 0x2022

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;->obtainMsg(II)Lcom/tencent/qqpim/sdk/accesslayer/def/PMessage;

    move-result-object v6

    goto/16 :goto_0

    :cond_7
    move-object v0, v6

    goto/16 :goto_2

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
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
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

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_e
        :pswitch_17
        :pswitch_f
        :pswitch_18
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_19
        :pswitch_22
        :pswitch_1a
        :pswitch_23
    .end packed-switch
.end method
