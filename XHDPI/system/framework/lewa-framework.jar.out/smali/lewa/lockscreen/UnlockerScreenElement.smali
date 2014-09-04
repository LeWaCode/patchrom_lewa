.class public Llewa/lockscreen/UnlockerScreenElement;
.super Llewa/lockscreen/view/ScreenElement;
.source "UnlockerScreenElement.java"

# interfaces
.implements Llewa/lockscreen/UnlockerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/lockscreen/UnlockerScreenElement$1;,
        Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;,
        Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;,
        Llewa/lockscreen/UnlockerScreenElement$Task;,
        Llewa/lockscreen/UnlockerScreenElement$State;,
        Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;,
        Llewa/lockscreen/UnlockerScreenElement$StartPoint;,
        Llewa/lockscreen/UnlockerScreenElement$EndPoint;,
        Llewa/lockscreen/UnlockerScreenElement$Position;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DRAG_TOLERANCE:I = 0x96

.field private static final TAG:Ljava/lang/String; = "UnlockerScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Unlocker"


# instance fields
.field private final STATE_NORMAL:Ljava/lang/String;

.field private final STATE_PRESSED:Ljava/lang/String;

.field private final STATE_REACHED:Ljava/lang/String;

.field private final STATE_UNLOCKED:Ljava/lang/String;

.field private mAlpha:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBounceAnimationController:Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;

.field private mCurrentEndPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;

.field private mEndPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/lockscreen/UnlockerScreenElement$EndPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mMoving:Z

.field private mPressed:Z

.field private mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

.field private mTouchOffsetX:I

.field private mTouchOffsetY:I

.field private mUnlock:Z

.field private final mUnlockerCallback:Llewa/lockscreen/LockScreenRoot$UnlockerCallback;

.field private final mUnlockerListener:Llewa/lockscreen/UnlockerListener;

.field private mUnlockingHide:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;Llewa/lockscreen/LockScreenRoot$UnlockerCallback;Llewa/lockscreen/UnlockerListener;)V
    .locals 2
    .parameter "element"
    .parameter "screenContext"
    .parameter "unlockercallback"
    .parameter "unlockerlistener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Llewa/lockscreen/view/ScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    .line 58
    const-string v0, "0"

    iput-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->STATE_NORMAL:Ljava/lang/String;

    .line 59
    const-string v0, "1"

    iput-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->STATE_PRESSED:Ljava/lang/String;

    .line 60
    const-string v0, "2"

    iput-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->STATE_REACHED:Ljava/lang/String;

    .line 61
    const-string v0, "3"

    iput-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->STATE_UNLOCKED:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/lockscreen/UnlockerScreenElement;->mUnlock:Z

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    .line 72
    iput-object p3, p0, Llewa/lockscreen/UnlockerScreenElement;->mUnlockerCallback:Llewa/lockscreen/LockScreenRoot$UnlockerCallback;

    .line 73
    iput-object p4, p0, Llewa/lockscreen/UnlockerScreenElement;->mUnlockerListener:Llewa/lockscreen/UnlockerListener;

    .line 74
    new-instance v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;

    invoke-direct {v0, p0}, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;-><init>(Llewa/lockscreen/UnlockerScreenElement;)V

    iput-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->mBounceAnimationController:Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;

    .line 76
    iget-object v0, p2, Llewa/lockscreen/view/ScreenContext;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->mAudioManager:Landroid/media/AudioManager;

    .line 78
    invoke-virtual {p0, p1}, Llewa/lockscreen/UnlockerScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 80
    return-void
.end method

.method static synthetic access$100(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;

    return-object v0
.end method

.method static synthetic access$1000(Llewa/lockscreen/UnlockerScreenElement;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Llewa/lockscreen/UnlockerScreenElement;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Llewa/lockscreen/UnlockerScreenElement;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Llewa/lockscreen/UnlockerScreenElement;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;

    return-object v0
.end method

.method static synthetic access$1500(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;

    return-object v0
.end method

.method static synthetic access$1600(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;

    return-object v0
.end method

.method static synthetic access$1700(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;

    return-object v0
.end method

.method static synthetic access$1800(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;

    return-object v0
.end method

.method static synthetic access$1900(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;

    return-object v0
.end method

.method static synthetic access$200(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;

    return-object v0
.end method

.method static synthetic access$2000(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;

    return-object v0
.end method

.method static synthetic access$2100(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;

    return-object v0
.end method

.method static synthetic access$2200(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    return-object v0
.end method

.method static synthetic access$2300(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    return-object v0
.end method

.method static synthetic access$2400(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    return-object v0
.end method

.method static synthetic access$2500(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    return-object v0
.end method

.method static synthetic access$2600(Llewa/lockscreen/UnlockerScreenElement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Llewa/lockscreen/UnlockerScreenElement;->mUnlock:Z

    return v0
.end method

.method static synthetic access$2602(Llewa/lockscreen/UnlockerScreenElement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Llewa/lockscreen/UnlockerScreenElement;->mUnlock:Z

    return p1
.end method

.method static synthetic access$2700(Llewa/lockscreen/UnlockerScreenElement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Llewa/lockscreen/UnlockerScreenElement;->mPressed:Z

    return v0
.end method

.method static synthetic access$2800(Llewa/lockscreen/UnlockerScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Llewa/lockscreen/UnlockerScreenElement;->resetState()V

    return-void
.end method

.method static synthetic access$300(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;

    return-object v0
.end method

.method static synthetic access$3100(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/UnlockerScreenElement$StartPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    return-object v0
.end method

.method static synthetic access$3400(Llewa/lockscreen/UnlockerScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Llewa/lockscreen/UnlockerScreenElement;->cancelMoving()V

    return-void
.end method

.method static synthetic access$3500(Llewa/lockscreen/UnlockerScreenElement;Llewa/lockscreen/UnlockerScreenElement$EndPoint;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Llewa/lockscreen/UnlockerScreenElement;->doUnlock(Llewa/lockscreen/UnlockerScreenElement$EndPoint;)V

    return-void
.end method

.method static synthetic access$3600(Llewa/lockscreen/UnlockerScreenElement;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Llewa/lockscreen/UnlockerScreenElement;->moveStartPoint(II)V

    return-void
.end method

.method static synthetic access$3700(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    return-object v0
.end method

.method static synthetic access$400(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;

    return-object v0
.end method

.method static synthetic access$500(Llewa/lockscreen/UnlockerScreenElement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Llewa/lockscreen/UnlockerScreenElement;->mTouchOffsetX:I

    return v0
.end method

.method static synthetic access$600(Llewa/lockscreen/UnlockerScreenElement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Llewa/lockscreen/UnlockerScreenElement;->mTouchOffsetY:I

    return v0
.end method

.method static synthetic access$700(Llewa/lockscreen/UnlockerScreenElement;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Llewa/lockscreen/UnlockerScreenElement;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$900(Llewa/lockscreen/UnlockerScreenElement;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Llewa/lockscreen/UnlockerScreenElement;->playSound(Ljava/lang/String;)V

    return-void
.end method

.method private cancelMoving()V
    .locals 6

    .prologue
    .line 703
    iget-object v4, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v4}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->getX()I

    move-result v2

    .line 704
    .local v2, x:I
    iget-object v4, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v4}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->getY()I

    move-result v3

    .line 705
    .local v3, y:I
    iget-object v4, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v4, v2, v3}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->moveTo(II)V

    .line 706
    iget-object v4, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    sget-object v5, Llewa/lockscreen/UnlockerScreenElement$State;->Normal:Llewa/lockscreen/UnlockerScreenElement$State;

    invoke-virtual {v4, v5}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->setState(Llewa/lockscreen/UnlockerScreenElement$State;)V

    .line 708
    iget-object v4, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 709
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 710
    iget-object v4, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    sget-object v5, Llewa/lockscreen/UnlockerScreenElement$State;->Normal:Llewa/lockscreen/UnlockerScreenElement$State;

    invoke-virtual {v4, v5}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->setState(Llewa/lockscreen/UnlockerScreenElement$State;)V

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 712
    :cond_0
    invoke-direct {p0}, Llewa/lockscreen/UnlockerScreenElement;->resetState()V

    .line 713
    iget-object v4, p0, Llewa/lockscreen/UnlockerScreenElement;->mUnlockerListener:Llewa/lockscreen/UnlockerListener;

    invoke-interface {v4, p0}, Llewa/lockscreen/UnlockerListener;->endUnlockMoving(Llewa/lockscreen/UnlockerScreenElement;)V

    .line 714
    return-void
.end method

.method private checkEndPoint(ZLlewa/lockscreen/view/Utils$Point;Llewa/lockscreen/UnlockerScreenElement$EndPoint;)Z
    .locals 8
    .parameter "doUnlock"
    .parameter "point"
    .parameter "endpoint"

    .prologue
    .line 718
    const/4 v2, 0x0

    .line 719
    .local v2, reachedEndPoint:Z
    iget-wide v6, p2, Llewa/lockscreen/view/Utils$Point;->x:D

    double-to-int v4, v6

    .line 720
    .local v4, x:I
    iget-wide v6, p2, Llewa/lockscreen/view/Utils$Point;->y:D

    double-to-int v5, v6

    .line 721
    .local v5, y:I
    invoke-virtual {p3, v4, v5}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->touched(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 723
    if-eqz p1, :cond_0

    .line 724
    invoke-direct {p0, p3}, Llewa/lockscreen/UnlockerScreenElement;->doUnlock(Llewa/lockscreen/UnlockerScreenElement$EndPoint;)V

    .line 726
    :cond_0
    const/4 v2, 0x1

    .line 727
    invoke-virtual {p3}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->getState()Llewa/lockscreen/UnlockerScreenElement$State;

    move-result-object v6

    sget-object v7, Llewa/lockscreen/UnlockerScreenElement$State;->Reached:Llewa/lockscreen/UnlockerScreenElement$State;

    if-eq v6, v7, :cond_3

    .line 729
    sget-object v6, Llewa/lockscreen/UnlockerScreenElement$State;->Reached:Llewa/lockscreen/UnlockerScreenElement$State;

    invoke-virtual {p3, v6}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->setState(Llewa/lockscreen/UnlockerScreenElement$State;)V

    .line 731
    iget-object v6, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 732
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 733
    iget-object v6, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    .line 734
    .local v0, ep:Llewa/lockscreen/UnlockerScreenElement$EndPoint;
    if-eq v0, p3, :cond_1

    .line 735
    iget-object v6, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    sget-object v7, Llewa/lockscreen/UnlockerScreenElement$State;->Pressed:Llewa/lockscreen/UnlockerScreenElement$State;

    invoke-virtual {v6, v7}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->setState(Llewa/lockscreen/UnlockerScreenElement$State;)V

    .line 732
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 740
    .end local v0           #ep:Llewa/lockscreen/UnlockerScreenElement$EndPoint;
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_2
    sget-object v6, Llewa/lockscreen/UnlockerScreenElement$State;->Pressed:Llewa/lockscreen/UnlockerScreenElement$State;

    invoke-virtual {p3, v6}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->setState(Llewa/lockscreen/UnlockerScreenElement$State;)V

    .line 742
    :cond_3
    return v2
.end method

.method private checkIfUnlocked(Llewa/lockscreen/view/Utils$Point;)Z
    .locals 7
    .parameter "point"

    .prologue
    .line 1088
    iget-wide v5, p1, Llewa/lockscreen/view/Utils$Point;->x:D

    double-to-int v3, v5

    .line 1089
    .local v3, x:I
    iget-wide v5, p1, Llewa/lockscreen/view/Utils$Point;->y:D

    double-to-int v4, v5

    .line 1090
    .local v4, y:I
    iget-object v5, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v5}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->getX()I

    move-result v5

    sub-int v0, v3, v5

    .line 1091
    .local v0, dealtX:I
    iget-object v5, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v5}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->getY()I

    move-result v5

    sub-int v1, v4, v5

    .line 1093
    .local v1, dealtY:I
    mul-int v5, v0, v0

    mul-int v6, v1, v1

    add-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v2, v5

    .line 1095
    .local v2, realDist:I
    iget-object v5, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v5}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->getUnlockedDist()I

    move-result v5

    if-le v2, v5, :cond_0

    .line 1096
    const/4 v5, 0x1

    .line 1098
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private checkTouch(IIZ)Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;
    .locals 14
    .parameter "currentX"
    .parameter "currentY"
    .parameter "doUnlock"

    .prologue
    .line 1023
    const v6, 0x7fffffff

    .line 1024
    .local v6, maxInt:I
    const/4 v8, 0x0

    .line 1025
    .local v8, point:Llewa/lockscreen/view/Utils$Point;
    const/4 v4, 0x0

    .line 1027
    .local v4, endPointReached:Z
    new-instance v1, Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;

    const/4 v11, 0x0

    invoke-direct {v1, p0, v11}, Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;-><init>(Llewa/lockscreen/UnlockerScreenElement;Llewa/lockscreen/UnlockerScreenElement$1;)V

    .line 1029
    .local v1, checktouchresult:Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;
    iget-object v11, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1030
    .local v9, size:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v9, :cond_1

    .line 1031
    iget-object v11, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    .line 1033
    .local v3, endPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;
    move/from16 v0, p2

    #calls: Llewa/lockscreen/UnlockerScreenElement$EndPoint;->getNearestPoint(II)Llewa/lockscreen/view/Utils$Point;
    invoke-static {v3, p1, v0}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->access$3000(Llewa/lockscreen/UnlockerScreenElement$EndPoint;II)Llewa/lockscreen/view/Utils$Point;

    move-result-object v7

    .line 1034
    .local v7, nearestPoint:Llewa/lockscreen/view/Utils$Point;
    move/from16 v0, p2

    invoke-virtual {v3, v7, p1, v0}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->getTransformedDist(Llewa/lockscreen/view/Utils$Point;II)I

    move-result v2

    .line 1035
    .local v2, dist:I
    if-ge v2, v6, :cond_0

    .line 1036
    move v6, v2

    .line 1037
    move-object v8, v7

    .line 1038
    iput-object v3, v1, Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;->endPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    .line 1030
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1041
    .end local v2           #dist:I
    .end local v3           #endPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;
    .end local v7           #nearestPoint:Llewa/lockscreen/view/Utils$Point;
    :cond_1
    const v11, 0x7fffffff

    if-lt v6, v11, :cond_2

    .line 1082
    :goto_1
    return-object v1

    .line 1045
    :cond_2
    const v11, 0x7ffffffe

    if-lt v6, v11, :cond_6

    .line 1046
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v9, :cond_3

    .line 1047
    iget-object v11, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    .line 1048
    .restart local v3       #endPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;
    move/from16 v0, p3

    invoke-direct {p0, v0, v8, v3}, Llewa/lockscreen/UnlockerScreenElement;->checkEndPoint(ZLlewa/lockscreen/view/Utils$Point;Llewa/lockscreen/UnlockerScreenElement$EndPoint;)Z

    move-result v4

    .line 1049
    if-eqz v4, :cond_5

    .line 1050
    iput-object v3, v1, Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;->endPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    .line 1064
    .end local v3           #endPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;
    :cond_3
    :goto_3
    if-eqz v8, :cond_4

    .line 1065
    iget-wide v11, v8, Llewa/lockscreen/view/Utils$Point;->x:D

    double-to-int v11, v11

    iget-wide v12, v8, Llewa/lockscreen/view/Utils$Point;->y:D

    double-to-int v12, v12

    invoke-direct {p0, v11, v12}, Llewa/lockscreen/UnlockerScreenElement;->moveStartPoint(II)V

    .line 1068
    :cond_4
    const/4 v10, 0x0

    .line 1070
    .local v10, state:Llewa/lockscreen/UnlockerScreenElement$State;
    if-eqz v4, :cond_7

    .line 1071
    sget-object v10, Llewa/lockscreen/UnlockerScreenElement$State;->Reached:Llewa/lockscreen/UnlockerScreenElement$State;

    .line 1075
    :goto_4
    iget-object v11, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v11, v10}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->setState(Llewa/lockscreen/UnlockerScreenElement$State;)V

    .line 1077
    if-eqz v4, :cond_8

    .line 1078
    iget-object v11, p0, Llewa/lockscreen/UnlockerScreenElement;->mName:Ljava/lang/String;

    const-string v12, "state"

    const-string v13, "2"

    invoke-static {v11, v12, v13}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1046
    .end local v10           #state:Llewa/lockscreen/UnlockerScreenElement$State;
    .restart local v3       #endPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1056
    .end local v3           #endPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;
    :cond_6
    if-eqz v8, :cond_3

    .line 1059
    iget-object v11, v1, Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;->endPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    move/from16 v0, p3

    invoke-direct {p0, v0, v8, v11}, Llewa/lockscreen/UnlockerScreenElement;->checkEndPoint(ZLlewa/lockscreen/view/Utils$Point;Llewa/lockscreen/UnlockerScreenElement$EndPoint;)Z

    move-result v4

    goto :goto_3

    .line 1073
    .restart local v10       #state:Llewa/lockscreen/UnlockerScreenElement$State;
    :cond_7
    sget-object v10, Llewa/lockscreen/UnlockerScreenElement$State;->Pressed:Llewa/lockscreen/UnlockerScreenElement$State;

    goto :goto_4

    .line 1080
    :cond_8
    iget-object v11, p0, Llewa/lockscreen/UnlockerScreenElement;->mName:Ljava/lang/String;

    const-string v12, "state"

    const-string v13, "1"

    invoke-static {v11, v12, v13}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private doUnlock(Llewa/lockscreen/UnlockerScreenElement$EndPoint;)V
    .locals 16
    .parameter "endpoint"

    .prologue
    .line 748
    move-object/from16 v0, p1

    iget-object v9, v0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mTask:Llewa/lockscreen/UnlockerScreenElement$Task;

    .line 750
    .local v9, task:Llewa/lockscreen/UnlockerScreenElement$Task;
    const/4 v6, 0x0

    .line 752
    .local v6, intent:Landroid/content/Intent;
    if-eqz v9, :cond_4

    .line 753
    iget-object v1, v9, Llewa/lockscreen/UnlockerScreenElement$Task;->action:Ljava/lang/String;

    .line 754
    .local v1, action:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 755
    .restart local v6       #intent:Landroid/content/Intent;
    iget-object v13, v9, Llewa/lockscreen/UnlockerScreenElement$Task;->type:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    .line 757
    iget-object v11, v9, Llewa/lockscreen/UnlockerScreenElement$Task;->type:Ljava/lang/String;

    .line 758
    .local v11, type:Ljava/lang/String;
    const-string v13, "vnd.android-dir/mms-sms"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 759
    move-object/from16 v0, p0

    iget-object v13, v0, Llewa/lockscreen/UnlockerScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v13, v13, Llewa/lockscreen/view/ScreenContext;->lockScreenInterface:Llewa/lockscreen/LewaLockScreenInterface;

    invoke-interface {v13}, Llewa/lockscreen/LewaLockScreenInterface;->getUsefullMsgThreadId()I

    move-result v10

    .line 760
    .local v10, threadId:I
    const-string v13, "UnlockerScreenElement"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "######threadId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v13, -0x1

    if-eq v10, v13, :cond_5

    .line 762
    move-object/from16 v0, p0

    iget-object v13, v0, Llewa/lockscreen/UnlockerScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v13, v13, Llewa/lockscreen/view/ScreenContext;->lockScreenInterface:Llewa/lockscreen/LewaLockScreenInterface;

    invoke-interface {v13}, Llewa/lockscreen/LewaLockScreenInterface;->getUnreadSmsNum()Ljava/lang/String;

    move-result-object v7

    .line 763
    .local v7, number:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 764
    move-object/from16 v0, p0

    iget-object v13, v0, Llewa/lockscreen/UnlockerScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v13, v13, Llewa/lockscreen/view/ScreenContext;->lockScreenInterface:Llewa/lockscreen/LewaLockScreenInterface;

    invoke-interface {v13}, Llewa/lockscreen/LewaLockScreenInterface;->getUnreadMmsNum()Ljava/lang/String;

    move-result-object v7

    .line 766
    :cond_0
    const-string v13, "android.intent.action.VIEW"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 767
    const-string v13, "content://sms/inbox"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    int-to-long v14, v10

    invoke-static {v13, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 768
    .local v12, uri:Landroid/net/Uri;
    invoke-virtual {v6, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 769
    if-eqz v7, :cond_1

    .line 770
    const-string v13, "number"

    invoke-virtual {v6, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 782
    .end local v7           #number:Ljava/lang/String;
    .end local v10           #threadId:I
    .end local v11           #type:Ljava/lang/String;
    .end local v12           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    iget-object v13, v9, Llewa/lockscreen/UnlockerScreenElement$Task;->category:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 783
    iget-object v3, v9, Llewa/lockscreen/UnlockerScreenElement$Task;->category:Ljava/lang/String;

    .line 784
    .local v3, category:Ljava/lang/String;
    invoke-virtual {v6, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 786
    .end local v3           #category:Ljava/lang/String;
    :cond_2
    iget-object v13, v9, Llewa/lockscreen/UnlockerScreenElement$Task;->packageName:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    iget-object v13, v9, Llewa/lockscreen/UnlockerScreenElement$Task;->className:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 788
    iget-object v8, v9, Llewa/lockscreen/UnlockerScreenElement$Task;->packageName:Ljava/lang/String;

    .line 789
    .local v8, packageName:Ljava/lang/String;
    iget-object v4, v9, Llewa/lockscreen/UnlockerScreenElement$Task;->className:Ljava/lang/String;

    .line 790
    .local v4, className:Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v8, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    .local v5, componentname:Landroid/content/ComponentName;
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 793
    .end local v4           #className:Ljava/lang/String;
    .end local v5           #componentname:Landroid/content/ComponentName;
    .end local v8           #packageName:Ljava/lang/String;
    :cond_3
    const/high16 v13, 0x3400

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 796
    .end local v1           #action:Ljava/lang/String;
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Llewa/lockscreen/UnlockerScreenElement;->mUnlockerCallback:Llewa/lockscreen/LockScreenRoot$UnlockerCallback;

    invoke-interface {v13, v6}, Llewa/lockscreen/LockScreenRoot$UnlockerCallback;->unlocked(Landroid/content/Intent;)V

    .line 797
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Llewa/lockscreen/UnlockerScreenElement;->mUnlock:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :goto_1
    return-void

    .line 773
    .restart local v1       #action:Ljava/lang/String;
    .restart local v10       #threadId:I
    .restart local v11       #type:Ljava/lang/String;
    :cond_5
    const-string v13, "vnd.android-dir/mms-sms"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    const-string v13, "LockScreen_MSG"

    const-string v14, "true"

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 777
    .end local v10           #threadId:I
    :cond_6
    invoke-virtual {v6, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 798
    .end local v1           #action:Ljava/lang/String;
    .end local v11           #type:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 799
    .local v2, activitynotfoundexception:Landroid/content/ActivityNotFoundException;
    const-string v13, "UnlockerScreenElement"

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private isShowing()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    .line 806
    invoke-virtual {p0}, Llewa/lockscreen/UnlockerScreenElement;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mUnlockingHide:Z

    if-nez v2, :cond_0

    .line 807
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->element:Lorg/w3c/dom/Element;

    const-string v3, "alpha"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, alpha:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 810
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v3, "alpha"

    invoke-virtual {v2, v3, v0}, Llewa/lockscreen/view/Expression;->putDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v3, "alpha"

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Llewa/lockscreen/view/Expression;->getDou(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    iput v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mAlpha:I

    .line 815
    :goto_0
    iget v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mAlpha:I

    int-to-double v2, v2

    cmpg-double v2, v2, v5

    if-gtz v2, :cond_2

    .line 820
    .end local v0           #alpha:Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    .line 813
    .restart local v0       #alpha:Ljava/lang/String;
    :cond_1
    const/16 v2, 0xff

    iput v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mAlpha:I

    goto :goto_0

    .line 818
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private loadEndPoint(Lorg/w3c/dom/Element;)V
    .locals 7
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 838
    iget-object v6, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 840
    const-string v6, "EndPoint"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 842
    .local v5, nodelist:Lorg/w3c/dom/NodeList;
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 843
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 844
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 845
    .local v0, childElement:Lorg/w3c/dom/Element;
    new-instance v1, Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    invoke-direct {v1, p0, v0}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;-><init>(Llewa/lockscreen/UnlockerScreenElement;Lorg/w3c/dom/Element;)V

    .line 846
    .local v1, endPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;
    iget-object v6, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 849
    .end local v0           #childElement:Lorg/w3c/dom/Element;
    .end local v1           #endPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;
    :cond_0
    const/4 v2, 0x0

    .line 850
    .local v2, flag:Z
    iget-object v6, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 851
    const/4 v2, 0x1

    .line 853
    :cond_1
    const-string v6, "no end point for unlocker!"

    invoke-static {v2, v6}, Llewa/lockscreen/view/Utils;->asserts(ZLjava/lang/String;)V

    .line 854
    return-void
.end method

.method private loadStartPoint(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 826
    const-string v2, "StartPoint"

    invoke-static {p1, v2}, Llewa/lockscreen/view/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 827
    .local v0, childElement:Lorg/w3c/dom/Element;
    new-instance v2, Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-direct {v2, p0, v0}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;-><init>(Llewa/lockscreen/UnlockerScreenElement;Lorg/w3c/dom/Element;)V

    iput-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    .line 829
    const/4 v1, 0x0

    .line 830
    .local v1, flag:Z
    if-eqz v0, :cond_0

    .line 831
    const/4 v1, 0x1

    .line 833
    :cond_0
    const-string v2, "no StartPoint node"

    invoke-static {v1, v2}, Llewa/lockscreen/view/Utils;->asserts(ZLjava/lang/String;)V

    .line 834
    return-void
.end method

.method private moveStartPoint(II)V
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    .line 858
    iget-object v8, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v8, p1, p2}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->moveTo(II)V

    .line 860
    iget-object v8, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v8}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->getCurrentX()I

    move-result v0

    .line 861
    .local v0, currentX:I
    iget-object v8, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    iget v8, v8, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->mX:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 862
    .local v2, mX:I
    sub-int v6, v0, v2

    .line 863
    .local v6, move_x:I
    iget-object v8, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v8}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->getCurrentY()I

    move-result v1

    .line 864
    .local v1, currentY:I
    iget-object v8, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    iget v8, v8, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->mY:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 865
    .local v3, mY:I
    sub-int v7, v1, v3

    .line 867
    .local v7, move_y:I
    sub-int v8, v0, v2

    sub-int v9, v0, v2

    mul-int/2addr v8, v9

    sub-int v9, v1, v3

    sub-int v10, v1, v3

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 869
    .local v4, move_dist:D
    iget-object v8, p0, Llewa/lockscreen/UnlockerScreenElement;->mName:Ljava/lang/String;

    const-string v9, "move_x"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-object v8, p0, Llewa/lockscreen/UnlockerScreenElement;->mName:Ljava/lang/String;

    const-string v9, "move_y"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v8, p0, Llewa/lockscreen/UnlockerScreenElement;->mName:Ljava/lang/String;

    const-string v9, "move_dist"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    return-void
.end method

.method private moveToUnlockedPoint()V
    .locals 5

    .prologue
    .line 1003
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    const/16 v3, 0xc0

    const/16 v4, 0xc8

    invoke-virtual {v2, v3, v4}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->moveTo(II)V

    .line 1005
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    sget-object v3, Llewa/lockscreen/UnlockerScreenElement$State;->Normal:Llewa/lockscreen/UnlockerScreenElement$State;

    invoke-virtual {v2, v3}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->setState(Llewa/lockscreen/UnlockerScreenElement$State;)V

    .line 1007
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1008
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1009
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    sget-object v3, Llewa/lockscreen/UnlockerScreenElement$State;->Normal:Llewa/lockscreen/UnlockerScreenElement$State;

    invoke-virtual {v2, v3}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->setState(Llewa/lockscreen/UnlockerScreenElement$State;)V

    .line 1008
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1012
    :cond_0
    invoke-direct {p0}, Llewa/lockscreen/UnlockerScreenElement;->resetState()V

    .line 1013
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mUnlockerListener:Llewa/lockscreen/UnlockerListener;

    invoke-interface {v2, p0}, Llewa/lockscreen/UnlockerListener;->endUnlockMoving(Llewa/lockscreen/UnlockerScreenElement;)V

    .line 1014
    return-void
.end method

.method private playSound(Ljava/lang/String;)V
    .locals 1
    .parameter "soundName"

    .prologue
    .line 876
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 877
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v0, v0, Llewa/lockscreen/view/ScreenContext;->mRoot:Llewa/lockscreen/view/ScreenElement;

    check-cast v0, Llewa/lockscreen/LockScreenRoot;

    invoke-virtual {v0, p1}, Llewa/lockscreen/LockScreenRoot;->playSound(Ljava/lang/String;)V

    .line 879
    :cond_0
    return-void
.end method

.method private resetState()V
    .locals 3

    .prologue
    .line 693
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->mName:Ljava/lang/String;

    const-string v1, "move_x"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->mName:Ljava/lang/String;

    const-string v1, "move_y"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->mName:Ljava/lang/String;

    const-string v1, "move_dist"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-boolean v0, p0, Llewa/lockscreen/UnlockerScreenElement;->mUnlock:Z

    if-nez v0, :cond_0

    .line 697
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->mName:Ljava/lang/String;

    const-string v1, "state"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :cond_0
    return-void
.end method

.method private unlockedCheckTouch(IIZ)Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;
    .locals 13
    .parameter "x"
    .parameter "y"
    .parameter "doUnlock"

    .prologue
    .line 1104
    const v5, 0x7fffffff

    .line 1105
    .local v5, maxInt:I
    const/4 v7, 0x0

    .line 1107
    .local v7, point:Llewa/lockscreen/view/Utils$Point;
    new-instance v0, Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;

    const/4 v10, 0x0

    invoke-direct {v0, p0, v10}, Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;-><init>(Llewa/lockscreen/UnlockerScreenElement;Llewa/lockscreen/UnlockerScreenElement$1;)V

    .line 1109
    .local v0, checktouchresult:Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;
    iget-object v10, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1110
    .local v8, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v8, :cond_1

    .line 1111
    iget-object v10, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    .line 1113
    .local v2, endPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;
    #calls: Llewa/lockscreen/UnlockerScreenElement$EndPoint;->getNearestPoint(II)Llewa/lockscreen/view/Utils$Point;
    invoke-static {v2, p1, p2}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->access$3000(Llewa/lockscreen/UnlockerScreenElement$EndPoint;II)Llewa/lockscreen/view/Utils$Point;

    move-result-object v6

    .line 1114
    .local v6, nearestPoint:Llewa/lockscreen/view/Utils$Point;
    invoke-virtual {v2, v6, p1, p2}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->getTransformedDist(Llewa/lockscreen/view/Utils$Point;II)I

    move-result v1

    .line 1115
    .local v1, dist:I
    if-ge v1, v5, :cond_0

    .line 1116
    move v5, v1

    .line 1117
    move-object v7, v6

    .line 1118
    iput-object v2, v0, Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;->endPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    .line 1110
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1122
    .end local v1           #dist:I
    .end local v2           #endPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;
    .end local v6           #nearestPoint:Llewa/lockscreen/view/Utils$Point;
    :cond_1
    const/4 v3, 0x0

    .line 1124
    .local v3, endPointUnlocked:Z
    if-eqz v7, :cond_2

    .line 1126
    iget-wide v10, v7, Llewa/lockscreen/view/Utils$Point;->x:D

    double-to-int v10, v10

    iget-wide v11, v7, Llewa/lockscreen/view/Utils$Point;->y:D

    double-to-int v11, v11

    invoke-direct {p0, v10, v11}, Llewa/lockscreen/UnlockerScreenElement;->moveStartPoint(II)V

    .line 1128
    invoke-direct {p0, v7}, Llewa/lockscreen/UnlockerScreenElement;->checkIfUnlocked(Llewa/lockscreen/view/Utils$Point;)Z

    move-result v3

    .line 1130
    iget-object v10, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v10, v3}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->setEndPointUnlocked(Z)V

    .line 1132
    if-eqz p3, :cond_2

    if-eqz v3, :cond_2

    .line 1133
    invoke-direct {p0}, Llewa/lockscreen/UnlockerScreenElement;->moveToUnlockedPoint()V

    .line 1136
    :cond_2
    const/4 v9, 0x0

    .line 1138
    .local v9, state:Llewa/lockscreen/UnlockerScreenElement$State;
    if-eqz v3, :cond_3

    iget-boolean v10, p0, Llewa/lockscreen/UnlockerScreenElement;->mPressed:Z

    if-nez v10, :cond_3

    .line 1139
    sget-object v9, Llewa/lockscreen/UnlockerScreenElement$State;->Unlocked:Llewa/lockscreen/UnlockerScreenElement$State;

    .line 1143
    :goto_1
    iget-object v10, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v10, v9}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->setState(Llewa/lockscreen/UnlockerScreenElement$State;)V

    .line 1146
    if-eqz v3, :cond_4

    .line 1147
    iget-object v10, p0, Llewa/lockscreen/UnlockerScreenElement;->mName:Ljava/lang/String;

    const-string v11, "state"

    const-string v12, "3"

    invoke-static {v10, v11, v12}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    :goto_2
    return-object v0

    .line 1141
    :cond_3
    sget-object v9, Llewa/lockscreen/UnlockerScreenElement$State;->Pressed:Llewa/lockscreen/UnlockerScreenElement$State;

    goto :goto_1

    .line 1149
    :cond_4
    iget-object v10, p0, Llewa/lockscreen/UnlockerScreenElement;->mName:Ljava/lang/String;

    const-string v11, "state"

    const-string v12, "1"

    invoke-static {v10, v11, v12}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public endUnlockMoving(Llewa/lockscreen/UnlockerScreenElement;)V
    .locals 1
    .parameter "unlockerscreenelement"

    .prologue
    .line 883
    if-eq p1, p0, :cond_0

    .line 884
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/lockscreen/UnlockerScreenElement;->mUnlockingHide:Z

    .line 886
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 889
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v2}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->init()V

    .line 891
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 892
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 893
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    invoke-virtual {v2}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->init()V

    .line 892
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 895
    :cond_0
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unlocker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const-string v0, "UnlockerScreenElement"

    const-string v1, "Element node name is not Unlocker"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :cond_0
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->mName:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement;->mBounceAnimationController:Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;

    invoke-virtual {v0, p1}, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->load(Lorg/w3c/dom/Element;)V

    .line 100
    invoke-direct {p0, p1}, Llewa/lockscreen/UnlockerScreenElement;->loadStartPoint(Lorg/w3c/dom/Element;)V

    .line 101
    invoke-direct {p0, p1}, Llewa/lockscreen/UnlockerScreenElement;->loadEndPoint(Lorg/w3c/dom/Element;)V

    .line 103
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 901
    invoke-direct {p0}, Llewa/lockscreen/UnlockerScreenElement;->isShowing()Z

    move-result v9

    if-nez v9, :cond_1

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v2, v9

    .line 906
    .local v2, currentX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v3, v9

    .line 908
    .local v3, currentY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 912
    :pswitch_0
    iget-object v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v9, v2, v3}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->touched(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 915
    iput-boolean v11, p0, Llewa/lockscreen/UnlockerScreenElement;->mMoving:Z

    .line 917
    iget-object v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v9}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->getX()I

    move-result v7

    .line 918
    .local v7, startPointX:I
    sub-int v9, v2, v7

    iput v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mTouchOffsetX:I

    .line 920
    iget-object v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v9}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->getY()I

    move-result v8

    .line 921
    .local v8, startPointY:I
    sub-int v9, v3, v8

    iput v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mTouchOffsetY:I

    .line 923
    iget-object v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    sget-object v10, Llewa/lockscreen/UnlockerScreenElement$State;->Pressed:Llewa/lockscreen/UnlockerScreenElement$State;

    invoke-virtual {v9, v10}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->setState(Llewa/lockscreen/UnlockerScreenElement$State;)V

    .line 925
    iget-object v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 926
    .local v6, size:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v6, :cond_2

    .line 927
    iget-object v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    .line 928
    .local v4, ep:Llewa/lockscreen/UnlockerScreenElement$EndPoint;
    sget-object v9, Llewa/lockscreen/UnlockerScreenElement$State;->Pressed:Llewa/lockscreen/UnlockerScreenElement$State;

    invoke-virtual {v4, v9}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->setState(Llewa/lockscreen/UnlockerScreenElement$State;)V

    .line 926
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 931
    .end local v4           #ep:Llewa/lockscreen/UnlockerScreenElement$EndPoint;
    :cond_2
    iput-boolean v11, p0, Llewa/lockscreen/UnlockerScreenElement;->mPressed:Z

    .line 933
    iget-object v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mUnlockerListener:Llewa/lockscreen/UnlockerListener;

    invoke-interface {v9, p0}, Llewa/lockscreen/UnlockerListener;->startUnlockMoving(Llewa/lockscreen/UnlockerScreenElement;)V

    .line 935
    iget-object v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mName:Ljava/lang/String;

    const-string v10, "state"

    const-string v11, "1"

    invoke-static {v9, v10, v11}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mBounceAnimationController:Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;

    invoke-virtual {v9}, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->init()V

    goto :goto_0

    .line 944
    .end local v5           #i:I
    .end local v6           #size:I
    .end local v7           #startPointX:I
    .end local v8           #startPointY:I
    :pswitch_1
    iget-boolean v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mMoving:Z

    if-eqz v9, :cond_0

    .line 947
    const/4 v0, 0x0

    .line 949
    .local v0, checktouchresult:Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;
    iget-object v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v9}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->getHasUnlockedState()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 950
    invoke-direct {p0, v2, v3, v10}, Llewa/lockscreen/UnlockerScreenElement;->unlockedCheckTouch(IIZ)Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;

    move-result-object v0

    .line 956
    :goto_2
    if-nez v0, :cond_4

    .line 957
    const/4 v9, 0x0

    iput-object v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mCurrentEndPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    goto :goto_0

    .line 952
    :cond_3
    invoke-direct {p0, v2, v3, v10}, Llewa/lockscreen/UnlockerScreenElement;->checkTouch(IIZ)Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;

    move-result-object v0

    goto :goto_2

    .line 959
    :cond_4
    iget-object v9, v0, Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;->endPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    iput-object v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mCurrentEndPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    goto/16 :goto_0

    .line 965
    .end local v0           #checktouchresult:Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;
    :pswitch_2
    iget-boolean v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mMoving:Z

    if-eqz v9, :cond_0

    .line 968
    iput-boolean v10, p0, Llewa/lockscreen/UnlockerScreenElement;->mPressed:Z

    .line 969
    iput-boolean v10, p0, Llewa/lockscreen/UnlockerScreenElement;->mMoving:Z

    .line 971
    const/4 v1, 0x0

    .line 972
    .local v1, ctr:Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;
    iget-object v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v9}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->getHasUnlockedState()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 974
    invoke-direct {p0, v2, v3, v10}, Llewa/lockscreen/UnlockerScreenElement;->unlockedCheckTouch(IIZ)Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;

    move-result-object v1

    .line 979
    :goto_3
    iget-boolean v9, v1, Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;->unlocked:Z

    if-nez v9, :cond_6

    .line 981
    iget-object v4, v1, Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;->endPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    .line 982
    .restart local v4       #ep:Llewa/lockscreen/UnlockerScreenElement$EndPoint;
    iget-object v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v9}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->getHasUnlockedState()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v9}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->getEndPointUnlocked()Z

    move-result v9

    if-nez v9, :cond_8

    .line 983
    :cond_5
    invoke-direct {p0}, Llewa/lockscreen/UnlockerScreenElement;->cancelMoving()V

    .line 989
    .end local v4           #ep:Llewa/lockscreen/UnlockerScreenElement$EndPoint;
    :cond_6
    :goto_4
    iget-object v9, v1, Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;->endPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    iput-object v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mCurrentEndPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    .line 990
    iget-boolean v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mUnlock:Z

    if-nez v9, :cond_0

    .line 991
    iget-object v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mName:Ljava/lang/String;

    const-string v10, "state"

    const-string v11, "0"

    invoke-static {v9, v10, v11}, Llewa/lockscreen/view/Expression;->putRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 976
    :cond_7
    invoke-direct {p0, v2, v3, v11}, Llewa/lockscreen/UnlockerScreenElement;->checkTouch(IIZ)Llewa/lockscreen/UnlockerScreenElement$CheckTouchResult;

    move-result-object v1

    goto :goto_3

    .line 985
    .restart local v4       #ep:Llewa/lockscreen/UnlockerScreenElement$EndPoint;
    :cond_8
    iget-object v9, p0, Llewa/lockscreen/UnlockerScreenElement;->mBounceAnimationController:Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;

    invoke-virtual {v9, v4}, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->startBounceAnimationMoving(Llewa/lockscreen/UnlockerScreenElement$EndPoint;)V

    goto :goto_4

    .line 908
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 1159
    invoke-direct {p0}, Llewa/lockscreen/UnlockerScreenElement;->cancelMoving()V

    .line 1161
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v2}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->pause()V

    .line 1162
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1163
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1164
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    invoke-virtual {v2}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->pause()V

    .line 1163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1166
    :cond_0
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 1170
    invoke-direct {p0}, Llewa/lockscreen/UnlockerScreenElement;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1178
    :goto_0
    return-void

    .line 1173
    :cond_0
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1174
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 1175
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    invoke-virtual {v2, p1}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->render(Landroid/graphics/Canvas;)V

    .line 1174
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1177
    :cond_1
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v2, p1}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->render(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 1181
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v2}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->resume()V

    .line 1182
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1183
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1184
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    invoke-virtual {v2}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->resume()V

    .line 1183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1186
    :cond_0
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 3
    .parameter "category"
    .parameter "flag"

    .prologue
    .line 1189
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v2, p1, p2}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->showCategory(Ljava/lang/String;Z)V

    .line 1190
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1191
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1192
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    invoke-virtual {v2, p1, p2}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->showCategory(Ljava/lang/String;Z)V

    .line 1191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1194
    :cond_0
    return-void
.end method

.method public startUnlockMoving(Llewa/lockscreen/UnlockerScreenElement;)V
    .locals 1
    .parameter "unlockerscreenelement"

    .prologue
    .line 1198
    if-eq p1, p0, :cond_0

    .line 1199
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/lockscreen/UnlockerScreenElement;->mUnlockingHide:Z

    .line 1201
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 1205
    invoke-direct {p0}, Llewa/lockscreen/UnlockerScreenElement;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1214
    :cond_0
    return-void

    .line 1208
    :cond_1
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mBounceAnimationController:Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;

    invoke-virtual {v2, p1, p2}, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->tick(J)V

    .line 1209
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    invoke-virtual {v2, p1, p2}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->tick(J)V

    .line 1210
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1211
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1212
    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    invoke-virtual {v2, p1, p2}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->tick(J)V

    .line 1211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
