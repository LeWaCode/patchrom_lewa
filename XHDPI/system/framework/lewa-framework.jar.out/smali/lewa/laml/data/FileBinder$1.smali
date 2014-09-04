.class Llewa/laml/data/FileBinder$1;
.super Ljava/lang/Object;
.source "FileBinder.java"

# interfaces
.implements Llewa/laml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/laml/data/FileBinder;->loadVariables(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/laml/data/FileBinder;


# direct methods
.method constructor <init>(Llewa/laml/data/FileBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Llewa/laml/data/FileBinder$1;->this$0:Llewa/laml/data/FileBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 62
    iget-object v0, p0, Llewa/laml/data/FileBinder$1;->this$0:Llewa/laml/data/FileBinder;

    new-instance v1, Llewa/laml/data/FileBinder$Variable;

    iget-object v2, p0, Llewa/laml/data/FileBinder$1;->this$0:Llewa/laml/data/FileBinder;

    invoke-virtual {v2}, Llewa/laml/data/FileBinder;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v1, p1, v2}, Llewa/laml/data/FileBinder$Variable;-><init>(Lorg/w3c/dom/Element;Llewa/laml/data/Variables;)V

    invoke-virtual {v0, v1}, Llewa/laml/data/FileBinder;->addVariable(Llewa/laml/data/FileBinder$Variable;)V

    .line 63
    return-void
.end method
