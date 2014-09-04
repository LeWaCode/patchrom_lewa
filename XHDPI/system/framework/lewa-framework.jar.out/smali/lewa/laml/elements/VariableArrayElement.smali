.class public Llewa/laml/elements/VariableArrayElement;
.super Llewa/laml/elements/ScreenElement;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/elements/VariableArrayElement$Var;,
        Llewa/laml/elements/VariableArrayElement$Item;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VarArray"


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/elements/VariableArrayElement$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mIsStringType:Z

.field private mVars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/elements/VariableArrayElement$Var;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 3
    .parameter "ele"
    .parameter "root"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Llewa/laml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    .line 140
    if-eqz p1, :cond_0

    .line 141
    const-string v0, "string"

    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Llewa/laml/elements/VariableArrayElement;->mIsStringType:Z

    .line 142
    const-string v0, "Vars"

    invoke-static {p1, v0}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "Var"

    new-instance v2, Llewa/laml/elements/VariableArrayElement$1;

    invoke-direct {v2, p0}, Llewa/laml/elements/VariableArrayElement$1;-><init>(Llewa/laml/elements/VariableArrayElement;)V

    invoke-static {v0, v1, v2}, Llewa/laml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Llewa/laml/util/Utils$XmlTraverseListener;)V

    .line 149
    const-string v0, "Items"

    invoke-static {p1, v0}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "Item"

    new-instance v2, Llewa/laml/elements/VariableArrayElement$2;

    invoke-direct {v2, p0}, Llewa/laml/elements/VariableArrayElement$2;-><init>(Llewa/laml/elements/VariableArrayElement;)V

    invoke-static {v0, v1, v2}, Llewa/laml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Llewa/laml/util/Utils$XmlTraverseListener;)V

    .line 157
    :cond_0
    return-void
.end method

.method static synthetic access$000(Llewa/laml/elements/VariableArrayElement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Llewa/laml/elements/VariableArrayElement;->mIsStringType:Z

    return v0
.end method

.method static synthetic access$100(Llewa/laml/elements/VariableArrayElement;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Llewa/laml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Llewa/laml/elements/VariableArrayElement;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Llewa/laml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 160
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 163
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v2, p0, Llewa/laml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 164
    iget-object v2, p0, Llewa/laml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/laml/elements/VariableArrayElement$Var;

    invoke-virtual {v2}, Llewa/laml/elements/VariableArrayElement$Var;->init()V

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 169
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v2, p0, Llewa/laml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 170
    iget-object v2, p0, Llewa/laml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/laml/elements/VariableArrayElement$Var;

    invoke-virtual {v2}, Llewa/laml/elements/VariableArrayElement$Var;->tick()V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method
