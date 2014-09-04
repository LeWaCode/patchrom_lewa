.class public Lnet/sourceforge/jeval/ArgumentTokenizer;
.super Ljava/lang/Object;
.source "ArgumentTokenizer.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private arguments:Ljava/lang/String;

.field public final defaultDelimiter:C

.field private delimiter:C


# direct methods
.method public constructor <init>(Ljava/lang/String;C)V
    .locals 2
    .parameter "arguments"
    .parameter "delimiter"

    .prologue
    const/16 v1, 0x2c

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-char v1, p0, Lnet/sourceforge/jeval/ArgumentTokenizer;->defaultDelimiter:C

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/jeval/ArgumentTokenizer;->arguments:Ljava/lang/String;

    .line 37
    iput-char v1, p0, Lnet/sourceforge/jeval/ArgumentTokenizer;->delimiter:C

    .line 48
    iput-object p1, p0, Lnet/sourceforge/jeval/ArgumentTokenizer;->arguments:Ljava/lang/String;

    .line 49
    iput-char p2, p0, Lnet/sourceforge/jeval/ArgumentTokenizer;->delimiter:C

    .line 50
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lnet/sourceforge/jeval/ArgumentTokenizer;->hasMoreTokens()Z

    move-result v0

    return v0
.end method

.method public hasMoreTokens()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lnet/sourceforge/jeval/ArgumentTokenizer;->arguments:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 69
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lnet/sourceforge/jeval/ArgumentTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 6

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, charCtr:I
    iget-object v4, p0, Lnet/sourceforge/jeval/ArgumentTokenizer;->arguments:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 92
    .local v3, size:I
    const/4 v1, 0x0

    .line 93
    .local v1, parenthesesCtr:I
    const/4 v2, 0x0

    .line 96
    .local v2, returnArgument:Ljava/lang/String;
    :goto_0
    if-ge v0, v3, :cond_3

    .line 97
    iget-object v4, p0, Lnet/sourceforge/jeval/ArgumentTokenizer;->arguments:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x28

    if-ne v4, v5, :cond_1

    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 109
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    iget-object v4, p0, Lnet/sourceforge/jeval/ArgumentTokenizer;->arguments:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x29

    if-ne v4, v5, :cond_2

    .line 100
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 101
    :cond_2
    iget-object v4, p0, Lnet/sourceforge/jeval/ArgumentTokenizer;->arguments:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-char v5, p0, Lnet/sourceforge/jeval/ArgumentTokenizer;->delimiter:C

    if-ne v4, v5, :cond_0

    if-nez v1, :cond_0

    .line 104
    iget-object v4, p0, Lnet/sourceforge/jeval/ArgumentTokenizer;->arguments:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 105
    iget-object v4, p0, Lnet/sourceforge/jeval/ArgumentTokenizer;->arguments:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/sourceforge/jeval/ArgumentTokenizer;->arguments:Ljava/lang/String;

    .line 112
    :cond_3
    if-nez v2, :cond_4

    .line 113
    iget-object v2, p0, Lnet/sourceforge/jeval/ArgumentTokenizer;->arguments:Ljava/lang/String;

    .line 114
    const-string v4, ""

    iput-object v4, p0, Lnet/sourceforge/jeval/ArgumentTokenizer;->arguments:Ljava/lang/String;

    .line 117
    :cond_4
    return-object v2
.end method
