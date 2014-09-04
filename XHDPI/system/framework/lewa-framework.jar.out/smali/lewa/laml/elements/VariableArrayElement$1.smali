.class Llewa/laml/elements/VariableArrayElement$1;
.super Ljava/lang/Object;
.source "VariableArrayElement.java"

# interfaces
.implements Llewa/laml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/laml/elements/VariableArrayElement;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/laml/elements/VariableArrayElement;


# direct methods
.method constructor <init>(Llewa/laml/elements/VariableArrayElement;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Llewa/laml/elements/VariableArrayElement$1;->this$0:Llewa/laml/elements/VariableArrayElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 146
    iget-object v0, p0, Llewa/laml/elements/VariableArrayElement$1;->this$0:Llewa/laml/elements/VariableArrayElement;

    #getter for: Llewa/laml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;
    invoke-static {v0}, Llewa/laml/elements/VariableArrayElement;->access$200(Llewa/laml/elements/VariableArrayElement;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Llewa/laml/elements/VariableArrayElement$Var;

    iget-object v2, p0, Llewa/laml/elements/VariableArrayElement$1;->this$0:Llewa/laml/elements/VariableArrayElement;

    invoke-direct {v1, v2, p1}, Llewa/laml/elements/VariableArrayElement$Var;-><init>(Llewa/laml/elements/VariableArrayElement;Lorg/w3c/dom/Element;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method
