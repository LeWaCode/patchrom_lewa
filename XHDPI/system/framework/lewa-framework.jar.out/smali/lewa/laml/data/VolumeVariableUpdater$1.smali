.class Llewa/laml/data/VolumeVariableUpdater$1;
.super Ljava/lang/Object;
.source "VolumeVariableUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/VolumeVariableUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/laml/data/VolumeVariableUpdater;


# direct methods
.method constructor <init>(Llewa/laml/data/VolumeVariableUpdater;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Llewa/laml/data/VolumeVariableUpdater$1;->this$0:Llewa/laml/data/VolumeVariableUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Llewa/laml/data/VolumeVariableUpdater$1;->this$0:Llewa/laml/data/VolumeVariableUpdater;

    #getter for: Llewa/laml/data/VolumeVariableUpdater;->mVolumeType:Llewa/laml/util/IndexedNumberVariable;
    invoke-static {v0}, Llewa/laml/data/VolumeVariableUpdater;->access$000(Llewa/laml/data/VolumeVariableUpdater;)Llewa/laml/util/IndexedNumberVariable;

    move-result-object v0

    const-wide/high16 v1, -0x4010

    invoke-virtual {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 31
    return-void
.end method
