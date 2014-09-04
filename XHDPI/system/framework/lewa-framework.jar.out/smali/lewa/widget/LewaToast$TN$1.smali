.class Llewa/widget/LewaToast$TN$1;
.super Ljava/lang/Object;
.source "LewaToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/widget/LewaToast$TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/widget/LewaToast$TN;


# direct methods
.method constructor <init>(Llewa/widget/LewaToast$TN;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Llewa/widget/LewaToast$TN$1;->this$0:Llewa/widget/LewaToast$TN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Llewa/widget/LewaToast$TN$1;->this$0:Llewa/widget/LewaToast$TN;

    invoke-virtual {v0}, Llewa/widget/LewaToast$TN;->handleShow()V

    .line 313
    return-void
.end method
