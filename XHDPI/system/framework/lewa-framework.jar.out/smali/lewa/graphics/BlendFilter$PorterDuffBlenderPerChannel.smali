.class abstract Llewa/graphics/BlendFilter$PorterDuffBlenderPerChannel;
.super Llewa/graphics/BlendFilter$PorterDuffBlender;
.source "BlendFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/graphics/BlendFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PorterDuffBlenderPerChannel"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/graphics/BlendFilter;


# direct methods
.method constructor <init>(Llewa/graphics/BlendFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Llewa/graphics/BlendFilter$PorterDuffBlenderPerChannel;->this$0:Llewa/graphics/BlendFilter;

    invoke-direct {p0, p1}, Llewa/graphics/BlendFilter$PorterDuffBlender;-><init>(Llewa/graphics/BlendFilter;)V

    return-void
.end method


# virtual methods
.method public abstract blendAlpha(FF)F
.end method

.method public abstract blendChannel(FFFF)F
.end method

.method public blendFinal(II)I
    .locals 19
    .parameter "dstArgb"
    .parameter "srcArgb"

    .prologue
    .line 115
    ushr-int/lit8 v15, p2, 0x18

    and-int/lit16 v11, v15, 0xff

    .line 116
    .local v11, srcA:I
    ushr-int/lit8 v15, p2, 0x10

    and-int/lit16 v14, v15, 0xff

    .line 117
    .local v14, srcR:I
    ushr-int/lit8 v15, p2, 0x8

    and-int/lit16 v13, v15, 0xff

    .line 118
    .local v13, srcG:I
    move/from16 v0, p2

    and-int/lit16 v12, v0, 0xff

    .line 119
    .local v12, srcB:I
    ushr-int/lit8 v15, p1, 0x18

    and-int/lit16 v3, v15, 0xff

    .line 120
    .local v3, dstA:I
    ushr-int/lit8 v15, p1, 0x10

    and-int/lit16 v6, v15, 0xff

    .line 121
    .local v6, dstR:I
    ushr-int/lit8 v15, p1, 0x8

    and-int/lit16 v5, v15, 0xff

    .line 122
    .local v5, dstG:I
    move/from16 v0, p1

    and-int/lit16 v4, v0, 0xff

    .line 123
    .local v4, dstB:I
    int-to-float v15, v3

    const/high16 v16, 0x437f

    div-float v1, v15, v16

    .line 124
    .local v1, Da:F
    int-to-float v15, v11

    const/high16 v16, 0x437f

    div-float v2, v15, v16

    .line 125
    .local v2, Sa:F
    const/high16 v15, 0x437f

    const/16 v16, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Llewa/graphics/BlendFilter$PorterDuffBlenderPerChannel;->blendAlpha(FF)F

    move-result v17

    const/high16 v18, 0x3f80

    invoke-static/range {v16 .. v18}, Llewa/graphics/ColorFilterUtils;->clamp(FFF)F

    move-result v16

    mul-float v15, v15, v16

    float-to-int v7, v15

    .line 126
    .local v7, resultA:I
    int-to-float v15, v6

    const/high16 v16, 0x437f

    div-float v1, v15, v16

    .line 127
    int-to-float v15, v14

    const/high16 v16, 0x437f

    div-float v2, v15, v16

    .line 128
    const/high16 v15, 0x437f

    const/16 v16, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v1, v2}, Llewa/graphics/BlendFilter$PorterDuffBlenderPerChannel;->blendChannel(FFFF)F

    move-result v17

    const/high16 v18, 0x3f80

    invoke-static/range {v16 .. v18}, Llewa/graphics/ColorFilterUtils;->clamp(FFF)F

    move-result v16

    mul-float v15, v15, v16

    float-to-int v10, v15

    .line 129
    .local v10, resultR:I
    int-to-float v15, v5

    const/high16 v16, 0x437f

    div-float v1, v15, v16

    .line 130
    int-to-float v15, v13

    const/high16 v16, 0x437f

    div-float v2, v15, v16

    .line 131
    const/high16 v15, 0x437f

    const/16 v16, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v1, v2}, Llewa/graphics/BlendFilter$PorterDuffBlenderPerChannel;->blendChannel(FFFF)F

    move-result v17

    const/high16 v18, 0x3f80

    invoke-static/range {v16 .. v18}, Llewa/graphics/ColorFilterUtils;->clamp(FFF)F

    move-result v16

    mul-float v15, v15, v16

    float-to-int v9, v15

    .line 132
    .local v9, resultG:I
    int-to-float v15, v4

    const/high16 v16, 0x437f

    div-float v1, v15, v16

    .line 133
    int-to-float v15, v12

    const/high16 v16, 0x437f

    div-float v2, v15, v16

    .line 134
    const/high16 v15, 0x437f

    const/16 v16, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v1, v2}, Llewa/graphics/BlendFilter$PorterDuffBlenderPerChannel;->blendChannel(FFFF)F

    move-result v17

    const/high16 v18, 0x3f80

    invoke-static/range {v16 .. v18}, Llewa/graphics/ColorFilterUtils;->clamp(FFF)F

    move-result v16

    mul-float v15, v15, v16

    float-to-int v8, v15

    .line 135
    .local v8, resultB:I
    shl-int/lit8 v15, v7, 0x18

    shl-int/lit8 v16, v10, 0x10

    or-int v15, v15, v16

    shl-int/lit8 v16, v9, 0x8

    or-int v15, v15, v16

    or-int/2addr v15, v8

    return v15
.end method
