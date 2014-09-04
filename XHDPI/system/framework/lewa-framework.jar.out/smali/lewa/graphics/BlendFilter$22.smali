.class Llewa/graphics/BlendFilter$22;
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
    .line 368
    iput-object p1, p0, Llewa/graphics/BlendFilter$22;->this$0:Llewa/graphics/BlendFilter;

    invoke-direct {p0, p1}, Llewa/graphics/BlendFilter$BlenderPerChannel;-><init>(Llewa/graphics/BlendFilter;)V

    return-void
.end method


# virtual methods
.method public blendChannel(FF)F
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    const/high16 v1, 0x4000

    const/high16 v2, 0x3f80

    .line 371
    const/high16 v0, 0x3f00

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 372
    mul-float v0, v1, p1

    mul-float/2addr v0, p2

    .line 374
    :goto_0
    return v0

    :cond_0
    sub-float v0, v2, p1

    mul-float/2addr v0, v1

    sub-float v1, v2, p2

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    goto :goto_0
.end method
