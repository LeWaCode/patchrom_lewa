.class Llewa/laml/util/ConfigFile$3;
.super Ljava/lang/Object;
.source "ConfigFile.java"

# interfaces
.implements Llewa/laml/util/ConfigFile$OnLoadElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/laml/util/ConfigFile;->loadVariables(Lorg/w3c/dom/Element;)V
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
    .line 107
    iput-object p1, p0, Llewa/laml/util/ConfigFile$3;->this$0:Llewa/laml/util/ConfigFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnLoadElement(Lorg/w3c/dom/Element;)V
    .locals 4
    .parameter "ele"

    .prologue
    .line 109
    iget-object v0, p0, Llewa/laml/util/ConfigFile$3;->this$0:Llewa/laml/util/ConfigFile;

    const-string v1, "name"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #calls: Llewa/laml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Llewa/laml/util/ConfigFile;->access$000(Llewa/laml/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method
