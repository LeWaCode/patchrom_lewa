.class public abstract Llewa/lockscreen/view/ScreenElement;
.super Ljava/lang/Object;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/lockscreen/view/ScreenElement$1;,
        Llewa/lockscreen/view/ScreenElement$AlignV;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenElement"


# instance fields
.field protected context:Landroid/content/Context;

.field protected element:Lorg/w3c/dom/Element;

.field protected expression:Llewa/lockscreen/view/Expression;

.field protected mAlign:Landroid/graphics/Paint$Align;

.field protected mAlignV:Llewa/lockscreen/view/ScreenElement$AlignV;

.field protected mCategory:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field private mShow:Z

.field protected screenContext:Llewa/lockscreen/view/ScreenContext;

.field private showStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V
    .locals 5
    .parameter "element"
    .parameter "screenContext"

    .prologue
    const/4 v4, 0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v4, p0, Llewa/lockscreen/view/ScreenElement;->mShow:Z

    .line 31
    iput-object p2, p0, Llewa/lockscreen/view/ScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    .line 32
    iget-object v2, p2, Llewa/lockscreen/view/ScreenContext;->mContext:Landroid/content/Context;

    iput-object v2, p0, Llewa/lockscreen/view/ScreenElement;->context:Landroid/content/Context;

    .line 33
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 36
    :cond_0
    iput-object p1, p0, Llewa/lockscreen/view/ScreenElement;->element:Lorg/w3c/dom/Element;

    .line 37
    new-instance v2, Llewa/lockscreen/view/Expression;

    invoke-direct {v2}, Llewa/lockscreen/view/Expression;-><init>()V

    iput-object v2, p0, Llewa/lockscreen/view/ScreenElement;->expression:Llewa/lockscreen/view/Expression;

    .line 39
    const-string v2, "category"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llewa/lockscreen/view/ScreenElement;->mCategory:Ljava/lang/String;

    .line 40
    const-string v2, "name"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llewa/lockscreen/view/ScreenElement;->mName:Ljava/lang/String;

    .line 42
    const-string v2, "visibility"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llewa/lockscreen/view/ScreenElement;->showStr:Ljava/lang/String;

    .line 44
    iget-object v2, p0, Llewa/lockscreen/view/ScreenElement;->showStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 45
    iget-object v2, p0, Llewa/lockscreen/view/ScreenElement;->showStr:Ljava/lang/String;

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 46
    const/4 v2, 0x0

    iput-boolean v2, p0, Llewa/lockscreen/view/ScreenElement;->mShow:Z

    .line 54
    :cond_1
    :goto_1
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v2, p0, Llewa/lockscreen/view/ScreenElement;->mAlign:Landroid/graphics/Paint$Align;

    .line 56
    const-string v2, "align"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, alignStr:Ljava/lang/String;
    const-string v2, "right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 58
    const-string v2, "left"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 59
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v2, p0, Llewa/lockscreen/view/ScreenElement;->mAlign:Landroid/graphics/Paint$Align;

    .line 67
    :cond_2
    :goto_2
    sget-object v2, Llewa/lockscreen/view/ScreenElement$AlignV;->TOP:Llewa/lockscreen/view/ScreenElement$AlignV;

    iput-object v2, p0, Llewa/lockscreen/view/ScreenElement;->mAlignV:Llewa/lockscreen/view/ScreenElement$AlignV;

    .line 68
    const-string v2, "alignV"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, alignVStr:Ljava/lang/String;
    const-string v2, "bottom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 70
    sget-object v2, Llewa/lockscreen/view/ScreenElement$AlignV;->BOTTOM:Llewa/lockscreen/view/ScreenElement$AlignV;

    iput-object v2, p0, Llewa/lockscreen/view/ScreenElement;->mAlignV:Llewa/lockscreen/view/ScreenElement$AlignV;

    goto :goto_0

    .line 47
    .end local v0           #alignStr:Ljava/lang/String;
    .end local v1           #alignVStr:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Llewa/lockscreen/view/ScreenElement;->showStr:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 48
    iput-boolean v4, p0, Llewa/lockscreen/view/ScreenElement;->mShow:Z

    goto :goto_1

    .line 50
    :cond_4
    iget-object v2, p0, Llewa/lockscreen/view/ScreenElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v3, "visibility"

    iget-object v4, p0, Llewa/lockscreen/view/ScreenElement;->showStr:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Llewa/lockscreen/view/Expression;->putStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v2, "unknow"

    iput-object v2, p0, Llewa/lockscreen/view/ScreenElement;->showStr:Ljava/lang/String;

    goto :goto_1

    .line 60
    .restart local v0       #alignStr:Ljava/lang/String;
    :cond_5
    const-string v2, "center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v2, p0, Llewa/lockscreen/view/ScreenElement;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_2

    .line 64
    :cond_6
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v2, p0, Llewa/lockscreen/view/ScreenElement;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_2

    .line 71
    .restart local v1       #alignVStr:Ljava/lang/String;
    :cond_7
    const-string v2, "center"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 72
    sget-object v2, Llewa/lockscreen/view/ScreenElement$AlignV;->CENTER:Llewa/lockscreen/view/ScreenElement$AlignV;

    iput-object v2, p0, Llewa/lockscreen/view/ScreenElement;->mAlignV:Llewa/lockscreen/view/ScreenElement$AlignV;

    goto/16 :goto_0

    .line 74
    :cond_8
    sget-object v2, Llewa/lockscreen/view/ScreenElement$AlignV;->TOP:Llewa/lockscreen/view/ScreenElement$AlignV;

    iput-object v2, p0, Llewa/lockscreen/view/ScreenElement;->mAlignV:Llewa/lockscreen/view/ScreenElement$AlignV;

    goto/16 :goto_0
.end method

.method private judgeCategory()Z
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Llewa/lockscreen/view/ScreenElement;->mCategory:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llewa/lockscreen/view/ScreenElement;->mCategory:Ljava/lang/String;

    const-string v1, "battery_category"

    const-string v2, ""

    invoke-static {v1, v2}, Llewa/lockscreen/view/Expression;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public findElement(Ljava/lang/String;)Llewa/lockscreen/view/ScreenElement;
    .locals 1
    .parameter "name"

    .prologue
    .line 84
    iget-object v0, p0, Llewa/lockscreen/view/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Llewa/lockscreen/view/ScreenElement;->element:Lorg/w3c/dom/Element;

    .line 93
    iput-object v0, p0, Llewa/lockscreen/view/ScreenElement;->expression:Llewa/lockscreen/view/Expression;

    .line 94
    iput-object v0, p0, Llewa/lockscreen/view/ScreenElement;->context:Landroid/content/Context;

    .line 95
    iput-object v0, p0, Llewa/lockscreen/view/ScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    .line 96
    return-void
.end method

.method protected getLeft(II)I
    .locals 2
    .parameter "animX"
    .parameter "bmpWidth"

    .prologue
    .line 105
    if-gtz p2, :cond_0

    .line 119
    .end local p1
    :goto_0
    :pswitch_0
    return p1

    .line 108
    .restart local p1
    :cond_0
    sget-object v0, Llewa/lockscreen/view/ScreenElement$1;->$SwitchMap$android$graphics$Paint$Align:[I

    iget-object v1, p0, Llewa/lockscreen/view/ScreenElement;->mAlign:Landroid/graphics/Paint$Align;

    invoke-virtual {v1}, Landroid/graphics/Paint$Align;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 112
    :pswitch_1
    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p1, v0

    goto :goto_0

    .line 114
    :pswitch_2
    sub-int/2addr p1, p2

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Llewa/lockscreen/view/ScreenElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getTop(II)I
    .locals 2
    .parameter "animY"
    .parameter "bmpHeight"

    .prologue
    .line 123
    if-gtz p2, :cond_0

    .line 137
    .end local p1
    :goto_0
    :pswitch_0
    return p1

    .line 126
    .restart local p1
    :cond_0
    sget-object v0, Llewa/lockscreen/view/ScreenElement$1;->$SwitchMap$lewa$lockscreen$view$ScreenElement$AlignV:[I

    iget-object v1, p0, Llewa/lockscreen/view/ScreenElement;->mAlignV:Llewa/lockscreen/view/ScreenElement$AlignV;

    invoke-virtual {v1}, Llewa/lockscreen/view/ScreenElement$AlignV;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 130
    :pswitch_1
    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p1, v0

    goto :goto_0

    .line 132
    :pswitch_2
    sub-int/2addr p1, p2

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public init()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public isVisible()Z
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 141
    iget-object v13, p0, Llewa/lockscreen/view/ScreenElement;->showStr:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    .line 142
    iget-object v13, p0, Llewa/lockscreen/view/ScreenElement;->showStr:Ljava/lang/String;

    const-string v14, "unknow"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 143
    iget-object v13, p0, Llewa/lockscreen/view/ScreenElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v14, "visibility"

    invoke-virtual {v13, v14}, Llewa/lockscreen/view/Expression;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 144
    .local v9, visibilityExp:Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 145
    const-string v13, "false"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 197
    .end local v9           #visibilityExp:Ljava/lang/String;
    :cond_0
    :goto_0
    return v11

    .line 147
    .restart local v9       #visibilityExp:Ljava/lang/String;
    :cond_1
    const-string v13, "true"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v11, v12

    .line 148
    goto :goto_0

    .line 150
    :cond_2
    const/4 v1, 0x0

    .line 151
    .local v1, name:Ljava/lang/String;
    const/4 v8, 0x0

    .line 152
    .local v8, value:Ljava/lang/String;
    const/4 v7, 0x0

    .line 153
    .local v7, subStr:Ljava/lang/String;
    const-string v13, "#"

    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 154
    .local v3, position:I
    const-string v13, "\'"

    invoke-virtual {v9, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 155
    .local v5, position_last_quot:I
    const/4 v13, -0x1

    if-eq v3, v13, :cond_3

    .line 157
    :try_start_0
    const-string v13, "."

    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 158
    .local v6, position_point:I
    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v9, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 159
    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 161
    const-string v13, "false"

    invoke-static {v1, v8, v13}, Llewa/lockscreen/view/Expression;->getRealTimeVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 162
    .local v10, visible:Ljava/lang/String;
    const-string v13, "false"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-direct {p0}, Llewa/lockscreen/view/ScreenElement;->judgeCategory()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-eqz v13, :cond_0

    move v11, v12

    .line 163
    goto :goto_0

    .line 167
    .end local v6           #position_point:I
    .end local v10           #visible:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 171
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    const-string v13, "\'"

    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 173
    .local v4, position_first_quot:I
    :try_start_1
    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 174
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 175
    .local v2, number:I
    if-ge v2, v12, :cond_0

    move v11, v12

    .line 178
    goto :goto_0

    .line 180
    .end local v2           #number:I
    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    move v11, v12

    .line 181
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #position:I
    .end local v4           #position_first_quot:I
    .end local v5           #position_last_quot:I
    .end local v7           #subStr:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_4
    move v11, v12

    .line 186
    goto :goto_0

    .line 189
    .end local v9           #visibilityExp:Ljava/lang/String;
    :cond_5
    iget-boolean v11, p0, Llewa/lockscreen/view/ScreenElement;->mShow:Z

    goto :goto_0

    .line 193
    :cond_6
    iget-object v11, p0, Llewa/lockscreen/view/ScreenElement;->mCategory:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    .line 194
    iget-object v11, p0, Llewa/lockscreen/view/ScreenElement;->mCategory:Ljava/lang/String;

    const-string v12, "battery_category"

    const-string v13, ""

    invoke-static {v12, v13}, Llewa/lockscreen/view/Expression;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_0

    .line 197
    :cond_7
    iget-boolean v11, p0, Llewa/lockscreen/view/ScreenElement;->mShow:Z

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "motionevent"

    .prologue
    .line 204
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public abstract render(Landroid/graphics/Canvas;)V
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public setShouldUpdate(Z)V
    .locals 1
    .parameter "shouldUpdate"

    .prologue
    .line 213
    iget-object v0, p0, Llewa/lockscreen/view/ScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iput-boolean p1, v0, Llewa/lockscreen/view/ScreenContext;->mShouldUpdate:Z

    .line 214
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 217
    iget-object v0, p0, Llewa/lockscreen/view/ScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iput-object p1, v0, Llewa/lockscreen/view/ScreenContext;->mView:Landroid/view/View;

    .line 218
    return-void
.end method

.method public shouldUpdate()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Llewa/lockscreen/view/ScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-boolean v0, v0, Llewa/lockscreen/view/ScreenContext;->mShouldUpdate:Z

    return v0
.end method

.method public show(Z)V
    .locals 0
    .parameter "isShow"

    .prologue
    .line 225
    iput-boolean p1, p0, Llewa/lockscreen/view/ScreenElement;->mShow:Z

    .line 226
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1
    .parameter "category"
    .parameter "isShow"

    .prologue
    .line 229
    iget-object v0, p0, Llewa/lockscreen/view/ScreenElement;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0, p2}, Llewa/lockscreen/view/ScreenElement;->show(Z)V

    .line 232
    :cond_0
    return-void
.end method

.method public abstract tick(J)V
.end method
