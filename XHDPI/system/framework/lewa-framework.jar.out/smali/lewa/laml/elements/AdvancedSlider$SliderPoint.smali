.class Llewa/laml/elements/AdvancedSlider$SliderPoint;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderPoint"
.end annotation


# instance fields
.field private mCurrentStateElements:Llewa/laml/elements/ScreenElement;

.field protected mCurrentX:F

.field protected mCurrentY:F

.field private mHeight:Llewa/laml/data/Expression;

.field protected mName:Ljava/lang/String;

.field protected mNormalSound:Ljava/lang/String;

.field protected mNormalStateElements:Llewa/laml/elements/ElementGroup;

.field private mNormalStateTrigger:Llewa/laml/CommandTrigger;

.field private mPointStateVar:Llewa/laml/util/IndexedNumberVariable;

.field protected mPressedSound:Ljava/lang/String;

.field private mPressedStateElements:Llewa/laml/elements/ElementGroup;

.field private mPressedStateTrigger:Llewa/laml/CommandTrigger;

.field protected mReachedSound:Ljava/lang/String;

.field private mReachedStateElements:Llewa/laml/elements/ElementGroup;

.field private mReachedStateTrigger:Llewa/laml/CommandTrigger;

.field private mState:Llewa/laml/elements/AdvancedSlider$State;

.field private mWidth:Llewa/laml/data/Expression;

.field protected mX:Llewa/laml/data/Expression;

.field protected mY:Llewa/laml/data/Expression;

.field final synthetic this$0:Llewa/laml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Llewa/laml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "node"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 848
    iput-object p1, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 840
    sget-object v0, Llewa/laml/elements/AdvancedSlider$State;->Invalid:Llewa/laml/elements/AdvancedSlider$State;

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mState:Llewa/laml/elements/AdvancedSlider$State;

    .line 849
    invoke-virtual {p0, p2, p3}, Llewa/laml/elements/AdvancedSlider$SliderPoint;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 850
    return-void
.end method

.method private loadGroup(Lorg/w3c/dom/Element;Ljava/lang/String;)Llewa/laml/elements/ElementGroup;
    .locals 3
    .parameter "node"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 853
    invoke-static {p1, p2}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 854
    .local v0, ele:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    new-instance v1, Llewa/laml/elements/ElementGroup;

    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v2, v2, Llewa/laml/elements/AdvancedSlider;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-direct {v1, v0, v2}, Llewa/laml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadTrigger(Lorg/w3c/dom/Element;Ljava/lang/String;)Llewa/laml/CommandTrigger;
    .locals 2
    .parameter "node"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 859
    invoke-static {p1, p2}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 860
    .local v0, ele:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v1, v1, Llewa/laml/elements/AdvancedSlider;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-static {v0, v1}, Llewa/laml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)Llewa/laml/CommandTrigger;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;
    .locals 2
    .parameter "name"

    .prologue
    .line 864
    const/4 v0, 0x0

    .line 865
    .local v0, ele:Llewa/laml/elements/ScreenElement;
    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v1, :cond_0

    .line 866
    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v1, p1}, Llewa/laml/elements/ElementGroup;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v0

    .line 869
    :cond_0
    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v1, :cond_1

    .line 870
    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v1, p1}, Llewa/laml/elements/ElementGroup;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v0

    .line 873
    :cond_1
    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v1, :cond_2

    .line 874
    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v1, p1}, Llewa/laml/elements/ElementGroup;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v0

    .line 877
    :cond_2
    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0}, Llewa/laml/elements/ElementGroup;->finish()V

    .line 884
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 885
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0}, Llewa/laml/elements/ElementGroup;->finish()V

    .line 887
    :cond_1
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_2

    .line 888
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0}, Llewa/laml/elements/ElementGroup;->finish()V

    .line 889
    :cond_2
    return-void
.end method

.method public getCurrentX()F
    .locals 1

    .prologue
    .line 892
    iget v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mCurrentX:F

    return v0
.end method

.method public getCurrentY()F
    .locals 1

    .prologue
    .line 896
    iget v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mCurrentY:F

    return v0
.end method

.method public getState()Llewa/laml/elements/AdvancedSlider$State;
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mState:Llewa/laml/elements/AdvancedSlider$State;

    return-object v0
.end method

.method public getX()F
    .locals 3

    .prologue
    .line 904
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mX:Llewa/laml/data/Expression;

    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    invoke-virtual {v2}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v2

    invoke-virtual {v1, v2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/AdvancedSlider;->scale(D)F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 3

    .prologue
    .line 908
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mY:Llewa/laml/data/Expression;

    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    invoke-virtual {v2}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v2

    invoke-virtual {v1, v2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/AdvancedSlider;->scale(D)F

    move-result v0

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 912
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mX:Llewa/laml/data/Expression;

    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    invoke-virtual {v2}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v2

    invoke-virtual {v1, v2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/AdvancedSlider;->scale(D)F

    move-result v0

    iput v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mCurrentX:F

    .line 913
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mY:Llewa/laml/data/Expression;

    iget-object v2, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    invoke-virtual {v2}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v2

    invoke-virtual {v1, v2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Llewa/laml/elements/AdvancedSlider;->scale(D)F

    move-result v0

    iput v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mCurrentY:F

    .line 914
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0}, Llewa/laml/elements/ElementGroup;->init()V

    .line 916
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Llewa/laml/elements/ElementGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llewa/laml/elements/ElementGroup;->show(Z)V

    .line 919
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 920
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0}, Llewa/laml/elements/ElementGroup;->init()V

    .line 921
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0, v3}, Llewa/laml/elements/ElementGroup;->show(Z)V

    .line 924
    :cond_1
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_2

    .line 925
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0}, Llewa/laml/elements/ElementGroup;->init()V

    .line 926
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0, v3}, Llewa/laml/elements/ElementGroup;->show(Z)V

    .line 929
    :cond_2
    sget-object v0, Llewa/laml/elements/AdvancedSlider$State;->Normal:Llewa/laml/elements/AdvancedSlider$State;

    invoke-virtual {p0, v0}, Llewa/laml/elements/AdvancedSlider$SliderPoint;->setState(Llewa/laml/elements/AdvancedSlider$State;)V

    .line 930
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 4
    .parameter "node"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 933
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "wrong node name"

    invoke-static {v0, v1}, Llewa/laml/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 934
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    .line 935
    const-string v0, "normalSound"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalSound:Ljava/lang/String;

    .line 936
    const-string v0, "pressedSound"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedSound:Ljava/lang/String;

    .line 937
    const-string v0, "reachedSound"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedSound:Ljava/lang/String;

    .line 938
    const-string v0, "x"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mX:Llewa/laml/data/Expression;

    .line 939
    const-string v0, "y"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mY:Llewa/laml/data/Expression;

    .line 940
    const-string v0, "w"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mWidth:Llewa/laml/data/Expression;

    .line 941
    const-string v0, "h"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mHeight:Llewa/laml/data/Expression;

    .line 942
    const-string v0, "NormalState"

    invoke-direct {p0, p1, v0}, Llewa/laml/elements/AdvancedSlider$SliderPoint;->loadGroup(Lorg/w3c/dom/Element;Ljava/lang/String;)Llewa/laml/elements/ElementGroup;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Llewa/laml/elements/ElementGroup;

    .line 943
    const-string v0, "PressedState"

    invoke-direct {p0, p1, v0}, Llewa/laml/elements/AdvancedSlider$SliderPoint;->loadGroup(Lorg/w3c/dom/Element;Ljava/lang/String;)Llewa/laml/elements/ElementGroup;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Llewa/laml/elements/ElementGroup;

    .line 944
    const-string v0, "ReachedState"

    invoke-direct {p0, p1, v0}, Llewa/laml/elements/AdvancedSlider$SliderPoint;->loadGroup(Lorg/w3c/dom/Element;Ljava/lang/String;)Llewa/laml/elements/ElementGroup;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Llewa/laml/elements/ElementGroup;

    .line 945
    const-string v0, "NormalState"

    invoke-direct {p0, p1, v0}, Llewa/laml/elements/AdvancedSlider$SliderPoint;->loadTrigger(Lorg/w3c/dom/Element;Ljava/lang/String;)Llewa/laml/CommandTrigger;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalStateTrigger:Llewa/laml/CommandTrigger;

    .line 946
    const-string v0, "PressedState"

    invoke-direct {p0, p1, v0}, Llewa/laml/elements/AdvancedSlider$SliderPoint;->loadTrigger(Lorg/w3c/dom/Element;Ljava/lang/String;)Llewa/laml/CommandTrigger;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateTrigger:Llewa/laml/CommandTrigger;

    .line 947
    const-string v0, "ReachedState"

    invoke-direct {p0, p1, v0}, Llewa/laml/elements/AdvancedSlider$SliderPoint;->loadTrigger(Lorg/w3c/dom/Element;Ljava/lang/String;)Llewa/laml/CommandTrigger;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateTrigger:Llewa/laml/CommandTrigger;

    .line 948
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 949
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    const-string v2, "state"

    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    invoke-virtual {v3}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPointStateVar:Llewa/laml/util/IndexedNumberVariable;

    .line 950
    :cond_0
    return-void
.end method

.method public moveTo(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 953
    iput p1, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mCurrentX:F

    .line 954
    iput p2, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mCurrentY:F

    .line 955
    return-void
.end method

.method protected onStateChange(Llewa/laml/elements/AdvancedSlider$State;Llewa/laml/elements/AdvancedSlider$State;)V
    .locals 2
    .parameter "pre"
    .parameter "s"

    .prologue
    .line 958
    sget-object v0, Llewa/laml/elements/AdvancedSlider$1;->$SwitchMap$lewa$laml$elements$AdvancedSlider$State:[I

    invoke-virtual {p2}, Llewa/laml/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 978
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 960
    :pswitch_1
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateTrigger:Llewa/laml/CommandTrigger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->getAction()Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    move-result-object v0

    sget-object v1, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Other:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->getAction()Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->getAction()Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    move-result-object v0

    sget-object v1, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Up:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    #getter for: Llewa/laml/elements/AdvancedSlider;->mMoving:Z
    invoke-static {v0}, Llewa/laml/elements/AdvancedSlider;->access$1000(Llewa/laml/elements/AdvancedSlider;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 965
    :cond_1
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->perform()V

    goto :goto_0

    .line 968
    :pswitch_2
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateTrigger:Llewa/laml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->perform()V

    goto :goto_0

    .line 972
    :pswitch_3
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalStateTrigger:Llewa/laml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalStateTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->perform()V

    goto :goto_0

    .line 958
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0}, Llewa/laml/elements/ElementGroup;->pause()V

    .line 984
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 985
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0}, Llewa/laml/elements/ElementGroup;->pause()V

    .line 987
    :cond_1
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_2

    .line 988
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0}, Llewa/laml/elements/ElementGroup;->pause()V

    .line 989
    :cond_2
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "c"

    .prologue
    .line 992
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v4, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mX:Llewa/laml/data/Expression;

    iget-object v5, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    invoke-virtual {v5}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v5

    invoke-virtual {v4, v5}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Llewa/laml/elements/AdvancedSlider;->scale(D)F

    move-result v1

    .line 993
    .local v1, x:F
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v4, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mY:Llewa/laml/data/Expression;

    iget-object v5, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    invoke-virtual {v5}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v5

    invoke-virtual {v4, v5}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Llewa/laml/elements/AdvancedSlider;->scale(D)F

    move-result v2

    .line 994
    .local v2, y:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 996
    .local v0, rs:I
    iget v3, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mCurrentX:F

    sub-float/2addr v3, v1

    iget v4, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mCurrentY:F

    sub-float/2addr v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 997
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Llewa/laml/elements/ScreenElement;

    if-eqz v3, :cond_0

    .line 998
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Llewa/laml/elements/ScreenElement;

    invoke-virtual {v3, p1}, Llewa/laml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 1000
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1001
    return-void
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 1004
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Llewa/laml/elements/ElementGroup;->reset(J)V

    .line 1007
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 1008
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Llewa/laml/elements/ElementGroup;->reset(J)V

    .line 1010
    :cond_1
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_2

    .line 1011
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Llewa/laml/elements/ElementGroup;->reset(J)V

    .line 1012
    :cond_2
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0}, Llewa/laml/elements/ElementGroup;->resume()V

    .line 1018
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 1019
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0}, Llewa/laml/elements/ElementGroup;->resume()V

    .line 1021
    :cond_1
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_2

    .line 1022
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0}, Llewa/laml/elements/ElementGroup;->resume()V

    .line 1023
    :cond_2
    return-void
.end method

.method public setState(Llewa/laml/elements/AdvancedSlider$State;)V
    .locals 8
    .parameter "s"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1026
    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mState:Llewa/laml/elements/AdvancedSlider$State;

    if-ne v6, p1, :cond_0

    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    #getter for: Llewa/laml/elements/AdvancedSlider;->mMoving:Z
    invoke-static {v6}, Llewa/laml/elements/AdvancedSlider;->access$1000(Llewa/laml/elements/AdvancedSlider;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1082
    :goto_0
    return-void

    .line 1029
    :cond_0
    iget-object v1, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mState:Llewa/laml/elements/AdvancedSlider$State;

    .line 1030
    .local v1, preState:Llewa/laml/elements/AdvancedSlider$State;
    iput-object p1, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mState:Llewa/laml/elements/AdvancedSlider$State;

    .line 1031
    const/4 v2, 0x0

    .line 1032
    .local v2, reset:Z
    const/4 v0, 0x0

    .line 1033
    .local v0, eg:Llewa/laml/elements/ElementGroup;
    const/4 v3, 0x0

    .line 1034
    .local v3, state:I
    sget-object v6, Llewa/laml/elements/AdvancedSlider$1;->$SwitchMap$lewa$laml$elements$AdvancedSlider$State:[I

    invoke-virtual {p1}, Llewa/laml/elements/AdvancedSlider$State;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1062
    :goto_1
    :pswitch_0
    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Llewa/laml/elements/ScreenElement;

    if-eq v6, v0, :cond_3

    .line 1063
    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Llewa/laml/elements/ScreenElement;

    if-eqz v6, :cond_1

    .line 1064
    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Llewa/laml/elements/ScreenElement;

    invoke-virtual {v6, v5}, Llewa/laml/elements/ScreenElement;->show(Z)V

    .line 1066
    :cond_1
    if-eqz v0, :cond_2

    .line 1067
    invoke-virtual {v0, v4}, Llewa/laml/elements/ElementGroup;->show(Z)V

    .line 1069
    :cond_2
    iput-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Llewa/laml/elements/ScreenElement;

    .line 1072
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 1073
    invoke-virtual {v0}, Llewa/laml/elements/ElementGroup;->reset()V

    .line 1075
    :cond_4
    iget-object v4, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPointStateVar:Llewa/laml/util/IndexedNumberVariable;

    if-eqz v4, :cond_5

    .line 1076
    iget-object v4, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPointStateVar:Llewa/laml/util/IndexedNumberVariable;

    int-to-double v5, v3

    invoke-virtual {v4, v5, v6}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 1079
    :cond_5
    :try_start_0
    iget-object v4, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mState:Llewa/laml/elements/AdvancedSlider$State;

    invoke-virtual {p0, v1, v4}, Llewa/laml/elements/AdvancedSlider$SliderPoint;->onStateChange(Llewa/laml/elements/AdvancedSlider$State;Llewa/laml/elements/AdvancedSlider$State;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1080
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1036
    :pswitch_1
    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v6, :cond_6

    .line 1037
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Llewa/laml/elements/ElementGroup;

    .line 1042
    :goto_2
    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v6, :cond_8

    move v2, v4

    .line 1043
    :goto_3
    const/4 v3, 0x2

    .line 1044
    goto :goto_1

    .line 1038
    :cond_6
    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v6, :cond_7

    .line 1039
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Llewa/laml/elements/ElementGroup;

    goto :goto_2

    .line 1041
    :cond_7
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Llewa/laml/elements/ElementGroup;

    goto :goto_2

    :cond_8
    move v2, v5

    .line 1042
    goto :goto_3

    .line 1046
    :pswitch_2
    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v6, :cond_9

    .line 1047
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Llewa/laml/elements/ElementGroup;

    .line 1050
    :goto_4
    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v6, :cond_a

    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    #getter for: Llewa/laml/elements/AdvancedSlider;->mPressed:Z
    invoke-static {v6}, Llewa/laml/elements/AdvancedSlider;->access$1100(Llewa/laml/elements/AdvancedSlider;)Z

    move-result v6

    if-nez v6, :cond_a

    move v2, v4

    .line 1051
    :goto_5
    const/4 v3, 0x1

    .line 1052
    goto :goto_1

    .line 1049
    :cond_9
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Llewa/laml/elements/ElementGroup;

    goto :goto_4

    :cond_a
    move v2, v5

    .line 1050
    goto :goto_5

    .line 1054
    :pswitch_3
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Llewa/laml/elements/ElementGroup;

    .line 1055
    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v6, :cond_b

    move v2, v4

    .line 1056
    :goto_6
    const/4 v3, 0x0

    .line 1057
    goto :goto_1

    :cond_b
    move v2, v5

    .line 1055
    goto :goto_6

    .line 1034
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1
    .parameter "category"
    .parameter "show"

    .prologue
    .line 1085
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Llewa/laml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 1088
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 1089
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Llewa/laml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 1091
    :cond_1
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_2

    .line 1092
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Llewa/laml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 1093
    :cond_2
    return-void
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 1096
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Llewa/laml/elements/ScreenElement;

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Llewa/laml/elements/ScreenElement;

    invoke-virtual {v0, p1, p2}, Llewa/laml/elements/ScreenElement;->tick(J)V

    .line 1098
    :cond_0
    return-void
.end method

.method public touched(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1101
    iget-object v4, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v5, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mX:Llewa/laml/data/Expression;

    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    invoke-virtual {v6}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v6

    invoke-virtual {v5, v6}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Llewa/laml/elements/AdvancedSlider;->scale(D)F

    move-result v2

    .line 1102
    .local v2, cx:F
    iget-object v4, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v5, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mWidth:Llewa/laml/data/Expression;

    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    invoke-virtual {v6}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v6

    invoke-virtual {v5, v6}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Llewa/laml/elements/AdvancedSlider;->scale(D)F

    move-result v1

    .line 1103
    .local v1, cw:F
    iget-object v4, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v5, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mY:Llewa/laml/data/Expression;

    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    invoke-virtual {v6}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v6

    invoke-virtual {v5, v6}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Llewa/laml/elements/AdvancedSlider;->scale(D)F

    move-result v3

    .line 1104
    .local v3, cy:F
    iget-object v4, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v5, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->mHeight:Llewa/laml/data/Expression;

    iget-object v6, p0, Llewa/laml/elements/AdvancedSlider$SliderPoint;->this$0:Llewa/laml/elements/AdvancedSlider;

    invoke-virtual {v6}, Llewa/laml/elements/AdvancedSlider;->getVariables()Llewa/laml/data/Variables;

    move-result-object v6

    invoke-virtual {v5, v6}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Llewa/laml/elements/AdvancedSlider;->scale(D)F

    move-result v0

    .line 1105
    .local v0, ch:F
    cmpl-float v4, p1, v2

    if-ltz v4, :cond_0

    add-float v4, v2, v1

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    cmpl-float v4, p2, v3

    if-ltz v4, :cond_0

    add-float v4, v3, v0

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
