.class Llewa/util/AsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/util/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Llewa/util/AsyncTask;


# direct methods
.method varargs constructor <init>(Llewa/util/AsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "task"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llewa/util/AsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 689
    .local p0, this:Llewa/util/AsyncTask$AsyncTaskResult;,"Llewa/util/AsyncTask$AsyncTaskResult<TData;>;"
    .local p2, data:[Ljava/lang/Object;,"[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    iput-object p1, p0, Llewa/util/AsyncTask$AsyncTaskResult;->mTask:Llewa/util/AsyncTask;

    .line 691
    iput-object p2, p0, Llewa/util/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 692
    return-void
.end method
