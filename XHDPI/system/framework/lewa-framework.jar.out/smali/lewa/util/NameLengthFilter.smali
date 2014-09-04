.class public Llewa/util/NameLengthFilter;
.super Ljava/lang/Object;
.source "NameLengthFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field MAX_EN:I

.field regEx:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "mAX_EN"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "[\\u4e00-\\u9fa5]"

    iput-object v0, p0, Llewa/util/NameLengthFilter;->regEx:Ljava/lang/String;

    .line 16
    iput p1, p0, Llewa/util/NameLengthFilter;->MAX_EN:I

    .line 17
    return-void
.end method

.method private getChineseCount(Ljava/lang/String;)I
    .locals 5
    .parameter "str"

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, count:I
    iget-object v4, p0, Llewa/util/NameLengthFilter;->regEx:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 65
    .local v3, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 66
    .local v2, m:Ljava/util/regex/Matcher;
    :cond_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    if-gt v1, v4, :cond_0

    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v1           #i:I
    :cond_1
    return v0
.end method

.method private getKeepStr(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .parameter "str"
    .parameter "remainer"

    .prologue
    const/4 v6, 0x0

    .line 36
    const/4 v5, 0x1

    if-ge p2, v5, :cond_0

    .line 37
    const-string v5, ""

    .line 58
    :goto_0
    return-object v5

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    .local v0, count:I
    iget-object v5, p0, Llewa/util/NameLengthFilter;->regEx:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 41
    .local v3, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 42
    .local v2, m:Ljava/util/regex/Matcher;
    :cond_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 43
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    if-gt v1, v5, :cond_1

    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    .line 46
    .local v4, start:I
    add-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v0

    if-le v5, p2, :cond_3

    .line 47
    sub-int v5, p2, v0

    if-lez v5, :cond_2

    .line 48
    sub-int v5, p2, v0

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 50
    :cond_2
    const-string v5, ""

    goto :goto_0

    .line 43
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 55
    .end local v1           #i:I
    .end local v4           #start:I
    :cond_4
    sub-int v5, p2, v0

    if-lez v5, :cond_5

    .line 56
    sub-int v5, p2, v0

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 58
    :cond_5
    const-string v5, ""

    goto :goto_0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 22
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Llewa/util/NameLengthFilter;->getChineseCount(Ljava/lang/String;)I

    move-result v4

    add-int v1, v3, v4

    .line 24
    .local v1, destCount:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Llewa/util/NameLengthFilter;->getChineseCount(Ljava/lang/String;)I

    move-result v4

    add-int v2, v3, v4

    .line 27
    .local v2, sourceCount:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 28
    .local v0, bytes:[B
    add-int v3, v1, v2

    iget v4, p0, Llewa/util/NameLengthFilter;->MAX_EN:I

    if-le v3, v4, :cond_0

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Llewa/util/NameLengthFilter;->MAX_EN:I

    sub-int/2addr v4, v1

    invoke-direct {p0, v3, v4}, Llewa/util/NameLengthFilter;->getKeepStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 31
    .end local p1
    :cond_0
    return-object p1
.end method
