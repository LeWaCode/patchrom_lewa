.class public Llewa/lockscreen/view/ScreenElementFactory;
.super Ljava/lang/Object;
.source "ScreenElementFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)Llewa/lockscreen/view/ScreenElement;
    .locals 3
    .parameter "element"
    .parameter "screencontext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    .line 13
    .local v1, tagName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 14
    .local v0, screenElement:Llewa/lockscreen/view/ScreenElement;
    const-string v2, "Image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    new-instance v0, Llewa/lockscreen/view/ImageScreenElement;

    .end local v0           #screenElement:Llewa/lockscreen/view/ScreenElement;
    invoke-direct {v0, p1, p2}, Llewa/lockscreen/view/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    .line 33
    .restart local v0       #screenElement:Llewa/lockscreen/view/ScreenElement;
    :goto_0
    return-object v0

    .line 16
    :cond_0
    const-string v2, "Time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    new-instance v0, Llewa/lockscreen/view/TimepanelScreenElement;

    .end local v0           #screenElement:Llewa/lockscreen/view/ScreenElement;
    invoke-direct {v0, p1, p2}, Llewa/lockscreen/view/TimepanelScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    .restart local v0       #screenElement:Llewa/lockscreen/view/ScreenElement;
    goto :goto_0

    .line 18
    :cond_1
    const-string v2, "NumberIndicator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 19
    new-instance v0, Llewa/lockscreen/view/NumberIndicatorScreenElement;

    .end local v0           #screenElement:Llewa/lockscreen/view/ScreenElement;
    invoke-direct {v0, p1, p2}, Llewa/lockscreen/view/NumberIndicatorScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    .restart local v0       #screenElement:Llewa/lockscreen/view/ScreenElement;
    goto :goto_0

    .line 20
    :cond_2
    const-string v2, "Text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 21
    new-instance v0, Llewa/lockscreen/view/TextScreenElement;

    .end local v0           #screenElement:Llewa/lockscreen/view/ScreenElement;
    invoke-direct {v0, p1, p2}, Llewa/lockscreen/view/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    .restart local v0       #screenElement:Llewa/lockscreen/view/ScreenElement;
    goto :goto_0

    .line 22
    :cond_3
    const-string v2, "DateTime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 23
    new-instance v0, Llewa/lockscreen/view/DateTimeScreenElement;

    .end local v0           #screenElement:Llewa/lockscreen/view/ScreenElement;
    invoke-direct {v0, p1, p2}, Llewa/lockscreen/view/DateTimeScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    .restart local v0       #screenElement:Llewa/lockscreen/view/ScreenElement;
    goto :goto_0

    .line 24
    :cond_4
    const-string v2, "Button"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 25
    new-instance v0, Llewa/lockscreen/view/ButtonScreenElement;

    .end local v0           #screenElement:Llewa/lockscreen/view/ScreenElement;
    invoke-direct {v0, p1, p2}, Llewa/lockscreen/view/ButtonScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    .restart local v0       #screenElement:Llewa/lockscreen/view/ScreenElement;
    goto :goto_0

    .line 26
    :cond_5
    const-string v2, "MusicControl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 27
    new-instance v0, Llewa/lockscreen/view/MusicControlScreenElement;

    .end local v0           #screenElement:Llewa/lockscreen/view/ScreenElement;
    invoke-direct {v0, p1, p2}, Llewa/lockscreen/view/MusicControlScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    .restart local v0       #screenElement:Llewa/lockscreen/view/ScreenElement;
    goto :goto_0

    .line 28
    :cond_6
    const-string v2, "MusicInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 29
    new-instance v0, Llewa/lockscreen/view/MusicInfoScreenElement;

    .end local v0           #screenElement:Llewa/lockscreen/view/ScreenElement;
    invoke-direct {v0, p1, p2}, Llewa/lockscreen/view/MusicInfoScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    .restart local v0       #screenElement:Llewa/lockscreen/view/ScreenElement;
    goto :goto_0

    .line 31
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method
