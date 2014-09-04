.class Llewa/laml/util/ConfigFile$2;
.super Ljava/lang/Object;
.source "ConfigFile.java"

# interfaces
.implements Llewa/laml/util/ConfigFile$OnLoadElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/laml/util/ConfigFile;->loadTasks(Lorg/w3c/dom/Element;)V
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
    .line 99
    iput-object p1, p0, Llewa/laml/util/ConfigFile$2;->this$0:Llewa/laml/util/ConfigFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnLoadElement(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "ele"

    .prologue
    .line 101
    iget-object v0, p0, Llewa/laml/util/ConfigFile$2;->this$0:Llewa/laml/util/ConfigFile;

    invoke-static {p1}, Llewa/laml/util/Task;->load(Lorg/w3c/dom/Element;)Llewa/laml/util/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Llewa/laml/util/ConfigFile;->putTask(Llewa/laml/util/Task;)V

    .line 102
    return-void
.end method
