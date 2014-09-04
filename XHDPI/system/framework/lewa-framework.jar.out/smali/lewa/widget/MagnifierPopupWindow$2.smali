.class Llewa/widget/MagnifierPopupWindow$2;
.super Ljava/lang/Object;
.source "MagnifierPopupWindow.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/widget/MagnifierPopupWindow;-><init>(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/widget/MagnifierPopupWindow;


# direct methods
.method constructor <init>(Llewa/widget/MagnifierPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Llewa/widget/MagnifierPopupWindow$2;->this$0:Llewa/widget/MagnifierPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 294
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 298
    iget-object v0, p0, Llewa/widget/MagnifierPopupWindow$2;->this$0:Llewa/widget/MagnifierPopupWindow;

    invoke-virtual {v0}, Llewa/widget/MagnifierPopupWindow;->dismiss()V

    .line 299
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 303
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 307
    return-void
.end method
