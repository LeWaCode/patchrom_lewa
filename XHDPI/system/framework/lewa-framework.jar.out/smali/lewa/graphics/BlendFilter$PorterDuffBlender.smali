.class abstract Llewa/graphics/BlendFilter$PorterDuffBlender;
.super Ljava/lang/Object;
.source "BlendFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/graphics/BlendFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PorterDuffBlender"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/graphics/BlendFilter;


# direct methods
.method constructor <init>(Llewa/graphics/BlendFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Llewa/graphics/BlendFilter$PorterDuffBlender;->this$0:Llewa/graphics/BlendFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blendFinal(II)I
.end method
