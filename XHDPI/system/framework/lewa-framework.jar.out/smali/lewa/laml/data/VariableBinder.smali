.class public abstract Llewa/laml/data/VariableBinder;
.super Ljava/lang/Object;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/data/VariableBinder$Variable;
    }
.end annotation


# instance fields
.field protected mFinished:Z

.field protected mPaused:Z

.field protected mRoot:Llewa/laml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Llewa/laml/ScreenElementRoot;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Llewa/laml/data/VariableBinder;->mRoot:Llewa/laml/ScreenElementRoot;

    .line 20
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/data/VariableBinder;->mFinished:Z

    .line 24
    return-void
.end method

.method protected getContext()Llewa/laml/ScreenContext;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Llewa/laml/data/VariableBinder;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/laml/data/VariableBinder;->mPaused:Z

    iput-boolean v0, p0, Llewa/laml/data/VariableBinder;->mFinished:Z

    .line 36
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/data/VariableBinder;->mPaused:Z

    .line 40
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/laml/data/VariableBinder;->mPaused:Z

    .line 47
    return-void
.end method

.method public tick()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
