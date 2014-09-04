.class public Llewa/laml/elements/ScreenElementFactory;
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
.method public createInstance(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)Llewa/laml/elements/ScreenElement;
    .locals 2
    .parameter "ele"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    .line 12
    .local v0, tag:Ljava/lang/String;
    const-string v1, "Image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    new-instance v1, Llewa/laml/elements/ImageScreenElement;

    invoke-direct {v1, p1, p2}, Llewa/laml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 58
    :goto_0
    return-object v1

    .line 15
    :cond_0
    const-string v1, "Path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    new-instance v1, Llewa/laml/elements/PathScreenElement;

    invoke-direct {v1, p1, p2}, Llewa/laml/elements/PathScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    goto :goto_0

    .line 18
    :cond_1
    const-string v1, "Time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    new-instance v1, Llewa/laml/elements/TimepanelScreenElement;

    invoke-direct {v1, p1, p2}, Llewa/laml/elements/TimepanelScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    goto :goto_0

    .line 21
    :cond_2
    const-string v1, "ImageNumber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22
    new-instance v1, Llewa/laml/elements/ImageNumberScreenElement;

    invoke-direct {v1, p1, p2}, Llewa/laml/elements/ImageNumberScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    goto :goto_0

    .line 24
    :cond_3
    const-string v1, "Text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 25
    new-instance v1, Llewa/laml/elements/TextScreenElement;

    invoke-direct {v1, p1, p2}, Llewa/laml/elements/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    goto :goto_0

    .line 27
    :cond_4
    const-string v1, "DateTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 28
    new-instance v1, Llewa/laml/elements/DateTimeScreenElement;

    invoke-direct {v1, p1, p2}, Llewa/laml/elements/DateTimeScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    goto :goto_0

    .line 30
    :cond_5
    const-string v1, "Button"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 31
    new-instance v1, Llewa/laml/elements/ButtonScreenElement;

    invoke-direct {v1, p1, p2}, Llewa/laml/elements/ButtonScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    goto :goto_0

    .line 33
    :cond_6
    const-string v1, "MusicControl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 34
    new-instance v1, Llewa/laml/elements/MusicControlScreenElement;

    invoke-direct {v1, p1, p2}, Llewa/laml/elements/MusicControlScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    goto :goto_0

    .line 36
    :cond_7
    const-string v1, "ElementGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "Group"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 38
    :cond_8
    new-instance v1, Llewa/laml/elements/ElementGroup;

    invoke-direct {v1, p1, p2}, Llewa/laml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    goto :goto_0

    .line 40
    :cond_9
    const-string v1, "Var"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 41
    new-instance v1, Llewa/laml/elements/VariableElement;

    invoke-direct {v1, p1, p2}, Llewa/laml/elements/VariableElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    goto/16 :goto_0

    .line 43
    :cond_a
    const-string v1, "VarArray"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 44
    new-instance v1, Llewa/laml/elements/VariableArrayElement;

    invoke-direct {v1, p1, p2}, Llewa/laml/elements/VariableArrayElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    goto/16 :goto_0

    .line 46
    :cond_b
    const-string v1, "SpectrumVisualizer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 47
    new-instance v1, Llewa/laml/elements/SpectrumVisualizerScreenElement;

    invoke-direct {v1, p1, p2}, Llewa/laml/elements/SpectrumVisualizerScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    goto/16 :goto_0

    .line 49
    :cond_c
    const-string v1, "Slider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 50
    new-instance v1, Llewa/laml/elements/AdvancedSlider;

    invoke-direct {v1, p1, p2}, Llewa/laml/elements/AdvancedSlider;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    goto/16 :goto_0

    .line 52
    :cond_d
    const-string v1, "FramerateController"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 53
    new-instance v1, Llewa/laml/elements/FramerateController;

    invoke-direct {v1, p1, p2}, Llewa/laml/elements/FramerateController;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    goto/16 :goto_0

    .line 55
    :cond_e
    const-string v1, "VirtualScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 56
    new-instance v1, Llewa/laml/elements/VirtualScreen;

    invoke-direct {v1, p1, p2}, Llewa/laml/elements/VirtualScreen;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    goto/16 :goto_0

    .line 58
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_0
.end method
