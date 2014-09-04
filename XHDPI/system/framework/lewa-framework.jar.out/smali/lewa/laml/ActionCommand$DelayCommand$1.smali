.class Llewa/laml/ActionCommand$DelayCommand$1;
.super Ljava/lang/Object;
.source "ActionCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/laml/ActionCommand$DelayCommand;->doPerform()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/laml/ActionCommand$DelayCommand;


# direct methods
.method constructor <init>(Llewa/laml/ActionCommand$DelayCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Llewa/laml/ActionCommand$DelayCommand$1;->this$0:Llewa/laml/ActionCommand$DelayCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Llewa/laml/ActionCommand$DelayCommand$1;->this$0:Llewa/laml/ActionCommand$DelayCommand;

    #getter for: Llewa/laml/ActionCommand$DelayCommand;->mCommand:Llewa/laml/ActionCommand;
    invoke-static {v0}, Llewa/laml/ActionCommand$DelayCommand;->access$000(Llewa/laml/ActionCommand$DelayCommand;)Llewa/laml/ActionCommand;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/ActionCommand;->perform()V

    .line 282
    return-void
.end method
