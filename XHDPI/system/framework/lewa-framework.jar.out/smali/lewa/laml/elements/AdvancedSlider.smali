.class public Llewa/laml/elements/AdvancedSlider;
.super Llewa/laml/elements/ScreenElement;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/elements/AdvancedSlider$1;,
        Llewa/laml/elements/AdvancedSlider$TaskExtra;,
        Llewa/laml/elements/AdvancedSlider$LaunchAction;,
        Llewa/laml/elements/AdvancedSlider$State;,
        Llewa/laml/elements/AdvancedSlider$StartPoint;,
        Llewa/laml/elements/AdvancedSlider$SliderPoint;,
        Llewa/laml/elements/AdvancedSlider$Position;,
        Llewa/laml/elements/AdvancedSlider$OnLaunchListener;,
        Llewa/laml/elements/AdvancedSlider$EndPoint;,
        Llewa/laml/elements/AdvancedSlider$CheckTouchResult;,
        Llewa/laml/elements/AdvancedSlider$BounceAnimationController;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final DEFAULT_DRAG_TOLERANCE:I = 0x96

.field private static final FREE_ENDPOINT_DIST:F = 1.7014117E38f

.field private static final LOG_TAG:Ljava/lang/String; = "LockScreen_AdvancedSlider"

.field public static final MOVE_DIST:Ljava/lang/String; = "move_dist"

.field public static final MOVE_X:Ljava/lang/String; = "move_x"

.field public static final MOVE_Y:Ljava/lang/String; = "move_y"

.field private static final NONE_ENDPOINT_DIST:F = 3.4028235E38f

.field public static final SLIDER_STATE_NORMAL:I = 0x0

.field public static final SLIDER_STATE_PRESSED:I = 0x1

.field public static final SLIDER_STATE_REACHED:I = 0x2

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TAG_NAME:Ljava/lang/String; = "Slider"


# instance fields
.field private mBounceAnimationController:Llewa/laml/elements/AdvancedSlider$BounceAnimationController;

.field private mCurrentEndPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

.field private mEndPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/elements/AdvancedSlider$EndPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mMoveDistVar:Llewa/laml/util/IndexedNumberVariable;

.field private mMoveXVar:Llewa/laml/util/IndexedNumberVariable;

.field private mMoveYVar:Llewa/laml/util/IndexedNumberVariable;

.field private mMoving:Z

.field private mOnLaunchListener:Llewa/laml/elements/AdvancedSlider$OnLaunchListener;

.field private mPressed:Z

.field private mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

.field private mStateVar:Llewa/laml/util/IndexedNumberVariable;

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Llewa/laml/elements/AdvancedSlider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Llewa/laml/elements/AdvancedSlider;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 4
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 57
    new-instance v0, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;-><init>(Llewa/laml/elements/AdvancedSlider;Llewa/laml/elements/AdvancedSlider$1;)V

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mBounceAnimationController:Llewa/laml/elements/AdvancedSlider$BounceAnimationController;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    .line 85
    iget-boolean v0, p0, Llewa/laml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    const-string v2, "state"

    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mStateVar:Llewa/laml/util/IndexedNumberVariable;

    .line 87
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    const-string v2, "move_x"

    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mMoveXVar:Llewa/laml/util/IndexedNumberVariable;

    .line 88
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    const-string v2, "move_y"

    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mMoveYVar:Llewa/laml/util/IndexedNumberVariable;

    .line 89
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    const-string v2, "move_dist"

    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mMoveDistVar:Llewa/laml/util/IndexedNumberVariable;

    .line 91
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mBounceAnimationController:Llewa/laml/elements/AdvancedSlider$BounceAnimationController;

    invoke-virtual {p2, v0}, Llewa/laml/ScreenElementRoot;->addPreTicker(Llewa/laml/elements/ITicker;)V

    .line 92
    invoke-virtual {p0, p1}, Llewa/laml/elements/AdvancedSlider;->load(Lorg/w3c/dom/Element;)V

    .line 93
    return-void
.end method

.method static synthetic access$1000(Llewa/laml/elements/AdvancedSlider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Llewa/laml/elements/AdvancedSlider;->mMoving:Z

    return v0
.end method

.method static synthetic access$1100(Llewa/laml/elements/AdvancedSlider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Llewa/laml/elements/AdvancedSlider;->mPressed:Z

    return v0
.end method

.method static synthetic access$400(Llewa/laml/elements/AdvancedSlider;)Llewa/laml/elements/AdvancedSlider$StartPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    return-object v0
.end method

.method static synthetic access$500(Llewa/laml/elements/AdvancedSlider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Llewa/laml/elements/AdvancedSlider;->cancelMoving()V

    return-void
.end method

.method static synthetic access$600(Llewa/laml/elements/AdvancedSlider;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/AdvancedSlider;->moveStartPoint(FF)V

    return-void
.end method

.method static synthetic access$700(Llewa/laml/elements/AdvancedSlider;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Llewa/laml/elements/AdvancedSlider;->mTouchOffsetX:F

    return v0
.end method

.method static synthetic access$800(Llewa/laml/elements/AdvancedSlider;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Llewa/laml/elements/AdvancedSlider;->mTouchOffsetY:F

    return v0
.end method

.method private cancelMoving()V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->resetInner()V

    .line 97
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->requestUpdate()V

    .line 98
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->onCancel()V

    .line 99
    return-void
.end method

.method private checkEndPoint(Llewa/laml/util/Utils$Point;Llewa/laml/elements/AdvancedSlider$EndPoint;)Z
    .locals 5
    .parameter "point"
    .parameter "endPoint"

    .prologue
    .line 102
    iget-wide v2, p1, Llewa/laml/util/Utils$Point;->x:D

    double-to-float v2, v2

    iget-wide v3, p1, Llewa/laml/util/Utils$Point;->y:D

    double-to-float v3, v3

    invoke-virtual {p2, v2, v3}, Llewa/laml/elements/AdvancedSlider$EndPoint;->touched(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    invoke-virtual {p2}, Llewa/laml/elements/AdvancedSlider$EndPoint;->getState()Llewa/laml/elements/AdvancedSlider$State;

    move-result-object v2

    sget-object v3, Llewa/laml/elements/AdvancedSlider$State;->Reached:Llewa/laml/elements/AdvancedSlider$State;

    if-eq v2, v3, :cond_2

    .line 104
    sget-object v2, Llewa/laml/elements/AdvancedSlider$State;->Reached:Llewa/laml/elements/AdvancedSlider$State;

    invoke-virtual {p2, v2}, Llewa/laml/elements/AdvancedSlider$EndPoint;->setState(Llewa/laml/elements/AdvancedSlider$State;)V

    .line 105
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 106
    .local v0, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    if-eq v0, p2, :cond_0

    .line 107
    sget-object v2, Llewa/laml/elements/AdvancedSlider$State;->Pressed:Llewa/laml/elements/AdvancedSlider$State;

    invoke-virtual {v0, v2}, Llewa/laml/elements/AdvancedSlider$EndPoint;->setState(Llewa/laml/elements/AdvancedSlider$State;)V

    goto :goto_0

    .line 109
    .end local v0           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_1
    iget-object v2, p2, Llewa/laml/elements/AdvancedSlider$EndPoint;->mName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Llewa/laml/elements/AdvancedSlider;->onReach(Ljava/lang/String;)V

    .line 111
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x1

    .line 114
    :goto_1
    return v2

    .line 113
    :cond_3
    sget-object v2, Llewa/laml/elements/AdvancedSlider$State;->Pressed:Llewa/laml/elements/AdvancedSlider$State;

    invoke-virtual {p2, v2}, Llewa/laml/elements/AdvancedSlider$EndPoint;->setState(Llewa/laml/elements/AdvancedSlider$State;)V

    .line 114
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private checkTouch(FF)Llewa/laml/elements/AdvancedSlider$CheckTouchResult;
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x0

    .line 118
    const v3, 0x7f7fffff

    .line 119
    .local v3, minDist:F
    const/4 v4, 0x0

    .line 120
    .local v4, point:Llewa/laml/util/Utils$Point;
    new-instance v7, Llewa/laml/elements/AdvancedSlider$CheckTouchResult;

    invoke-direct {v7, p0, v8}, Llewa/laml/elements/AdvancedSlider$CheckTouchResult;-><init>(Llewa/laml/elements/AdvancedSlider;Llewa/laml/elements/AdvancedSlider$1;)V

    .line 122
    .local v7, result:Llewa/laml/elements/AdvancedSlider$CheckTouchResult;
    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 123
    .local v1, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    #calls: Llewa/laml/elements/AdvancedSlider$EndPoint;->getNearestPoint(FF)Llewa/laml/util/Utils$Point;
    invoke-static {v1, p1, p2}, Llewa/laml/elements/AdvancedSlider$EndPoint;->access$200(Llewa/laml/elements/AdvancedSlider$EndPoint;FF)Llewa/laml/util/Utils$Point;

    move-result-object v5

    .line 124
    .local v5, pt:Llewa/laml/util/Utils$Point;
    invoke-virtual {v1, v5, p1, p2}, Llewa/laml/elements/AdvancedSlider$EndPoint;->getTransformedDist(Llewa/laml/util/Utils$Point;FF)F

    move-result v0

    .line 125
    .local v0, di:F
    cmpg-float v9, v0, v3

    if-gez v9, :cond_0

    .line 126
    move v3, v0

    .line 127
    move-object v4, v5

    .line 128
    iput-object v1, v7, Llewa/laml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    goto :goto_0

    .line 132
    .end local v0           #di:F
    .end local v1           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    .end local v5           #pt:Llewa/laml/util/Utils$Point;
    :cond_1
    const/4 v6, 0x0

    .line 134
    .local v6, reached:Z
    const v9, 0x7f7fffff

    cmpg-float v9, v3, v9

    if-gez v9, :cond_8

    .line 135
    iget-wide v8, v4, Llewa/laml/util/Utils$Point;->x:D

    double-to-float v8, v8

    iget-wide v9, v4, Llewa/laml/util/Utils$Point;->y:D

    double-to-float v9, v9

    invoke-direct {p0, v8, v9}, Llewa/laml/elements/AdvancedSlider;->moveStartPoint(FF)V

    .line 136
    const v8, 0x7effffff

    cmpg-float v8, v3, v8

    if-gez v8, :cond_4

    .line 137
    iget-object v8, v7, Llewa/laml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    invoke-direct {p0, v4, v8}, Llewa/laml/elements/AdvancedSlider;->checkEndPoint(Llewa/laml/util/Utils$Point;Llewa/laml/elements/AdvancedSlider$EndPoint;)Z

    move-result v6

    .line 150
    :cond_2
    :goto_1
    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    if-eqz v6, :cond_6

    sget-object v8, Llewa/laml/elements/AdvancedSlider$State;->Reached:Llewa/laml/elements/AdvancedSlider$State;

    :goto_2
    invoke-virtual {v9, v8}, Llewa/laml/elements/AdvancedSlider$StartPoint;->setState(Llewa/laml/elements/AdvancedSlider$State;)V

    .line 151
    iget-boolean v8, p0, Llewa/laml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v8, :cond_3

    .line 152
    iget-object v10, p0, Llewa/laml/elements/AdvancedSlider;->mStateVar:Llewa/laml/util/IndexedNumberVariable;

    if-eqz v6, :cond_7

    const-wide/high16 v8, 0x4000

    :goto_3
    invoke-virtual {v10, v8, v9}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 154
    :cond_3
    iput-boolean v6, v7, Llewa/laml/elements/AdvancedSlider$CheckTouchResult;->reached:Z

    .line 158
    .end local v7           #result:Llewa/laml/elements/AdvancedSlider$CheckTouchResult;
    :goto_4
    return-object v7

    .line 139
    .restart local v7       #result:Llewa/laml/elements/AdvancedSlider$CheckTouchResult;
    :cond_4
    iget-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 140
    .restart local v1       #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    #getter for: Llewa/laml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {v1}, Llewa/laml/elements/AdvancedSlider$EndPoint;->access$300(Llewa/laml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_5

    .line 141
    invoke-direct {p0, v4, v1}, Llewa/laml/elements/AdvancedSlider;->checkEndPoint(Llewa/laml/util/Utils$Point;Llewa/laml/elements/AdvancedSlider$EndPoint;)Z

    move-result v6

    .line 142
    if-eqz v6, :cond_5

    .line 143
    iput-object v1, v7, Llewa/laml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    goto :goto_1

    .line 150
    .end local v1           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_6
    sget-object v8, Llewa/laml/elements/AdvancedSlider$State;->Pressed:Llewa/laml/elements/AdvancedSlider$State;

    goto :goto_2

    .line 152
    :cond_7
    const-wide/high16 v8, 0x3ff0

    goto :goto_3

    .line 157
    :cond_8
    const-string v9, "LockScreen_AdvancedSlider"

    const-string v10, "unlock touch canceled due to exceeding tollerance"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 158
    goto :goto_4
.end method

.method private doLaunch(Llewa/laml/elements/AdvancedSlider$EndPoint;)Z
    .locals 2
    .parameter "endPoint"

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p1, Llewa/laml/elements/AdvancedSlider$EndPoint;->mAction:Llewa/laml/elements/AdvancedSlider$LaunchAction;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p1, Llewa/laml/elements/AdvancedSlider$EndPoint;->mAction:Llewa/laml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v1}, Llewa/laml/elements/AdvancedSlider$LaunchAction;->perform()Landroid/content/Intent;

    move-result-object v0

    .line 165
    :cond_0
    iget-object v1, p1, Llewa/laml/elements/AdvancedSlider$EndPoint;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Llewa/laml/elements/AdvancedSlider;->onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method private loadEndPoint(Lorg/w3c/dom/Element;)V
    .locals 5
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 170
    const-string v3, "EndPoint"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 171
    .local v2, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 172
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 173
    .local v1, item:Lorg/w3c/dom/Element;
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    new-instance v4, Llewa/laml/elements/AdvancedSlider$EndPoint;

    invoke-direct {v4, p0, v1}, Llewa/laml/elements/AdvancedSlider$EndPoint;-><init>(Llewa/laml/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    .end local v1           #item:Lorg/w3c/dom/Element;
    :cond_0
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    const-string v4, "no end point for unlocker!"

    invoke-static {v3, v4}, Llewa/laml/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 176
    return-void

    .line 175
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private loadStartPoint(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 179
    const-string v1, "StartPoint"

    invoke-static {p1, v1}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 180
    .local v0, ele:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "no StartPoint node"

    invoke-static {v1, v2}, Llewa/laml/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 181
    new-instance v1, Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-direct {v1, p0, v0}, Llewa/laml/elements/AdvancedSlider$StartPoint;-><init>(Llewa/laml/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V

    iput-object v1, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    .line 182
    return-void

    .line 180
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private moveStartPoint(FF)V
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 185
    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v6, p1, p2}, Llewa/laml/elements/AdvancedSlider$StartPoint;->moveTo(FF)V

    .line 186
    iget-boolean v6, p0, Llewa/laml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v6, :cond_0

    .line 187
    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    iget v6, v6, Llewa/laml/elements/AdvancedSlider$StartPoint;->mCurrentX:F

    invoke-virtual {p0, v6}, Llewa/laml/elements/AdvancedSlider;->descale(F)F

    move-result v6

    float-to-double v6, v6

    iget-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    iget-object v8, v8, Llewa/laml/elements/AdvancedSlider$StartPoint;->mX:Llewa/laml/data/Expression;

    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v9

    invoke-virtual {v8, v9}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v8

    sub-double v2, v6, v8

    .line 189
    .local v2, move_x:D
    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    iget v6, v6, Llewa/laml/elements/AdvancedSlider$StartPoint;->mCurrentY:F

    invoke-virtual {p0, v6}, Llewa/laml/elements/AdvancedSlider;->descale(F)F

    move-result v6

    float-to-double v6, v6

    iget-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    iget-object v8, v8, Llewa/laml/elements/AdvancedSlider$StartPoint;->mY:Llewa/laml/data/Expression;

    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v9

    invoke-virtual {v8, v9}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v8

    sub-double v4, v6, v8

    .line 191
    .local v4, move_y:D
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 193
    .local v0, move_dist:D
    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider;->mMoveXVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v6, v2, v3}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 194
    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider;->mMoveYVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v6, v4, v5}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 195
    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider;->mMoveDistVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v6, v0, v1}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 197
    .end local v0           #move_dist:D
    .end local v2           #move_x:D
    .end local v4           #move_y:D
    :cond_0
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 200
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 201
    .local v0, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0, p1}, Llewa/laml/elements/AdvancedSlider$EndPoint;->render(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 203
    .end local v0           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_0
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2, p1}, Llewa/laml/elements/AdvancedSlider$StartPoint;->render(Landroid/graphics/Canvas;)V

    .line 204
    return-void
.end method

.method public findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;
    .locals 4
    .parameter "name"

    .prologue
    .line 207
    invoke-super {p0, p1}, Llewa/laml/elements/ScreenElement;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v0

    .line 208
    .local v0, ele:Llewa/laml/elements/ScreenElement;
    if-eqz v0, :cond_0

    move-object v3, v0

    .line 222
    :goto_0
    return-object v3

    .line 211
    :cond_0
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v3, p1}, Llewa/laml/elements/AdvancedSlider$StartPoint;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_1

    move-object v3, v0

    .line 213
    goto :goto_0

    .line 215
    :cond_1
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 216
    .local v1, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v1, p1}, Llewa/laml/elements/AdvancedSlider$EndPoint;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_2

    move-object v3, v0

    .line 218
    goto :goto_0

    .line 222
    .end local v1           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 226
    invoke-super {p0}, Llewa/laml/elements/ScreenElement;->finish()V

    .line 227
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2}, Llewa/laml/elements/AdvancedSlider$StartPoint;->finish()V

    .line 228
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 229
    .local v0, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0}, Llewa/laml/elements/AdvancedSlider$EndPoint;->finish()V

    goto :goto_0

    .line 232
    .end local v0           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_0
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->resetInner()V

    .line 233
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 236
    invoke-super {p0}, Llewa/laml/elements/ScreenElement;->init()V

    .line 237
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mBounceAnimationController:Llewa/laml/elements/AdvancedSlider$BounceAnimationController;

    invoke-virtual {v2}, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->init()V

    .line 238
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2}, Llewa/laml/elements/AdvancedSlider$StartPoint;->init()V

    .line 239
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 240
    .local v0, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0}, Llewa/laml/elements/AdvancedSlider$EndPoint;->init()V

    goto :goto_0

    .line 242
    .end local v0           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_0
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->resetInner()V

    .line 243
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 246
    sget-boolean v0, Llewa/laml/elements/AdvancedSlider;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Slider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 247
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mBounceAnimationController:Llewa/laml/elements/AdvancedSlider$BounceAnimationController;

    invoke-virtual {v0, p1}, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->load(Lorg/w3c/dom/Element;)V

    .line 248
    invoke-direct {p0, p1}, Llewa/laml/elements/AdvancedSlider;->loadStartPoint(Lorg/w3c/dom/Element;)V

    .line 249
    invoke-direct {p0, p1}, Llewa/laml/elements/AdvancedSlider;->loadEndPoint(Lorg/w3c/dom/Element;)V

    .line 250
    return-void
.end method

.method protected onCancel()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method protected onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 1
    .parameter "name"
    .parameter "intent"

    .prologue
    .line 256
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mOnLaunchListener:Llewa/laml/elements/AdvancedSlider$OnLaunchListener;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mOnLaunchListener:Llewa/laml/elements/AdvancedSlider$OnLaunchListener;

    invoke-interface {v0, p1}, Llewa/laml/elements/AdvancedSlider$OnLaunchListener;->onLaunch(Ljava/lang/String;)V

    .line 259
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onReach(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 263
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mRoot:Llewa/laml/ScreenElementRoot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llewa/laml/ScreenElementRoot;->haptic(I)V

    .line 264
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mRoot:Llewa/laml/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llewa/laml/ScreenElementRoot;->haptic(I)V

    .line 268
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider;->mRoot:Llewa/laml/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llewa/laml/ScreenElementRoot;->haptic(I)V

    .line 272
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 277
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 278
    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v9}, Llewa/laml/ScreenElementRoot;->getMatrixScale()F

    move-result v4

    .line 279
    .local v4, scale:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    div-float v5, v9, v4

    .line 280
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    div-float v6, v9, v4

    .line 286
    .end local v4           #scale:F
    .local v6, y:F
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_0
    move v7, v8

    .line 347
    :cond_1
    :goto_1
    return v7

    .line 282
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_2
    const/4 v5, 0x0

    .line 283
    .restart local v5       #x:F
    const/4 v6, 0x0

    .restart local v6       #y:F
    goto :goto_0

    .line 288
    :pswitch_0
    iget-boolean v9, p0, Llewa/laml/elements/AdvancedSlider;->mMoving:Z

    if-eqz v9, :cond_0

    .line 289
    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider;->mBounceAnimationController:Llewa/laml/elements/AdvancedSlider$BounceAnimationController;

    invoke-virtual {v9, v10}, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->startCancelMoving(Llewa/laml/elements/AdvancedSlider$EndPoint;)V

    .line 290
    iput-object v10, p0, Llewa/laml/elements/AdvancedSlider;->mCurrentEndPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 291
    iput-boolean v8, p0, Llewa/laml/elements/AdvancedSlider;->mMoving:Z

    .line 292
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->onRelease()V

    goto :goto_1

    .line 298
    :pswitch_1
    iget-boolean v9, p0, Llewa/laml/elements/AdvancedSlider;->mMoving:Z

    if-eqz v9, :cond_0

    .line 301
    iput-boolean v8, p0, Llewa/laml/elements/AdvancedSlider;->mMoving:Z

    .line 302
    invoke-direct {p0, v5, v6}, Llewa/laml/elements/AdvancedSlider;->checkTouch(FF)Llewa/laml/elements/AdvancedSlider$CheckTouchResult;

    move-result-object v3

    .line 303
    .local v3, result:Llewa/laml/elements/AdvancedSlider$CheckTouchResult;
    const/4 v2, 0x0

    .line 304
    .local v2, launched:Z
    if-eqz v3, :cond_4

    .line 305
    iget-boolean v8, v3, Llewa/laml/elements/AdvancedSlider$CheckTouchResult;->reached:Z

    if-eqz v8, :cond_3

    .line 306
    iget-object v8, v3, Llewa/laml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    invoke-direct {p0, v8}, Llewa/laml/elements/AdvancedSlider;->doLaunch(Llewa/laml/elements/AdvancedSlider$EndPoint;)Z

    move-result v2

    .line 307
    :cond_3
    iget-object v8, v3, Llewa/laml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    iput-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mCurrentEndPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 309
    :cond_4
    if-nez v2, :cond_1

    .line 310
    iget-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mBounceAnimationController:Llewa/laml/elements/AdvancedSlider$BounceAnimationController;

    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider;->mCurrentEndPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    invoke-virtual {v8, v9}, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->startCancelMoving(Llewa/laml/elements/AdvancedSlider$EndPoint;)V

    .line 311
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->onRelease()V

    goto :goto_1

    .line 317
    .end local v2           #launched:Z
    .end local v3           #result:Llewa/laml/elements/AdvancedSlider$CheckTouchResult;
    :pswitch_2
    iget-boolean v9, p0, Llewa/laml/elements/AdvancedSlider;->mMoving:Z

    if-eqz v9, :cond_0

    .line 318
    invoke-direct {p0, v5, v6}, Llewa/laml/elements/AdvancedSlider;->checkTouch(FF)Llewa/laml/elements/AdvancedSlider$CheckTouchResult;

    move-result-object v3

    .line 319
    .restart local v3       #result:Llewa/laml/elements/AdvancedSlider$CheckTouchResult;
    if-eqz v3, :cond_5

    .line 320
    iget-object v8, v3, Llewa/laml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    iput-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mCurrentEndPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    goto :goto_1

    .line 322
    :cond_5
    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider;->mBounceAnimationController:Llewa/laml/elements/AdvancedSlider$BounceAnimationController;

    iget-object v10, p0, Llewa/laml/elements/AdvancedSlider;->mCurrentEndPoint:Llewa/laml/elements/AdvancedSlider$EndPoint;

    invoke-virtual {v9, v10}, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->startCancelMoving(Llewa/laml/elements/AdvancedSlider$EndPoint;)V

    .line 323
    iput-boolean v8, p0, Llewa/laml/elements/AdvancedSlider;->mMoving:Z

    .line 324
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->onRelease()V

    goto :goto_1

    .line 330
    .end local v3           #result:Llewa/laml/elements/AdvancedSlider$CheckTouchResult;
    :pswitch_3
    iget-object v9, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v9, v5, v6}, Llewa/laml/elements/AdvancedSlider$StartPoint;->touched(FF)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 331
    iput-boolean v7, p0, Llewa/laml/elements/AdvancedSlider;->mMoving:Z

    .line 332
    iget-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v8}, Llewa/laml/elements/AdvancedSlider$StartPoint;->getX()F

    move-result v8

    sub-float v8, v5, v8

    iput v8, p0, Llewa/laml/elements/AdvancedSlider;->mTouchOffsetX:F

    .line 333
    iget-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v8}, Llewa/laml/elements/AdvancedSlider$StartPoint;->getY()F

    move-result v8

    sub-float v8, v6, v8

    iput v8, p0, Llewa/laml/elements/AdvancedSlider;->mTouchOffsetY:F

    .line 334
    iget-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    sget-object v9, Llewa/laml/elements/AdvancedSlider$State;->Pressed:Llewa/laml/elements/AdvancedSlider$State;

    invoke-virtual {v8, v9}, Llewa/laml/elements/AdvancedSlider$StartPoint;->setState(Llewa/laml/elements/AdvancedSlider$State;)V

    .line 335
    iget-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 336
    .local v0, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    sget-object v8, Llewa/laml/elements/AdvancedSlider$State;->Pressed:Llewa/laml/elements/AdvancedSlider$State;

    invoke-virtual {v0, v8}, Llewa/laml/elements/AdvancedSlider$EndPoint;->setState(Llewa/laml/elements/AdvancedSlider$State;)V

    goto :goto_2

    .line 338
    .end local v0           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_6
    iput-boolean v7, p0, Llewa/laml/elements/AdvancedSlider;->mPressed:Z

    .line 339
    iget-boolean v8, p0, Llewa/laml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v8, :cond_7

    .line 340
    iget-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mStateVar:Llewa/laml/util/IndexedNumberVariable;

    const-wide/high16 v9, 0x3ff0

    invoke-virtual {v8, v9, v10}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 341
    :cond_7
    iget-object v8, p0, Llewa/laml/elements/AdvancedSlider;->mBounceAnimationController:Llewa/laml/elements/AdvancedSlider$BounceAnimationController;

    invoke-virtual {v8}, Llewa/laml/elements/AdvancedSlider$BounceAnimationController;->init()V

    .line 342
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->onStart()V

    goto/16 :goto_1

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 351
    invoke-super {p0}, Llewa/laml/elements/ScreenElement;->pause()V

    .line 352
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2}, Llewa/laml/elements/AdvancedSlider$StartPoint;->pause()V

    .line 353
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 354
    .local v0, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0}, Llewa/laml/elements/AdvancedSlider$EndPoint;->pause()V

    goto :goto_0

    .line 356
    .end local v0           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_0
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->resetInner()V

    .line 357
    return-void
.end method

.method public reset(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 360
    invoke-super {p0, p1, p2}, Llewa/laml/elements/ScreenElement;->reset(J)V

    .line 361
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2, p1, p2}, Llewa/laml/elements/AdvancedSlider$StartPoint;->reset(J)V

    .line 362
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 363
    .local v0, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0, p1, p2}, Llewa/laml/elements/AdvancedSlider$EndPoint;->reset(J)V

    goto :goto_0

    .line 365
    .end local v0           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_0
    return-void
.end method

.method protected resetInner()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    .line 368
    iput-boolean v7, p0, Llewa/laml/elements/AdvancedSlider;->mPressed:Z

    .line 369
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v3}, Llewa/laml/elements/AdvancedSlider$StartPoint;->getX()F

    move-result v3

    iget-object v4, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v4}, Llewa/laml/elements/AdvancedSlider$StartPoint;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Llewa/laml/elements/AdvancedSlider$StartPoint;->moveTo(FF)V

    .line 370
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    sget-object v3, Llewa/laml/elements/AdvancedSlider$State;->Normal:Llewa/laml/elements/AdvancedSlider$State;

    invoke-virtual {v2, v3}, Llewa/laml/elements/AdvancedSlider$StartPoint;->setState(Llewa/laml/elements/AdvancedSlider$State;)V

    .line 371
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 372
    .local v0, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    sget-object v2, Llewa/laml/elements/AdvancedSlider$State;->Normal:Llewa/laml/elements/AdvancedSlider$State;

    invoke-virtual {v0, v2}, Llewa/laml/elements/AdvancedSlider$EndPoint;->setState(Llewa/laml/elements/AdvancedSlider$State;)V

    goto :goto_0

    .line 375
    .end local v0           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_0
    iget-boolean v2, p0, Llewa/laml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v2, :cond_1

    .line 376
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mMoveXVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v2, v5, v6}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 377
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mMoveYVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v2, v5, v6}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 378
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mMoveDistVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v2, v5, v6}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 379
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mStateVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v2, v5, v6}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 382
    :cond_1
    iput-boolean v7, p0, Llewa/laml/elements/AdvancedSlider;->mMoving:Z

    .line 383
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 386
    invoke-super {p0}, Llewa/laml/elements/ScreenElement;->resume()V

    .line 387
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2}, Llewa/laml/elements/AdvancedSlider$StartPoint;->resume()V

    .line 388
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 389
    .local v0, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0}, Llewa/laml/elements/AdvancedSlider$EndPoint;->resume()V

    goto :goto_0

    .line 391
    .end local v0           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_0
    return-void
.end method

.method public setOnLaunchListener(Llewa/laml/elements/AdvancedSlider$OnLaunchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 394
    iput-object p1, p0, Llewa/laml/elements/AdvancedSlider;->mOnLaunchListener:Llewa/laml/elements/AdvancedSlider$OnLaunchListener;

    .line 395
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 3
    .parameter "category"
    .parameter "show"

    .prologue
    .line 398
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2, p1, p2}, Llewa/laml/elements/AdvancedSlider$StartPoint;->showCategory(Ljava/lang/String;Z)V

    .line 399
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 400
    .local v0, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0, p1, p2}, Llewa/laml/elements/AdvancedSlider$EndPoint;->showCategory(Ljava/lang/String;Z)V

    goto :goto_0

    .line 402
    .end local v0           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 405
    invoke-super {p0, p1, p2}, Llewa/laml/elements/ScreenElement;->tick(J)V

    .line 406
    invoke-virtual {p0}, Llewa/laml/elements/AdvancedSlider;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mStartPoint:Llewa/laml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2, p1, p2}, Llewa/laml/elements/AdvancedSlider$StartPoint;->tick(J)V

    .line 408
    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$EndPoint;

    .line 409
    .local v0, ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0, p1, p2}, Llewa/laml/elements/AdvancedSlider$EndPoint;->tick(J)V

    goto :goto_0

    .line 412
    .end local v0           #ep:Llewa/laml/elements/AdvancedSlider$EndPoint;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method
