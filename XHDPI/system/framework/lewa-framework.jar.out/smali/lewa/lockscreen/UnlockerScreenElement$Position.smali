.class Llewa/lockscreen/UnlockerScreenElement$Position;
.super Ljava/lang/Object;
.source "UnlockerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/UnlockerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Position"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Position"


# instance fields
.field private mBaseX:Ljava/lang/String;

.field private mBaseY:Ljava/lang/String;

.field final synthetic this$0:Llewa/lockscreen/UnlockerScreenElement;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Llewa/lockscreen/UnlockerScreenElement;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "element"
    .parameter "baseX"
    .parameter "baseY"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 113
    iput-object p1, p0, Llewa/lockscreen/UnlockerScreenElement$Position;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p3, p0, Llewa/lockscreen/UnlockerScreenElement$Position;->mBaseX:Ljava/lang/String;

    .line 115
    iput-object p4, p0, Llewa/lockscreen/UnlockerScreenElement$Position;->mBaseY:Ljava/lang/String;

    .line 116
    invoke-virtual {p0, p2}, Llewa/lockscreen/UnlockerScreenElement$Position;->load(Lorg/w3c/dom/Element;)V

    .line 117
    return-void
.end method


# virtual methods
.method public getX()I
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$Position;->mBaseX:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 121
    iget v0, p0, Llewa/lockscreen/UnlockerScreenElement$Position;->x:I

    .line 123
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Llewa/lockscreen/UnlockerScreenElement$Position;->x:I

    int-to-double v0, v0

    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement$Position;->mBaseX:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0
.end method

.method public getY()I
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$Position;->mBaseY:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 128
    iget v0, p0, Llewa/lockscreen/UnlockerScreenElement$Position;->y:I

    .line 130
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Llewa/lockscreen/UnlockerScreenElement$Position;->y:I

    int-to-double v0, v0

    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement$Position;->mBaseY:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 135
    if-nez p1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Position"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "wrong node tag"

    invoke-static {v0, v1}, Llewa/lockscreen/view/Utils;->asserts(ZLjava/lang/String;)V

    .line 141
    const-string v0, "x"

    invoke-static {p1, v0, v2}, Llewa/lockscreen/view/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Llewa/lockscreen/UnlockerScreenElement$Position;->x:I

    .line 142
    const-string v0, "y"

    invoke-static {p1, v0, v2}, Llewa/lockscreen/view/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Llewa/lockscreen/UnlockerScreenElement$Position;->y:I

    goto :goto_0
.end method
