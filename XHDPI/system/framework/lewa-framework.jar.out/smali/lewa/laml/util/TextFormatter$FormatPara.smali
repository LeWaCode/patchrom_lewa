.class abstract Llewa/laml/util/TextFormatter$FormatPara;
.super Ljava/lang/Object;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/util/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FormatPara"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

.method synthetic constructor <init>(Llewa/laml/util/TextFormatter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 151
    invoke-direct {p0}, Llewa/laml/util/TextFormatter$FormatPara;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/String;)Llewa/laml/util/TextFormatter$FormatPara;
    .locals 5
    .parameter "para"

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, exp:Ljava/lang/String;
    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    new-instance v2, Llewa/laml/util/TextFormatter$StringVarPara;

    new-instance v3, Llewa/laml/util/Variable;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Llewa/laml/util/Variable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Llewa/laml/util/TextFormatter$StringVarPara;-><init>(Llewa/laml/util/Variable;)V

    .line 162
    :goto_0
    return-object v2

    .line 157
    :cond_0
    invoke-static {v0}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v1

    .line 158
    .local v1, expression:Llewa/laml/data/Expression;
    if-nez v1, :cond_1

    .line 159
    const-string v2, "TextFormatter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid parameter expression:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v2, 0x0

    goto :goto_0

    .line 162
    :cond_1
    new-instance v2, Llewa/laml/util/TextFormatter$ExpressioPara;

    invoke-direct {v2, v1}, Llewa/laml/util/TextFormatter$ExpressioPara;-><init>(Llewa/laml/data/Expression;)V

    goto :goto_0
.end method

.method public static buildArray(Ljava/lang/String;)[Llewa/laml/util/TextFormatter$FormatPara;
    .locals 9
    .parameter "exp"

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, bracketCount:I
    const/4 v7, 0x0

    .line 169
    .local v7, start:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v3, exps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/laml/util/TextFormatter$FormatPara;>;"
    const/4 v4, 0x0

    .local v4, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 171
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 172
    .local v2, c:C
    if-nez v1, :cond_1

    const/16 v8, 0x2c

    if-ne v2, v8, :cond_1

    .line 173
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Llewa/laml/util/TextFormatter$FormatPara;->build(Ljava/lang/String;)Llewa/laml/util/TextFormatter$FormatPara;

    move-result-object v5

    .line 174
    .local v5, para:Llewa/laml/util/TextFormatter$FormatPara;
    if-eqz v5, :cond_0

    .line 175
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v7, v4, 0x1

    .line 170
    .end local v5           #para:Llewa/laml/util/TextFormatter$FormatPara;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 178
    :cond_1
    const/16 v8, 0x28

    if-ne v2, v8, :cond_2

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    :cond_2
    const/16 v8, 0x29

    if-ne v2, v8, :cond_0

    .line 181
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 184
    .end local v2           #c:C
    :cond_3
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Llewa/laml/util/TextFormatter$FormatPara;->build(Ljava/lang/String;)Llewa/laml/util/TextFormatter$FormatPara;

    move-result-object v5

    .line 185
    .restart local v5       #para:Llewa/laml/util/TextFormatter$FormatPara;
    if-eqz v5, :cond_4

    .line 186
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v6, v8, [Llewa/laml/util/TextFormatter$FormatPara;

    .line 188
    .local v6, ret:[Llewa/laml/util/TextFormatter$FormatPara;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Llewa/laml/util/TextFormatter$FormatPara;

    .line 190
    .end local v6           #ret:[Llewa/laml/util/TextFormatter$FormatPara;
    :goto_2
    return-object v8

    :cond_4
    const/4 v8, 0x0

    goto :goto_2
.end method


# virtual methods
.method public abstract evaluate(Llewa/laml/data/Variables;)Ljava/lang/Object;
.end method
