.class synthetic Llewa/util/AsyncTask$4;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/util/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$lewa$util$AsyncTask$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 600
    invoke-static {}, Llewa/util/AsyncTask$Status;->values()[Llewa/util/AsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Llewa/util/AsyncTask$4;->$SwitchMap$lewa$util$AsyncTask$Status:[I

    :try_start_0
    sget-object v0, Llewa/util/AsyncTask$4;->$SwitchMap$lewa$util$AsyncTask$Status:[I

    sget-object v1, Llewa/util/AsyncTask$Status;->RUNNING:Llewa/util/AsyncTask$Status;

    invoke-virtual {v1}, Llewa/util/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Llewa/util/AsyncTask$4;->$SwitchMap$lewa$util$AsyncTask$Status:[I

    sget-object v1, Llewa/util/AsyncTask$Status;->FINISHED:Llewa/util/AsyncTask$Status;

    invoke-virtual {v1}, Llewa/util/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
