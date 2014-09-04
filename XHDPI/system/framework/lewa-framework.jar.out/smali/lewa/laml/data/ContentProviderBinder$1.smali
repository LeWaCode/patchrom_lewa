.class Llewa/laml/data/ContentProviderBinder$1;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/laml/data/ContentProviderBinder;->load(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/laml/data/ContentProviderBinder;


# direct methods
.method constructor <init>(Llewa/laml/data/ContentProviderBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Llewa/laml/data/ContentProviderBinder$1;->this$0:Llewa/laml/data/ContentProviderBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$1;->this$0:Llewa/laml/data/ContentProviderBinder;

    #calls: Llewa/laml/data/ContentProviderBinder;->checkUpdate()V
    invoke-static {v0}, Llewa/laml/data/ContentProviderBinder;->access$100(Llewa/laml/data/ContentProviderBinder;)V

    .line 178
    return-void
.end method
