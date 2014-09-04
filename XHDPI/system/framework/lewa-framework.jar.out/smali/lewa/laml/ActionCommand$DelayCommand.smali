.class Llewa/laml/ActionCommand$DelayCommand;
.super Llewa/laml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayCommand"
.end annotation


# instance fields
.field private mCommand:Llewa/laml/ActionCommand;

.field private mDelay:J


# direct methods
.method public constructor <init>(Llewa/laml/ActionCommand;J)V
    .locals 1
    .parameter "command"
    .parameter "delay"

    .prologue
    .line 291
    invoke-virtual {p1}, Llewa/laml/ActionCommand;->getRoot()Llewa/laml/ScreenElementRoot;

    move-result-object v0

    invoke-direct {p0, v0}, Llewa/laml/ActionCommand;-><init>(Llewa/laml/ScreenElementRoot;)V

    .line 292
    iput-object p1, p0, Llewa/laml/ActionCommand$DelayCommand;->mCommand:Llewa/laml/ActionCommand;

    .line 293
    iput-wide p2, p0, Llewa/laml/ActionCommand$DelayCommand;->mDelay:J

    .line 294
    return-void
.end method

.method static synthetic access$000(Llewa/laml/ActionCommand$DelayCommand;)Llewa/laml/ActionCommand;
    .locals 1
    .parameter "x0"

    .prologue
    .line 272
    iget-object v0, p0, Llewa/laml/ActionCommand$DelayCommand;->mCommand:Llewa/laml/ActionCommand;

    return-object v0
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Llewa/laml/ActionCommand$DelayCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    new-instance v1, Llewa/laml/ActionCommand$DelayCommand$1;

    invoke-direct {v1, p0}, Llewa/laml/ActionCommand$DelayCommand$1;-><init>(Llewa/laml/ActionCommand$DelayCommand;)V

    iget-wide v2, p0, Llewa/laml/ActionCommand$DelayCommand;->mDelay:J

    invoke-virtual {v0, v1, v2, v3}, Llewa/laml/ScreenElementRoot;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Llewa/laml/ActionCommand$DelayCommand;->mCommand:Llewa/laml/ActionCommand;

    invoke-virtual {v0}, Llewa/laml/ActionCommand;->init()V

    .line 288
    return-void
.end method
