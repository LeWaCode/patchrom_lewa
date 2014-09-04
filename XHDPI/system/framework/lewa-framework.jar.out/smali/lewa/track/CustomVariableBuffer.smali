.class Llewa/track/CustomVariableBuffer;
.super Ljava/lang/Object;
.source "CustomVariableBuffer.java"


# instance fields
.field private customVariables:[Llewa/track/CustomVariable;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x5

    new-array v0, v0, [Llewa/track/CustomVariable;

    iput-object v0, p0, Llewa/track/CustomVariableBuffer;->customVariables:[Llewa/track/CustomVariable;

    return-void
.end method

.method private throwOnInvalidIndex(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 27
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index must be between 1 and 5 inclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    return-void
.end method


# virtual methods
.method public clearCustomVariableAt(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Llewa/track/CustomVariableBuffer;->throwOnInvalidIndex(I)V

    .line 41
    iget-object v0, p0, Llewa/track/CustomVariableBuffer;->customVariables:[Llewa/track/CustomVariable;

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 42
    return-void
.end method

.method public getCustomVariableArray()[Llewa/track/CustomVariable;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Llewa/track/CustomVariableBuffer;->customVariables:[Llewa/track/CustomVariable;

    invoke-virtual {v0}, [Llewa/track/CustomVariable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llewa/track/CustomVariable;

    check-cast v0, [Llewa/track/CustomVariable;

    return-object v0
.end method

.method public getCustomVariableAt(I)Llewa/track/CustomVariable;
    .locals 2
    .parameter "index"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Llewa/track/CustomVariableBuffer;->throwOnInvalidIndex(I)V

    .line 19
    iget-object v0, p0, Llewa/track/CustomVariableBuffer;->customVariables:[Llewa/track/CustomVariable;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hasCustomVariables()Z
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Llewa/track/CustomVariableBuffer;->customVariables:[Llewa/track/CustomVariable;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 34
    iget-object v1, p0, Llewa/track/CustomVariableBuffer;->customVariables:[Llewa/track/CustomVariable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 35
    const/4 v1, 0x1

    .line 36
    :goto_1
    return v1

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isIndexAvailable(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 7
    invoke-direct {p0, p1}, Llewa/track/CustomVariableBuffer;->throwOnInvalidIndex(I)V

    .line 8
    iget-object v0, p0, Llewa/track/CustomVariableBuffer;->customVariables:[Llewa/track/CustomVariable;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCustomVariable(Llewa/track/CustomVariable;)V
    .locals 3
    .parameter "paramCustomVariable"

    .prologue
    .line 12
    invoke-virtual {p1}, Llewa/track/CustomVariable;->getIndex()I

    move-result v0

    .line 13
    .local v0, i:I
    invoke-direct {p0, v0}, Llewa/track/CustomVariableBuffer;->throwOnInvalidIndex(I)V

    .line 14
    iget-object v1, p0, Llewa/track/CustomVariableBuffer;->customVariables:[Llewa/track/CustomVariable;

    invoke-virtual {p1}, Llewa/track/CustomVariable;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v1, v2

    .line 15
    return-void
.end method
