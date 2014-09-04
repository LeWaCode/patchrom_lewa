.class Llewa/laml/data/DateTimeVariableUpdater$TimeUpdater;
.super Ljava/lang/Object;
.source "DateTimeVariableUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/DateTimeVariableUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/laml/data/DateTimeVariableUpdater;


# direct methods
.method constructor <init>(Llewa/laml/data/DateTimeVariableUpdater;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Llewa/laml/data/DateTimeVariableUpdater$TimeUpdater;->this$0:Llewa/laml/data/DateTimeVariableUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Llewa/laml/data/DateTimeVariableUpdater$TimeUpdater;->this$0:Llewa/laml/data/DateTimeVariableUpdater;

    #calls: Llewa/laml/data/DateTimeVariableUpdater;->checkUpdateTime()V
    invoke-static {v0}, Llewa/laml/data/DateTimeVariableUpdater;->access$000(Llewa/laml/data/DateTimeVariableUpdater;)V

    .line 94
    return-void
.end method
