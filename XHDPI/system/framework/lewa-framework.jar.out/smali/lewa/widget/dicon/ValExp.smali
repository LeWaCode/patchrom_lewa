.class public Llewa/widget/dicon/ValExp;
.super Ljava/lang/Object;
.source "ValExp.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "ValExp"

.field private static mFunctionSet:Z

.field static sEvaluator:Lnet/sourceforge/jeval/Evaluator;

.field private static sLocalVars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Llewa/widget/dicon/ValExp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExpression:Ljava/lang/String;

.field private mIsConst:Z

.field private mLastResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lnet/sourceforge/jeval/Evaluator;

    invoke-direct {v0}, Lnet/sourceforge/jeval/Evaluator;-><init>()V

    sput-object v0, Llewa/widget/dicon/ValExp;->sEvaluator:Lnet/sourceforge/jeval/Evaluator;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Llewa/widget/dicon/ValExp;->mFunctionSet:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "expression"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Llewa/widget/dicon/ValExp;->mExpression:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/widget/dicon/ValExp;->mIsConst:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "expression"
    .parameter "isConst"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p0, p1, p2}, Llewa/widget/dicon/ValExp;->setExpression(Ljava/lang/String;Z)V

    .line 38
    return-void
.end method

.method public static deinitEnv()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    sput-object v0, Llewa/widget/dicon/ValExp;->sLocalVars:Ljava/util/HashMap;

    .line 194
    return-void
.end method

.method public static expand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "expression"

    .prologue
    .line 253
    const/4 v0, 0x1

    invoke-static {p0, v0}, Llewa/widget/dicon/ValExp;->expand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static expand(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .parameter "expression"
    .parameter "selfExpand"

    .prologue
    const/4 v6, 0x0

    const/4 v9, -0x1

    .line 258
    sget-object v7, Llewa/widget/dicon/ValExp;->sLocalVars:Ljava/util/HashMap;

    if-nez v7, :cond_0

    .line 313
    .end local p0
    :goto_0
    return-object p0

    .line 262
    .restart local p0
    :cond_0
    const/4 v1, 0x0

    .line 264
    .local v1, start:I
    move-object v2, p0

    .line 267
    .local v2, tempExpression:Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v7, "#{"

    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v9, :cond_7

    .line 268
    const/16 v7, 0x7d

    add-int/lit8 v8, v1, 0x2

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 270
    .local v0, end:I
    if-eq v0, v9, :cond_2

    add-int/lit8 v7, v1, 0x3

    if-ge v0, v7, :cond_3

    .line 272
    :cond_2
    const-string v7, "ValExp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR! invalid expression:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v6

    .line 273
    goto :goto_0

    .line 275
    :cond_3
    add-int/lit8 v7, v1, 0x2

    invoke-virtual {v2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, varName:Ljava/lang/String;
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v2, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, varExpress:Ljava/lang/String;
    sget-object v7, Llewa/widget/dicon/ValExp;->sLocalVars:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llewa/widget/dicon/ValExp;

    .line 281
    .local v3, var:Llewa/widget/dicon/ValExp;
    if-eqz v3, :cond_6

    iget-object v7, v3, Llewa/widget/dicon/ValExp;->mExpression:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 283
    iget-object v7, v3, Llewa/widget/dicon/ValExp;->mExpression:Ljava/lang/String;

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 285
    iget-object v7, v3, Llewa/widget/dicon/ValExp;->mExpression:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v9, :cond_1

    .line 287
    if-eqz p1, :cond_5

    .line 288
    iget-object v7, v3, Llewa/widget/dicon/ValExp;->mLastResult:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 289
    iget-object v7, v3, Llewa/widget/dicon/ValExp;->mLastResult:Ljava/lang/String;

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 294
    :cond_4
    const-string v7, "ValExp"

    const-string v8, "ERROR! expand itself failed. mResult  != null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v6

    .line 296
    goto :goto_0

    .line 300
    :cond_5
    const-string v7, "ValExp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR! need to expand itself, but we denied. @"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Llewa/widget/dicon/ValExp;->mExpression:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v6

    .line 303
    goto/16 :goto_0

    .line 309
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .end local v0           #end:I
    .end local v3           #var:Llewa/widget/dicon/ValExp;
    .end local v4           #varExpress:Ljava/lang/String;
    .end local v5           #varName:Ljava/lang/String;
    :cond_7
    move-object p0, v2

    .line 313
    goto/16 :goto_0
.end method

.method public static initEvn(Ljava/util/HashMap;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Llewa/widget/dicon/ValExp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, localVars:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Llewa/widget/dicon/ValExp;>;"
    sget-boolean v0, Llewa/widget/dicon/ValExp;->mFunctionSet:Z

    if-nez v0, :cond_0

    .line 186
    sget-object v0, Llewa/widget/dicon/ValExp;->sEvaluator:Lnet/sourceforge/jeval/Evaluator;

    new-instance v1, Llewa/widget/dicon/IfelseFunction;

    invoke-direct {v1}, Llewa/widget/dicon/IfelseFunction;-><init>()V

    invoke-virtual {v0, v1}, Lnet/sourceforge/jeval/Evaluator;->putFunction(Lnet/sourceforge/jeval/function/Function;)V

    .line 187
    const/4 v0, 0x1

    sput-boolean v0, Llewa/widget/dicon/ValExp;->mFunctionSet:Z

    .line 189
    :cond_0
    sput-object p0, Llewa/widget/dicon/ValExp;->sLocalVars:Ljava/util/HashMap;

    .line 190
    return-void
.end method

.method public static isBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "expression"

    .prologue
    .line 209
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    :cond_0
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFixString(Ljava/lang/String;)Z
    .locals 3
    .parameter "expression"

    .prologue
    .line 231
    const-string v2, "[\\{\\}\\(\\)\\+\\#]{1,}"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 232
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 233
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isHexColor(Ljava/lang/String;)Z
    .locals 3
    .parameter "expression"

    .prologue
    .line 237
    const-string v2, "^\\#[0-9A-Fa-f]{2,16}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 238
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 239
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    return v2
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 3
    .parameter "expression"

    .prologue
    .line 200
    const-string v2, "^(-?\\d+)(\\.\\d+)?$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 201
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 202
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    return v2
.end method

.method public static isString(Ljava/lang/String;)Z
    .locals 3
    .parameter "expression"

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-object v2, Llewa/widget/dicon/ValExp;->sEvaluator:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v2}, Lnet/sourceforge/jeval/Evaluator;->getQuoteCharacter()C

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-object v2, Llewa/widget/dicon/ValExp;->sEvaluator:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v2}, Lnet/sourceforge/jeval/Evaluator;->getQuoteCharacter()C

    move-result v2

    if-ne v1, v2, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 226
    :cond_0
    return v0
.end method

.method public static setQuoteCharacter(C)V
    .locals 1
    .parameter "c"

    .prologue
    .line 243
    sget-object v0, Llewa/widget/dicon/ValExp;->sEvaluator:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v0, p0}, Lnet/sourceforge/jeval/Evaluator;->setQuoteCharacter(C)V

    .line 245
    return-void
.end method

.method public static setSystemVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 155
    if-eqz p1, :cond_0

    const/16 v1, 0x23

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 157
    :try_start_0
    sget-object v1, Llewa/widget/dicon/ValExp;->sEvaluator:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v1, p1}, Lnet/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lnet/sourceforge/jeval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 164
    :cond_0
    :goto_0
    sget-object v1, Llewa/widget/dicon/ValExp;->sEvaluator:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v1, p0, p1}, Lnet/sourceforge/jeval/Evaluator;->putVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Lnet/sourceforge/jeval/EvaluationException;
    const-string v1, "ValExp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR! when try to setSystemVariable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static toStringVal(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "exp"

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public evaluate()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-object v3, p0, Llewa/widget/dicon/ValExp;->mExpression:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 77
    :goto_0
    return-object v2

    .line 63
    :cond_0
    iget-object v1, p0, Llewa/widget/dicon/ValExp;->mExpression:Ljava/lang/String;

    .line 65
    .local v1, tempExpression:Ljava/lang/String;
    :try_start_0
    iget-boolean v3, p0, Llewa/widget/dicon/ValExp;->mIsConst:Z

    if-eqz v3, :cond_1

    .line 66
    iget-object v2, p0, Llewa/widget/dicon/ValExp;->mLastResult:Ljava/lang/String;

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {v1}, Llewa/widget/dicon/ValExp;->expand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    sget-object v3, Llewa/widget/dicon/ValExp;->sEvaluator:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v3, v1}, Lnet/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lnet/sourceforge/jeval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Lnet/sourceforge/jeval/EvaluationException;
    const-string v3, "ValExp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR! when try to evaluate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Llewa/widget/dicon/ValExp;->mExpression:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v0}, Lnet/sourceforge/jeval/EvaluationException;->printStackTrace()V

    goto :goto_0
.end method

.method public getBool()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llewa/widget/dicon/ValExp;->getBool(Z)Z

    move-result v0

    return v0
.end method

.method public getBool(Z)Z
    .locals 5
    .parameter "defVal"

    .prologue
    .line 83
    invoke-virtual {p0}, Llewa/widget/dicon/ValExp;->evaluate()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llewa/widget/dicon/ValExp;->mLastResult:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Llewa/widget/dicon/ValExp;->mLastResult:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Llewa/widget/dicon/ValExp;->mLastResult:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 88
    .local v0, doubleResult:Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    .line 89
    const/4 p1, 0x1

    .line 93
    .end local v0           #doubleResult:Ljava/lang/Double;
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 91
    .restart local v0       #doubleResult:Ljava/lang/Double;
    .restart local p1
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getDouble()D
    .locals 2

    .prologue
    .line 112
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Llewa/widget/dicon/ValExp;->getDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(D)D
    .locals 1
    .parameter "defVal"

    .prologue
    .line 103
    invoke-virtual {p0}, Llewa/widget/dicon/ValExp;->evaluate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/widget/dicon/ValExp;->mLastResult:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Llewa/widget/dicon/ValExp;->mLastResult:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Llewa/widget/dicon/ValExp;->mLastResult:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 107
    .end local p1
    :cond_0
    return-wide p1
.end method

.method public getInt()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llewa/widget/dicon/ValExp;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 4
    .parameter "defVal"

    .prologue
    .line 141
    invoke-virtual {p0}, Llewa/widget/dicon/ValExp;->evaluate()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llewa/widget/dicon/ValExp;->mLastResult:Ljava/lang/String;

    .line 142
    iget-object v2, p0, Llewa/widget/dicon/ValExp;->mLastResult:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Llewa/widget/dicon/ValExp;->mLastResult:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 144
    .local v0, d:D
    const-wide/high16 v2, 0x3fe0

    add-double/2addr v2, v0

    double-to-int p1, v2

    .line 146
    .end local v0           #d:D
    .end local p1
    :cond_0
    return p1
.end method

.method public getLastResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Llewa/widget/dicon/ValExp;->mLastResult:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llewa/widget/dicon/ValExp;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "defVal"

    .prologue
    .line 117
    invoke-virtual {p0}, Llewa/widget/dicon/ValExp;->evaluate()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llewa/widget/dicon/ValExp;->mLastResult:Ljava/lang/String;

    .line 118
    iget-object v2, p0, Llewa/widget/dicon/ValExp;->mLastResult:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 130
    .end local p1
    :goto_0
    return-object p1

    .line 122
    .restart local p1
    :cond_0
    const/4 v1, 0x0

    .line 124
    .local v1, ret:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Llewa/widget/dicon/ValExp;->mLastResult:Ljava/lang/String;

    sget-object v3, Llewa/widget/dicon/ValExp;->sEvaluator:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v3}, Lnet/sourceforge/jeval/Evaluator;->getQuoteCharacter()C

    move-result v3

    invoke-static {v2, v3}, Lnet/sourceforge/jeval/function/FunctionHelper;->trimAndRemoveQuoteChars(Ljava/lang/String;C)Ljava/lang/String;
    :try_end_0
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object p1, v1

    .line 130
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Lnet/sourceforge/jeval/function/FunctionException;
    invoke-virtual {v0}, Lnet/sourceforge/jeval/function/FunctionException;->printStackTrace()V

    goto :goto_1
.end method

.method public isChanged()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 329
    invoke-virtual {p0}, Llewa/widget/dicon/ValExp;->evaluate()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, newResult:Ljava/lang/String;
    iget-object v2, p0, Llewa/widget/dicon/ValExp;->mLastResult:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 331
    iget-object v2, p0, Llewa/widget/dicon/ValExp;->mLastResult:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    const/4 v1, 0x0

    .line 338
    :cond_0
    :goto_0
    return v1

    .line 337
    :cond_1
    iput-object v0, p0, Llewa/widget/dicon/ValExp;->mLastResult:Ljava/lang/String;

    goto :goto_0
.end method

.method public setExpression(Ljava/lang/String;Z)V
    .locals 4
    .parameter "expression"
    .parameter "isConst"

    .prologue
    .line 46
    iput-object p1, p0, Llewa/widget/dicon/ValExp;->mExpression:Ljava/lang/String;

    .line 47
    iput-boolean p2, p0, Llewa/widget/dicon/ValExp;->mIsConst:Z

    .line 48
    iget-boolean v1, p0, Llewa/widget/dicon/ValExp;->mIsConst:Z

    if-eqz v1, :cond_0

    .line 50
    :try_start_0
    sget-object v1, Llewa/widget/dicon/ValExp;->sEvaluator:Lnet/sourceforge/jeval/Evaluator;

    iget-object v2, p0, Llewa/widget/dicon/ValExp;->mExpression:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llewa/widget/dicon/ValExp;->mLastResult:Ljava/lang/String;
    :try_end_0
    .catch Lnet/sourceforge/jeval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Lnet/sourceforge/jeval/EvaluationException;
    const-string v1, "ValExp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR! when try to setExpression:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Llewa/widget/dicon/ValExp;->mExpression:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {v0}, Lnet/sourceforge/jeval/EvaluationException;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llewa/widget/dicon/ValExp;->mExpression:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Llewa/widget/dicon/ValExp;->mIsConst:Z

    if-eqz v0, :cond_0

    const-string v0, "}-const"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "}"

    goto :goto_0
.end method
