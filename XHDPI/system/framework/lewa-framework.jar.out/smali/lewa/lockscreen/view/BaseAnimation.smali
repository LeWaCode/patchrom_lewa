.class public abstract Llewa/lockscreen/view/BaseAnimation;
.super Ljava/lang/Object;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/lockscreen/view/BaseAnimation$AnimationItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseAnimation"


# instance fields
.field protected element:Lorg/w3c/dom/Element;

.field protected mAnimationItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/lockscreen/view/BaseAnimation$AnimationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mShowFirst:Z

.field private mStartTime:J

.field private mTimeNoShow:J

.field private mTimeRange:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 1
    .parameter "element"
    .parameter "tagName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/lockscreen/view/BaseAnimation;->mShowFirst:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/lockscreen/view/BaseAnimation;->mAnimationItems:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Llewa/lockscreen/view/BaseAnimation;->element:Lorg/w3c/dom/Element;

    .line 37
    invoke-direct {p0, p1, p2}, Llewa/lockscreen/view/BaseAnimation;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 10
    .parameter "element"
    .parameter "tagName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v8, p0, Llewa/lockscreen/view/BaseAnimation;->mAnimationItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 43
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 45
    .local v5, nodeList:Lorg/w3c/dom/NodeList;
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 46
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 47
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 48
    .local v1, childElement:Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Llewa/lockscreen/view/BaseAnimation;->onCreateItem()Llewa/lockscreen/view/BaseAnimation$AnimationItem;

    move-result-object v8

    invoke-virtual {v8, v1}, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->load(Lorg/w3c/dom/Element;)Llewa/lockscreen/view/BaseAnimation$AnimationItem;

    move-result-object v0

    .line 49
    .local v0, animationItem:Llewa/lockscreen/view/BaseAnimation$AnimationItem;
    iget-object v8, p0, Llewa/lockscreen/view/BaseAnimation;->mAnimationItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    .end local v0           #animationItem:Llewa/lockscreen/view/BaseAnimation$AnimationItem;
    .end local v1           #childElement:Lorg/w3c/dom/Element;
    :cond_0
    const/4 v2, 0x0

    .line 54
    .local v2, hasItems:Z
    iget-object v8, p0, Llewa/lockscreen/view/BaseAnimation;->mAnimationItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 55
    const/4 v2, 0x1

    .line 58
    :cond_1
    const-string v8, "BaseAnimation: empty items"

    invoke-static {v2, v8}, Llewa/lockscreen/view/Utils;->asserts(ZLjava/lang/String;)V

    .line 60
    iget-object v8, p0, Llewa/lockscreen/view/BaseAnimation;->mAnimationItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    .line 62
    .local v7, size:I
    iget-object v8, p0, Llewa/lockscreen/view/BaseAnimation;->mAnimationItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Llewa/lockscreen/view/BaseAnimation$AnimationItem;

    iget-wide v8, v8, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v8, p0, Llewa/lockscreen/view/BaseAnimation;->mTimeRange:J

    .line 63
    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 64
    iget-object v8, p0, Llewa/lockscreen/view/BaseAnimation;->mAnimationItems:Ljava/util/ArrayList;

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Llewa/lockscreen/view/BaseAnimation$AnimationItem;

    iget-wide v8, v8, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v8, p0, Llewa/lockscreen/view/BaseAnimation;->mTimeNoShow:J

    .line 66
    :cond_2
    const-string v8, "showFirst"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, showFirst:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 68
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Llewa/lockscreen/view/BaseAnimation;->mShowFirst:Z

    .line 70
    :cond_3
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llewa/lockscreen/view/BaseAnimation;->mStartTime:J

    .line 74
    return-void
.end method

.method protected abstract onCreateItem()Llewa/lockscreen/view/BaseAnimation$AnimationItem;
.end method

.method protected abstract onTick(Llewa/lockscreen/view/BaseAnimation$AnimationItem;Llewa/lockscreen/view/BaseAnimation$AnimationItem;F)V
.end method

.method public final tick(J)V
    .locals 23
    .parameter "time"

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget-wide v0, v0, Llewa/lockscreen/view/BaseAnimation;->mStartTime:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_0

    .line 82
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Llewa/lockscreen/view/BaseAnimation;->mStartTime:J

    .line 84
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Llewa/lockscreen/view/BaseAnimation;->mStartTime:J

    move-wide/from16 v19, v0

    sub-long v17, p1, v19

    .line 85
    .local v17, tempTime:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llewa/lockscreen/view/BaseAnimation;->mShowFirst:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 86
    move-object/from16 v0, p0

    iget-wide v0, v0, Llewa/lockscreen/view/BaseAnimation;->mTimeNoShow:J

    move-wide/from16 v19, v0

    cmp-long v19, v17, v19

    if-gez v19, :cond_3

    .line 87
    move-object/from16 v0, p0

    iget-wide v0, v0, Llewa/lockscreen/view/BaseAnimation;->mTimeNoShow:J

    move-wide/from16 v17, v0

    .line 92
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Llewa/lockscreen/view/BaseAnimation;->mTimeRange:J

    move-wide/from16 v19, v0

    rem-long v3, v17, v19

    .line 94
    .local v3, currentTime:J
    const/4 v9, 0x0

    .line 96
    .local v9, prefixAI:Llewa/lockscreen/view/BaseAnimation$AnimationItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/BaseAnimation;->mAnimationItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 97
    .local v13, size:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v13, :cond_2

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/BaseAnimation;->mAnimationItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Llewa/lockscreen/view/BaseAnimation$AnimationItem;

    .line 99
    .local v14, suffixAI:Llewa/lockscreen/view/BaseAnimation$AnimationItem;
    iget-wide v15, v14, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->mTime:J

    .line 100
    .local v15, suffixItemTime:J
    cmp-long v19, v3, v15

    if-gtz v19, :cond_6

    .line 104
    const-wide/16 v5, 0x0

    .line 108
    .local v5, deltaTwoAnimationsTime:J
    const-wide/16 v10, 0x0

    .line 109
    .local v10, prefixAITime:J
    const/4 v12, 0x0

    .line 110
    .local v12, rate:F
    if-nez v7, :cond_4

    .line 111
    move-wide v5, v15

    .line 126
    :goto_2
    const-wide/16 v19, 0x0

    cmp-long v19, v5, v19

    if-nez v19, :cond_5

    .line 127
    const/high16 v12, 0x3f80

    .line 131
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14, v12}, Llewa/lockscreen/view/BaseAnimation;->onTick(Llewa/lockscreen/view/BaseAnimation$AnimationItem;Llewa/lockscreen/view/BaseAnimation$AnimationItem;F)V

    .line 136
    .end local v5           #deltaTwoAnimationsTime:J
    .end local v10           #prefixAITime:J
    .end local v12           #rate:F
    .end local v14           #suffixAI:Llewa/lockscreen/view/BaseAnimation$AnimationItem;
    .end local v15           #suffixItemTime:J
    :cond_2
    return-void

    .line 89
    .end local v3           #currentTime:J
    .end local v7           #i:I
    .end local v9           #prefixAI:Llewa/lockscreen/view/BaseAnimation$AnimationItem;
    .end local v13           #size:I
    :cond_3
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Llewa/lockscreen/view/BaseAnimation;->mShowFirst:Z

    goto :goto_0

    .line 116
    .restart local v3       #currentTime:J
    .restart local v5       #deltaTwoAnimationsTime:J
    .restart local v7       #i:I
    .restart local v9       #prefixAI:Llewa/lockscreen/view/BaseAnimation$AnimationItem;
    .restart local v10       #prefixAITime:J
    .restart local v12       #rate:F
    .restart local v13       #size:I
    .restart local v14       #suffixAI:Llewa/lockscreen/view/BaseAnimation$AnimationItem;
    .restart local v15       #suffixItemTime:J
    :cond_4
    add-int/lit8 v8, v7, -0x1

    .line 117
    .local v8, k:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/BaseAnimation;->mAnimationItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #prefixAI:Llewa/lockscreen/view/BaseAnimation$AnimationItem;
    check-cast v9, Llewa/lockscreen/view/BaseAnimation$AnimationItem;

    .line 121
    .restart local v9       #prefixAI:Llewa/lockscreen/view/BaseAnimation$AnimationItem;
    iget-wide v0, v14, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->mTime:J

    move-wide/from16 v19, v0

    iget-wide v0, v9, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->mTime:J

    move-wide/from16 v21, v0

    sub-long v5, v19, v21

    .line 123
    iget-wide v10, v9, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->mTime:J

    goto :goto_2

    .line 129
    .end local v8           #k:I
    :cond_5
    sub-long v19, v3, v10

    move-wide/from16 v0, v19

    long-to-float v0, v0

    move/from16 v19, v0

    iget-wide v0, v14, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->mTime:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v10

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    div-float v12, v19, v20

    goto :goto_3

    .line 97
    .end local v5           #deltaTwoAnimationsTime:J
    .end local v10           #prefixAITime:J
    .end local v12           #rate:F
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method
