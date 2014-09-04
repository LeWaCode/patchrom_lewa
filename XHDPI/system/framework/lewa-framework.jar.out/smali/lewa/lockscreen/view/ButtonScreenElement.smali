.class public Llewa/lockscreen/view/ButtonScreenElement;
.super Llewa/lockscreen/view/AnimatedScreenElement;
.source "ButtonScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/lockscreen/view/ButtonScreenElement$ButtonActionListener;,
        Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;,
        Llewa/lockscreen/view/ButtonScreenElement$Property;,
        Llewa/lockscreen/view/ButtonScreenElement$VisibilityProperty;,
        Llewa/lockscreen/view/ButtonScreenElement$Trigger;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ButtonScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Button"


# instance fields
.field private final NORMAL:Ljava/lang/String;

.field private final PRESSED:Ljava/lang/String;

.field private final TRIGGER:Ljava/lang/String;

.field private final TRIGGERS:Ljava/lang/String;

.field private mListener:Llewa/lockscreen/view/ButtonScreenElement$ButtonActionListener;

.field private mListenerName:Ljava/lang/String;

.field private mNormalElements:Llewa/lockscreen/view/ElementGroup;

.field private mParent:Llewa/lockscreen/view/AnimatedScreenElement;

.field private mPressed:Z

.field private mPressedElements:Llewa/lockscreen/view/ElementGroup;

.field private mPreviousTapPositionX:I

.field private mPreviousTapPositionY:I

.field private mPreviousTapUpTime:J

.field private mTriggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/lockscreen/view/ButtonScreenElement$Trigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V
    .locals 1
    .parameter "element"
    .parameter "screenContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Llewa/lockscreen/view/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    .line 33
    const-string v0, "Normal"

    iput-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->NORMAL:Ljava/lang/String;

    .line 34
    const-string v0, "Pressed"

    iput-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->PRESSED:Ljava/lang/String;

    .line 35
    const-string v0, "Triggers"

    iput-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->TRIGGERS:Ljava/lang/String;

    .line 36
    const-string v0, "Trigger"

    iput-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->TRIGGER:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    .line 42
    const-string v0, "listener"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    .line 43
    invoke-virtual {p0, p1}, Llewa/lockscreen/view/ButtonScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 45
    return-void
.end method

.method private getCurrentElementGroup()Llewa/lockscreen/view/ElementGroup;
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mPressed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mPressedElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mPressedElements:Llewa/lockscreen/view/ElementGroup;

    .line 225
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mNormalElements:Llewa/lockscreen/view/ElementGroup;

    goto :goto_0
.end method

.method private performAction(Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;)V
    .locals 4
    .parameter "buttonaction"

    .prologue
    .line 231
    iget-object v3, p0, Llewa/lockscreen/view/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 232
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 233
    iget-object v3, p0, Llewa/lockscreen/view/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/lockscreen/view/ButtonScreenElement$Trigger;

    .line 234
    .local v2, trigger:Llewa/lockscreen/view/ButtonScreenElement$Trigger;
    invoke-virtual {v2}, Llewa/lockscreen/view/ButtonScreenElement$Trigger;->getAction()Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 235
    invoke-virtual {v2}, Llewa/lockscreen/view/ButtonScreenElement$Trigger;->perform()V

    .line 232
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    .end local v2           #trigger:Llewa/lockscreen/view/ButtonScreenElement$Trigger;
    :cond_1
    return-void
.end method

.method private touched(II)Z
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v10, 0x0

    .line 406
    const/4 v4, 0x0

    .line 407
    .local v4, parentX:I
    const/4 v5, 0x0

    .line 409
    .local v5, parentY:I
    iget-object v11, p0, Llewa/lockscreen/view/ButtonScreenElement;->mParent:Llewa/lockscreen/view/AnimatedScreenElement;

    if-eqz v11, :cond_1

    .line 410
    iget-object v11, p0, Llewa/lockscreen/view/ButtonScreenElement;->mParent:Llewa/lockscreen/view/AnimatedScreenElement;

    invoke-virtual {v11}, Llewa/lockscreen/view/AnimatedScreenElement;->getX()I

    move-result v4

    .line 411
    iget-object v11, p0, Llewa/lockscreen/view/ButtonScreenElement;->mParent:Llewa/lockscreen/view/AnimatedScreenElement;

    invoke-virtual {v11}, Llewa/lockscreen/view/AnimatedScreenElement;->getY()I

    move-result v5

    .line 417
    :goto_0
    iget-object v11, p0, Llewa/lockscreen/view/ButtonScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v11}, Llewa/lockscreen/view/AnimatedElement;->getX()I

    move-result v0

    .line 418
    .local v0, animX:I
    iget-object v11, p0, Llewa/lockscreen/view/ButtonScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v11}, Llewa/lockscreen/view/AnimatedElement;->getY()I

    move-result v1

    .line 420
    .local v1, animY:I
    add-int v6, v4, v0

    .line 421
    .local v6, parent_anim_x:I
    if-ge p1, v6, :cond_2

    .line 441
    :cond_0
    :goto_1
    return v10

    .line 413
    .end local v0           #animX:I
    .end local v1           #animY:I
    .end local v6           #parent_anim_x:I
    :cond_1
    const/4 v4, 0x0

    .line 414
    const/4 v5, 0x0

    goto :goto_0

    .line 425
    .restart local v0       #animX:I
    .restart local v1       #animY:I
    .restart local v6       #parent_anim_x:I
    :cond_2
    iget-object v11, p0, Llewa/lockscreen/view/ButtonScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v11}, Llewa/lockscreen/view/AnimatedElement;->getWidth()I

    move-result v3

    .line 426
    .local v3, anim_width:I
    add-int v7, v6, v3

    .line 427
    .local v7, parent_anim_x_width:I
    if-gt p1, v7, :cond_0

    .line 431
    add-int v8, v5, v1

    .line 432
    .local v8, parent_anim_y:I
    if-lt p2, v8, :cond_0

    .line 436
    iget-object v11, p0, Llewa/lockscreen/view/ButtonScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v11}, Llewa/lockscreen/view/AnimatedElement;->getHeight()I

    move-result v2

    .line 437
    .local v2, anim_height:I
    add-int v9, v8, v2

    .line 438
    .local v9, parent_anim_y_height:I
    if-gt p2, v9, :cond_0

    .line 441
    const/4 v10, 0x1

    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mNormalElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mNormalElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0}, Llewa/lockscreen/view/ElementGroup;->finish()V

    .line 244
    :cond_0
    iget-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mPressedElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mPressedElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0}, Llewa/lockscreen/view/ElementGroup;->finish()V

    .line 247
    :cond_1
    invoke-super {p0}, Llewa/lockscreen/view/AnimatedScreenElement;->finish()V

    .line 248
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    .line 252
    iget-object v3, p0, Llewa/lockscreen/view/ButtonScreenElement;->mNormalElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v3, :cond_0

    .line 253
    iget-object v3, p0, Llewa/lockscreen/view/ButtonScreenElement;->mNormalElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v3}, Llewa/lockscreen/view/ElementGroup;->init()V

    .line 255
    :cond_0
    iget-object v3, p0, Llewa/lockscreen/view/ButtonScreenElement;->mPressedElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v3, :cond_1

    .line 256
    iget-object v3, p0, Llewa/lockscreen/view/ButtonScreenElement;->mPressedElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v3}, Llewa/lockscreen/view/ElementGroup;->init()V

    .line 258
    :cond_1
    iget-object v3, p0, Llewa/lockscreen/view/ButtonScreenElement;->mListener:Llewa/lockscreen/view/ButtonScreenElement$ButtonActionListener;

    if-eqz v3, :cond_3

    .line 271
    :cond_2
    :goto_0
    return-void

    .line 261
    :cond_3
    iget-object v3, p0, Llewa/lockscreen/view/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 264
    iget-object v3, p0, Llewa/lockscreen/view/ButtonScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v2, v3, Llewa/lockscreen/view/ScreenContext;->mRoot:Llewa/lockscreen/view/ScreenElement;

    .line 265
    .local v2, screenelement:Llewa/lockscreen/view/ScreenElement;
    iget-object v3, p0, Llewa/lockscreen/view/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Llewa/lockscreen/view/ScreenElement;->findElement(Ljava/lang/String;)Llewa/lockscreen/view/ScreenElement;

    move-result-object v0

    .line 267
    .local v0, btnListener:Llewa/lockscreen/view/ScreenElement;
    :try_start_0
    check-cast v0, Llewa/lockscreen/view/ButtonScreenElement$ButtonActionListener;

    .end local v0           #btnListener:Llewa/lockscreen/view/ScreenElement;
    iput-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mListener:Llewa/lockscreen/view/ButtonScreenElement$ButtonActionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, classcastexception:Ljava/lang/ClassCastException;
    const-string v3, "ButtonScreenElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "button listener designated by the name is not actually a listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Llewa/lockscreen/view/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 10
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 50
    const-string v8, "ButtonScreenElement"

    const-string v9, "node is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v8, Llewa/lockscreen/view/DomParseException;

    const-string v9, "node is null"

    invoke-direct {v8, v9}, Llewa/lockscreen/view/DomParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 54
    :cond_0
    const-string v8, "Normal"

    invoke-static {p1, v8}, Llewa/lockscreen/view/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 55
    .local v3, normalElement:Lorg/w3c/dom/Element;
    if-eqz v3, :cond_1

    .line 56
    new-instance v8, Llewa/lockscreen/view/ElementGroup;

    iget-object v9, p0, Llewa/lockscreen/view/ButtonScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    invoke-direct {v8, v3, v9}, Llewa/lockscreen/view/ElementGroup;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    iput-object v8, p0, Llewa/lockscreen/view/ButtonScreenElement;->mNormalElements:Llewa/lockscreen/view/ElementGroup;

    .line 59
    :cond_1
    const-string v8, "Pressed"

    invoke-static {p1, v8}, Llewa/lockscreen/view/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 60
    .local v4, pressedElement:Lorg/w3c/dom/Element;
    if-eqz v4, :cond_2

    .line 61
    new-instance v8, Llewa/lockscreen/view/ElementGroup;

    iget-object v9, p0, Llewa/lockscreen/view/ButtonScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    invoke-direct {v8, v4, v9}, Llewa/lockscreen/view/ElementGroup;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    iput-object v8, p0, Llewa/lockscreen/view/ButtonScreenElement;->mPressedElements:Llewa/lockscreen/view/ElementGroup;

    .line 64
    :cond_2
    const-string v8, "Triggers"

    invoke-static {p1, v8}, Llewa/lockscreen/view/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 65
    .local v7, triggersElement:Lorg/w3c/dom/Element;
    if-nez v7, :cond_4

    .line 81
    :cond_3
    return-void

    .line 68
    :cond_4
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 70
    .local v2, nodeList:Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 72
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 73
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 74
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 75
    .local v6, triggerElement:Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Trigger"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 76
    new-instance v5, Llewa/lockscreen/view/ButtonScreenElement$Trigger;

    invoke-direct {v5, p0, v6}, Llewa/lockscreen/view/ButtonScreenElement$Trigger;-><init>(Llewa/lockscreen/view/ButtonScreenElement;Lorg/w3c/dom/Element;)V

    .line 77
    .local v5, trigger:Llewa/lockscreen/view/ButtonScreenElement$Trigger;
    iget-object v8, p0, Llewa/lockscreen/view/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v5           #trigger:Llewa/lockscreen/view/ButtonScreenElement$Trigger;
    .end local v6           #triggerElement:Lorg/w3c/dom/Element;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 17
    .parameter "motionevent"

    .prologue
    .line 275
    invoke-virtual/range {p0 .. p0}, Llewa/lockscreen/view/ButtonScreenElement;->isVisible()Z

    move-result v13

    if-nez v13, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 279
    .local v11, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 281
    .local v12, y:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 282
    .local v1, action:I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 285
    :pswitch_0
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Llewa/lockscreen/view/ButtonScreenElement;->touched(II)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 288
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Llewa/lockscreen/view/ButtonScreenElement;->mPressed:Z

    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, Llewa/lockscreen/view/ButtonScreenElement;->mListener:Llewa/lockscreen/view/ButtonScreenElement$ButtonActionListener;

    if-eqz v13, :cond_2

    .line 290
    move-object/from16 v0, p0

    iget-object v13, v0, Llewa/lockscreen/view/ButtonScreenElement;->mListener:Llewa/lockscreen/view/ButtonScreenElement$ButtonActionListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Llewa/lockscreen/view/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v13, v14}, Llewa/lockscreen/view/ButtonScreenElement$ButtonActionListener;->onButtonDown(Ljava/lang/String;)Z

    .line 292
    :cond_2
    sget-object v13, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;->Down:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Llewa/lockscreen/view/ButtonScreenElement;->performAction(Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;)V

    .line 294
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Llewa/lockscreen/view/ButtonScreenElement;->mPreviousTapUpTime:J

    sub-long v4, v13, v15

    .line 295
    .local v4, detlaTapUpTime:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v13

    int-to-long v7, v13

    .line 296
    .local v7, doubleClickTimeOut:J
    cmp-long v13, v4, v7

    if-gtz v13, :cond_4

    .line 297
    move-object/from16 v0, p0

    iget v13, v0, Llewa/lockscreen/view/ButtonScreenElement;->mPreviousTapPositionX:I

    sub-int v2, v11, v13

    .line 298
    .local v2, detlaTapPositionX:I
    move-object/from16 v0, p0

    iget v13, v0, Llewa/lockscreen/view/ButtonScreenElement;->mPreviousTapPositionY:I

    sub-int v3, v12, v13

    .line 300
    .local v3, detlaTapPositionY:I
    mul-int v13, v2, v2

    mul-int v14, v3, v3

    add-int v6, v13, v14

    .line 301
    .local v6, dist:I
    move-object/from16 v0, p0

    iget-object v13, v0, Llewa/lockscreen/view/ButtonScreenElement;->context:Landroid/content/Context;

    invoke-static {v13}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v9

    .line 302
    .local v9, i:I
    mul-int v10, v9, v9

    .line 304
    .local v10, j:I
    if-ge v6, v10, :cond_4

    .line 305
    move-object/from16 v0, p0

    iget-object v13, v0, Llewa/lockscreen/view/ButtonScreenElement;->mListener:Llewa/lockscreen/view/ButtonScreenElement$ButtonActionListener;

    if-eqz v13, :cond_3

    .line 306
    move-object/from16 v0, p0

    iget-object v13, v0, Llewa/lockscreen/view/ButtonScreenElement;->mListener:Llewa/lockscreen/view/ButtonScreenElement$ButtonActionListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Llewa/lockscreen/view/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v13, v14}, Llewa/lockscreen/view/ButtonScreenElement$ButtonActionListener;->onButtonDoubleClick(Ljava/lang/String;)Z

    .line 308
    :cond_3
    sget-object v13, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;->Double:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Llewa/lockscreen/view/ButtonScreenElement;->performAction(Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;)V

    .line 311
    .end local v2           #detlaTapPositionX:I
    .end local v3           #detlaTapPositionY:I
    .end local v6           #dist:I
    .end local v9           #i:I
    .end local v10           #j:I
    :cond_4
    move-object/from16 v0, p0

    iput v11, v0, Llewa/lockscreen/view/ButtonScreenElement;->mPreviousTapPositionX:I

    .line 312
    move-object/from16 v0, p0

    iput v12, v0, Llewa/lockscreen/view/ButtonScreenElement;->mPreviousTapPositionY:I

    goto/16 :goto_0

    .line 317
    .end local v4           #detlaTapUpTime:J
    .end local v7           #doubleClickTimeOut:J
    :pswitch_1
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Llewa/lockscreen/view/ButtonScreenElement;->touched(II)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Llewa/lockscreen/view/ButtonScreenElement;->mPressed:Z

    goto/16 :goto_0

    .line 322
    :pswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Llewa/lockscreen/view/ButtonScreenElement;->touched(II)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 323
    move-object/from16 v0, p0

    iget-object v13, v0, Llewa/lockscreen/view/ButtonScreenElement;->mListener:Llewa/lockscreen/view/ButtonScreenElement$ButtonActionListener;

    if-eqz v13, :cond_5

    .line 324
    move-object/from16 v0, p0

    iget-object v13, v0, Llewa/lockscreen/view/ButtonScreenElement;->mListener:Llewa/lockscreen/view/ButtonScreenElement$ButtonActionListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Llewa/lockscreen/view/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v13, v14}, Llewa/lockscreen/view/ButtonScreenElement$ButtonActionListener;->onButtonUp(Ljava/lang/String;)Z

    .line 327
    :cond_5
    sget-object v13, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;->Up:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Llewa/lockscreen/view/ButtonScreenElement;->performAction(Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;)V

    .line 328
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Llewa/lockscreen/view/ButtonScreenElement;->mPreviousTapUpTime:J

    .line 330
    :cond_6
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Llewa/lockscreen/view/ButtonScreenElement;->mPressed:Z

    goto/16 :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mNormalElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mNormalElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0}, Llewa/lockscreen/view/ElementGroup;->pause()V

    .line 346
    :cond_0
    iget-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mPressedElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mPressedElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0}, Llewa/lockscreen/view/ElementGroup;->pause()V

    .line 349
    :cond_1
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 352
    invoke-virtual {p0}, Llewa/lockscreen/view/ButtonScreenElement;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-direct {p0}, Llewa/lockscreen/view/ButtonScreenElement;->getCurrentElementGroup()Llewa/lockscreen/view/ElementGroup;

    move-result-object v0

    .line 357
    .local v0, elementgroup:Llewa/lockscreen/view/ElementGroup;
    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0, p1}, Llewa/lockscreen/view/ElementGroup;->render(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mNormalElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mNormalElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0}, Llewa/lockscreen/view/ElementGroup;->resume()V

    .line 368
    :cond_0
    iget-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mPressedElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mPressedElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0}, Llewa/lockscreen/view/ElementGroup;->resume()V

    .line 371
    :cond_1
    return-void
.end method

.method public setListener(Llewa/lockscreen/view/ButtonScreenElement$ButtonActionListener;)V
    .locals 0
    .parameter "buttonactionlistener"

    .prologue
    .line 374
    iput-object p1, p0, Llewa/lockscreen/view/ButtonScreenElement;->mListener:Llewa/lockscreen/view/ButtonScreenElement$ButtonActionListener;

    .line 375
    return-void
.end method

.method public setParent(Llewa/lockscreen/view/AnimatedScreenElement;)V
    .locals 0
    .parameter "animatedscreenelement"

    .prologue
    .line 378
    iput-object p1, p0, Llewa/lockscreen/view/ButtonScreenElement;->mParent:Llewa/lockscreen/view/AnimatedScreenElement;

    .line 379
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1
    .parameter "category"
    .parameter "flag"

    .prologue
    .line 383
    iget-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mNormalElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mNormalElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0, p1, p2}, Llewa/lockscreen/view/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 387
    :cond_0
    iget-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mPressedElements:Llewa/lockscreen/view/ElementGroup;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement;->mPressedElements:Llewa/lockscreen/view/ElementGroup;

    invoke-virtual {v0, p1, p2}, Llewa/lockscreen/view/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 390
    :cond_1
    return-void
.end method

.method public tick(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 394
    invoke-virtual {p0}, Llewa/lockscreen/view/ButtonScreenElement;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    invoke-direct {p0}, Llewa/lockscreen/view/ButtonScreenElement;->getCurrentElementGroup()Llewa/lockscreen/view/ElementGroup;

    move-result-object v0

    .line 398
    .local v0, elementgroup:Llewa/lockscreen/view/ElementGroup;
    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0, p1, p2}, Llewa/lockscreen/view/ElementGroup;->tick(J)V

    goto :goto_0
.end method
