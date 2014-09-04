.class Llewa/laml/data/BroadcastBinder$1;
.super Ljava/lang/Object;
.source "BroadcastBinder.java"

# interfaces
.implements Llewa/laml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/laml/data/BroadcastBinder;->loadVariables(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/laml/data/BroadcastBinder;


# direct methods
.method constructor <init>(Llewa/laml/data/BroadcastBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Llewa/laml/data/BroadcastBinder$1;->this$0:Llewa/laml/data/BroadcastBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 65
    new-instance v0, Llewa/laml/data/BroadcastBinder$Variable;

    iget-object v1, p0, Llewa/laml/data/BroadcastBinder$1;->this$0:Llewa/laml/data/BroadcastBinder;

    invoke-virtual {v1}, Llewa/laml/data/BroadcastBinder;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v0, p1, v1}, Llewa/laml/data/BroadcastBinder$Variable;-><init>(Lorg/w3c/dom/Element;Llewa/laml/data/Variables;)V

    .line 67
    .local v0, v:Llewa/laml/data/BroadcastBinder$Variable;
    iget-object v1, p0, Llewa/laml/data/BroadcastBinder$1;->this$0:Llewa/laml/data/BroadcastBinder;

    invoke-virtual {v1, v0}, Llewa/laml/data/BroadcastBinder;->addVariable(Llewa/laml/data/BroadcastBinder$Variable;)V

    .line 68
    return-void
.end method
