.class Llewa/laml/ActionCommand$IntentCommand$1;
.super Ljava/lang/Object;
.source "ActionCommand.java"

# interfaces
.implements Llewa/laml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/laml/ActionCommand$IntentCommand;->loadExtras(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/laml/ActionCommand$IntentCommand;


# direct methods
.method constructor <init>(Llewa/laml/ActionCommand$IntentCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Llewa/laml/ActionCommand$IntentCommand$1;->this$0:Llewa/laml/ActionCommand$IntentCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "element"

    .prologue
    .line 373
    iget-object v0, p0, Llewa/laml/ActionCommand$IntentCommand$1;->this$0:Llewa/laml/ActionCommand$IntentCommand;

    new-instance v1, Llewa/laml/ActionCommand$IntentCommand$Extra;

    iget-object v2, p0, Llewa/laml/ActionCommand$IntentCommand$1;->this$0:Llewa/laml/ActionCommand$IntentCommand;

    invoke-direct {v1, v2, p1}, Llewa/laml/ActionCommand$IntentCommand$Extra;-><init>(Llewa/laml/ActionCommand$IntentCommand;Lorg/w3c/dom/Element;)V

    invoke-virtual {v0, v1}, Llewa/laml/ActionCommand$IntentCommand;->addExtra(Llewa/laml/ActionCommand$IntentCommand$Extra;)V

    .line 374
    return-void
.end method
