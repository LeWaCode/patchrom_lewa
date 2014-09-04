.class Llewa/laml/FancyDrawable$1;
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
    .line 45
    iput-object p1, p0, Llewa/laml/FancyDrawable$1;->this$0:Llewa/laml/FancyDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Llewa/laml/FancyDrawable$1;->this$0:Llewa/laml/FancyDrawable;

    #calls: Llewa/laml/FancyDrawable;->doPause()V
    invoke-static {v0}, Llewa/laml/FancyDrawable;->access$000(Llewa/laml/FancyDrawable;)V

    .line 48
    return-void
.end method
