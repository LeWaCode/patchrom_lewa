.class public abstract Llewa/laml/data/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/data/Expression$1;,
        Llewa/laml/data/Expression$FunctionImpl;,
        Llewa/laml/data/Expression$VariableExpression;,
        Llewa/laml/data/Expression$StringVariableExpression;,
        Llewa/laml/data/Expression$UnaryExpression;,
        Llewa/laml/data/Expression$Tokenizer;,
        Llewa/laml/data/Expression$NumberExpression;,
        Llewa/laml/data/Expression$StringExpression;,
        Llewa/laml/data/Expression$NumberVariableExpression;,
        Llewa/laml/data/Expression$FunctionExpression;,
        Llewa/laml/data/Expression$BinaryExpression;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Expression"

.field private static final USE_ROOT_CACHE:Z

.field private static mOperatorsPriority:[Ljava/lang/String;


# instance fields
.field public mExp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "+-"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "*/%"

    aput-object v2, v0, v1

    sput-object v0, Llewa/laml/data/Expression;->mOperatorsPriority:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    return-void
.end method

.method static synthetic access$000(C)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-static {p0}, Llewa/laml/data/Expression;->isVariableChar(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(C)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-static {p0}, Llewa/laml/data/Expression;->isDigitChar(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(C)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-static {p0}, Llewa/laml/data/Expression;->isFunctionChar(C)Z

    move-result v0

    return v0
.end method

.method public static build(Ljava/lang/String;)Llewa/laml/data/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 30
    invoke-static {p0}, Llewa/laml/data/Expression;->buildInner(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    return-object v0
.end method

.method private static buildBracket(Llewa/laml/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Llewa/laml/data/Expression;
    .locals 6
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llewa/laml/data/Expression$Tokenizer$Token;",
            "Ljava/util/Stack",
            "<",
            "Llewa/laml/data/Expression$Tokenizer$Token;",
            ">;)",
            "Llewa/laml/data/Expression;"
        }
    .end annotation

    .prologue
    .local p1, opeStack:Ljava/util/Stack;,"Ljava/util/Stack<Llewa/laml/data/Expression$Tokenizer$Token;>;"
    const/4 v3, 0x0

    .line 140
    iget-object v2, p0, Llewa/laml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-static {v2}, Llewa/laml/data/Expression;->buildMultiple(Ljava/lang/String;)[Llewa/laml/data/Expression;

    move-result-object v1

    .line 141
    .local v1, newExps:[Llewa/laml/data/Expression;
    invoke-static {v1}, Llewa/laml/data/Expression;->checkParams([Llewa/laml/data/Expression;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    const-string v2, "Expression"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid expressions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Llewa/laml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 157
    :goto_0
    return-object v2

    .line 147
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/laml/data/Expression$Tokenizer$Token;

    iget-object v2, v2, Llewa/laml/data/Expression$Tokenizer$Token;->type:Llewa/laml/data/Expression$Tokenizer$TokenType;

    sget-object v4, Llewa/laml/data/Expression$Tokenizer$TokenType;->FUN:Llewa/laml/data/Expression$Tokenizer$TokenType;

    if-ne v2, v4, :cond_1

    .line 148
    new-instance v4, Llewa/laml/data/Expression$FunctionExpression;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/laml/data/Expression$Tokenizer$Token;

    iget-object v2, v2, Llewa/laml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v4, v1, v2}, Llewa/laml/data/Expression$FunctionExpression;-><init>([Llewa/laml/data/Expression;Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0

    .line 150
    :cond_1
    array-length v2, v1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 151
    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_0
    .catch Llewa/laml/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Llewa/laml/ScreenElementLoadException;
    const-string v2, "Expression"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to buid: multiple expressions in brackets, but seems no function presents:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Llewa/laml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Llewa/laml/ScreenElementLoadException;
    :cond_2
    move-object v2, v3

    .line 157
    goto :goto_0
.end method

.method private static buildInner(Ljava/lang/String;)Llewa/laml/data/Expression;
    .locals 14
    .parameter "exp"

    .prologue
    const/4 v11, 0x0

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v11

    .line 136
    :goto_0
    return-object v10

    .line 45
    :cond_0
    new-instance v8, Llewa/laml/data/Expression$Tokenizer;

    invoke-direct {v8, p0}, Llewa/laml/data/Expression$Tokenizer;-><init>(Ljava/lang/String;)V

    .line 46
    .local v8, tk:Llewa/laml/data/Expression$Tokenizer;
    const/4 v9, 0x0

    .line 47
    .local v9, token:Llewa/laml/data/Expression$Tokenizer$Token;
    const/4 v7, 0x0

    .line 48
    .local v7, preToken:Llewa/laml/data/Expression$Tokenizer$Token;
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 49
    .local v6, opeStack:Ljava/util/Stack;,"Ljava/util/Stack<Llewa/laml/data/Expression$Tokenizer$Token;>;"
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 50
    .local v2, expStack:Ljava/util/Stack;,"Ljava/util/Stack<Llewa/laml/data/Expression;>;"
    const/4 v3, 0x0

    .line 52
    .local v3, minus:Z
    :goto_1
    invoke-virtual {v8}, Llewa/laml/data/Expression$Tokenizer;->getToken()Llewa/laml/data/Expression$Tokenizer$Token;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 53
    const/4 v4, 0x0

    .line 54
    .local v4, newExp:Llewa/laml/data/Expression;
    sget-object v10, Llewa/laml/data/Expression$1;->$SwitchMap$lewa$laml$data$Expression$Tokenizer$TokenType:[I

    iget-object v12, v9, Llewa/laml/data/Expression$Tokenizer$Token;->type:Llewa/laml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v12}, Llewa/laml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v12

    aget v10, v10, v12

    packed-switch v10, :pswitch_data_0

    .line 124
    :cond_1
    :goto_2
    move-object v7, v9

    goto :goto_1

    .line 60
    :pswitch_0
    sget-object v10, Llewa/laml/data/Expression$1;->$SwitchMap$lewa$laml$data$Expression$Tokenizer$TokenType:[I

    iget-object v12, v9, Llewa/laml/data/Expression$Tokenizer$Token;->type:Llewa/laml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v12}, Llewa/laml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v12

    aget v10, v10, v12

    packed-switch v10, :pswitch_data_1

    .line 103
    :goto_3
    iget-object v10, v9, Llewa/laml/data/Expression$Tokenizer$Token;->type:Llewa/laml/data/Expression$Tokenizer$TokenType;

    sget-object v12, Llewa/laml/data/Expression$Tokenizer$TokenType;->OPE:Llewa/laml/data/Expression$Tokenizer$TokenType;

    if-eq v10, v12, :cond_1

    .line 104
    if-eqz v3, :cond_2

    .line 105
    new-instance v5, Llewa/laml/data/Expression$UnaryExpression;

    const-string v10, "-"

    invoke-direct {v5, v4, v10}, Llewa/laml/data/Expression$UnaryExpression;-><init>(Llewa/laml/data/Expression;Ljava/lang/String;)V

    .end local v4           #newExp:Llewa/laml/data/Expression;
    .local v5, newExp:Llewa/laml/data/Expression;
    move-object v4, v5

    .line 106
    .end local v5           #newExp:Llewa/laml/data/Expression;
    .restart local v4       #newExp:Llewa/laml/data/Expression;
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 62
    :pswitch_1
    new-instance v4, Llewa/laml/data/Expression$NumberVariableExpression;

    .end local v4           #newExp:Llewa/laml/data/Expression;
    iget-object v10, v9, Llewa/laml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v4, v10}, Llewa/laml/data/Expression$NumberVariableExpression;-><init>(Ljava/lang/String;)V

    .line 63
    .restart local v4       #newExp:Llewa/laml/data/Expression;
    goto :goto_3

    .line 65
    :pswitch_2
    new-instance v4, Llewa/laml/data/Expression$StringVariableExpression;

    .end local v4           #newExp:Llewa/laml/data/Expression;
    iget-object v10, v9, Llewa/laml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v4, v10}, Llewa/laml/data/Expression$StringVariableExpression;-><init>(Ljava/lang/String;)V

    .line 66
    .restart local v4       #newExp:Llewa/laml/data/Expression;
    goto :goto_3

    .line 68
    :pswitch_3
    if-eqz v3, :cond_3

    .line 69
    new-instance v4, Llewa/laml/data/Expression$NumberExpression;

    .end local v4           #newExp:Llewa/laml/data/Expression;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "-"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v9, Llewa/laml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Llewa/laml/data/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    .line 70
    .restart local v4       #newExp:Llewa/laml/data/Expression;
    const/4 v3, 0x0

    goto :goto_3

    .line 72
    :cond_3
    new-instance v4, Llewa/laml/data/Expression$NumberExpression;

    .end local v4           #newExp:Llewa/laml/data/Expression;
    iget-object v10, v9, Llewa/laml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v4, v10}, Llewa/laml/data/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    .line 74
    .restart local v4       #newExp:Llewa/laml/data/Expression;
    goto :goto_3

    .line 76
    :pswitch_4
    new-instance v4, Llewa/laml/data/Expression$StringExpression;

    .end local v4           #newExp:Llewa/laml/data/Expression;
    iget-object v10, v9, Llewa/laml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v4, v10}, Llewa/laml/data/Expression$StringExpression;-><init>(Ljava/lang/String;)V

    .line 77
    .restart local v4       #newExp:Llewa/laml/data/Expression;
    goto :goto_3

    .line 79
    :pswitch_5
    iget-object v10, v9, Llewa/laml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    const-string v12, "-"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v7, :cond_7

    iget-object v10, v7, Llewa/laml/data/Expression$Tokenizer$Token;->type:Llewa/laml/data/Expression$Tokenizer$TokenType;

    sget-object v12, Llewa/laml/data/Expression$Tokenizer$TokenType;->OPE:Llewa/laml/data/Expression$Tokenizer$TokenType;

    if-eq v10, v12, :cond_7

    .line 82
    :cond_4
    :goto_4
    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v10

    if-lez v10, :cond_6

    iget-object v12, v9, Llewa/laml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Llewa/laml/data/Expression$Tokenizer$Token;

    iget-object v10, v10, Llewa/laml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-static {v12, v10}, Llewa/laml/data/Expression;->cmpOpePri(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-gtz v10, :cond_6

    .line 83
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v10

    const/4 v12, 0x2

    if-lt v10, v12, :cond_5

    .line 84
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/data/Expression;

    .line 85
    .local v1, exp2:Llewa/laml/data/Expression;
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/data/Expression;

    .line 86
    .local v0, exp1:Llewa/laml/data/Expression;
    new-instance v12, Llewa/laml/data/Expression$BinaryExpression;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Llewa/laml/data/Expression$Tokenizer$Token;

    iget-object v10, v10, Llewa/laml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v12, v0, v1, v10}, Llewa/laml/data/Expression$BinaryExpression;-><init>(Llewa/laml/data/Expression;Llewa/laml/data/Expression;Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 89
    .end local v0           #exp1:Llewa/laml/data/Expression;
    .end local v1           #exp2:Llewa/laml/data/Expression;
    :cond_5
    const-string v10, "Expression"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fail to build: invalid operation position:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 91
    goto/16 :goto_0

    .line 94
    :cond_6
    invoke-virtual {v6, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 97
    :cond_7
    const/4 v3, 0x1

    .line 99
    goto/16 :goto_3

    .line 110
    :pswitch_6
    invoke-virtual {v6, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 113
    :pswitch_7
    invoke-static {v9, v6}, Llewa/laml/data/Expression;->buildBracket(Llewa/laml/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Llewa/laml/data/Expression;

    move-result-object v4

    .line 114
    if-nez v4, :cond_8

    move-object v10, v11

    .line 115
    goto/16 :goto_0

    .line 116
    :cond_8
    if-eqz v3, :cond_9

    .line 117
    new-instance v5, Llewa/laml/data/Expression$UnaryExpression;

    const-string v10, "-"

    invoke-direct {v5, v4, v10}, Llewa/laml/data/Expression$UnaryExpression;-><init>(Llewa/laml/data/Expression;Ljava/lang/String;)V

    .end local v4           #newExp:Llewa/laml/data/Expression;
    .restart local v5       #newExp:Llewa/laml/data/Expression;
    move-object v4, v5

    .line 119
    .end local v5           #newExp:Llewa/laml/data/Expression;
    .restart local v4       #newExp:Llewa/laml/data/Expression;
    :cond_9
    invoke-virtual {v2, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 126
    .end local v4           #newExp:Llewa/laml/data/Expression;
    :cond_a
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v10

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    if-eq v10, v12, :cond_b

    .line 127
    const-string v10, "Expression"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "failed to build: invalid expression:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 128
    goto/16 :goto_0

    .line 130
    :cond_b
    :goto_5
    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v10

    if-lez v10, :cond_c

    .line 131
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/data/Expression;

    .line 132
    .restart local v1       #exp2:Llewa/laml/data/Expression;
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/data/Expression;

    .line 133
    .restart local v0       #exp1:Llewa/laml/data/Expression;
    new-instance v4, Llewa/laml/data/Expression$BinaryExpression;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Llewa/laml/data/Expression$Tokenizer$Token;

    iget-object v10, v10, Llewa/laml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v4, v0, v1, v10}, Llewa/laml/data/Expression$BinaryExpression;-><init>(Llewa/laml/data/Expression;Llewa/laml/data/Expression;Ljava/lang/String;)V

    .line 134
    .restart local v4       #newExp:Llewa/laml/data/Expression;
    invoke-virtual {v2, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 136
    .end local v0           #exp1:Llewa/laml/data/Expression;
    .end local v1           #exp2:Llewa/laml/data/Expression;
    .end local v4           #newExp:Llewa/laml/data/Expression;
    :cond_c
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Llewa/laml/data/Expression;

    goto/16 :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 60
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static buildMultiple(Ljava/lang/String;)[Llewa/laml/data/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 162
    invoke-static {p0}, Llewa/laml/data/Expression;->buildMultipleInner(Ljava/lang/String;)[Llewa/laml/data/Expression;

    move-result-object v0

    return-object v0
.end method

.method private static buildMultipleInner(Ljava/lang/String;)[Llewa/laml/data/Expression;
    .locals 8
    .parameter "exp"

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, bracketCount:I
    const/4 v5, 0x0

    .line 175
    .local v5, inApostrophe:Z
    const/4 v6, 0x0

    .line 176
    .local v6, start:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v3, exps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/laml/data/Expression;>;"
    const/4 v4, 0x0

    .local v4, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v4, v0, :cond_5

    .line 178
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 179
    .local v2, c:C
    if-nez v5, :cond_0

    .line 180
    const/16 v7, 0x2c

    if-ne v2, v7, :cond_2

    if-nez v1, :cond_2

    .line 181
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Llewa/laml/data/Expression;->buildInner(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v6, v4, 0x1

    .line 189
    :cond_0
    :goto_1
    const/16 v7, 0x27

    if-ne v2, v7, :cond_1

    .line 190
    if-nez v5, :cond_4

    const/4 v5, 0x1

    .line 177
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 183
    :cond_2
    const/16 v7, 0x28

    if-ne v2, v7, :cond_3

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    :cond_3
    const/16 v7, 0x29

    if-ne v2, v7, :cond_0

    .line 186
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 190
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 193
    .end local v2           #c:C
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 194
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Llewa/laml/data/Expression;->buildInner(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Llewa/laml/data/Expression;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Llewa/laml/data/Expression;

    return-object v7
.end method

.method private static checkParams([Llewa/laml/data/Expression;)Z
    .locals 2
    .parameter "params"

    .prologue
    .line 199
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 200
    aget-object v1, p0, v0

    if-nez v1, :cond_0

    .line 201
    const/4 v1, 0x0

    .line 203
    :goto_1
    return v1

    .line 199
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static cmpOpePri(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "op1"
    .parameter "op2"

    .prologue
    .line 207
    invoke-static {p0}, Llewa/laml/data/Expression;->getPriority(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Llewa/laml/data/Expression;->getPriority(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static getPriority(Ljava/lang/String;)I
    .locals 3
    .parameter "op"

    .prologue
    .line 211
    const/4 v1, 0x0

    .local v1, i:I
    sget-object v2, Llewa/laml/data/Expression;->mOperatorsPriority:[Ljava/lang/String;

    array-length v0, v2

    .local v0, N:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 212
    sget-object v2, Llewa/laml/data/Expression;->mOperatorsPriority:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 215
    .end local v1           #i:I
    :goto_1
    return v1

    .line 211
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static isDigitChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 219
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFunctionChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 223
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVariableChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 227
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-le p0, v0, :cond_3

    :cond_2
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract accept(Llewa/laml/data/ExpressionVisitor;)V
.end method

.method public abstract evaluate(Llewa/laml/data/Variables;)D
.end method

.method public evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;
    .locals 1
    .parameter "var"

    .prologue
    .line 236
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNull(Llewa/laml/data/Variables;)Z
    .locals 1
    .parameter "var"

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method
