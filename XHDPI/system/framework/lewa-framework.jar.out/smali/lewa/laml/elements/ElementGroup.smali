.class public Llewa/laml/elements/ElementGroup;
.super Llewa/laml/elements/AnimatedScreenElement;
.source "ElementGroup.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LockScreen_ElementGroup"

.field public static final TAG_NAME:Ljava/lang/String; = "ElementGroup"

.field public static final TAG_NAME1:Ljava/lang/String; = "Group"


# instance fields
.field private mClip:Z

.field protected mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/elements/ScreenElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 27
    const-string v0, "clip"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Llewa/laml/elements/ElementGroup;->mClip:Z

    .line 28
    invoke-virtual {p0, p1, p2}, Llewa/laml/elements/ElementGroup;->load(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 29
    return-void
.end method


# virtual methods
.method public addElement(Llewa/laml/elements/ScreenElement;)V
    .locals 1
    .parameter "newElement"

    .prologue
    .line 32
    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1, p0}, Llewa/laml/elements/ScreenElement;->setParent(Llewa/laml/elements/ElementGroup;)V

    .line 34
    iget-object v0, p0, Llewa/laml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    return-void
.end method

.method public doRender(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "c"

    .prologue
    const/4 v8, 0x0

    .line 39
    invoke-virtual {p0}, Llewa/laml/elements/ElementGroup;->isVisible()Z

    move-result v7

    if-nez v7, :cond_0

    .line 56
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0}, Llewa/laml/elements/ElementGroup;->getX()F

    move-result v5

    .line 43
    .local v5, x:F
    invoke-virtual {p0}, Llewa/laml/elements/ElementGroup;->getY()F

    move-result v6

    .line 44
    .local v6, y:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 45
    .local v3, rs:I
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 47
    invoke-virtual {p0}, Llewa/laml/elements/ElementGroup;->getWidth()F

    move-result v4

    .line 48
    .local v4, w:F
    invoke-virtual {p0}, Llewa/laml/elements/ElementGroup;->getHeight()F

    move-result v1

    .line 49
    .local v1, h:F
    cmpl-float v7, v4, v8

    if-lez v7, :cond_1

    cmpl-float v7, v1, v8

    if-lez v7, :cond_1

    iget-boolean v7, p0, Llewa/laml/elements/ElementGroup;->mClip:Z

    if-eqz v7, :cond_1

    .line 50
    invoke-virtual {p1, v8, v8, v4, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 52
    :cond_1
    iget-object v7, p0, Llewa/laml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/ScreenElement;

    .line 53
    .local v0, e:Llewa/laml/elements/ScreenElement;
    invoke-virtual {v0, p1}, Llewa/laml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 55
    .end local v0           #e:Llewa/laml/elements/ScreenElement;
    :cond_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;
    .locals 4
    .parameter "name"

    .prologue
    .line 59
    invoke-super {p0, p1}, Llewa/laml/elements/AnimatedScreenElement;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v1

    .line 60
    .local v1, ele:Llewa/laml/elements/ScreenElement;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 69
    :goto_0
    return-object v3

    .line 63
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v3, p0, Llewa/laml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 64
    iget-object v3, p0, Llewa/laml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llewa/laml/elements/ScreenElement;

    invoke-virtual {v3, p1}, Llewa/laml/elements/ScreenElement;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_1

    move-object v3, v1

    .line 66
    goto :goto_0

    .line 63
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 69
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 5

    .prologue
    .line 133
    invoke-super {p0}, Llewa/laml/elements/AnimatedScreenElement;->finish()V

    .line 134
    iget-object v3, p0, Llewa/laml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/elements/ScreenElement;

    .line 136
    .local v1, ele:Llewa/laml/elements/ScreenElement;
    :try_start_0
    invoke-virtual {v1}, Llewa/laml/elements/ScreenElement;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LockScreen_ElementGroup"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ele:Llewa/laml/elements/ScreenElement;
    :cond_0
    return-void
.end method

.method public getElements()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/elements/ScreenElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Llewa/laml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 143
    invoke-super {p0}, Llewa/laml/elements/AnimatedScreenElement;->init()V

    .line 144
    iget-object v2, p0, Llewa/laml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/ScreenElement;

    .line 145
    .local v0, ele:Llewa/laml/elements/ScreenElement;
    invoke-virtual {v0}, Llewa/laml/elements/ScreenElement;->init()V

    goto :goto_0

    .line 146
    .end local v0           #ele:Llewa/laml/elements/ScreenElement;
    :cond_0
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 8
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    const-string v6, "LockScreen_ElementGroup"

    const-string v7, "node is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v6, Llewa/laml/ScreenElementLoadException;

    const-string v7, "node is null"

    invoke-direct {v6, v7}, Llewa/laml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 82
    :cond_0
    invoke-virtual {p0}, Llewa/laml/elements/ElementGroup;->getContext()Llewa/laml/ScreenContext;

    move-result-object v6

    iget-object v3, v6, Llewa/laml/ScreenContext;->mFactory:Llewa/laml/elements/ScreenElementFactory;

    .line 83
    .local v3, factory:Llewa/laml/elements/ScreenElementFactory;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 84
    .local v2, children:Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, i:I
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 85
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 86
    .local v1, child:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 87
    check-cast v1, Lorg/w3c/dom/Element;

    .end local v1           #child:Lorg/w3c/dom/Node;
    invoke-virtual {v3, v1, p2}, Llewa/laml/elements/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)Llewa/laml/elements/ScreenElement;

    move-result-object v5

    .line 88
    .local v5, newElement:Llewa/laml/elements/ScreenElement;
    if-eqz v5, :cond_1

    .line 89
    invoke-virtual {v5, p0}, Llewa/laml/elements/ScreenElement;->setParent(Llewa/laml/elements/ElementGroup;)V

    .line 90
    iget-object v6, p0, Llewa/laml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v5           #newElement:Llewa/laml/elements/ScreenElement;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 94
    :cond_2
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 97
    const/4 v2, 0x0

    .line 98
    .local v2, ret:Z
    invoke-virtual {p0}, Llewa/laml/elements/ElementGroup;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    invoke-super {p0, p1}, Llewa/laml/elements/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 100
    iget-object v3, p0, Llewa/laml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/ScreenElement;

    .line 101
    .local v0, ele:Llewa/laml/elements/ScreenElement;
    invoke-virtual {v0, p1}, Llewa/laml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    const/4 v2, 0x1

    goto :goto_0

    .line 105
    .end local v0           #ele:Llewa/laml/elements/ScreenElement;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return v2
.end method

.method protected onVisibilityChange(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 109
    invoke-super {p0, p1}, Llewa/laml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 110
    iget-object v2, p0, Llewa/laml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/ScreenElement;

    .line 111
    .local v0, ele:Llewa/laml/elements/ScreenElement;
    invoke-virtual {v0, p1}, Llewa/laml/elements/ScreenElement;->onVisibilityChange(Z)V

    goto :goto_0

    .line 112
    .end local v0           #ele:Llewa/laml/elements/ScreenElement;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 115
    invoke-super {p0}, Llewa/laml/elements/AnimatedScreenElement;->pause()V

    .line 116
    iget-object v2, p0, Llewa/laml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/ScreenElement;

    .line 117
    .local v0, ele:Llewa/laml/elements/ScreenElement;
    invoke-virtual {v0}, Llewa/laml/elements/ScreenElement;->pause()V

    goto :goto_0

    .line 118
    .end local v0           #ele:Llewa/laml/elements/ScreenElement;
    :cond_0
    return-void
.end method

.method public reset(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 121
    invoke-super {p0, p1, p2}, Llewa/laml/elements/AnimatedScreenElement;->reset(J)V

    .line 122
    iget-object v2, p0, Llewa/laml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/ScreenElement;

    .line 123
    .local v0, ele:Llewa/laml/elements/ScreenElement;
    invoke-virtual {v0}, Llewa/laml/elements/ScreenElement;->reset()V

    goto :goto_0

    .line 124
    .end local v0           #ele:Llewa/laml/elements/ScreenElement;
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 127
    invoke-super {p0}, Llewa/laml/elements/AnimatedScreenElement;->resume()V

    .line 128
    iget-object v2, p0, Llewa/laml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/ScreenElement;

    .line 129
    .local v0, ele:Llewa/laml/elements/ScreenElement;
    invoke-virtual {v0}, Llewa/laml/elements/ScreenElement;->resume()V

    goto :goto_0

    .line 130
    .end local v0           #ele:Llewa/laml/elements/ScreenElement;
    :cond_0
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 3
    .parameter "category"
    .parameter "show"

    .prologue
    .line 149
    invoke-super {p0, p1, p2}, Llewa/laml/elements/AnimatedScreenElement;->showCategory(Ljava/lang/String;Z)V

    .line 150
    iget-object v2, p0, Llewa/laml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/ScreenElement;

    .line 151
    .local v0, ele:Llewa/laml/elements/ScreenElement;
    invoke-virtual {v0, p1, p2}, Llewa/laml/elements/ScreenElement;->showCategory(Ljava/lang/String;Z)V

    goto :goto_0

    .line 152
    .end local v0           #ele:Llewa/laml/elements/ScreenElement;
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 155
    invoke-super {p0, p1, p2}, Llewa/laml/elements/AnimatedScreenElement;->tick(J)V

    .line 156
    invoke-virtual {p0}, Llewa/laml/elements/ElementGroup;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Llewa/laml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/ScreenElement;

    .line 158
    .local v0, ele:Llewa/laml/elements/ScreenElement;
    invoke-virtual {v0, p1, p2}, Llewa/laml/elements/ScreenElement;->tick(J)V

    goto :goto_0

    .line 160
    .end local v0           #ele:Llewa/laml/elements/ScreenElement;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method
