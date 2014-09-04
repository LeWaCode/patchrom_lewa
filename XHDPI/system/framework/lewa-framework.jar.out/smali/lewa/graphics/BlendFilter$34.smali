.class Llewa/graphics/BlendFilter$34;
.super Llewa/graphics/BlendFilter$PorterDuffBlenderPerChannel;
.source "BlendFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/graphics/BlendFilter;->getCurrentPorterDuffBlender()Llewa/graphics/BlendFilter$PorterDuffBlender;
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
    .line 496
    iput-object p1, p0, Llewa/graphics/BlendFilter$34;->this$0:Llewa/graphics/BlendFilter;

    invoke-direct {p0, p1}, Llewa/graphics/BlendFilter$PorterDuffBlenderPerChannel;-><init>(Llewa/graphics/BlendFilter;)V

    return-void
.end method


# virtual methods
.method public blendAlpha(FF)F
    .locals 1
    .parameter "Da"
    .parameter "Sa"

    .prologue
    .line 499
    mul-float v0, p2, p1

    return v0
.end method

.method public blendChannel(FFFF)F
    .locals 1
    .parameter "Dc"
    .parameter "Sc"
    .parameter "Da"
    .parameter "Sa"

    .prologue
    .line 503
    mul-float v0, p2, p3

    return v0
.end method
