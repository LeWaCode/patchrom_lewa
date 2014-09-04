.class Llewa/util/AsyncTask$2;
.super Llewa/util/AsyncTask$WorkerRunnable;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/util/AsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llewa/util/AsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Llewa/util/AsyncTask;


# direct methods
.method constructor <init>(Llewa/util/AsyncTask;)V
    .locals 1
    .parameter

    .prologue
    .line 308
    .local p0, this:Llewa/util/AsyncTask$2;,"Llewa/util/AsyncTask.2;"
    iput-object p1, p0, Llewa/util/AsyncTask$2;->this$0:Llewa/util/AsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llewa/util/AsyncTask$WorkerRunnable;-><init>(Llewa/util/AsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 310
    .local p0, this:Llewa/util/AsyncTask$2;,"Llewa/util/AsyncTask.2;"
    iget-object v0, p0, Llewa/util/AsyncTask$2;->this$0:Llewa/util/AsyncTask;

    #getter for: Llewa/util/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Llewa/util/AsyncTask;->access$300(Llewa/util/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 312
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 314
    iget-object v0, p0, Llewa/util/AsyncTask$2;->this$0:Llewa/util/AsyncTask;

    iget-object v1, p0, Llewa/util/AsyncTask$2;->this$0:Llewa/util/AsyncTask;

    iget-object v2, p0, Llewa/util/AsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Llewa/util/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #calls: Llewa/util/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1}, Llewa/util/AsyncTask;->access$400(Llewa/util/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
