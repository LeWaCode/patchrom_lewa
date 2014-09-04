.class public final enum Llewa/util/AsyncTask$Status;
.super Ljava/lang/Enum;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/util/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llewa/util/AsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llewa/util/AsyncTask$Status;

.field public static final enum FINISHED:Llewa/util/AsyncTask$Status;

.field public static final enum PENDING:Llewa/util/AsyncTask$Status;

.field public static final enum RUNNING:Llewa/util/AsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 283
    new-instance v0, Llewa/util/AsyncTask$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Llewa/util/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/util/AsyncTask$Status;->PENDING:Llewa/util/AsyncTask$Status;

    .line 287
    new-instance v0, Llewa/util/AsyncTask$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Llewa/util/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/util/AsyncTask$Status;->RUNNING:Llewa/util/AsyncTask$Status;

    .line 291
    new-instance v0, Llewa/util/AsyncTask$Status;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Llewa/util/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llewa/util/AsyncTask$Status;->FINISHED:Llewa/util/AsyncTask$Status;

    .line 279
    const/4 v0, 0x3

    new-array v0, v0, [Llewa/util/AsyncTask$Status;

    sget-object v1, Llewa/util/AsyncTask$Status;->PENDING:Llewa/util/AsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Llewa/util/AsyncTask$Status;->RUNNING:Llewa/util/AsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Llewa/util/AsyncTask$Status;->FINISHED:Llewa/util/AsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Llewa/util/AsyncTask$Status;->$VALUES:[Llewa/util/AsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 279
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llewa/util/AsyncTask$Status;
    .locals 1
    .parameter "name"

    .prologue
    .line 279
    const-class v0, Llewa/util/AsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llewa/util/AsyncTask$Status;

    return-object v0
.end method

.method public static values()[Llewa/util/AsyncTask$Status;
    .locals 1

    .prologue
    .line 279
    sget-object v0, Llewa/util/AsyncTask$Status;->$VALUES:[Llewa/util/AsyncTask$Status;

    invoke-virtual {v0}, [Llewa/util/AsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llewa/util/AsyncTask$Status;

    return-object v0
.end method
