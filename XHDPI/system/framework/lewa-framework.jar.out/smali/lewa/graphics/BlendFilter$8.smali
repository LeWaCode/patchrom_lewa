.class Llewa/graphics/BlendFilter$8;
.super Llewa/graphics/BlendFilter$BlenderPerChannel;
.source "BlendFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/graphics/BlendFilter;->getCurrentBlender()Llewa/graphics/BlendFilter$Blender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/graphics/BlendFilter;


# direct methods
.method constructor <init>(Llewa/graphics/BlendFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Llewa/graphics/BlendFilter$8;->this$0:Llewa/graphics/BlendFilter;

    invoke-direct {p0, p1}, Llewa/graphics/BlendFilter$BlenderPerChannel;-><init>(Llewa/graphics/BlendFilter;)V

    return-void
.end method


# virtual methods
.method public blendChannel(FF)F
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    const/high16 v2, 0x3f80

    const/high16 v1, 0x4000

    .line 245
    mul-float v0, v1, p2

    sub-float/2addr v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 246
    mul-float v0, v1, p2

    sub-float p1, v0, v2

    .line 250
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 247
    .restart local p1
    :cond_1
    mul-float v0, v1, p2

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 248
    mul-float p1, v1, p2

    goto :goto_0
.end method
