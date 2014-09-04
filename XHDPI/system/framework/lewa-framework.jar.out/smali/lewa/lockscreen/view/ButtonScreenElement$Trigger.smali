.class Llewa/lockscreen/view/ButtonScreenElement$Trigger;
.super Ljava/lang/Object;
.source "ButtonScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/view/ButtonScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Trigger"
.end annotation


# instance fields
.field private mAction:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

.field private pro:Llewa/lockscreen/view/ButtonScreenElement$Property;

.field final synthetic this$0:Llewa/lockscreen/view/ButtonScreenElement;


# direct methods
.method public constructor <init>(Llewa/lockscreen/view/ButtonScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 88
    iput-object p1, p0, Llewa/lockscreen/view/ButtonScreenElement$Trigger;->this$0:Llewa/lockscreen/view/ButtonScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;->Invalid:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    iput-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement$Trigger;->mAction:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    .line 90
    invoke-direct {p0, p2}, Llewa/lockscreen/view/ButtonScreenElement$Trigger;->load(Lorg/w3c/dom/Element;)V

    .line 91
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v4, "target"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, target:Ljava/lang/String;
    const-string v4, "property"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, property:Ljava/lang/String;
    const-string v4, "value"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    new-instance v4, Llewa/lockscreen/view/DomParseException;

    const-string v5, "invalid trigger element"

    invoke-direct {v4, v5}, Llewa/lockscreen/view/DomParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 106
    :cond_1
    const-string v4, "visibility"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 107
    new-instance v4, Llewa/lockscreen/view/ButtonScreenElement$VisibilityProperty;

    iget-object v5, p0, Llewa/lockscreen/view/ButtonScreenElement$Trigger;->this$0:Llewa/lockscreen/view/ButtonScreenElement;

    invoke-direct {v4, v5, v2, v3}, Llewa/lockscreen/view/ButtonScreenElement$VisibilityProperty;-><init>(Llewa/lockscreen/view/ButtonScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Llewa/lockscreen/view/ButtonScreenElement$Trigger;->pro:Llewa/lockscreen/view/ButtonScreenElement$Property;

    .line 109
    :cond_2
    iget-object v4, p0, Llewa/lockscreen/view/ButtonScreenElement$Trigger;->pro:Llewa/lockscreen/view/ButtonScreenElement$Property;

    if-nez v4, :cond_3

    .line 110
    new-instance v4, Llewa/lockscreen/view/DomParseException;

    const-string v5, "invalid trigger element"

    invoke-direct {v4, v5}, Llewa/lockscreen/view/DomParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 113
    :cond_3
    const-string v4, "action"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, action:Ljava/lang/String;
    const-string v4, "down"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 115
    sget-object v4, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;->Down:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    iput-object v4, p0, Llewa/lockscreen/view/ButtonScreenElement$Trigger;->mAction:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 116
    :cond_4
    const-string v4, "up"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 117
    sget-object v4, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;->Up:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    iput-object v4, p0, Llewa/lockscreen/view/ButtonScreenElement$Trigger;->mAction:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 118
    :cond_5
    const-string v4, "double"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 119
    sget-object v4, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;->Double:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    iput-object v4, p0, Llewa/lockscreen/view/ButtonScreenElement$Trigger;->mAction:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 120
    :cond_6
    const-string v4, "long"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 121
    sget-object v4, Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;->Long:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    iput-object v4, p0, Llewa/lockscreen/view/ButtonScreenElement$Trigger;->mAction:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 123
    :cond_7
    new-instance v4, Llewa/lockscreen/view/DomParseException;

    const-string v5, "invalid trigger action"

    invoke-direct {v4, v5}, Llewa/lockscreen/view/DomParseException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public getAction()Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement$Trigger;->mAction:Llewa/lockscreen/view/ButtonScreenElement$ButtonAction;

    return-object v0
.end method

.method public perform()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Llewa/lockscreen/view/ButtonScreenElement$Trigger;->pro:Llewa/lockscreen/view/ButtonScreenElement$Property;

    invoke-virtual {v0}, Llewa/lockscreen/view/ButtonScreenElement$Property;->perform()V

    .line 133
    return-void
.end method
