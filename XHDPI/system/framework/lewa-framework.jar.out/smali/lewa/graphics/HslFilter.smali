.class public Llewa/graphics/HslFilter;
.super Ljava/lang/Object;
.source "HslFilter.java"

# interfaces
.implements Llewa/graphics/IBitmapFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/graphics/HslFilter$Filter;
    }
.end annotation


# instance fields
.field private mHsl:Llewa/graphics/HslFilter$Filter;

.field private mHsv:Llewa/graphics/HslFilter$Filter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method private ensureHsl()V
    .locals 2

    .prologue
    .line 11
    iget-object v0, p0, Llewa/graphics/HslFilter;->mHsl:Llewa/graphics/HslFilter$Filter;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Llewa/graphics/HslFilter$Filter;

    invoke-direct {v0}, Llewa/graphics/HslFilter$Filter;-><init>()V

    iput-object v0, p0, Llewa/graphics/HslFilter;->mHsl:Llewa/graphics/HslFilter$Filter;

    .line 13
    iget-object v0, p0, Llewa/graphics/HslFilter;->mHsl:Llewa/graphics/HslFilter$Filter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Llewa/graphics/HslFilter$Filter;->useHsv:Z

    .line 15
    :cond_0
    return-void
.end method

.method private ensureHsv()V
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Llewa/graphics/HslFilter;->mHsv:Llewa/graphics/HslFilter$Filter;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Llewa/graphics/HslFilter$Filter;

    invoke-direct {v0}, Llewa/graphics/HslFilter$Filter;-><init>()V

    iput-object v0, p0, Llewa/graphics/HslFilter;->mHsv:Llewa/graphics/HslFilter$Filter;

    .line 20
    iget-object v0, p0, Llewa/graphics/HslFilter;->mHsv:Llewa/graphics/HslFilter$Filter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Llewa/graphics/HslFilter$Filter;->useHsv:Z

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public process(Llewa/graphics/BitmapInfo;)V
    .locals 1
    .parameter "imgData"

    .prologue
    .line 25
    iget-object v0, p0, Llewa/graphics/HslFilter;->mHsl:Llewa/graphics/HslFilter$Filter;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Llewa/graphics/HslFilter;->mHsl:Llewa/graphics/HslFilter$Filter;

    invoke-virtual {v0, p1}, Llewa/graphics/HslFilter$Filter;->process(Llewa/graphics/BitmapInfo;)V

    .line 27
    :cond_0
    iget-object v0, p0, Llewa/graphics/HslFilter;->mHsv:Llewa/graphics/HslFilter$Filter;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Llewa/graphics/HslFilter;->mHsv:Llewa/graphics/HslFilter$Filter;

    invoke-virtual {v0, p1}, Llewa/graphics/HslFilter$Filter;->process(Llewa/graphics/BitmapInfo;)V

    .line 29
    :cond_1
    return-void
.end method

.method public setHueAdjust(F)V
    .locals 1
    .parameter "hue"

    .prologue
    .line 32
    invoke-direct {p0}, Llewa/graphics/HslFilter;->ensureHsl()V

    .line 33
    iget-object v0, p0, Llewa/graphics/HslFilter;->mHsl:Llewa/graphics/HslFilter$Filter;

    invoke-virtual {v0, p1}, Llewa/graphics/HslFilter$Filter;->setHueAdjust(F)V

    .line 34
    return-void
.end method

.method public setHueModify(F)V
    .locals 1
    .parameter "hue"

    .prologue
    .line 37
    invoke-direct {p0}, Llewa/graphics/HslFilter;->ensureHsl()V

    .line 38
    iget-object v0, p0, Llewa/graphics/HslFilter;->mHsl:Llewa/graphics/HslFilter$Filter;

    invoke-virtual {v0, p1}, Llewa/graphics/HslFilter$Filter;->setHueModify(F)V

    .line 39
    return-void
.end method

.method public setLightnessAdjust(F)V
    .locals 1
    .parameter "lightness"

    .prologue
    .line 42
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 43
    invoke-direct {p0}, Llewa/graphics/HslFilter;->ensureHsl()V

    .line 44
    iget-object v0, p0, Llewa/graphics/HslFilter;->mHsl:Llewa/graphics/HslFilter$Filter;

    invoke-virtual {v0, p1}, Llewa/graphics/HslFilter$Filter;->setLightnessAdjust(F)V

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-direct {p0}, Llewa/graphics/HslFilter;->ensureHsv()V

    .line 47
    iget-object v0, p0, Llewa/graphics/HslFilter;->mHsv:Llewa/graphics/HslFilter$Filter;

    invoke-virtual {v0, p1}, Llewa/graphics/HslFilter$Filter;->setLightnessAdjust(F)V

    goto :goto_0
.end method

.method public setLightnessModify(F)V
    .locals 1
    .parameter "lightness"

    .prologue
    .line 52
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 53
    invoke-direct {p0}, Llewa/graphics/HslFilter;->ensureHsl()V

    .line 54
    iget-object v0, p0, Llewa/graphics/HslFilter;->mHsl:Llewa/graphics/HslFilter$Filter;

    invoke-virtual {v0, p1}, Llewa/graphics/HslFilter$Filter;->setLightnessModify(F)V

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-direct {p0}, Llewa/graphics/HslFilter;->ensureHsv()V

    .line 57
    iget-object v0, p0, Llewa/graphics/HslFilter;->mHsv:Llewa/graphics/HslFilter$Filter;

    invoke-virtual {v0, p1}, Llewa/graphics/HslFilter$Filter;->setLightnessModify(F)V

    goto :goto_0
.end method

.method public setSaturationAdjust(F)V
    .locals 1
    .parameter "saturation"

    .prologue
    .line 62
    invoke-direct {p0}, Llewa/graphics/HslFilter;->ensureHsl()V

    .line 63
    iget-object v0, p0, Llewa/graphics/HslFilter;->mHsl:Llewa/graphics/HslFilter$Filter;

    invoke-virtual {v0, p1}, Llewa/graphics/HslFilter$Filter;->setSaturationAdjust(F)V

    .line 64
    return-void
.end method

.method public setSaturationModify(F)V
    .locals 1
    .parameter "saturation"

    .prologue
    .line 67
    invoke-direct {p0}, Llewa/graphics/HslFilter;->ensureHsl()V

    .line 68
    iget-object v0, p0, Llewa/graphics/HslFilter;->mHsl:Llewa/graphics/HslFilter$Filter;

    invoke-virtual {v0, p1}, Llewa/graphics/HslFilter$Filter;->setSaturationModify(F)V

    .line 69
    return-void
.end method
