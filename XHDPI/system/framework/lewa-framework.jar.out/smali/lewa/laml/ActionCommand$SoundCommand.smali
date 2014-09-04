.class Llewa/laml/ActionCommand$SoundCommand;
.super Llewa/laml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SoundCommand"


# instance fields
.field private mKeepCur:Z

.field private mLoop:Z

.field private mSound:Ljava/lang/String;

.field private mStopExp:Llewa/laml/data/Expression;

.field private mVolumeExp:Llewa/laml/data/Expression;


# direct methods
.method public constructor <init>(Llewa/laml/ScreenElementRoot;Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "root"
    .parameter "ele"

    .prologue
    .line 715
    invoke-direct {p0, p1}, Llewa/laml/ActionCommand;-><init>(Llewa/laml/ScreenElementRoot;)V

    .line 716
    const-string v0, "sound"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/ActionCommand$SoundCommand;->mSound:Ljava/lang/String;

    .line 717
    const-string v0, "keepCur"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Llewa/laml/ActionCommand$SoundCommand;->mKeepCur:Z

    .line 718
    const-string v0, "loop"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Llewa/laml/ActionCommand$SoundCommand;->mLoop:Z

    .line 719
    const-string v0, "volume"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/ActionCommand$SoundCommand;->mVolumeExp:Llewa/laml/data/Expression;

    .line 720
    const-string v0, "stop"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/ActionCommand$SoundCommand;->mStopExp:Llewa/laml/data/Expression;

    .line 721
    iget-object v0, p0, Llewa/laml/ActionCommand$SoundCommand;->mVolumeExp:Llewa/laml/data/Expression;

    if-nez v0, :cond_0

    .line 722
    const-string v0, "ActionCommand"

    const-string v1, "invalid expression in SoundCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_0
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 708
    iget-object v0, p0, Llewa/laml/ActionCommand$SoundCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    iget-object v6, v0, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    .line 709
    .local v6, v:Llewa/laml/data/Variables;
    iget-object v7, p0, Llewa/laml/ActionCommand$SoundCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    iget-object v8, p0, Llewa/laml/ActionCommand$SoundCommand;->mSound:Ljava/lang/String;

    new-instance v0, Llewa/laml/SoundManager$SoundOptions;

    iget-object v1, p0, Llewa/laml/ActionCommand$SoundCommand;->mSound:Ljava/lang/String;

    iget-boolean v2, p0, Llewa/laml/ActionCommand$SoundCommand;->mKeepCur:Z

    iget-boolean v3, p0, Llewa/laml/ActionCommand$SoundCommand;->mLoop:Z

    iget-object v4, p0, Llewa/laml/ActionCommand$SoundCommand;->mVolumeExp:Llewa/laml/data/Expression;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    iget-object v9, p0, Llewa/laml/ActionCommand$SoundCommand;->mStopExp:Llewa/laml/data/Expression;

    if-nez v9, :cond_2

    :cond_0
    :goto_1
    invoke-direct/range {v0 .. v5}, Llewa/laml/SoundManager$SoundOptions;-><init>(Ljava/lang/String;ZZFZ)V

    invoke-virtual {v7, v8, v0}, Llewa/laml/ScreenElementRoot;->playSound(Ljava/lang/String;Llewa/laml/SoundManager$SoundOptions;)V

    .line 712
    return-void

    .line 709
    :cond_1
    iget-object v4, p0, Llewa/laml/ActionCommand$SoundCommand;->mVolumeExp:Llewa/laml/data/Expression;

    invoke-virtual {v4, v6}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v9

    double-to-float v4, v9

    goto :goto_0

    :cond_2
    iget-object v9, p0, Llewa/laml/ActionCommand$SoundCommand;->mStopExp:Llewa/laml/data/Expression;

    invoke-virtual {v9, v6}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v9

    const-wide/high16 v11, 0x3ff0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_0

    const/4 v5, 0x1

    goto :goto_1
.end method
