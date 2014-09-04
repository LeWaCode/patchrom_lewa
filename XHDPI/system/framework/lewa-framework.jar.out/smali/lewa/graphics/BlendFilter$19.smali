.class Llewa/graphics/BlendFilter$19;
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
    .line 338
    iput-object p1, p0, Llewa/graphics/BlendFilter$19;->this$0:Llewa/graphics/BlendFilter;

    invoke-direct {p0, p1}, Llewa/graphics/BlendFilter$BlenderPerChannel;-><init>(Llewa/graphics/BlendFilter;)V

    return-void
.end method


# virtual methods
.method public blendChannel(FF)F
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 341
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p2

    div-float v0, p1, v0

    return v0
.end method
