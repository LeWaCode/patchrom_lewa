.class public Llewa/laml/elements/FramerateController;
.super Llewa/laml/elements/ScreenElement;
.source "FramerateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/elements/FramerateController$ControlPoint;
    }
.end annotation


# static fields
.field public static final INNER_TAG:Ljava/lang/String; = "ControlPoint"

.field public static final TAG_NAME:Ljava/lang/String; = "FramerateController"


# instance fields
.field private mControlPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/elements/FramerateController$ControlPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mCurFramerate:F

.field private mLastUpdateTime:J

.field private mLock:Ljava/lang/Object;

.field private mLoop:Z

.field private mNextUpdateInterval:J

.field private mStartTime:J

.field private mStopped:Z

.field private mTimeRange:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 6
    .parameter "ele"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 17
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Llewa/laml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    .line 23
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Llewa/laml/elements/FramerateController;->mLock:Ljava/lang/Object;

    .line 38
    iget-object v4, p0, Llewa/laml/elements/FramerateController;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v4, p0}, Llewa/laml/ScreenElementRoot;->addFramerateController(Llewa/laml/elements/FramerateController;)V

    .line 39
    const-string v4, "loop"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Llewa/laml/elements/FramerateController;->mLoop:Z

    .line 40
    const-string v4, "ControlPoint"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 42
    .local v3, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 43
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 44
    .local v1, e:Lorg/w3c/dom/Element;
    iget-object v4, p0, Llewa/laml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    new-instance v5, Llewa/laml/elements/FramerateController$ControlPoint;

    invoke-direct {v5, v1}, Llewa/laml/elements/FramerateController$ControlPoint;-><init>(Lorg/w3c/dom/Element;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    .end local v1           #e:Lorg/w3c/dom/Element;
    :cond_0
    iget-object v4, p0, Llewa/laml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    iget-object v5, p0, Llewa/laml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llewa/laml/elements/FramerateController$ControlPoint;

    iget-wide v4, v4, Llewa/laml/elements/FramerateController$ControlPoint;->mTime:J

    iput-wide v4, p0, Llewa/laml/elements/FramerateController;->mTimeRange:J

    .line 47
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 50
    return-void
.end method

.method protected onVisibilityChange(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 53
    invoke-super {p0, p1}, Llewa/laml/elements/ScreenElement;->onVisibilityChange(Z)V

    .line 54
    if-eqz p1, :cond_0

    .line 55
    iget v0, p0, Llewa/laml/elements/FramerateController;->mCurFramerate:F

    invoke-virtual {p0, v0}, Llewa/laml/elements/FramerateController;->requestFramerate(F)V

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Llewa/laml/elements/FramerateController;->getFramerate()F

    move-result v0

    iput v0, p0, Llewa/laml/elements/FramerateController;->mCurFramerate:F

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llewa/laml/elements/FramerateController;->requestFramerate(F)V

    goto :goto_0
.end method

.method public reset(J)V
    .locals 4
    .parameter "time"

    .prologue
    .line 63
    iget-object v1, p0, Llewa/laml/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    iput-wide p1, p0, Llewa/laml/elements/FramerateController;->mStartTime:J

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/laml/elements/FramerateController;->mStopped:Z

    .line 66
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Llewa/laml/elements/FramerateController;->mLastUpdateTime:J

    .line 67
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Llewa/laml/elements/FramerateController;->mNextUpdateInterval:J

    .line 68
    invoke-virtual {p0}, Llewa/laml/elements/FramerateController;->requestUpdate()V

    .line 69
    monitor-exit v1

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateFramerate(J)J
    .locals 14
    .parameter "currentTime"

    .prologue
    .line 73
    invoke-virtual {p0}, Llewa/laml/elements/FramerateController;->updateVisibility()V

    .line 74
    invoke-virtual {p0}, Llewa/laml/elements/FramerateController;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 75
    iget-object v11, p0, Llewa/laml/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 76
    :try_start_0
    iget-boolean v9, p0, Llewa/laml/elements/FramerateController;->mStopped:Z

    if-nez v9, :cond_7

    .line 77
    iget-wide v9, p0, Llewa/laml/elements/FramerateController;->mLastUpdateTime:J

    const-wide/16 v12, 0x0

    cmp-long v9, v9, v12

    if-lez v9, :cond_0

    iget-wide v9, p0, Llewa/laml/elements/FramerateController;->mLastUpdateTime:J

    :goto_0
    sub-long v1, p1, v9

    .line 79
    .local v1, elapsedTime:J
    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-ltz v9, :cond_1

    iget-wide v9, p0, Llewa/laml/elements/FramerateController;->mNextUpdateInterval:J

    cmp-long v9, v1, v9

    if-gez v9, :cond_1

    .line 80
    iput-wide p1, p0, Llewa/laml/elements/FramerateController;->mLastUpdateTime:J

    .line 81
    iget-wide v9, p0, Llewa/laml/elements/FramerateController;->mNextUpdateInterval:J

    sub-long/2addr v9, v1

    iput-wide v9, p0, Llewa/laml/elements/FramerateController;->mNextUpdateInterval:J

    monitor-exit v11

    .line 105
    .end local v1           #elapsedTime:J
    :goto_1
    return-wide v9

    .line 77
    :cond_0
    iget-wide v9, p0, Llewa/laml/elements/FramerateController;->mStartTime:J

    goto :goto_0

    .line 82
    .restart local v1       #elapsedTime:J
    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-gez v9, :cond_2

    .line 83
    const-wide/16 v1, 0x0

    .line 85
    :cond_2
    iget-boolean v9, p0, Llewa/laml/elements/FramerateController;->mLoop:Z

    if-eqz v9, :cond_4

    iget-wide v9, p0, Llewa/laml/elements/FramerateController;->mTimeRange:J

    rem-long v7, v1, v9

    .line 86
    .local v7, time:J
    :goto_2
    iget-object v9, p0, Llewa/laml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .line 87
    .local v6, size:I
    const-wide/16 v4, 0x0

    .line 88
    .local v4, nextUpdateTime:J
    move v3, v6

    .local v3, i:I
    :goto_3
    if-ltz v3, :cond_7

    .line 89
    iget-object v9, p0, Llewa/laml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/FramerateController$ControlPoint;

    .line 90
    .local v0, cp:Llewa/laml/elements/FramerateController$ControlPoint;
    iget-wide v9, v0, Llewa/laml/elements/FramerateController$ControlPoint;->mTime:J

    cmp-long v9, v7, v9

    if-ltz v9, :cond_6

    .line 91
    iget v9, v0, Llewa/laml/elements/FramerateController$ControlPoint;->mFramerate:I

    int-to-float v9, v9

    invoke-virtual {p0, v9}, Llewa/laml/elements/FramerateController;->requestFramerate(F)V

    .line 93
    iget-boolean v9, p0, Llewa/laml/elements/FramerateController;->mLoop:Z

    if-nez v9, :cond_3

    if-ne v3, v6, :cond_3

    .line 94
    const/4 v9, 0x1

    iput-boolean v9, p0, Llewa/laml/elements/FramerateController;->mStopped:Z

    .line 96
    :cond_3
    iput-wide p1, p0, Llewa/laml/elements/FramerateController;->mLastUpdateTime:J

    .line 97
    iget-boolean v9, p0, Llewa/laml/elements/FramerateController;->mStopped:Z

    if-eqz v9, :cond_5

    const-wide v9, 0x7fffffffffffffffL

    :goto_4
    iput-wide v9, p0, Llewa/laml/elements/FramerateController;->mNextUpdateInterval:J

    monitor-exit v11

    goto :goto_1

    .line 103
    .end local v0           #cp:Llewa/laml/elements/FramerateController$ControlPoint;
    .end local v1           #elapsedTime:J
    .end local v3           #i:I
    .end local v4           #nextUpdateTime:J
    .end local v6           #size:I
    .end local v7           #time:J
    :catchall_0
    move-exception v9

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .restart local v1       #elapsedTime:J
    :cond_4
    move-wide v7, v1

    .line 85
    goto :goto_2

    .line 97
    .restart local v0       #cp:Llewa/laml/elements/FramerateController$ControlPoint;
    .restart local v3       #i:I
    .restart local v4       #nextUpdateTime:J
    .restart local v6       #size:I
    .restart local v7       #time:J
    :cond_5
    sub-long v9, v4, v7

    goto :goto_4

    .line 100
    :cond_6
    :try_start_1
    iget-wide v4, v0, Llewa/laml/elements/FramerateController$ControlPoint;->mTime:J

    .line 88
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 103
    .end local v0           #cp:Llewa/laml/elements/FramerateController$ControlPoint;
    .end local v1           #elapsedTime:J
    .end local v3           #i:I
    .end local v4           #nextUpdateTime:J
    .end local v6           #size:I
    .end local v7           #time:J
    :cond_7
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :cond_8
    const-wide v9, 0x7fffffffffffffffL

    goto :goto_1
.end method
