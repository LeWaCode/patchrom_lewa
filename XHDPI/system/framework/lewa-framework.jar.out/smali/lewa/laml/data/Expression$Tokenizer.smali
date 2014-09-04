.class Llewa/laml/data/Expression$Tokenizer;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tokenizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/data/Expression$Tokenizer$Token;,
        Llewa/laml/data/Expression$Tokenizer$TokenType;
    }
.end annotation


# instance fields
.field private mPos:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "exp"

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-object p1, p0, Llewa/laml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 561
    invoke-virtual {p0}, Llewa/laml/data/Expression$Tokenizer;->reset()V

    .line 562
    return-void
.end method


# virtual methods
.method public getToken()Llewa/laml/data/Expression$Tokenizer$Token;
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/16 v12, 0x27

    const/16 v11, 0x23

    .line 576
    const/4 v1, 0x0

    .line 577
    .local v1, bracketCount:I
    const/4 v2, -0x1

    .line 579
    .local v2, bracketStart:I
    iget v5, p0, Llewa/laml/data/Expression$Tokenizer;->mPos:I

    .local v5, i:I
    iget-object v9, p0, Llewa/laml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v5, v0, :cond_15

    .line 580
    const/4 v6, 0x0

    .line 581
    .local v6, j:I
    iget-object v9, p0, Llewa/laml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 582
    .local v3, c:C
    if-nez v1, :cond_11

    .line 583
    if-eq v3, v11, :cond_0

    const/16 v9, 0x40

    if-ne v3, v9, :cond_6

    .line 584
    :cond_0
    add-int/lit8 v6, v5, 0x1

    :goto_1
    iget-object v9, p0, Llewa/laml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v6, v9, :cond_1

    .line 585
    iget-object v9, p0, Llewa/laml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    #calls: Llewa/laml/data/Expression;->isVariableChar(C)Z
    invoke-static {v9}, Llewa/laml/data/Expression;->access$000(C)Z

    move-result v9

    if-nez v9, :cond_3

    .line 588
    :cond_1
    add-int/lit8 v9, v5, 0x1

    if-ne v6, v9, :cond_4

    .line 589
    const-string v9, "Expression"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid variable name:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Llewa/laml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    .end local v3           #c:C
    .end local v6           #j:I
    :cond_2
    :goto_2
    return-object v8

    .line 584
    .restart local v3       #c:C
    .restart local v6       #j:I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 592
    :cond_4
    iput v6, p0, Llewa/laml/data/Expression$Tokenizer;->mPos:I

    .line 593
    new-instance v9, Llewa/laml/data/Expression$Tokenizer$Token;

    if-ne v3, v11, :cond_5

    sget-object v8, Llewa/laml/data/Expression$Tokenizer$TokenType;->VAR:Llewa/laml/data/Expression$Tokenizer$TokenType;

    :goto_3
    iget-object v10, p0, Llewa/laml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Llewa/laml/data/Expression$Tokenizer$Token;-><init>(Llewa/laml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    move-object v8, v9

    goto :goto_2

    :cond_5
    sget-object v8, Llewa/laml/data/Expression$Tokenizer$TokenType;->VARSTR:Llewa/laml/data/Expression$Tokenizer$TokenType;

    goto :goto_3

    .line 596
    :cond_6
    #calls: Llewa/laml/data/Expression;->isDigitChar(C)Z
    invoke-static {v3}, Llewa/laml/data/Expression;->access$100(C)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 597
    add-int/lit8 v6, v5, 0x1

    :goto_4
    iget-object v8, p0, Llewa/laml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_7

    .line 598
    iget-object v8, p0, Llewa/laml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    #calls: Llewa/laml/data/Expression;->isDigitChar(C)Z
    invoke-static {v8}, Llewa/laml/data/Expression;->access$100(C)Z

    move-result v8

    if-nez v8, :cond_8

    .line 601
    :cond_7
    iput v6, p0, Llewa/laml/data/Expression$Tokenizer;->mPos:I

    .line 602
    new-instance v8, Llewa/laml/data/Expression$Tokenizer$Token;

    sget-object v9, Llewa/laml/data/Expression$Tokenizer$TokenType;->NUM:Llewa/laml/data/Expression$Tokenizer$TokenType;

    iget-object v10, p0, Llewa/laml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v10, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Llewa/laml/data/Expression$Tokenizer$Token;-><init>(Llewa/laml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto :goto_2

    .line 597
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 604
    :cond_9
    #calls: Llewa/laml/data/Expression;->isFunctionChar(C)Z
    invoke-static {v3}, Llewa/laml/data/Expression;->access$200(C)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 605
    add-int/lit8 v6, v5, 0x1

    iget-object v8, p0, Llewa/laml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    :goto_5
    if-ge v6, v0, :cond_a

    .line 606
    iget-object v8, p0, Llewa/laml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    #calls: Llewa/laml/data/Expression;->isFunctionChar(C)Z
    invoke-static {v8}, Llewa/laml/data/Expression;->access$200(C)Z

    move-result v8

    if-nez v8, :cond_b

    .line 609
    :cond_a
    iput v6, p0, Llewa/laml/data/Expression$Tokenizer;->mPos:I

    .line 610
    new-instance v8, Llewa/laml/data/Expression$Tokenizer$Token;

    sget-object v9, Llewa/laml/data/Expression$Tokenizer$TokenType;->FUN:Llewa/laml/data/Expression$Tokenizer$TokenType;

    iget-object v10, p0, Llewa/laml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v10, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Llewa/laml/data/Expression$Tokenizer$Token;-><init>(Llewa/laml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto :goto_2

    .line 605
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 612
    :cond_c
    invoke-static {v3}, Llewa/laml/data/Expression$BinaryExpression;->parseOperator(C)Llewa/laml/data/Expression$BinaryExpression$Ope;

    move-result-object v9

    sget-object v10, Llewa/laml/data/Expression$BinaryExpression$Ope;->INVALID:Llewa/laml/data/Expression$BinaryExpression$Ope;

    if-eq v9, v10, :cond_d

    .line 613
    add-int/lit8 v8, v5, 0x1

    iput v8, p0, Llewa/laml/data/Expression$Tokenizer;->mPos:I

    .line 614
    new-instance v8, Llewa/laml/data/Expression$Tokenizer$Token;

    sget-object v9, Llewa/laml/data/Expression$Tokenizer$TokenType;->OPE:Llewa/laml/data/Expression$Tokenizer$TokenType;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Llewa/laml/data/Expression$Tokenizer$Token;-><init>(Llewa/laml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 616
    :cond_d
    if-ne v3, v12, :cond_11

    .line 617
    const/4 v7, 0x0

    .line 618
    .local v7, slash:Z
    add-int/lit8 v6, v5, 0x1

    iget-object v9, p0, Llewa/laml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    :goto_6
    if-ge v6, v0, :cond_11

    .line 619
    iget-object v9, p0, Llewa/laml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 620
    .local v4, cc:C
    if-nez v7, :cond_e

    if-eq v4, v12, :cond_10

    .line 621
    :cond_e
    const/16 v9, 0x5c

    if-ne v4, v9, :cond_f

    .line 622
    const/4 v7, 0x1

    .line 618
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 624
    :cond_f
    const/4 v7, 0x0

    goto :goto_7

    .line 626
    :cond_10
    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Llewa/laml/data/Expression$Tokenizer;->mPos:I

    .line 627
    new-instance v8, Llewa/laml/data/Expression$Tokenizer$Token;

    sget-object v9, Llewa/laml/data/Expression$Tokenizer$TokenType;->STR:Llewa/laml/data/Expression$Tokenizer$TokenType;

    iget-object v10, p0, Llewa/laml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\\'"

    const-string v12, "\'"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Llewa/laml/data/Expression$Tokenizer$Token;-><init>(Llewa/laml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 633
    .end local v4           #cc:C
    .end local v7           #slash:Z
    :cond_11
    const/16 v9, 0x28

    if-ne v3, v9, :cond_14

    .line 634
    if-nez v1, :cond_12

    .line 635
    add-int/lit8 v2, v5, 0x1

    .line 636
    :cond_12
    add-int/lit8 v1, v1, 0x1

    .line 579
    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 637
    :cond_14
    const/16 v9, 0x29

    if-ne v3, v9, :cond_13

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_13

    .line 638
    add-int/lit8 v8, v5, 0x1

    iput v8, p0, Llewa/laml/data/Expression$Tokenizer;->mPos:I

    .line 639
    new-instance v8, Llewa/laml/data/Expression$Tokenizer$Token;

    sget-object v9, Llewa/laml/data/Expression$Tokenizer$TokenType;->BRACKET:Llewa/laml/data/Expression$Tokenizer$TokenType;

    iget-object v10, p0, Llewa/laml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v10, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Llewa/laml/data/Expression$Tokenizer$Token;-><init>(Llewa/laml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 642
    .end local v3           #c:C
    .end local v6           #j:I
    :cond_15
    if-eqz v1, :cond_2

    .line 643
    const-string v9, "Expression"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mismatched bracket:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Llewa/laml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x0

    iput v0, p0, Llewa/laml/data/Expression$Tokenizer;->mPos:I

    .line 649
    return-void
.end method
