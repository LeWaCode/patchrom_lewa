.class Llewa/provider/SensorProviderListener$9;
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
.field private adjustVolume:Z

.field private proximityActive:Z

.field final synthetic this$0:Llewa/provider/SensorProviderListener;


# direct methods
.method constructor <init>(Llewa/provider/SensorProviderListener;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 410
    iput-object p1, p0, Llewa/provider/SensorProviderListener$9;->this$0:Llewa/provider/SensorProviderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-boolean v0, p0, Llewa/provider/SensorProviderListener$9;->adjustVolume:Z

    .line 412
    iput-boolean v0, p0, Llewa/provider/SensorProviderListener$9;->proximityActive:Z

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 416
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 420
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 421
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 422
    .local v0, distance:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Llewa/provider/SensorProviderListener$9;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->mAdjustVolumeSensor:Landroid/hardware/Sensor;
    invoke-static {v1}, Llewa/provider/SensorProviderListener;->access$2200(Llewa/provider/SensorProviderListener;)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 423
    iput-boolean v3, p0, Llewa/provider/SensorProviderListener$9;->adjustVolume:Z

    .line 427
    :goto_0
    iget-boolean v1, p0, Llewa/provider/SensorProviderListener$9;->adjustVolume:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Llewa/provider/SensorProviderListener$9;->proximityActive:Z

    if-nez v1, :cond_0

    .line 428
    iget-object v1, p0, Llewa/provider/SensorProviderListener$9;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->onAdjustVolumeListener:Llewa/provider/SensorProviderListener$OnAdjustVolumeListener;
    invoke-static {v1}, Llewa/provider/SensorProviderListener;->access$2300(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnAdjustVolumeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p0, Llewa/provider/SensorProviderListener$9;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->onAdjustVolumeListener:Llewa/provider/SensorProviderListener$OnAdjustVolumeListener;
    invoke-static {v1}, Llewa/provider/SensorProviderListener;->access$2300(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnAdjustVolumeListener;

    move-result-object v1

    invoke-interface {v1}, Llewa/provider/SensorProviderListener$OnAdjustVolumeListener;->onVolume()V

    .line 430
    const-string v1, "SensorProviderListener"

    const-string v2, "proximityActive:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .end local v0           #distance:F
    :cond_0
    return-void

    .line 425
    .restart local v0       #distance:F
    :cond_1
    iput-boolean v3, p0, Llewa/provider/SensorProviderListener$9;->proximityActive:Z

    goto :goto_0
.end method
