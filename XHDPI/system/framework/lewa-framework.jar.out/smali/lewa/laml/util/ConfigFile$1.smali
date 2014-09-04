.class Llewa/laml/util/ConfigFile$1;
.super Ljava/lang/Object;
.source "ConfigFile.java"

# interfaces
.implements Llewa/laml/util/ConfigFile$OnLoadElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/laml/util/ConfigFile;->loadGadgets(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/laml/util/ConfigFile;


# direct methods
.method constructor <init>(Llewa/laml/util/ConfigFile;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Llewa/laml/util/ConfigFile$1;->this$0:Llewa/laml/util/ConfigFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnLoadElement(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter "ele"

    .prologue
    const/4 v5, 0x0

    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Llewa/laml/util/ConfigFile$1;->this$0:Llewa/laml/util/ConfigFile;

    new-instance v1, Llewa/laml/util/ConfigFile$Gadget;

    const-string v2, "path"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "x"

    invoke-static {p1, v3, v5}, Llewa/laml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "x"

    invoke-static {p1, v4, v5}, Llewa/laml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Llewa/laml/util/ConfigFile$Gadget;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Llewa/laml/util/ConfigFile;->putGadget(Llewa/laml/util/ConfigFile$Gadget;)V

    .line 78
    :cond_0
    return-void
.end method
