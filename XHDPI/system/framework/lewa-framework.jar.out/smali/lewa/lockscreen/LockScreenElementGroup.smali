.class public Llewa/lockscreen/LockScreenElementGroup;
.super Llewa/lockscreen/view/ElementGroup;
.source "LockScreenElementGroup.java"

# interfaces
.implements Llewa/lockscreen/UnlockerListener;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V
    .locals 0
    .parameter "element"
    .parameter "screenContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Llewa/lockscreen/view/ElementGroup;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    .line 15
    return-void
.end method


# virtual methods
.method public endUnlockMoving(Llewa/lockscreen/UnlockerScreenElement;)V
    .locals 4
    .parameter "unlockerscreenelement"

    .prologue
    .line 19
    iget-object v3, p0, Llewa/lockscreen/LockScreenElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 20
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 21
    iget-object v3, p0, Llewa/lockscreen/LockScreenElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/lockscreen/view/ScreenElement;

    .line 22
    .local v1, screenElement:Llewa/lockscreen/view/ScreenElement;
    instance-of v3, v1, Llewa/lockscreen/UnlockerListener;

    if-eqz v3, :cond_0

    .line 23
    check-cast v1, Llewa/lockscreen/UnlockerListener;

    .end local v1           #screenElement:Llewa/lockscreen/view/ScreenElement;
    invoke-interface {v1, p1}, Llewa/lockscreen/UnlockerListener;->endUnlockMoving(Llewa/lockscreen/UnlockerScreenElement;)V

    .line 20
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method public startUnlockMoving(Llewa/lockscreen/UnlockerScreenElement;)V
    .locals 4
    .parameter "unlockerscreenelement"

    .prologue
    .line 31
    iget-object v3, p0, Llewa/lockscreen/LockScreenElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 32
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 33
    iget-object v3, p0, Llewa/lockscreen/LockScreenElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/lockscreen/view/ScreenElement;

    .line 34
    .local v1, screenElement:Llewa/lockscreen/view/ScreenElement;
    instance-of v3, v1, Llewa/lockscreen/UnlockerListener;

    if-eqz v3, :cond_0

    .line 35
    check-cast v1, Llewa/lockscreen/UnlockerListener;

    .end local v1           #screenElement:Llewa/lockscreen/view/ScreenElement;
    invoke-interface {v1, p1}, Llewa/lockscreen/UnlockerListener;->startUnlockMoving(Llewa/lockscreen/UnlockerScreenElement;)V

    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method
