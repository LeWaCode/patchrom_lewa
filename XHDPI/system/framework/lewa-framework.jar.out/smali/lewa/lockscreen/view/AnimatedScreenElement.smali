.class public abstract Llewa/lockscreen/view/AnimatedScreenElement;
.super Llewa/lockscreen/view/ScreenElement;
.source "AnimatedScreenElement.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimatedScreenElement"


# instance fields
.field protected mAni:Llewa/lockscreen/view/AnimatedElement;


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
    .line 15
    invoke-direct {p0, p1, p2}, Llewa/lockscreen/view/ScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    .line 16
    new-instance v0, Llewa/lockscreen/view/AnimatedElement;

    invoke-direct {v0, p1, p2}, Llewa/lockscreen/view/AnimatedElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    iput-object v0, p0, Llewa/lockscreen/view/AnimatedScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    .line 17
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Llewa/lockscreen/view/ScreenElement;->finish()V

    .line 41
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v0}, Llewa/lockscreen/view/AnimatedElement;->finish()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/lockscreen/view/AnimatedScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    .line 46
    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v0}, Llewa/lockscreen/view/AnimatedElement;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v0}, Llewa/lockscreen/view/AnimatedElement;->getWidth()I

    move-result v0

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v0}, Llewa/lockscreen/view/AnimatedElement;->getX()I

    move-result v0

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v0}, Llewa/lockscreen/view/AnimatedElement;->getY()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v0}, Llewa/lockscreen/view/AnimatedElement;->init()V

    .line 37
    return-void
.end method

.method public tick(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 49
    invoke-virtual {p0}, Llewa/lockscreen/view/AnimatedScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v0, p1, p2}, Llewa/lockscreen/view/AnimatedElement;->tick(J)V

    .line 53
    iget-object v0, p0, Llewa/lockscreen/view/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const-string v0, "actual_x"

    iget-object v1, p0, Llewa/lockscreen/view/AnimatedScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v1}, Llewa/lockscreen/view/AnimatedElement;->getX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llewa/lockscreen/view/Expression;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "actual_y"

    iget-object v1, p0, Llewa/lockscreen/view/AnimatedScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v1}, Llewa/lockscreen/view/AnimatedElement;->getY()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llewa/lockscreen/view/Expression;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
