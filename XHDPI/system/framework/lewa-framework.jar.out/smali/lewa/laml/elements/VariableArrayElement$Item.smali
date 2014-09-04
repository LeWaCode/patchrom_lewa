.class Llewa/laml/elements/VariableArrayElement$Item;
.super Ljava/lang/Object;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/elements/VariableArrayElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field public mExpression:Llewa/laml/data/Expression;

.field public mNumValue:D

.field public mStrValue:Ljava/lang/String;

.field final synthetic this$0:Llewa/laml/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Llewa/laml/elements/VariableArrayElement;Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter
    .parameter "ele"

    .prologue
    .line 45
    iput-object p1, p0, Llewa/laml/elements/VariableArrayElement$Item;->this$0:Llewa/laml/elements/VariableArrayElement;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-nez p2, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    const-string v0, "expression"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/VariableArrayElement$Item;->mExpression:Llewa/laml/data/Expression;

    .line 50
    const-string v0, "value"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/VariableArrayElement$Item;->mStrValue:Ljava/lang/String;

    .line 51
    #getter for: Llewa/laml/elements/VariableArrayElement;->mIsStringType:Z
    invoke-static {p1}, Llewa/laml/elements/VariableArrayElement;->access$000(Llewa/laml/elements/VariableArrayElement;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    :try_start_0
    iget-object v0, p0, Llewa/laml/elements/VariableArrayElement$Item;->mStrValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Llewa/laml/elements/VariableArrayElement$Item;->mNumValue:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public evaluate(Llewa/laml/data/Variables;)Ljava/lang/Double;
    .locals 2
    .parameter "vars"

    .prologue
    .line 24
    iget-object v0, p0, Llewa/laml/elements/VariableArrayElement$Item;->mExpression:Llewa/laml/data/Expression;

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Llewa/laml/elements/VariableArrayElement$Item;->mExpression:Llewa/laml/data/Expression;

    invoke-virtual {v0, p1}, Llewa/laml/data/Expression;->isNull(Llewa/laml/data/Variables;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 28
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/VariableArrayElement$Item;->mExpression:Llewa/laml/data/Expression;

    invoke-virtual {v0, p1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 30
    :cond_1
    iget-wide v0, p0, Llewa/laml/elements/VariableArrayElement$Item;->mNumValue:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;
    .locals 1
    .parameter "vars"

    .prologue
    .line 35
    iget-object v0, p0, Llewa/laml/elements/VariableArrayElement$Item;->mExpression:Llewa/laml/data/Expression;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Llewa/laml/elements/VariableArrayElement$Item;->mExpression:Llewa/laml/data/Expression;

    invoke-virtual {v0, p1}, Llewa/laml/data/Expression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llewa/laml/elements/VariableArrayElement$Item;->mStrValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public isExpression()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Llewa/laml/elements/VariableArrayElement$Item;->mExpression:Llewa/laml/data/Expression;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
