.class public final Lcom/qq/taf/jce/dynamic/ZeroField;
.super Lcom/qq/taf/jce/dynamic/NumberField;
.source "ZeroField.java"


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lcom/qq/taf/jce/dynamic/NumberField;-><init>(I)V

    .line 6
    return-void
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 16
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public getNumber()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 25
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method
