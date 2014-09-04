.class Llewa/laml/elements/VariableArrayElement$Var;
.super Ljava/lang/Object;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/elements/VariableArrayElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Var"
.end annotation


# instance fields
.field private mConst:Z

.field private mCurrentItemIsExpression:Z

.field private mIndex:I

.field private mIndexExpression:Llewa/laml/data/Expression;

.field private mName:Ljava/lang/String;

.field private mNumberVar:Llewa/laml/util/IndexedNumberVariable;

.field private mStringVar:Llewa/laml/util/IndexedStringVariable;

.field final synthetic this$0:Llewa/laml/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Llewa/laml/elements/VariableArrayElement;Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter
    .parameter "ele"

    .prologue
    .line 115
    iput-object p1, p0, Llewa/laml/elements/VariableArrayElement$Var;->this$0:Llewa/laml/elements/VariableArrayElement;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Llewa/laml/elements/VariableArrayElement$Var;->mIndex:I

    .line 117
    if-eqz p2, :cond_0

    .line 118
    const-string v0, "name"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    .line 119
    const-string v0, "index"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/elements/VariableArrayElement$Var;->mIndexExpression:Llewa/laml/data/Expression;

    .line 120
    const-string v0, "const"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Llewa/laml/elements/VariableArrayElement$Var;->mConst:Z

    .line 121
    #getter for: Llewa/laml/elements/VariableArrayElement;->mIsStringType:Z
    invoke-static {p1}, Llewa/laml/elements/VariableArrayElement;->access$000(Llewa/laml/elements/VariableArrayElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    new-instance v0, Llewa/laml/util/IndexedStringVariable;

    iget-object v1, p0, Llewa/laml/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Llewa/laml/elements/VariableArrayElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/VariableArrayElement$Var;->mStringVar:Llewa/laml/util/IndexedStringVariable;

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Llewa/laml/elements/VariableArrayElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/elements/VariableArrayElement$Var;->mNumberVar:Llewa/laml/util/IndexedNumberVariable;

    goto :goto_0
.end method

.method private update()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 79
    iget-object v3, p0, Llewa/laml/elements/VariableArrayElement$Var;->mIndexExpression:Llewa/laml/data/Expression;

    if-eqz v3, :cond_5

    .line 80
    iget-object v3, p0, Llewa/laml/elements/VariableArrayElement$Var;->this$0:Llewa/laml/elements/VariableArrayElement;

    invoke-virtual {v3}, Llewa/laml/elements/VariableArrayElement;->getVariables()Llewa/laml/data/Variables;

    move-result-object v2

    .line 81
    .local v2, var:Llewa/laml/data/Variables;
    iget-object v3, p0, Llewa/laml/elements/VariableArrayElement$Var;->mIndexExpression:Llewa/laml/data/Expression;

    invoke-virtual {v3, v2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v3

    double-to-int v0, v3

    .line 82
    .local v0, index:I
    if-ltz v0, :cond_0

    iget-object v3, p0, Llewa/laml/elements/VariableArrayElement$Var;->this$0:Llewa/laml/elements/VariableArrayElement;

    #getter for: Llewa/laml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;
    invoke-static {v3}, Llewa/laml/elements/VariableArrayElement;->access$100(Llewa/laml/elements/VariableArrayElement;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 103
    .end local v0           #index:I
    .end local v2           #var:Llewa/laml/data/Variables;
    :cond_0
    :goto_0
    return-void

    .line 84
    .restart local v0       #index:I
    .restart local v2       #var:Llewa/laml/data/Variables;
    :cond_1
    iget v3, p0, Llewa/laml/elements/VariableArrayElement$Var;->mIndex:I

    if-ne v3, v0, :cond_2

    iget-boolean v3, p0, Llewa/laml/elements/VariableArrayElement$Var;->mCurrentItemIsExpression:Z

    if-eqz v3, :cond_0

    .line 85
    :cond_2
    iget-object v3, p0, Llewa/laml/elements/VariableArrayElement$Var;->this$0:Llewa/laml/elements/VariableArrayElement;

    #getter for: Llewa/laml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;
    invoke-static {v3}, Llewa/laml/elements/VariableArrayElement;->access$100(Llewa/laml/elements/VariableArrayElement;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/elements/VariableArrayElement$Item;

    .line 86
    .local v1, item:Llewa/laml/elements/VariableArrayElement$Item;
    iget v3, p0, Llewa/laml/elements/VariableArrayElement$Var;->mIndex:I

    if-eq v3, v0, :cond_3

    .line 87
    iput v0, p0, Llewa/laml/elements/VariableArrayElement$Var;->mIndex:I

    .line 88
    invoke-virtual {v1}, Llewa/laml/elements/VariableArrayElement$Item;->isExpression()Z

    move-result v3

    iput-boolean v3, p0, Llewa/laml/elements/VariableArrayElement$Var;->mCurrentItemIsExpression:Z

    .line 90
    :cond_3
    iget-object v3, p0, Llewa/laml/elements/VariableArrayElement$Var;->this$0:Llewa/laml/elements/VariableArrayElement;

    #getter for: Llewa/laml/elements/VariableArrayElement;->mIsStringType:Z
    invoke-static {v3}, Llewa/laml/elements/VariableArrayElement;->access$000(Llewa/laml/elements/VariableArrayElement;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    iget-object v3, p0, Llewa/laml/elements/VariableArrayElement$Var;->mStringVar:Llewa/laml/util/IndexedStringVariable;

    invoke-virtual {v1, v2}, Llewa/laml/elements/VariableArrayElement$Item;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_4
    iget-object v3, p0, Llewa/laml/elements/VariableArrayElement$Var;->mNumberVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v1, v2}, Llewa/laml/elements/VariableArrayElement$Item;->evaluate(Llewa/laml/data/Variables;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Llewa/laml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    goto :goto_0

    .line 97
    .end local v0           #index:I
    .end local v1           #item:Llewa/laml/elements/VariableArrayElement$Item;
    .end local v2           #var:Llewa/laml/data/Variables;
    :cond_5
    iget-object v3, p0, Llewa/laml/elements/VariableArrayElement$Var;->this$0:Llewa/laml/elements/VariableArrayElement;

    #getter for: Llewa/laml/elements/VariableArrayElement;->mIsStringType:Z
    invoke-static {v3}, Llewa/laml/elements/VariableArrayElement;->access$000(Llewa/laml/elements/VariableArrayElement;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 98
    iget-object v3, p0, Llewa/laml/elements/VariableArrayElement$Var;->mStringVar:Llewa/laml/util/IndexedStringVariable;

    invoke-virtual {v3, v4}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_6
    iget-object v3, p0, Llewa/laml/elements/VariableArrayElement$Var;->mNumberVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v3, v4}, Llewa/laml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, -0x1

    iput v0, p0, Llewa/laml/elements/VariableArrayElement$Var;->mIndex:I

    .line 107
    invoke-direct {p0}, Llewa/laml/elements/VariableArrayElement$Var;->update()V

    .line 108
    return-void
.end method

.method public tick()V
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Llewa/laml/elements/VariableArrayElement$Var;->mConst:Z

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0}, Llewa/laml/elements/VariableArrayElement$Var;->update()V

    .line 113
    :cond_0
    return-void
.end method
