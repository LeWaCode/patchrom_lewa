.class public Llewa/laml/animation/BaseAnimation$AnimationItem;
.super Ljava/lang/Object;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/animation/BaseAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationItem"
.end annotation


# instance fields
.field private mAttrs:[Ljava/lang/String;

.field public mExps:[Llewa/laml/data/Expression;

.field private mRoot:Llewa/laml/ScreenElementRoot;

.field public mTime:J


# direct methods
.method public constructor <init>([Ljava/lang/String;Llewa/laml/ScreenElementRoot;)V
    .locals 0
    .parameter "attrs"
    .parameter "root"

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Llewa/laml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    .line 154
    iput-object p2, p0, Llewa/laml/animation/BaseAnimation$AnimationItem;->mRoot:Llewa/laml/ScreenElementRoot;

    .line 155
    return-void
.end method


# virtual methods
.method public get(I)D
    .locals 3
    .parameter "i"

    .prologue
    .line 125
    if-ltz p1, :cond_0

    iget-object v0, p0, Llewa/laml/animation/BaseAnimation$AnimationItem;->mExps:[Llewa/laml/data/Expression;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Llewa/laml/animation/BaseAnimation$AnimationItem;->mExps:[Llewa/laml/data/Expression;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Llewa/laml/animation/BaseAnimation$AnimationItem;->mExps:[Llewa/laml/data/Expression;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Llewa/laml/animation/BaseAnimation$AnimationItem;->mExps:[Llewa/laml/data/Expression;

    aget-object v0, v0, p1

    iget-object v1, p0, Llewa/laml/animation/BaseAnimation$AnimationItem;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v1}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v0, v1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    .line 131
    :goto_0
    return-wide v0

    .line 129
    :cond_0
    const-string v0, "BaseAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to get number in AnimationItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public load(Lorg/w3c/dom/Element;)Llewa/laml/animation/BaseAnimation$AnimationItem;
    .locals 4
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    const-string v2, "time"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Llewa/laml/animation/BaseAnimation$AnimationItem;->mTime:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    iget-object v2, p0, Llewa/laml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Llewa/laml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Llewa/laml/data/Expression;

    iput-object v2, p0, Llewa/laml/animation/BaseAnimation$AnimationItem;->mExps:[Llewa/laml/data/Expression;

    .line 143
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Llewa/laml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 144
    iget-object v2, p0, Llewa/laml/animation/BaseAnimation$AnimationItem;->mExps:[Llewa/laml/data/Expression;

    iget-object v3, p0, Llewa/laml/animation/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v3

    aput-object v3, v2, v0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v0           #i:I
    :catch_0
    move-exception v1

    .line 138
    .local v1, numberformatexception:Ljava/lang/NumberFormatException;
    const-string v2, "BaseAnimation"

    const-string v3, "fail to get time attribute"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v2, Llewa/laml/ScreenElementLoadException;

    const-string v3, "fail to get time attribute"

    invoke-direct {v2, v3}, Llewa/laml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    .end local v1           #numberformatexception:Ljava/lang/NumberFormatException;
    :cond_0
    return-object p0
.end method
