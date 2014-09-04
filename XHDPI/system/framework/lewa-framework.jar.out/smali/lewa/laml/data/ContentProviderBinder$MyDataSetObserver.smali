.class Llewa/laml/data/ContentProviderBinder$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/laml/data/ContentProviderBinder;


# direct methods
.method private constructor <init>(Llewa/laml/data/ContentProviderBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Llewa/laml/data/ContentProviderBinder$MyDataSetObserver;->this$0:Llewa/laml/data/ContentProviderBinder;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llewa/laml/data/ContentProviderBinder;Llewa/laml/data/ContentProviderBinder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 452
    invoke-direct {p0, p1}, Llewa/laml/data/ContentProviderBinder$MyDataSetObserver;-><init>(Llewa/laml/data/ContentProviderBinder;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$MyDataSetObserver;->this$0:Llewa/laml/data/ContentProviderBinder;

    iget-boolean v0, v0, Llewa/laml/data/ContentProviderBinder;->mFinished:Z

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$MyDataSetObserver;->this$0:Llewa/laml/data/ContentProviderBinder;

    #calls: Llewa/laml/data/ContentProviderBinder;->updateVariables()V
    invoke-static {v0}, Llewa/laml/data/ContentProviderBinder;->access$300(Llewa/laml/data/ContentProviderBinder;)V

    .line 457
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$MyDataSetObserver;->this$0:Llewa/laml/data/ContentProviderBinder;

    #getter for: Llewa/laml/data/ContentProviderBinder;->mQueryCompletedListener:Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;
    invoke-static {v0}, Llewa/laml/data/ContentProviderBinder;->access$400(Llewa/laml/data/ContentProviderBinder;)Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$MyDataSetObserver;->this$0:Llewa/laml/data/ContentProviderBinder;

    #getter for: Llewa/laml/data/ContentProviderBinder;->mQueryCompletedListener:Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;
    invoke-static {v0}, Llewa/laml/data/ContentProviderBinder;->access$400(Llewa/laml/data/ContentProviderBinder;)Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;

    move-result-object v0

    iget-object v1, p0, Llewa/laml/data/ContentProviderBinder$MyDataSetObserver;->this$0:Llewa/laml/data/ContentProviderBinder;

    iget-object v1, v1, Llewa/laml/data/ContentProviderBinder;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;->onQueryCompleted(Ljava/lang/String;)V

    .line 461
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$MyDataSetObserver;->this$0:Llewa/laml/data/ContentProviderBinder;

    iget-boolean v0, v0, Llewa/laml/data/ContentProviderBinder;->mFinished:Z

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$MyDataSetObserver;->this$0:Llewa/laml/data/ContentProviderBinder;

    #calls: Llewa/laml/data/ContentProviderBinder;->updateVariables()V
    invoke-static {v0}, Llewa/laml/data/ContentProviderBinder;->access$300(Llewa/laml/data/ContentProviderBinder;)V

    .line 466
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$MyDataSetObserver;->this$0:Llewa/laml/data/ContentProviderBinder;

    #getter for: Llewa/laml/data/ContentProviderBinder;->mQueryCompletedListener:Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;
    invoke-static {v0}, Llewa/laml/data/ContentProviderBinder;->access$400(Llewa/laml/data/ContentProviderBinder;)Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$MyDataSetObserver;->this$0:Llewa/laml/data/ContentProviderBinder;

    #getter for: Llewa/laml/data/ContentProviderBinder;->mQueryCompletedListener:Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;
    invoke-static {v0}, Llewa/laml/data/ContentProviderBinder;->access$400(Llewa/laml/data/ContentProviderBinder;)Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;

    move-result-object v0

    iget-object v1, p0, Llewa/laml/data/ContentProviderBinder$MyDataSetObserver;->this$0:Llewa/laml/data/ContentProviderBinder;

    iget-object v1, v1, Llewa/laml/data/ContentProviderBinder;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;->onQueryCompleted(Ljava/lang/String;)V

    .line 470
    :cond_0
    return-void
.end method
