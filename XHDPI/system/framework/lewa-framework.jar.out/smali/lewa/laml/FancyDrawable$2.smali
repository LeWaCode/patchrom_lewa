.class Llewa/laml/FancyDrawable$2;
.super Ljava/lang/Object;
.source "FancyDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/FancyDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/laml/FancyDrawable;


# direct methods
.method constructor <init>(Llewa/laml/FancyDrawable;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Llewa/laml/FancyDrawable$2;->this$0:Llewa/laml/FancyDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Llewa/laml/FancyDrawable$2;->this$0:Llewa/laml/FancyDrawable;

    invoke-virtual {v0}, Llewa/laml/FancyDrawable;->invalidateSelf()V

    .line 54
    return-void
.end method
