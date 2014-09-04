.class abstract Llewa/laml/ActionCommand$StatefulActionCommand;
.super Llewa/laml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StatefulActionCommand"
.end annotation


# instance fields
.field private mVar:Llewa/laml/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Llewa/laml/ScreenElementRoot;Ljava/lang/String;)V
    .locals 2
    .parameter "root"
    .parameter "stateName"

    .prologue
    .line 841
    invoke-direct {p0, p1}, Llewa/laml/ActionCommand;-><init>(Llewa/laml/ScreenElementRoot;)V

    .line 842
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/ActionCommand$StatefulActionCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v1}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, p2, v1}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/ActionCommand$StatefulActionCommand;->mVar:Llewa/laml/util/IndexedNumberVariable;

    .line 843
    return-void
.end method


# virtual methods
.method protected final updateState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 834
    iget-object v0, p0, Llewa/laml/ActionCommand$StatefulActionCommand;->mVar:Llewa/laml/util/IndexedNumberVariable;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Llewa/laml/ActionCommand$StatefulActionCommand;->mVar:Llewa/laml/util/IndexedNumberVariable;

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 836
    iget-object v0, p0, Llewa/laml/ActionCommand$StatefulActionCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->requestUpdate()V

    .line 838
    :cond_0
    return-void
.end method
