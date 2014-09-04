.class public Llewa/widget/dicon/ValInt;
.super Ljava/lang/Object;
.source "ValInt.java"


# instance fields
.field private mVal:I

.field private mValExp:Llewa/widget/dicon/ValExp;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Llewa/widget/dicon/ValInt;->mVal:I

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Llewa/widget/dicon/ValExp;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Llewa/widget/dicon/ValInt;->mVal:I

    .line 21
    :goto_0
    return-void

    .line 19
    :cond_0
    new-instance v0, Llewa/widget/dicon/ValExp;

    invoke-direct {v0, p1}, Llewa/widget/dicon/ValExp;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llewa/widget/dicon/ValInt;->mValExp:Llewa/widget/dicon/ValExp;

    goto :goto_0
.end method

.method public static CreateColor(Ljava/lang/String;)Llewa/widget/dicon/ValInt;
    .locals 5
    .parameter "value"

    .prologue
    .line 27
    new-instance v2, Llewa/widget/dicon/ValInt;

    invoke-direct {v2}, Llewa/widget/dicon/ValInt;-><init>()V

    .line 28
    .local v2, val:Llewa/widget/dicon/ValInt;
    invoke-static {p0}, Llewa/widget/dicon/ValExp;->isHexColor(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    const/16 v3, 0x23

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 30
    .local v0, start:I
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, sub:Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v2, Llewa/widget/dicon/ValInt;->mVal:I

    .line 36
    .end local v0           #start:I
    .end local v1           #sub:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 34
    :cond_0
    new-instance v3, Llewa/widget/dicon/ValExp;

    invoke-direct {v3, p0}, Llewa/widget/dicon/ValExp;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Llewa/widget/dicon/ValInt;->mValExp:Llewa/widget/dicon/ValExp;

    goto :goto_0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Llewa/widget/dicon/ValInt;->mValExp:Llewa/widget/dicon/ValExp;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Llewa/widget/dicon/ValInt;->mValExp:Llewa/widget/dicon/ValExp;

    invoke-virtual {v0}, Llewa/widget/dicon/ValExp;->getInt()I

    move-result v0

    .line 43
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Llewa/widget/dicon/ValInt;->mVal:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Llewa/widget/dicon/ValInt;->mValExp:Llewa/widget/dicon/ValExp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/widget/dicon/ValInt;->mValExp:Llewa/widget/dicon/ValExp;

    invoke-virtual {v0}, Llewa/widget/dicon/ValExp;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Llewa/widget/dicon/ValInt;->mVal:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
