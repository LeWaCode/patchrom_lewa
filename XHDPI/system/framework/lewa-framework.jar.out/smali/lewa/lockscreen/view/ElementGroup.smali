.class public Llewa/lockscreen/view/ElementGroup;
.super Llewa/lockscreen/view/AnimatedScreenElement;
.source "ElementGroup.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ElementGroup"


# instance fields
.field protected mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/lockscreen/view/ScreenElement;",
            ">;"
        }
    .end annotation
.end field

.field private mFinish:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V
    .locals 2
    .parameter "element"
    .parameter "screenContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Llewa/lockscreen/view/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    .line 17
    iput-boolean v1, p0, Llewa/lockscreen/view/ElementGroup;->mFinish:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/lockscreen/view/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p0, p1}, Llewa/lockscreen/view/ElementGroup;->load(Lorg/w3c/dom/Element;)V

    .line 23
    iput-boolean v1, p0, Llewa/lockscreen/view/ElementGroup;->mFinish:Z

    .line 24
    return-void
.end method


# virtual methods
.method public findElement(Ljava/lang/String;)Llewa/lockscreen/view/ScreenElement;
    .locals 4
    .parameter "name"

    .prologue
    .line 56
    invoke-super {p0, p1}, Llewa/lockscreen/view/AnimatedScreenElement;->findElement(Ljava/lang/String;)Llewa/lockscreen/view/ScreenElement;

    move-result-object v1

    .line 58
    .local v1, screenelement:Llewa/lockscreen/view/ScreenElement;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 70
    :goto_0
    return-object v3

    .line 62
    :cond_0
    iget-object v3, p0, Llewa/lockscreen/view/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 63
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 64
    iget-object v3, p0, Llewa/lockscreen/view/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llewa/lockscreen/view/ScreenElement;

    invoke-virtual {v3, p1}, Llewa/lockscreen/view/ScreenElement;->findElement(Ljava/lang/String;)Llewa/lockscreen/view/ScreenElement;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_1

    move-object v3, v1

    .line 66
    goto :goto_0

    .line 63
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 74
    invoke-super {p0}, Llewa/lockscreen/view/AnimatedScreenElement;->finish()V

    .line 75
    const/4 v2, 0x1

    iput-boolean v2, p0, Llewa/lockscreen/view/ElementGroup;->mFinish:Z

    .line 76
    iget-object v2, p0, Llewa/lockscreen/view/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 77
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 78
    iget-object v2, p0, Llewa/lockscreen/view/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/lockscreen/view/ScreenElement;

    invoke-virtual {v2}, Llewa/lockscreen/view/ScreenElement;->finish()V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    iget-object v2, p0, Llewa/lockscreen/view/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 81
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    .line 84
    invoke-super {p0}, Llewa/lockscreen/view/AnimatedScreenElement;->init()V

    .line 86
    iget-object v3, p0, Llewa/lockscreen/view/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 88
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 89
    :try_start_0
    iget-boolean v3, p0, Llewa/lockscreen/view/ElementGroup;->mFinish:Z

    if-nez v3, :cond_0

    .line 90
    iget-object v3, p0, Llewa/lockscreen/view/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llewa/lockscreen/view/ScreenElement;

    invoke-virtual {v3}, Llewa/lockscreen/view/ScreenElement;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ElementGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    return-void
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
    .line 28
    if-nez p1, :cond_0

    .line 30
    const-string v7, "LockScreen_ElementGroup"

    const-string v8, "node is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v7, Llewa/lockscreen/view/DomParseException;

    const-string v8, "node is null"

    invoke-direct {v7, v8}, Llewa/lockscreen/view/DomParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 34
    :cond_0
    iget-object v7, p0, Llewa/lockscreen/view/ElementGroup;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v6, v7, Llewa/lockscreen/view/ScreenContext;->mFactory:Llewa/lockscreen/view/ScreenElementFactory;

    .line 36
    .local v6, screenelementfactory:Llewa/lockscreen/view/ScreenElementFactory;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 37
    .local v4, nodelist:Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 39
    .local v3, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 40
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 41
    .local v2, item:Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    move-object v0, v2

    .line 42
    check-cast v0, Lorg/w3c/dom/Element;

    .line 44
    .local v0, childElement:Lorg/w3c/dom/Element;
    iget-object v7, p0, Llewa/lockscreen/view/ElementGroup;->screenContext:Llewa/lockscreen/view/ScreenContext;

    invoke-virtual {v6, v0, v7}, Llewa/lockscreen/view/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)Llewa/lockscreen/view/ScreenElement;

    move-result-object v5

    .line 45
    .local v5, screenElement:Llewa/lockscreen/view/ScreenElement;
    if-eqz v5, :cond_2

    .line 46
    iget-object v7, p0, Llewa/lockscreen/view/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .end local v0           #childElement:Lorg/w3c/dom/Element;
    .end local v5           #screenElement:Llewa/lockscreen/view/ScreenElement;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .restart local v0       #childElement:Lorg/w3c/dom/Element;
    .restart local v5       #screenElement:Llewa/lockscreen/view/ScreenElement;
    :cond_2
    const-string v7, "ElementGroup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unrecognized element: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 52
    .end local v0           #childElement:Lorg/w3c/dom/Element;
    .end local v2           #item:Lorg/w3c/dom/Node;
    .end local v5           #screenElement:Llewa/lockscreen/view/ScreenElement;
    :cond_3
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "motionevent"

    .prologue
    .line 100
    invoke-virtual {p0}, Llewa/lockscreen/view/ElementGroup;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    :cond_0
    return-void

    .line 103
    :cond_1
    invoke-super {p0, p1}, Llewa/lockscreen/view/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)V

    .line 104
    iget-object v2, p0, Llewa/lockscreen/view/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 105
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 107
    iget-object v2, p0, Llewa/lockscreen/view/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/lockscreen/view/ScreenElement;

    invoke-virtual {v2, p1}, Llewa/lockscreen/view/ScreenElement;->onTouch(Landroid/view/MotionEvent;)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 113
    invoke-super {p0}, Llewa/lockscreen/view/AnimatedScreenElement;->pause()V

    .line 115
    iget-object v2, p0, Llewa/lockscreen/view/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 116
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 117
    iget-object v2, p0, Llewa/lockscreen/view/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/lockscreen/view/ScreenElement;

    invoke-virtual {v2}, Llewa/lockscreen/view/ScreenElement;->pause()V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 124
    invoke-virtual {p0}, Llewa/lockscreen/view/ElementGroup;->isVisible()Z

    move-result v5

    if-nez v5, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v5, p0, Llewa/lockscreen/view/ElementGroup;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v5}, Llewa/lockscreen/view/AnimatedElement;->getAlpha()I

    move-result v5

    if-lez v5, :cond_0

    .line 131
    invoke-virtual {p0}, Llewa/lockscreen/view/ElementGroup;->getX()I

    move-result v3

    .line 132
    .local v3, x:I
    invoke-virtual {p0}, Llewa/lockscreen/view/ElementGroup;->getY()I

    move-result v4

    .line 134
    .local v4, y:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 135
    .local v0, count:I
    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 137
    iget-object v5, p0, Llewa/lockscreen/view/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 138
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 139
    iget-object v5, p0, Llewa/lockscreen/view/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Llewa/lockscreen/view/ScreenElement;

    invoke-virtual {v5, p1}, Llewa/lockscreen/view/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 141
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 146
    invoke-super {p0}, Llewa/lockscreen/view/AnimatedScreenElement;->resume()V

    .line 147
    iget-object v2, p0, Llewa/lockscreen/view/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 148
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 149
    iget-object v2, p0, Llewa/lockscreen/view/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/lockscreen/view/ScreenElement;

    invoke-virtual {v2}, Llewa/lockscreen/view/ScreenElement;->resume()V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 3
    .parameter "category"
    .parameter "isShow"

    .prologue
    .line 155
    invoke-super {p0, p1, p2}, Llewa/lockscreen/view/AnimatedScreenElement;->showCategory(Ljava/lang/String;Z)V

    .line 157
    iget-object v2, p0, Llewa/lockscreen/view/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 158
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 159
    iget-object v2, p0, Llewa/lockscreen/view/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/lockscreen/view/ScreenElement;

    invoke-virtual {v2, p1, p2}, Llewa/lockscreen/view/ScreenElement;->showCategory(Ljava/lang/String;Z)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 166
    invoke-virtual {p0}, Llewa/lockscreen/view/ElementGroup;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    :cond_0
    return-void

    .line 168
    :cond_1
    invoke-super {p0, p1, p2}, Llewa/lockscreen/view/AnimatedScreenElement;->tick(J)V

    .line 170
    iget-object v2, p0, Llewa/lockscreen/view/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 171
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 172
    iget-object v2, p0, Llewa/lockscreen/view/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/lockscreen/view/ScreenElement;

    invoke-virtual {v2, p1, p2}, Llewa/lockscreen/view/ScreenElement;->tick(J)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
