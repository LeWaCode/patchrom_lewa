.class public Lcom/qq/taf/jce/dynamic/StructField;
.super Lcom/qq/taf/jce/dynamic/JceField;
.source "StructField.java"


# static fields
.field private static final tagComp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/qq/taf/jce/dynamic/JceField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:[Lcom/qq/taf/jce/dynamic/JceField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/qq/taf/jce/dynamic/StructField$1;

    invoke-direct {v0}, Lcom/qq/taf/jce/dynamic/StructField$1;-><init>()V

    sput-object v0, Lcom/qq/taf/jce/dynamic/StructField;->tagComp:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>([Lcom/qq/taf/jce/dynamic/JceField;I)V
    .locals 0
    .parameter "data"
    .parameter "tag"

    .prologue
    .line 17
    invoke-direct {p0, p2}, Lcom/qq/taf/jce/dynamic/JceField;-><init>(I)V

    .line 18
    iput-object p1, p0, Lcom/qq/taf/jce/dynamic/StructField;->data:[Lcom/qq/taf/jce/dynamic/JceField;

    .line 19
    return-void
.end method


# virtual methods
.method public get()[Lcom/qq/taf/jce/dynamic/JceField;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/qq/taf/jce/dynamic/StructField;->data:[Lcom/qq/taf/jce/dynamic/JceField;

    return-object v0
.end method

.method public getFieldByTag(I)Lcom/qq/taf/jce/dynamic/JceField;
    .locals 4
    .parameter "tag"

    .prologue
    .line 42
    iget-object v1, p0, Lcom/qq/taf/jce/dynamic/StructField;->data:[Lcom/qq/taf/jce/dynamic/JceField;

    invoke-static {p1}, Lcom/qq/taf/jce/dynamic/JceField;->createZero(I)Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v2

    sget-object v3, Lcom/qq/taf/jce/dynamic/StructField;->tagComp:Ljava/util/Comparator;

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 43
    .local v0, n:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/qq/taf/jce/dynamic/StructField;->data:[Lcom/qq/taf/jce/dynamic/JceField;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setByTag(ILcom/qq/taf/jce/dynamic/JceField;)Z
    .locals 7
    .parameter "tag"
    .parameter "field"

    .prologue
    .line 26
    iget-object v4, p0, Lcom/qq/taf/jce/dynamic/StructField;->data:[Lcom/qq/taf/jce/dynamic/JceField;

    invoke-static {p1}, Lcom/qq/taf/jce/dynamic/JceField;->createZero(I)Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v5

    sget-object v6, Lcom/qq/taf/jce/dynamic/StructField;->tagComp:Ljava/util/Comparator;

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 27
    .local v1, n:I
    if-ltz v1, :cond_0

    .line 28
    iget-object v4, p0, Lcom/qq/taf/jce/dynamic/StructField;->data:[Lcom/qq/taf/jce/dynamic/JceField;

    aput-object p2, v4, v1

    .line 29
    const/4 v4, 0x1

    .line 38
    :goto_0
    return v4

    .line 31
    :cond_0
    neg-int v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 32
    .local v2, p:I
    iget-object v4, p0, Lcom/qq/taf/jce/dynamic/StructField;->data:[Lcom/qq/taf/jce/dynamic/JceField;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [Lcom/qq/taf/jce/dynamic/JceField;

    .line 33
    .local v3, rs:[Lcom/qq/taf/jce/dynamic/JceField;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 34
    iget-object v4, p0, Lcom/qq/taf/jce/dynamic/StructField;->data:[Lcom/qq/taf/jce/dynamic/JceField;

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 35
    :cond_1
    aput-object p2, v3, v2

    .line 36
    move v0, v2

    :goto_2
    iget-object v4, p0, Lcom/qq/taf/jce/dynamic/StructField;->data:[Lcom/qq/taf/jce/dynamic/JceField;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 37
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/qq/taf/jce/dynamic/StructField;->data:[Lcom/qq/taf/jce/dynamic/JceField;

    aget-object v5, v5, v0

    aput-object v5, v3, v4

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 38
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method
