.class Llewa/provider/SensorProviderListener$4;
.super Ljava/lang/Object;
.source "SensorProviderListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/provider/SensorProviderListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/provider/SensorProviderListener;


# direct methods
.method constructor <init>(Llewa/provider/SensorProviderListener;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Llewa/provider/SensorProviderListener$4;->this$0:Llewa/provider/SensorProviderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 226
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 231
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 232
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    const/high16 v1, 0x40a0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 233
    iget-object v0, p0, Llewa/provider/SensorProviderListener$4;->this$0:Llewa/provider/SensorProviderListener;

    #setter for: Llewa/provider/SensorProviderListener;->mScreenUp:Z
    invoke-static {v0, v2}, Llewa/provider/SensorProviderListener;->access$902(Llewa/provider/SensorProviderListener;Z)Z

    .line 240
    :cond_0
    :goto_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    const/high16 v1, -0x3f60

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 241
    iget-object v0, p0, Llewa/provider/SensorProviderListener$4;->this$0:Llewa/provider/SensorProviderListener;

    #setter for: Llewa/provider/SensorProviderListener;->mScreenDown:Z
    invoke-static {v0, v2}, Llewa/provider/SensorProviderListener;->access$1102(Llewa/provider/SensorProviderListener;Z)Z

    .line 248
    :cond_1
    :goto_1
    iget-object v0, p0, Llewa/provider/SensorProviderListener$4;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->mTurnUp:Z
    invoke-static {v0}, Llewa/provider/SensorProviderListener;->access$1200(Llewa/provider/SensorProviderListener;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Llewa/provider/SensorProviderListener$4;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->mTurnDown:Z
    invoke-static {v0}, Llewa/provider/SensorProviderListener;->access$1000(Llewa/provider/SensorProviderListener;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    :cond_2
    iget-object v0, p0, Llewa/provider/SensorProviderListener$4;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->onNoMatterHowToTurnListener:Llewa/provider/SensorProviderListener$OnNoMatterHowToTurnListener;
    invoke-static {v0}, Llewa/provider/SensorProviderListener;->access$1300(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnNoMatterHowToTurnListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Llewa/provider/SensorProviderListener$4;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->onNoMatterHowToTurnListener:Llewa/provider/SensorProviderListener$OnNoMatterHowToTurnListener;
    invoke-static {v0}, Llewa/provider/SensorProviderListener;->access$1300(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnNoMatterHowToTurnListener;

    move-result-object v0

    invoke-interface {v0}, Llewa/provider/SensorProviderListener$OnNoMatterHowToTurnListener;->onTurnPhone()V

    .line 254
    :cond_3
    return-void

    .line 235
    :cond_4
    iget-object v0, p0, Llewa/provider/SensorProviderListener$4;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->mScreenUp:Z
    invoke-static {v0}, Llewa/provider/SensorProviderListener;->access$900(Llewa/provider/SensorProviderListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    iget-object v1, p0, Llewa/provider/SensorProviderListener$4;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->mTurnDownValue:F
    invoke-static {v1}, Llewa/provider/SensorProviderListener;->access$400(Llewa/provider/SensorProviderListener;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 236
    iget-object v0, p0, Llewa/provider/SensorProviderListener$4;->this$0:Llewa/provider/SensorProviderListener;

    #setter for: Llewa/provider/SensorProviderListener;->mScreenUp:Z
    invoke-static {v0, v4}, Llewa/provider/SensorProviderListener;->access$902(Llewa/provider/SensorProviderListener;Z)Z

    .line 237
    iget-object v0, p0, Llewa/provider/SensorProviderListener$4;->this$0:Llewa/provider/SensorProviderListener;

    #setter for: Llewa/provider/SensorProviderListener;->mTurnDown:Z
    invoke-static {v0, v2}, Llewa/provider/SensorProviderListener;->access$1002(Llewa/provider/SensorProviderListener;Z)Z

    goto :goto_0

    .line 243
    :cond_5
    iget-object v0, p0, Llewa/provider/SensorProviderListener$4;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->mScreenDown:Z
    invoke-static {v0}, Llewa/provider/SensorProviderListener;->access$1100(Llewa/provider/SensorProviderListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    iget-object v1, p0, Llewa/provider/SensorProviderListener$4;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->mTurnUpValue:F
    invoke-static {v1}, Llewa/provider/SensorProviderListener;->access$700(Llewa/provider/SensorProviderListener;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 244
    iget-object v0, p0, Llewa/provider/SensorProviderListener$4;->this$0:Llewa/provider/SensorProviderListener;

    #setter for: Llewa/provider/SensorProviderListener;->mScreenDown:Z
    invoke-static {v0, v4}, Llewa/provider/SensorProviderListener;->access$1102(Llewa/provider/SensorProviderListener;Z)Z

    .line 245
    iget-object v0, p0, Llewa/provider/SensorProviderListener$4;->this$0:Llewa/provider/SensorProviderListener;

    #setter for: Llewa/provider/SensorProviderListener;->mTurnUp:Z
    invoke-static {v0, v2}, Llewa/provider/SensorProviderListener;->access$1202(Llewa/provider/SensorProviderListener;Z)Z

    goto :goto_1
.end method
