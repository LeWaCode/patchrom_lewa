.class public Llewa/laml/elements/ButtonScreenElement;
.super Llewa/laml/elements/AnimatedScreenElement;
.source "ButtonScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/elements/ButtonScreenElement$ButtonActionListener;,
        Llewa/laml/elements/ButtonScreenElement$ButtonAction;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ButtonScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Button"


# instance fields
.field private mListener:Llewa/laml/elements/ButtonScreenElement$ButtonActionListener;

.field private mListenerName:Ljava/lang/String;

.field private mNormalElements:Llewa/laml/elements/ElementGroup;

.field private mPressed:Z

.field private mPressedElements:Llewa/laml/elements/ElementGroup;

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J

.field private mTouching:Z

.field private mTriggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/CommandTrigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 1
    .parameter "ele"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {p0, p1, p2}, Llewa/laml/elements/ButtonScreenElement;->load(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 60
    if-eqz p1, :cond_0

    .line 61
    const-string v0, "listener"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    .line 62
    :cond_0
    return-void
.end method

.method private getCur()Llewa/laml/elements/ElementGroup;
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Llewa/laml/elements/ButtonScreenElement;->mPressed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Llewa/laml/elements/ButtonScreenElement;->mTouching:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/laml/elements/ButtonScreenElement;->mPressedElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Llewa/laml/elements/ButtonScreenElement;->mPressedElements:Llewa/laml/elements/ElementGroup;

    .line 68
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llewa/laml/elements/ButtonScreenElement;->mNormalElements:Llewa/laml/elements/ElementGroup;

    goto :goto_0
.end method

.method private onCancel()V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Cancel:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v0}, Llewa/laml/elements/ButtonScreenElement;->performAction(Llewa/laml/elements/ButtonScreenElement$ButtonAction;)V

    .line 73
    return-void
.end method

.method private performAction(Llewa/laml/elements/ButtonScreenElement$ButtonAction;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 76
    iget-object v2, p0, Llewa/laml/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/CommandTrigger;

    .line 77
    .local v1, tri:Llewa/laml/CommandTrigger;
    invoke-virtual {v1}, Llewa/laml/CommandTrigger;->getAction()Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 78
    invoke-virtual {v1}, Llewa/laml/CommandTrigger;->perform()V

    goto :goto_0

    .line 80
    .end local v1           #tri:Llewa/laml/CommandTrigger;
    :cond_1
    iget-object v2, p0, Llewa/laml/elements/ButtonScreenElement;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v2, p0, p1}, Llewa/laml/ScreenElementRoot;->onButtonInteractive(Llewa/laml/elements/ButtonScreenElement;Llewa/laml/elements/ButtonScreenElement$ButtonAction;)V

    .line 81
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 84
    invoke-direct {p0}, Llewa/laml/elements/ButtonScreenElement;->getCur()Llewa/laml/elements/ElementGroup;

    move-result-object v0

    .line 85
    .local v0, cur:Llewa/laml/elements/ElementGroup;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1}, Llewa/laml/elements/ElementGroup;->render(Landroid/graphics/Canvas;)V

    .line 87
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 90
    iget-object v2, p0, Llewa/laml/elements/ButtonScreenElement;->mNormalElements:Llewa/laml/elements/ElementGroup;

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Llewa/laml/elements/ButtonScreenElement;->mNormalElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v2}, Llewa/laml/elements/ElementGroup;->finish()V

    .line 92
    :cond_0
    iget-object v2, p0, Llewa/laml/elements/ButtonScreenElement;->mPressedElements:Llewa/laml/elements/ElementGroup;

    if-eqz v2, :cond_1

    .line 93
    iget-object v2, p0, Llewa/laml/elements/ButtonScreenElement;->mPressedElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v2}, Llewa/laml/elements/ElementGroup;->finish()V

    .line 94
    :cond_1
    iget-object v2, p0, Llewa/laml/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/CommandTrigger;

    .line 95
    .local v1, tri:Llewa/laml/CommandTrigger;
    invoke-virtual {v1}, Llewa/laml/CommandTrigger;->finish()V

    goto :goto_0

    .line 97
    .end local v1           #tri:Llewa/laml/CommandTrigger;
    :cond_2
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    .line 101
    invoke-super {p0}, Llewa/laml/elements/AnimatedScreenElement;->init()V

    .line 102
    iget-object v3, p0, Llewa/laml/elements/ButtonScreenElement;->mNormalElements:Llewa/laml/elements/ElementGroup;

    if-eqz v3, :cond_0

    .line 103
    iget-object v3, p0, Llewa/laml/elements/ButtonScreenElement;->mNormalElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v3}, Llewa/laml/elements/ElementGroup;->init()V

    .line 105
    :cond_0
    iget-object v3, p0, Llewa/laml/elements/ButtonScreenElement;->mPressedElements:Llewa/laml/elements/ElementGroup;

    if-eqz v3, :cond_1

    .line 106
    iget-object v3, p0, Llewa/laml/elements/ButtonScreenElement;->mPressedElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v3}, Llewa/laml/elements/ElementGroup;->init()V

    .line 108
    :cond_1
    iget-object v3, p0, Llewa/laml/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/laml/CommandTrigger;

    .line 109
    .local v2, tri:Llewa/laml/CommandTrigger;
    invoke-virtual {v2}, Llewa/laml/CommandTrigger;->init()V

    goto :goto_0

    .line 113
    .end local v2           #tri:Llewa/laml/CommandTrigger;
    :cond_2
    :try_start_0
    iget-object v3, p0, Llewa/laml/elements/ButtonScreenElement;->mListener:Llewa/laml/elements/ButtonScreenElement$ButtonActionListener;

    if-nez v3, :cond_3

    iget-object v3, p0, Llewa/laml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 114
    iget-object v3, p0, Llewa/laml/elements/ButtonScreenElement;->mRoot:Llewa/laml/ScreenElementRoot;

    iget-object v4, p0, Llewa/laml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Llewa/laml/ScreenElementRoot;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v3

    check-cast v3, Llewa/laml/elements/ButtonScreenElement$ButtonActionListener;

    iput-object v3, p0, Llewa/laml/elements/ButtonScreenElement;->mListener:Llewa/laml/elements/ButtonScreenElement$ButtonActionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_3
    :goto_1
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "ButtonScreenElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "button listener designated by the name is not actually a listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Llewa/laml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public load(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 9
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    const-string v7, "ButtonScreenElement"

    const-string v8, "node is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v7, Llewa/laml/ScreenElementLoadException;

    const-string v8, "node is null"

    invoke-direct {v7, v8}, Llewa/laml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 127
    :cond_0
    const-string v7, "Normal"

    invoke-static {p1, v7}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 128
    .local v4, normal:Lorg/w3c/dom/Element;
    if-eqz v4, :cond_1

    .line 129
    new-instance v7, Llewa/laml/elements/ElementGroup;

    invoke-direct {v7, v4, p2}, Llewa/laml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    iput-object v7, p0, Llewa/laml/elements/ButtonScreenElement;->mNormalElements:Llewa/laml/elements/ElementGroup;

    .line 130
    :cond_1
    const-string v7, "Pressed"

    invoke-static {p1, v7}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 131
    .local v5, pressed:Lorg/w3c/dom/Element;
    if-eqz v5, :cond_2

    .line 132
    new-instance v7, Llewa/laml/elements/ElementGroup;

    invoke-direct {v7, v5, p2}, Llewa/laml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    iput-object v7, p0, Llewa/laml/elements/ButtonScreenElement;->mPressedElements:Llewa/laml/elements/ElementGroup;

    .line 133
    :cond_2
    const-string v7, "Triggers"

    invoke-static {p1, v7}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 134
    .local v6, triggers:Lorg/w3c/dom/Element;
    if-eqz v6, :cond_4

    .line 135
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 136
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 137
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 138
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 139
    .local v3, item:Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Trigger"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 140
    iget-object v7, p0, Llewa/laml/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    new-instance v8, Llewa/laml/CommandTrigger;

    invoke-direct {v8, v3, p2}, Llewa/laml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v3           #item:Lorg/w3c/dom/Element;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    .end local v0           #N:I
    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v2           #i:I
    :cond_4
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    .line 148
    invoke-virtual {p0}, Llewa/laml/elements/ButtonScreenElement;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 149
    iget-object v10, p0, Llewa/laml/elements/ButtonScreenElement;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v10}, Llewa/laml/ScreenElementRoot;->getMatrixScale()F

    move-result v6

    .line 150
    .local v6, scale:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    div-float v8, v10, v6

    .line 151
    .local v8, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    div-float v9, v10, v6

    .line 152
    .local v9, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 217
    .end local v6           #scale:F
    .end local v8           #x:F
    .end local v9           #y:F
    :cond_0
    const/4 v10, 0x0

    :goto_0
    return v10

    .line 156
    .restart local v6       #scale:F
    .restart local v8       #x:F
    .restart local v9       #y:F
    :pswitch_0
    iget-object v10, p0, Llewa/laml/elements/ButtonScreenElement;->mNormalElements:Llewa/laml/elements/ElementGroup;

    if-eqz v10, :cond_1

    .line 157
    iget-object v10, p0, Llewa/laml/elements/ButtonScreenElement;->mNormalElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v10}, Llewa/laml/elements/ElementGroup;->reset()V

    .line 158
    :cond_1
    invoke-direct {p0}, Llewa/laml/elements/ButtonScreenElement;->onCancel()V

    .line 159
    const/4 v10, 0x0

    iput-boolean v10, p0, Llewa/laml/elements/ButtonScreenElement;->mTouching:Z

    .line 160
    const/4 v10, 0x0

    iput-boolean v10, p0, Llewa/laml/elements/ButtonScreenElement;->mPressed:Z

    .line 161
    const/4 v10, 0x0

    goto :goto_0

    .line 164
    :pswitch_1
    iget-boolean v10, p0, Llewa/laml/elements/ButtonScreenElement;->mPressed:Z

    if-eqz v10, :cond_0

    .line 165
    invoke-virtual {p0, v8, v9}, Llewa/laml/elements/ButtonScreenElement;->touched(FF)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 166
    iget-object v10, p0, Llewa/laml/elements/ButtonScreenElement;->mListener:Llewa/laml/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v10, :cond_2

    .line 167
    iget-object v10, p0, Llewa/laml/elements/ButtonScreenElement;->mListener:Llewa/laml/elements/ButtonScreenElement$ButtonActionListener;

    iget-object v11, p0, Llewa/laml/elements/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v10, v11}, Llewa/laml/elements/ButtonScreenElement$ButtonActionListener;->onButtonUp(Ljava/lang/String;)Z

    .line 168
    :cond_2
    sget-object v10, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Up:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v10}, Llewa/laml/elements/ButtonScreenElement;->performAction(Llewa/laml/elements/ButtonScreenElement$ButtonAction;)V

    .line 169
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Llewa/laml/elements/ButtonScreenElement;->mPreviousTapUpTime:J

    .line 173
    :goto_1
    iget-object v10, p0, Llewa/laml/elements/ButtonScreenElement;->mNormalElements:Llewa/laml/elements/ElementGroup;

    if-eqz v10, :cond_3

    .line 174
    iget-object v10, p0, Llewa/laml/elements/ButtonScreenElement;->mNormalElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v10}, Llewa/laml/elements/ElementGroup;->reset()V

    .line 175
    :cond_3
    const/4 v10, 0x0

    iput-boolean v10, p0, Llewa/laml/elements/ButtonScreenElement;->mPressed:Z

    .line 176
    const/4 v10, 0x0

    iput-boolean v10, p0, Llewa/laml/elements/ButtonScreenElement;->mTouching:Z

    .line 177
    const/4 v10, 0x1

    goto :goto_0

    .line 171
    :cond_4
    invoke-direct {p0}, Llewa/laml/elements/ButtonScreenElement;->onCancel()V

    goto :goto_1

    .line 182
    :pswitch_2
    invoke-virtual {p0, v8, v9}, Llewa/laml/elements/ButtonScreenElement;->touched(FF)Z

    move-result v10

    iput-boolean v10, p0, Llewa/laml/elements/ButtonScreenElement;->mTouching:Z

    .line 183
    iget-boolean v10, p0, Llewa/laml/elements/ButtonScreenElement;->mTouching:Z

    goto :goto_0

    .line 186
    :pswitch_3
    invoke-virtual {p0, v8, v9}, Llewa/laml/elements/ButtonScreenElement;->touched(FF)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 188
    const/4 v10, 0x1

    iput-boolean v10, p0, Llewa/laml/elements/ButtonScreenElement;->mPressed:Z

    .line 189
    const/4 v10, 0x1

    iput-boolean v10, p0, Llewa/laml/elements/ButtonScreenElement;->mTouching:Z

    .line 190
    iget-object v10, p0, Llewa/laml/elements/ButtonScreenElement;->mListener:Llewa/laml/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v10, :cond_5

    .line 191
    iget-object v10, p0, Llewa/laml/elements/ButtonScreenElement;->mListener:Llewa/laml/elements/ButtonScreenElement$ButtonActionListener;

    iget-object v11, p0, Llewa/laml/elements/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v10, v11}, Llewa/laml/elements/ButtonScreenElement$ButtonActionListener;->onButtonDown(Ljava/lang/String;)Z

    .line 192
    :cond_5
    sget-object v10, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Down:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v10}, Llewa/laml/elements/ButtonScreenElement;->performAction(Llewa/laml/elements/ButtonScreenElement$ButtonAction;)V

    .line 193
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Llewa/laml/elements/ButtonScreenElement;->mPreviousTapUpTime:J

    sub-long v4, v10, v12

    .line 194
    .local v4, l:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gtz v10, :cond_7

    .line 195
    iget v10, p0, Llewa/laml/elements/ButtonScreenElement;->mPreviousTapPositionX:F

    sub-float v0, v8, v10

    .line 196
    .local v0, deltaX:F
    iget v10, p0, Llewa/laml/elements/ButtonScreenElement;->mPreviousTapPositionY:F

    sub-float v1, v9, v10

    .line 197
    .local v1, deltaY:F
    mul-float v10, v0, v0

    mul-float v11, v1, v1

    add-float v2, v10, v11

    .line 198
    .local v2, distanceSquared:F
    invoke-virtual {p0}, Llewa/laml/elements/ButtonScreenElement;->getContext()Llewa/laml/ScreenContext;

    move-result-object v10

    iget-object v10, v10, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v3

    .line 200
    .local v3, doubleTapSlop:I
    mul-int v7, v3, v3

    .line 201
    .local v7, slopSquared:I
    int-to-float v10, v7

    cmpg-float v10, v2, v10

    if-gez v10, :cond_7

    .line 202
    iget-object v10, p0, Llewa/laml/elements/ButtonScreenElement;->mListener:Llewa/laml/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v10, :cond_6

    .line 203
    iget-object v10, p0, Llewa/laml/elements/ButtonScreenElement;->mListener:Llewa/laml/elements/ButtonScreenElement$ButtonActionListener;

    iget-object v11, p0, Llewa/laml/elements/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v10, v11}, Llewa/laml/elements/ButtonScreenElement$ButtonActionListener;->onButtonDoubleClick(Ljava/lang/String;)Z

    .line 204
    :cond_6
    sget-object v10, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Double:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v10}, Llewa/laml/elements/ButtonScreenElement;->performAction(Llewa/laml/elements/ButtonScreenElement$ButtonAction;)V

    .line 207
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v2           #distanceSquared:F
    .end local v3           #doubleTapSlop:I
    .end local v7           #slopSquared:I
    :cond_7
    iput v8, p0, Llewa/laml/elements/ButtonScreenElement;->mPreviousTapPositionX:F

    .line 208
    iput v9, p0, Llewa/laml/elements/ButtonScreenElement;->mPreviousTapPositionY:F

    .line 209
    iget-object v10, p0, Llewa/laml/elements/ButtonScreenElement;->mPressedElements:Llewa/laml/elements/ElementGroup;

    if-eqz v10, :cond_8

    .line 210
    iget-object v10, p0, Llewa/laml/elements/ButtonScreenElement;->mPressedElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v10}, Llewa/laml/elements/ElementGroup;->reset()V

    .line 211
    :cond_8
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 221
    iget-object v2, p0, Llewa/laml/elements/ButtonScreenElement;->mNormalElements:Llewa/laml/elements/ElementGroup;

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Llewa/laml/elements/ButtonScreenElement;->mNormalElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v2}, Llewa/laml/elements/ElementGroup;->pause()V

    .line 223
    :cond_0
    iget-object v2, p0, Llewa/laml/elements/ButtonScreenElement;->mPressedElements:Llewa/laml/elements/ElementGroup;

    if-eqz v2, :cond_1

    .line 224
    iget-object v2, p0, Llewa/laml/elements/ButtonScreenElement;->mPressedElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v2}, Llewa/laml/elements/ElementGroup;->pause()V

    .line 225
    :cond_1
    iget-object v2, p0, Llewa/laml/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/CommandTrigger;

    .line 226
    .local v1, tri:Llewa/laml/CommandTrigger;
    invoke-virtual {v1}, Llewa/laml/CommandTrigger;->pause()V

    goto :goto_0

    .line 228
    .end local v1           #tri:Llewa/laml/CommandTrigger;
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Llewa/laml/elements/ButtonScreenElement;->mPressed:Z

    .line 229
    return-void
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 232
    invoke-super {p0, p1, p2}, Llewa/laml/elements/AnimatedScreenElement;->reset(J)V

    .line 233
    iget-object v0, p0, Llewa/laml/elements/ButtonScreenElement;->mNormalElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Llewa/laml/elements/ButtonScreenElement;->mNormalElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Llewa/laml/elements/ElementGroup;->reset(J)V

    .line 235
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/ButtonScreenElement;->mPressedElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Llewa/laml/elements/ButtonScreenElement;->mPressedElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Llewa/laml/elements/ElementGroup;->reset(J)V

    .line 237
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 240
    iget-object v2, p0, Llewa/laml/elements/ButtonScreenElement;->mNormalElements:Llewa/laml/elements/ElementGroup;

    if-eqz v2, :cond_0

    .line 241
    iget-object v2, p0, Llewa/laml/elements/ButtonScreenElement;->mNormalElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v2}, Llewa/laml/elements/ElementGroup;->resume()V

    .line 242
    :cond_0
    iget-object v2, p0, Llewa/laml/elements/ButtonScreenElement;->mPressedElements:Llewa/laml/elements/ElementGroup;

    if-eqz v2, :cond_1

    .line 243
    iget-object v2, p0, Llewa/laml/elements/ButtonScreenElement;->mPressedElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v2}, Llewa/laml/elements/ElementGroup;->resume()V

    .line 244
    :cond_1
    iget-object v2, p0, Llewa/laml/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/CommandTrigger;

    .line 245
    .local v1, tri:Llewa/laml/CommandTrigger;
    invoke-virtual {v1}, Llewa/laml/CommandTrigger;->resume()V

    goto :goto_0

    .line 247
    .end local v1           #tri:Llewa/laml/CommandTrigger;
    :cond_2
    return-void
.end method

.method public setListener(Llewa/laml/elements/ButtonScreenElement$ButtonActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 250
    iput-object p1, p0, Llewa/laml/elements/ButtonScreenElement;->mListener:Llewa/laml/elements/ButtonScreenElement$ButtonActionListener;

    .line 251
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1
    .parameter "category"
    .parameter "show"

    .prologue
    .line 254
    iget-object v0, p0, Llewa/laml/elements/ButtonScreenElement;->mNormalElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Llewa/laml/elements/ButtonScreenElement;->mNormalElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Llewa/laml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 256
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/ButtonScreenElement;->mPressedElements:Llewa/laml/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Llewa/laml/elements/ButtonScreenElement;->mPressedElements:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Llewa/laml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 258
    :cond_1
    return-void
.end method

.method public tick(J)V
    .locals 2
    .parameter "currentTime"

    .prologue
    .line 261
    invoke-super {p0, p1, p2}, Llewa/laml/elements/AnimatedScreenElement;->tick(J)V

    .line 262
    invoke-virtual {p0}, Llewa/laml/elements/ButtonScreenElement;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    invoke-direct {p0}, Llewa/laml/elements/ButtonScreenElement;->getCur()Llewa/laml/elements/ElementGroup;

    move-result-object v0

    .line 264
    .local v0, cur:Llewa/laml/elements/ElementGroup;
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0, p1, p2}, Llewa/laml/elements/ElementGroup;->tick(J)V

    .line 268
    .end local v0           #cur:Llewa/laml/elements/ElementGroup;
    :cond_0
    return-void
.end method

.method public touched(FF)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 271
    iget-object v5, p0, Llewa/laml/elements/ButtonScreenElement;->mParent:Llewa/laml/elements/ElementGroup;

    if-eqz v5, :cond_0

    iget-object v5, p0, Llewa/laml/elements/ButtonScreenElement;->mParent:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v5}, Llewa/laml/elements/ElementGroup;->getLeft()F

    move-result v3

    .line 272
    .local v3, parentX:F
    :goto_0
    iget-object v5, p0, Llewa/laml/elements/ButtonScreenElement;->mParent:Llewa/laml/elements/ElementGroup;

    if-eqz v5, :cond_1

    iget-object v4, p0, Llewa/laml/elements/ButtonScreenElement;->mParent:Llewa/laml/elements/ElementGroup;

    invoke-virtual {v4}, Llewa/laml/elements/ElementGroup;->getTop()F

    move-result v0

    .line 273
    .local v0, f:F
    :goto_1
    invoke-virtual {p0}, Llewa/laml/elements/ButtonScreenElement;->getX()F

    move-result v1

    .line 274
    .local v1, f1:F
    invoke-virtual {p0}, Llewa/laml/elements/ButtonScreenElement;->getY()F

    move-result v2

    .line 275
    .local v2, f2:F
    add-float v4, v3, v1

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_2

    add-float v4, v3, v1

    invoke-virtual {p0}, Llewa/laml/elements/ButtonScreenElement;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_2

    add-float v4, v0, v2

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_2

    add-float v4, v0, v2

    invoke-virtual {p0}, Llewa/laml/elements/ButtonScreenElement;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    return v4

    .end local v0           #f:F
    .end local v1           #f1:F
    .end local v2           #f2:F
    .end local v3           #parentX:F
    :cond_0
    move v3, v4

    .line 271
    goto :goto_0

    .restart local v3       #parentX:F
    :cond_1
    move v0, v4

    .line 272
    goto :goto_1

    .line 275
    .restart local v0       #f:F
    .restart local v1       #f1:F
    .restart local v2       #f2:F
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method
